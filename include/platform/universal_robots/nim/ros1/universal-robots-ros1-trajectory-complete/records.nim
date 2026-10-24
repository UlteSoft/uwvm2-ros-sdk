## @file records.nim
## @brief Complete universal_robots values and adapters for the selected original interface catalog.
## @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
## defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
## roles require the separately admitted SDK owner.
## @see share/platform/universal_robots/domains/universal-robots-ros1-trajectory-complete.ir.json
## @see document/platform/universal_robots/en_US/README.md

# Generated complete canonical values; no I/O or implicit capabilities.
import roswasm
import roswasm/wire
type Ros1Time* = object
  ## ``@brief Complete ROS 1 time value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 8..8 bytes and is identified by``
  ## ``UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `sec`*: uint32 ## @brief time.sec: uint32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Time; share/platform/ros/nim/API-CONTRACT.md
  `nsec`*: uint32 ## @brief time.nsec: uint32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Time; share/platform/ros/nim/API-CONTRACT.md
const Ros1TimeMaximumWireBytes* = 8 ## @brief Maximum canonical extent of time in bytes.
## @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Time; share/platform/ros/nim/API-CONTRACT.md
const Ros1TimeCodecIdentity* = "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0" ## @brief Canonical codec
## identity of time.
## @details Exact identity UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Time; share/platform/ros/nim/API-CONTRACT.md
const Ros1TimeNativeType* = "time" ## @brief Original ROS type name for time.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Time; share/platform/ros/nim/API-CONTRACT.md
const Ros1TimeNativeIdentity* = "" ## @brief Selected original native identity for time.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Time; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Time*(): Ros1Time =
  ## ``@brief Construct the declared defaults of time.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Time; share/platform/ros/nim/API-CONTRACT.md``
  result.`sec` = 0
  result.`nsec` = 0
proc writeFields*(value: Ros1Time; w: var Writer) =
  ## ``@brief Append every canonical field of time.``
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
  ## ``@see Ros1Time; share/platform/ros/nim/API-CONTRACT.md``
  if value.`nsec` >= 1000000000: fail(22)
  putInteger(w,value.`sec`)
  putInteger(w,value.`nsec`)
proc readRos1Time*(r: var Reader): Ros1Time =
  ## ``@brief Read the ordered canonical fields of time.``
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
  ## ``@see Ros1Time; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Time()
  result.`sec` = getInteger(r,uint32)
  result.`nsec` = getInteger(r,uint32)
  if result.`nsec` >= 1000000000: fail(22)
proc encode*(value: Ros1Time): seq[byte] =
  ## ``@brief Encode one complete time value.``
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
  ## ``@see Ros1Time; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos1Time*(b: seq[byte]): Ros1Time =
  ## ``@brief Decode exactly one complete time value.``
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
  ## ``@see Ros1Time; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,8)
  result = readRos1Time(r)
  finish(r)
type Ros1Std_msgsHeader* = object
  ## ``@brief Complete ROS 1 std_msgs/Header value.``
  ## ``@details All 3 declared fields are retained in source order. The canonical representation``
  ## ``occupies 16..144 bytes and is identified by``
  ## ``UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `seq`*: uint32 ## @brief std_msgs/Header.seq: uint32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Std_msgsHeader; share/platform/ros/nim/API-CONTRACT.md
  `stamp`*: Ros1Time ## @brief std_msgs/Header.stamp: time.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Std_msgsHeader; share/platform/ros/nim/API-CONTRACT.md
  `frame_id`*: string ## @brief std_msgs/Header.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no
  ## embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Std_msgsHeader; share/platform/ros/nim/API-CONTRACT.md
const Ros1Std_msgsHeaderMaximumWireBytes* = 144 ## @brief Maximum canonical extent of std_msgs/Header in bytes.
## @details The inclusive bound is 144 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros1Std_msgsHeader; share/platform/ros/nim/API-CONTRACT.md
const Ros1Std_msgsHeaderCodecIdentity* = "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435" ## @brief Canonical codec
## identity of std_msgs/Header.
## @details Exact identity UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Std_msgsHeader; share/platform/ros/nim/API-CONTRACT.md
const Ros1Std_msgsHeaderNativeType* = "std_msgs/Header" ## @brief Original ROS type name for std_msgs/Header.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Std_msgsHeader; share/platform/ros/nim/API-CONTRACT.md
const Ros1Std_msgsHeaderNativeIdentity* = "" ## @brief Selected original native identity for std_msgs/Header.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Std_msgsHeader; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Std_msgsHeader*(): Ros1Std_msgsHeader =
  ## ``@brief Construct the declared defaults of std_msgs/Header.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Std_msgsHeader; share/platform/ros/nim/API-CONTRACT.md``
  result.`seq` = 0
  result.`stamp` = initRos1Time()
  result.`frame_id` = ""
proc writeFields*(value: Ros1Std_msgsHeader; w: var Writer) =
  ## ``@brief Append every canonical field of std_msgs/Header.``
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
  ## ``@see Ros1Std_msgsHeader; share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`seq`)
  writeFields(value.`stamp`,w)
  putString(w,value.`frame_id`,128)
proc readRos1Std_msgsHeader*(r: var Reader): Ros1Std_msgsHeader =
  ## ``@brief Read the ordered canonical fields of std_msgs/Header.``
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
  ## ``@see Ros1Std_msgsHeader; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Std_msgsHeader()
  result.`seq` = getInteger(r,uint32)
  result.`stamp` = readRos1Time(r)
  result.`frame_id` = getString(r,128)
proc encode*(value: Ros1Std_msgsHeader): seq[byte] =
  ## ``@brief Encode one complete std_msgs/Header value.``
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
  ## ``@see Ros1Std_msgsHeader; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(144)
  writeFields(value,w)
  w.bytes
proc decodeRos1Std_msgsHeader*(b: seq[byte]): Ros1Std_msgsHeader =
  ## ``@brief Decode exactly one complete std_msgs/Header value.``
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
  ## ``@see Ros1Std_msgsHeader; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,144)
  result = readRos1Std_msgsHeader(r)
  finish(r)
type Ros1Duration* = object
  ## ``@brief Complete ROS 1 duration value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 8..8 bytes and is identified by``
  ## ``UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `sec`*: int32 ## @brief duration.sec: int32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Duration; share/platform/ros/nim/API-CONTRACT.md
  `nsec`*: int32 ## @brief duration.nsec: int32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Duration; share/platform/ros/nim/API-CONTRACT.md
const Ros1DurationMaximumWireBytes* = 8 ## @brief Maximum canonical extent of duration in bytes.
## @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Duration; share/platform/ros/nim/API-CONTRACT.md
const Ros1DurationCodecIdentity* = "UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8" ## @brief Canonical codec
## identity of duration.
## @details Exact identity UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Duration; share/platform/ros/nim/API-CONTRACT.md
const Ros1DurationNativeType* = "duration" ## @brief Original ROS type name for duration.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Duration; share/platform/ros/nim/API-CONTRACT.md
const Ros1DurationNativeIdentity* = "" ## @brief Selected original native identity for duration.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Duration; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Duration*(): Ros1Duration =
  ## ``@brief Construct the declared defaults of duration.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Duration; share/platform/ros/nim/API-CONTRACT.md``
  result.`sec` = 0
  result.`nsec` = 0
proc writeFields*(value: Ros1Duration; w: var Writer) =
  ## ``@brief Append every canonical field of duration.``
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
  ## ``@see Ros1Duration; share/platform/ros/nim/API-CONTRACT.md``
  if value.`nsec` < 0: fail(22)
  if value.`nsec` >= 1000000000: fail(22)
  putInteger(w,value.`sec`)
  putInteger(w,value.`nsec`)
proc readRos1Duration*(r: var Reader): Ros1Duration =
  ## ``@brief Read the ordered canonical fields of duration.``
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
  ## ``@see Ros1Duration; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Duration()
  result.`sec` = getInteger(r,int32)
  result.`nsec` = getInteger(r,int32)
  if result.`nsec` < 0: fail(22)
  if result.`nsec` >= 1000000000: fail(22)
proc encode*(value: Ros1Duration): seq[byte] =
  ## ``@brief Encode one complete duration value.``
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
  ## ``@see Ros1Duration; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos1Duration*(b: seq[byte]): Ros1Duration =
  ## ``@brief Decode exactly one complete duration value.``
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
  ## ``@see Ros1Duration; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,8)
  result = readRos1Duration(r)
  finish(r)
type Ros1Trajectory_msgsJointTrajectoryPoint* = object
  ## ``@brief Complete ROS 1 trajectory_msgs/JointTrajectoryPoint value.``
  ## ``@details All 5 declared fields are retained in source order. The canonical representation``
  ## ``occupies 24..216 bytes and is identified by``
  ## ``UWVMROS1_5fbdf1845c522d88461d06d5dfae1f35cef5d7f00a87e405c0d458c8e1a9e64d.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `positions`*: seq[float64] ## @brief trajectory_msgs/JointTrajectoryPoint.positions: float64; 0..6 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md
  `velocities`*: seq[float64] ## @brief trajectory_msgs/JointTrajectoryPoint.velocities: float64; 0..6 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md
  `accelerations`*: seq[float64] ## @brief trajectory_msgs/JointTrajectoryPoint.accelerations: float64; 0..6 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md
  `effort`*: seq[float64] ## @brief trajectory_msgs/JointTrajectoryPoint.effort: float64; 0..6 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md
  `time_from_start`*: Ros1Duration ## @brief trajectory_msgs/JointTrajectoryPoint.time_from_start: duration.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md
const Ros1Trajectory_msgsJointTrajectoryPointMaximumWireBytes* = 216 ## @brief Maximum canonical extent of
## trajectory_msgs/JointTrajectoryPoint in bytes.
## @details The inclusive bound is 216 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md
const Ros1Trajectory_msgsJointTrajectoryPointCodecIdentity* = "UWVMROS1_5fbdf1845c522d88461d06d5dfae1f35cef5d7f00a87e405c0d458c8e1a9e64d" ## @brief Canonical codec
## identity of
## trajectory_msgs/JointTrajectoryPoint.
## @details Exact identity UWVMROS1_5fbdf1845c522d88461d06d5dfae1f35cef5d7f00a87e405c0d458c8e1a9e64d binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md
const Ros1Trajectory_msgsJointTrajectoryPointNativeType* = "trajectory_msgs/JointTrajectoryPoint" ## @brief Original ROS type name
## for
## trajectory_msgs/JointTrajectoryPoint.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md
const Ros1Trajectory_msgsJointTrajectoryPointNativeIdentity* = "" ## @brief Selected original native identity for
## trajectory_msgs/JointTrajectoryPoint.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Trajectory_msgsJointTrajectoryPoint*(): Ros1Trajectory_msgsJointTrajectoryPoint =
  ## ``@brief Construct the declared defaults of trajectory_msgs/JointTrajectoryPoint.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md``
  result.`positions` = @[]
  result.`velocities` = @[]
  result.`accelerations` = @[]
  result.`effort` = @[]
  result.`time_from_start` = initRos1Duration()
proc writeFields*(value: Ros1Trajectory_msgsJointTrajectoryPoint; w: var Writer) =
  ## ``@brief Append every canonical field of trajectory_msgs/JointTrajectoryPoint.``
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
  ## ``@see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md``
  if value.`positions`.len > 6: fail(22)
  putInteger(w,uint32(value.`positions`.len))
  for e in value.`positions`:
    putFloat64(w,e)
  if value.`velocities`.len > 6: fail(22)
  putInteger(w,uint32(value.`velocities`.len))
  for e in value.`velocities`:
    putFloat64(w,e)
  if value.`accelerations`.len > 6: fail(22)
  putInteger(w,uint32(value.`accelerations`.len))
  for e in value.`accelerations`:
    putFloat64(w,e)
  if value.`effort`.len > 6: fail(22)
  putInteger(w,uint32(value.`effort`.len))
  for e in value.`effort`:
    putFloat64(w,e)
  writeFields(value.`time_from_start`,w)
proc readRos1Trajectory_msgsJointTrajectoryPoint*(r: var Reader): Ros1Trajectory_msgsJointTrajectoryPoint =
  ## ``@brief Read the ordered canonical fields of trajectory_msgs/JointTrajectoryPoint.``
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
  ## ``@see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Trajectory_msgsJointTrajectoryPoint()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 6: fail(22)
  let count0 = int(rawcount0)
  result.`positions` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`positions`[i] = getFloat64(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 6: fail(22)
  let count1 = int(rawcount1)
  result.`velocities` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`velocities`[i] = getFloat64(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 6: fail(22)
  let count2 = int(rawcount2)
  result.`accelerations` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`accelerations`[i] = getFloat64(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 6: fail(22)
  let count3 = int(rawcount3)
  result.`effort` = newSeq[float64](count3)
  for i in 0..<count3:
    result.`effort`[i] = getFloat64(r)
  result.`time_from_start` = readRos1Duration(r)
proc encode*(value: Ros1Trajectory_msgsJointTrajectoryPoint): seq[byte] =
  ## ``@brief Encode one complete trajectory_msgs/JointTrajectoryPoint value.``
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
  ## ``@see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(216)
  writeFields(value,w)
  w.bytes
proc decodeRos1Trajectory_msgsJointTrajectoryPoint*(b: seq[byte]): Ros1Trajectory_msgsJointTrajectoryPoint =
  ## ``@brief Decode exactly one complete trajectory_msgs/JointTrajectoryPoint value.``
  ## ``@details Require the complete 24..216-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,216)
  result = readRos1Trajectory_msgsJointTrajectoryPoint(r)
  finish(r)
type Ros1Trajectory_msgsJointTrajectory* = object
  ## ``@brief Complete ROS 1 trajectory_msgs/JointTrajectory value.``
  ## ``@details All 3 declared fields are retained in source order. The canonical representation``
  ## ``occupies 24..5168 bytes and is identified by``
  ## ``UWVMROS1_522dc1a8799adc4be16ce5a35a19a217de1095f018af0a7eb57eb6114c69adda.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `header`*: Ros1Std_msgsHeader ## @brief trajectory_msgs/JointTrajectory.header: std_msgs/Header.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/nim/API-CONTRACT.md
  `joint_names`*: seq[string] ## @brief trajectory_msgs/JointTrajectory.joint_names: string; 0..6 elements; each string
  ## is 0..256 bytes; strict UTF-8 with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/nim/API-CONTRACT.md
  `points`*: seq[Ros1Trajectory_msgsJointTrajectoryPoint] ## @brief trajectory_msgs/JointTrajectory.points:
  ## trajectory_msgs/JointTrajectoryPoint; 0..16 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/nim/API-CONTRACT.md
const Ros1Trajectory_msgsJointTrajectoryMaximumWireBytes* = 5168 ## @brief Maximum canonical extent of
## trajectory_msgs/JointTrajectory in bytes.
## @details The inclusive bound is 5168 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/nim/API-CONTRACT.md
const Ros1Trajectory_msgsJointTrajectoryCodecIdentity* = "UWVMROS1_522dc1a8799adc4be16ce5a35a19a217de1095f018af0a7eb57eb6114c69adda" ## @brief Canonical codec
## identity of
## trajectory_msgs/JointTrajectory.
## @details Exact identity UWVMROS1_522dc1a8799adc4be16ce5a35a19a217de1095f018af0a7eb57eb6114c69adda binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/nim/API-CONTRACT.md
const Ros1Trajectory_msgsJointTrajectoryNativeType* = "trajectory_msgs/JointTrajectory" ## @brief Original ROS type name
## for
## trajectory_msgs/JointTrajectory.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/nim/API-CONTRACT.md
const Ros1Trajectory_msgsJointTrajectoryNativeIdentity* = "" ## @brief Selected original native identity for
## trajectory_msgs/JointTrajectory.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Trajectory_msgsJointTrajectory*(): Ros1Trajectory_msgsJointTrajectory =
  ## ``@brief Construct the declared defaults of trajectory_msgs/JointTrajectory.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/nim/API-CONTRACT.md``
  result.`header` = initRos1Std_msgsHeader()
  result.`joint_names` = @[]
  result.`points` = @[]
proc writeFields*(value: Ros1Trajectory_msgsJointTrajectory; w: var Writer) =
  ## ``@brief Append every canonical field of trajectory_msgs/JointTrajectory.``
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
  ## ``@see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`header`,w)
  if value.`joint_names`.len > 6: fail(22)
  putInteger(w,uint32(value.`joint_names`.len))
  for e in value.`joint_names`:
    putString(w,e,256)
  if value.`points`.len > 16: fail(22)
  putInteger(w,uint32(value.`points`.len))
  for e in value.`points`:
    writeFields(e,w)
proc readRos1Trajectory_msgsJointTrajectory*(r: var Reader): Ros1Trajectory_msgsJointTrajectory =
  ## ``@brief Read the ordered canonical fields of trajectory_msgs/JointTrajectory.``
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
  ## ``@see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Trajectory_msgsJointTrajectory()
  result.`header` = readRos1Std_msgsHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 6: fail(22)
  let count1 = int(rawcount1)
  result.`joint_names` = newSeq[string](count1)
  for i in 0..<count1:
    result.`joint_names`[i] = getString(r,256)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`points` = newSeq[Ros1Trajectory_msgsJointTrajectoryPoint](count2)
  for i in 0..<count2:
    result.`points`[i] = readRos1Trajectory_msgsJointTrajectoryPoint(r)
proc encode*(value: Ros1Trajectory_msgsJointTrajectory): seq[byte] =
  ## ``@brief Encode one complete trajectory_msgs/JointTrajectory value.``
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
  ## ``@see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(5168)
  writeFields(value,w)
  w.bytes
proc decodeRos1Trajectory_msgsJointTrajectory*(b: seq[byte]): Ros1Trajectory_msgsJointTrajectory =
  ## ``@brief Decode exactly one complete trajectory_msgs/JointTrajectory value.``
  ## ``@details Require the complete 24..5168-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,5168)
  result = readRos1Trajectory_msgsJointTrajectory(r)
  finish(r)
type Ros1Control_msgsJointTolerance* = object
  ## ``@brief Complete ROS 1 control_msgs/JointTolerance value.``
  ## ``@details All 4 declared fields are retained in source order. The canonical representation``
  ## ``occupies 28..156 bytes and is identified by``
  ## ``UWVMROS1_dfb80a25d10bc883359720da419af0baa78217e72619922a762a5a96a06d0738.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `name`*: string ## @brief control_msgs/JointTolerance.name: string; each string is 0..128 bytes; strict UTF-8 with no
  ## embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Control_msgsJointTolerance; share/platform/ros/nim/API-CONTRACT.md
  `position`*: float64 ## @brief control_msgs/JointTolerance.position: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Control_msgsJointTolerance; share/platform/ros/nim/API-CONTRACT.md
  `velocity`*: float64 ## @brief control_msgs/JointTolerance.velocity: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Control_msgsJointTolerance; share/platform/ros/nim/API-CONTRACT.md
  `acceleration`*: float64 ## @brief control_msgs/JointTolerance.acceleration: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Control_msgsJointTolerance; share/platform/ros/nim/API-CONTRACT.md
const Ros1Control_msgsJointToleranceMaximumWireBytes* = 156 ## @brief Maximum canonical extent of
## control_msgs/JointTolerance in bytes.
## @details The inclusive bound is 156 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros1Control_msgsJointTolerance; share/platform/ros/nim/API-CONTRACT.md
const Ros1Control_msgsJointToleranceCodecIdentity* = "UWVMROS1_dfb80a25d10bc883359720da419af0baa78217e72619922a762a5a96a06d0738" ## @brief Canonical codec
## identity of
## control_msgs/JointTolerance.
## @details Exact identity UWVMROS1_dfb80a25d10bc883359720da419af0baa78217e72619922a762a5a96a06d0738 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Control_msgsJointTolerance; share/platform/ros/nim/API-CONTRACT.md
const Ros1Control_msgsJointToleranceNativeType* = "control_msgs/JointTolerance" ## @brief Original ROS type name for
## control_msgs/JointTolerance.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Control_msgsJointTolerance; share/platform/ros/nim/API-CONTRACT.md
const Ros1Control_msgsJointToleranceNativeIdentity* = "" ## @brief Selected original native identity for
## control_msgs/JointTolerance.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Control_msgsJointTolerance; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Control_msgsJointTolerance*(): Ros1Control_msgsJointTolerance =
  ## ``@brief Construct the declared defaults of control_msgs/JointTolerance.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Control_msgsJointTolerance; share/platform/ros/nim/API-CONTRACT.md``
  result.`name` = ""
  result.`position` = 0
  result.`velocity` = 0
  result.`acceleration` = 0
proc writeFields*(value: Ros1Control_msgsJointTolerance; w: var Writer) =
  ## ``@brief Append every canonical field of control_msgs/JointTolerance.``
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
  ## ``@see Ros1Control_msgsJointTolerance; share/platform/ros/nim/API-CONTRACT.md``
  putString(w,value.`name`,128)
  putFloat64(w,value.`position`)
  putFloat64(w,value.`velocity`)
  putFloat64(w,value.`acceleration`)
proc readRos1Control_msgsJointTolerance*(r: var Reader): Ros1Control_msgsJointTolerance =
  ## ``@brief Read the ordered canonical fields of control_msgs/JointTolerance.``
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
  ## ``@see Ros1Control_msgsJointTolerance; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Control_msgsJointTolerance()
  result.`name` = getString(r,128)
  result.`position` = getFloat64(r)
  result.`velocity` = getFloat64(r)
  result.`acceleration` = getFloat64(r)
proc encode*(value: Ros1Control_msgsJointTolerance): seq[byte] =
  ## ``@brief Encode one complete control_msgs/JointTolerance value.``
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
  ## ``@see Ros1Control_msgsJointTolerance; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(156)
  writeFields(value,w)
  w.bytes
proc decodeRos1Control_msgsJointTolerance*(b: seq[byte]): Ros1Control_msgsJointTolerance =
  ## ``@brief Decode exactly one complete control_msgs/JointTolerance value.``
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
  ## ``@see Ros1Control_msgsJointTolerance; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,156)
  result = readRos1Control_msgsJointTolerance(r)
  finish(r)
type Ros1Control_msgsFollowJointTrajectoryGoal* = object
  ## ``@brief Complete ROS 1 control_msgs/FollowJointTrajectoryGoal value.``
  ## ``@details All 4 declared fields are retained in source order. The canonical representation``
  ## ``occupies 40..7056 bytes and is identified by``
  ## ``UWVMROS1_bcbae7a4976e04bd115e5916808d63bd18da9eade34d35aab26439c1971b6c78.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `trajectory`*: Ros1Trajectory_msgsJointTrajectory ## @brief control_msgs/FollowJointTrajectoryGoal.trajectory:
  ## trajectory_msgs/JointTrajectory.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/nim/API-CONTRACT.md
  `path_tolerance`*: seq[Ros1Control_msgsJointTolerance] ## @brief
  ## control_msgs/FollowJointTrajectoryGoal.path_tolerance:
  ## control_msgs/JointTolerance; 0..6 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/nim/API-CONTRACT.md
  `goal_tolerance`*: seq[Ros1Control_msgsJointTolerance] ## @brief
  ## control_msgs/FollowJointTrajectoryGoal.goal_tolerance:
  ## control_msgs/JointTolerance; 0..6 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/nim/API-CONTRACT.md
  `goal_time_tolerance`*: Ros1Duration ## @brief control_msgs/FollowJointTrajectoryGoal.goal_time_tolerance: duration.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/nim/API-CONTRACT.md
const Ros1Control_msgsFollowJointTrajectoryGoalMaximumWireBytes* = 7056 ## @brief Maximum canonical extent of
## control_msgs/FollowJointTrajectoryGoal in
## bytes.
## @details The inclusive bound is 7056 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/nim/API-CONTRACT.md
const Ros1Control_msgsFollowJointTrajectoryGoalCodecIdentity* = "UWVMROS1_bcbae7a4976e04bd115e5916808d63bd18da9eade34d35aab26439c1971b6c78" ## @brief Canonical codec
## identity of
## control_msgs/FollowJointTrajectoryGoal.
## @details Exact identity UWVMROS1_bcbae7a4976e04bd115e5916808d63bd18da9eade34d35aab26439c1971b6c78 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/nim/API-CONTRACT.md
const Ros1Control_msgsFollowJointTrajectoryGoalNativeType* = "control_msgs/FollowJointTrajectoryGoal" ## @brief Original ROS type name
## for
## control_msgs/FollowJointTrajectoryGoal.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/nim/API-CONTRACT.md
const Ros1Control_msgsFollowJointTrajectoryGoalNativeIdentity* = "" ## @brief Selected original native identity for
## control_msgs/FollowJointTrajectoryGoal.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Control_msgsFollowJointTrajectoryGoal*(): Ros1Control_msgsFollowJointTrajectoryGoal =
  ## ``@brief Construct the declared defaults of control_msgs/FollowJointTrajectoryGoal.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/nim/API-CONTRACT.md``
  result.`trajectory` = initRos1Trajectory_msgsJointTrajectory()
  result.`path_tolerance` = @[]
  result.`goal_tolerance` = @[]
  result.`goal_time_tolerance` = initRos1Duration()
proc writeFields*(value: Ros1Control_msgsFollowJointTrajectoryGoal; w: var Writer) =
  ## ``@brief Append every canonical field of control_msgs/FollowJointTrajectoryGoal.``
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
  ## ``@see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`trajectory`,w)
  if value.`path_tolerance`.len > 6: fail(22)
  putInteger(w,uint32(value.`path_tolerance`.len))
  for e in value.`path_tolerance`:
    writeFields(e,w)
  if value.`goal_tolerance`.len > 6: fail(22)
  putInteger(w,uint32(value.`goal_tolerance`.len))
  for e in value.`goal_tolerance`:
    writeFields(e,w)
  writeFields(value.`goal_time_tolerance`,w)
proc readRos1Control_msgsFollowJointTrajectoryGoal*(r: var Reader): Ros1Control_msgsFollowJointTrajectoryGoal =
  ## ``@brief Read the ordered canonical fields of control_msgs/FollowJointTrajectoryGoal.``
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
  ## ``@see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Control_msgsFollowJointTrajectoryGoal()
  result.`trajectory` = readRos1Trajectory_msgsJointTrajectory(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 6: fail(22)
  let count1 = int(rawcount1)
  result.`path_tolerance` = newSeq[Ros1Control_msgsJointTolerance](count1)
  for i in 0..<count1:
    result.`path_tolerance`[i] = readRos1Control_msgsJointTolerance(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 6: fail(22)
  let count2 = int(rawcount2)
  result.`goal_tolerance` = newSeq[Ros1Control_msgsJointTolerance](count2)
  for i in 0..<count2:
    result.`goal_tolerance`[i] = readRos1Control_msgsJointTolerance(r)
  result.`goal_time_tolerance` = readRos1Duration(r)
proc encode*(value: Ros1Control_msgsFollowJointTrajectoryGoal): seq[byte] =
  ## ``@brief Encode one complete control_msgs/FollowJointTrajectoryGoal value.``
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
  ## ``@see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(7056)
  writeFields(value,w)
  w.bytes
proc decodeRos1Control_msgsFollowJointTrajectoryGoal*(b: seq[byte]): Ros1Control_msgsFollowJointTrajectoryGoal =
  ## ``@brief Decode exactly one complete control_msgs/FollowJointTrajectoryGoal value.``
  ## ``@details Require the complete 40..7056-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,7056)
  result = readRos1Control_msgsFollowJointTrajectoryGoal(r)
  finish(r)
type Ros1Control_msgsFollowJointTrajectoryResult* = object
  ## ``@brief Complete ROS 1 control_msgs/FollowJointTrajectoryResult value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 8..4104 bytes and is identified by``
  ## ``UWVMROS1_71da832be83c08804668aa63576768bbe831f21f5f270cdc8d851b30d2fc4281.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `error_code`*: int32 ## @brief control_msgs/FollowJointTrajectoryResult.error_code: int32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/nim/API-CONTRACT.md
  `error_string`*: string ## @brief control_msgs/FollowJointTrajectoryResult.error_string: string; each string is
  ## 0..4096 bytes; strict UTF-8 with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/nim/API-CONTRACT.md
const Ros1Control_msgsFollowJointTrajectoryResultMaximumWireBytes* = 4104 ## @brief Maximum canonical extent of
## control_msgs/FollowJointTrajectoryResult in
## bytes.
## @details The inclusive bound is 4104 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/nim/API-CONTRACT.md
const Ros1Control_msgsFollowJointTrajectoryResultCodecIdentity* = "UWVMROS1_71da832be83c08804668aa63576768bbe831f21f5f270cdc8d851b30d2fc4281" ## @brief Canonical codec
## identity of
## control_msgs/FollowJointTrajectoryResult.
## @details Exact identity UWVMROS1_71da832be83c08804668aa63576768bbe831f21f5f270cdc8d851b30d2fc4281 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/nim/API-CONTRACT.md
const Ros1Control_msgsFollowJointTrajectoryResultNativeType* = "control_msgs/FollowJointTrajectoryResult" ## @brief Original ROS type name
## for
## control_msgs/FollowJointTrajectoryResult.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/nim/API-CONTRACT.md
const Ros1Control_msgsFollowJointTrajectoryResultNativeIdentity* = "" ## @brief Selected original native identity for
## control_msgs/FollowJointTrajectoryResult.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/nim/API-CONTRACT.md
const Ros1Control_msgsFollowJointTrajectoryResult_SUCCESSFUL*: int32 = 0'i32 ## @brief
## control_msgs/FollowJointTrajectoryResult.SUCCESSFUL:
## original int32 constant.
## @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/nim/API-CONTRACT.md
const Ros1Control_msgsFollowJointTrajectoryResult_INVALID_GOAL*: int32 = -1'i32 ## @brief
## control_msgs/FollowJointTrajectoryResult.INVALID_GOAL:
## original int32 constant.
## @details Exact admitted value -1. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/nim/API-CONTRACT.md
const Ros1Control_msgsFollowJointTrajectoryResult_INVALID_JOINTS*: int32 = -2'i32 ## @brief
## control_msgs/FollowJointTrajectoryResult.INVALID_JOINTS:
## original int32 constant.
## @details Exact admitted value -2. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/nim/API-CONTRACT.md
const Ros1Control_msgsFollowJointTrajectoryResult_OLD_HEADER_TIMESTAMP*: int32 = -3'i32 ## @brief
## control_msgs/FollowJointTrajectoryResult.OLD_HEADER_TIMESTAMP:
## original int32 constant.
## @details Exact admitted value -3. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/nim/API-CONTRACT.md
const Ros1Control_msgsFollowJointTrajectoryResult_PATH_TOLERANCE_VIOLATED*: int32 = -4'i32 ## @brief
## control_msgs/FollowJointTrajectoryResult.PATH_TOLERANCE_VIOLATED:
## original int32 constant.
## @details Exact admitted value -4. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/nim/API-CONTRACT.md
const Ros1Control_msgsFollowJointTrajectoryResult_GOAL_TOLERANCE_VIOLATED*: int32 = -5'i32 ## @brief
## control_msgs/FollowJointTrajectoryResult.GOAL_TOLERANCE_VIOLATED:
## original int32 constant.
## @details Exact admitted value -5. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Control_msgsFollowJointTrajectoryResult*(): Ros1Control_msgsFollowJointTrajectoryResult =
  ## ``@brief Construct the declared defaults of control_msgs/FollowJointTrajectoryResult.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/nim/API-CONTRACT.md``
  result.`error_code` = 0
  result.`error_string` = ""
proc writeFields*(value: Ros1Control_msgsFollowJointTrajectoryResult; w: var Writer) =
  ## ``@brief Append every canonical field of control_msgs/FollowJointTrajectoryResult.``
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
  ## ``@see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`error_code`)
  putString(w,value.`error_string`,4096)
proc readRos1Control_msgsFollowJointTrajectoryResult*(r: var Reader): Ros1Control_msgsFollowJointTrajectoryResult =
  ## ``@brief Read the ordered canonical fields of control_msgs/FollowJointTrajectoryResult.``
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
  ## ``@see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Control_msgsFollowJointTrajectoryResult()
  result.`error_code` = getInteger(r,int32)
  result.`error_string` = getString(r,4096)
proc encode*(value: Ros1Control_msgsFollowJointTrajectoryResult): seq[byte] =
  ## ``@brief Encode one complete control_msgs/FollowJointTrajectoryResult value.``
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
  ## ``@see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(4104)
  writeFields(value,w)
  w.bytes
proc decodeRos1Control_msgsFollowJointTrajectoryResult*(b: seq[byte]): Ros1Control_msgsFollowJointTrajectoryResult =
  ## ``@brief Decode exactly one complete control_msgs/FollowJointTrajectoryResult value.``
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
  ## ``@see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,4104)
  result = readRos1Control_msgsFollowJointTrajectoryResult(r)
  finish(r)
type Ros1Control_msgsFollowJointTrajectoryFeedback* = object
  ## ``@brief Complete ROS 1 control_msgs/FollowJointTrajectoryFeedback value.``
  ## ``@details All 5 declared fields are retained in source order. The canonical representation``
  ## ``occupies 92..2356 bytes and is identified by``
  ## ``UWVMROS1_fbb2813fa8fe3e2b4a0c7e968fb5ef037df0af707b9439e8615bc3d447db6913.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `header`*: Ros1Std_msgsHeader ## @brief control_msgs/FollowJointTrajectoryFeedback.header: std_msgs/Header.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/nim/API-CONTRACT.md
  `joint_names`*: seq[string] ## @brief control_msgs/FollowJointTrajectoryFeedback.joint_names: string; 0..6 elements;
  ## each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/nim/API-CONTRACT.md
  `desired`*: Ros1Trajectory_msgsJointTrajectoryPoint ## @brief control_msgs/FollowJointTrajectoryFeedback.desired:
  ## trajectory_msgs/JointTrajectoryPoint.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/nim/API-CONTRACT.md
  `actual`*: Ros1Trajectory_msgsJointTrajectoryPoint ## @brief control_msgs/FollowJointTrajectoryFeedback.actual:
  ## trajectory_msgs/JointTrajectoryPoint.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/nim/API-CONTRACT.md
  `error`*: Ros1Trajectory_msgsJointTrajectoryPoint ## @brief control_msgs/FollowJointTrajectoryFeedback.error:
  ## trajectory_msgs/JointTrajectoryPoint.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/nim/API-CONTRACT.md
const Ros1Control_msgsFollowJointTrajectoryFeedbackMaximumWireBytes* = 2356 ## @brief Maximum canonical extent of
## control_msgs/FollowJointTrajectoryFeedback
## in bytes.
## @details The inclusive bound is 2356 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/nim/API-CONTRACT.md
const Ros1Control_msgsFollowJointTrajectoryFeedbackCodecIdentity* = "UWVMROS1_fbb2813fa8fe3e2b4a0c7e968fb5ef037df0af707b9439e8615bc3d447db6913" ## @brief Canonical codec
## identity of
## control_msgs/FollowJointTrajectoryFeedback.
## @details Exact identity UWVMROS1_fbb2813fa8fe3e2b4a0c7e968fb5ef037df0af707b9439e8615bc3d447db6913 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/nim/API-CONTRACT.md
const Ros1Control_msgsFollowJointTrajectoryFeedbackNativeType* = "control_msgs/FollowJointTrajectoryFeedback" ## @brief Original ROS type name
## for
## control_msgs/FollowJointTrajectoryFeedback.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/nim/API-CONTRACT.md
const Ros1Control_msgsFollowJointTrajectoryFeedbackNativeIdentity* = "" ## @brief Selected original native identity for
## control_msgs/FollowJointTrajectoryFeedback.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Control_msgsFollowJointTrajectoryFeedback*(): Ros1Control_msgsFollowJointTrajectoryFeedback =
  ## ``@brief Construct the declared defaults of control_msgs/FollowJointTrajectoryFeedback.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/nim/API-CONTRACT.md``
  result.`header` = initRos1Std_msgsHeader()
  result.`joint_names` = @[]
  result.`desired` = initRos1Trajectory_msgsJointTrajectoryPoint()
  result.`actual` = initRos1Trajectory_msgsJointTrajectoryPoint()
  result.`error` = initRos1Trajectory_msgsJointTrajectoryPoint()
proc writeFields*(value: Ros1Control_msgsFollowJointTrajectoryFeedback; w: var Writer) =
  ## ``@brief Append every canonical field of control_msgs/FollowJointTrajectoryFeedback.``
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
  ## ``@see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`header`,w)
  if value.`joint_names`.len > 6: fail(22)
  putInteger(w,uint32(value.`joint_names`.len))
  for e in value.`joint_names`:
    putString(w,e,256)
  writeFields(value.`desired`,w)
  writeFields(value.`actual`,w)
  writeFields(value.`error`,w)
proc readRos1Control_msgsFollowJointTrajectoryFeedback*(r: var Reader): Ros1Control_msgsFollowJointTrajectoryFeedback =
  ## ``@brief Read the ordered canonical fields of control_msgs/FollowJointTrajectoryFeedback.``
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
  ## ``@see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Control_msgsFollowJointTrajectoryFeedback()
  result.`header` = readRos1Std_msgsHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 6: fail(22)
  let count1 = int(rawcount1)
  result.`joint_names` = newSeq[string](count1)
  for i in 0..<count1:
    result.`joint_names`[i] = getString(r,256)
  result.`desired` = readRos1Trajectory_msgsJointTrajectoryPoint(r)
  result.`actual` = readRos1Trajectory_msgsJointTrajectoryPoint(r)
  result.`error` = readRos1Trajectory_msgsJointTrajectoryPoint(r)
proc encode*(value: Ros1Control_msgsFollowJointTrajectoryFeedback): seq[byte] =
  ## ``@brief Encode one complete control_msgs/FollowJointTrajectoryFeedback value.``
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
  ## ``@see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(2356)
  writeFields(value,w)
  w.bytes
proc decodeRos1Control_msgsFollowJointTrajectoryFeedback*(b: seq[byte]): Ros1Control_msgsFollowJointTrajectoryFeedback =
  ## ``@brief Decode exactly one complete control_msgs/FollowJointTrajectoryFeedback value.``
  ## ``@details Require the complete 92..2356-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,2356)
  result = readRos1Control_msgsFollowJointTrajectoryFeedback(r)
  finish(r)
type Ros1Geometry_msgsPoint* = object
  ## ``@brief Complete ROS 1 geometry_msgs/Point value.``
  ## ``@details All 3 declared fields are retained in source order. The canonical representation``
  ## ``occupies 24..24 bytes and is identified by``
  ## ``UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `x`*: float64 ## @brief geometry_msgs/Point.x: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Geometry_msgsPoint; share/platform/ros/nim/API-CONTRACT.md
  `y`*: float64 ## @brief geometry_msgs/Point.y: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Geometry_msgsPoint; share/platform/ros/nim/API-CONTRACT.md
  `z`*: float64 ## @brief geometry_msgs/Point.z: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Geometry_msgsPoint; share/platform/ros/nim/API-CONTRACT.md
const Ros1Geometry_msgsPointMaximumWireBytes* = 24 ## @brief Maximum canonical extent of geometry_msgs/Point in bytes.
## @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Geometry_msgsPoint; share/platform/ros/nim/API-CONTRACT.md
const Ros1Geometry_msgsPointCodecIdentity* = "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b" ## @brief Canonical codec
## identity of
## geometry_msgs/Point.
## @details Exact identity UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Geometry_msgsPoint; share/platform/ros/nim/API-CONTRACT.md
const Ros1Geometry_msgsPointNativeType* = "geometry_msgs/Point" ## @brief Original ROS type name for
## geometry_msgs/Point.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Geometry_msgsPoint; share/platform/ros/nim/API-CONTRACT.md
const Ros1Geometry_msgsPointNativeIdentity* = "" ## @brief Selected original native identity for geometry_msgs/Point.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Geometry_msgsPoint; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Geometry_msgsPoint*(): Ros1Geometry_msgsPoint =
  ## ``@brief Construct the declared defaults of geometry_msgs/Point.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Geometry_msgsPoint; share/platform/ros/nim/API-CONTRACT.md``
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
proc writeFields*(value: Ros1Geometry_msgsPoint; w: var Writer) =
  ## ``@brief Append every canonical field of geometry_msgs/Point.``
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
  ## ``@see Ros1Geometry_msgsPoint; share/platform/ros/nim/API-CONTRACT.md``
  putFloat64(w,value.`x`)
  putFloat64(w,value.`y`)
  putFloat64(w,value.`z`)
proc readRos1Geometry_msgsPoint*(r: var Reader): Ros1Geometry_msgsPoint =
  ## ``@brief Read the ordered canonical fields of geometry_msgs/Point.``
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
  ## ``@see Ros1Geometry_msgsPoint; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Geometry_msgsPoint()
  result.`x` = getFloat64(r)
  result.`y` = getFloat64(r)
  result.`z` = getFloat64(r)
proc encode*(value: Ros1Geometry_msgsPoint): seq[byte] =
  ## ``@brief Encode one complete geometry_msgs/Point value.``
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
  ## ``@see Ros1Geometry_msgsPoint; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos1Geometry_msgsPoint*(b: seq[byte]): Ros1Geometry_msgsPoint =
  ## ``@brief Decode exactly one complete geometry_msgs/Point value.``
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
  ## ``@see Ros1Geometry_msgsPoint; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,24)
  result = readRos1Geometry_msgsPoint(r)
  finish(r)
type Ros1Geometry_msgsQuaternion* = object
  ## ``@brief Complete ROS 1 geometry_msgs/Quaternion value.``
  ## ``@details All 4 declared fields are retained in source order. The canonical representation``
  ## ``occupies 32..32 bytes and is identified by``
  ## ``UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `x`*: float64 ## @brief geometry_msgs/Quaternion.x: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Geometry_msgsQuaternion; share/platform/ros/nim/API-CONTRACT.md
  `y`*: float64 ## @brief geometry_msgs/Quaternion.y: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Geometry_msgsQuaternion; share/platform/ros/nim/API-CONTRACT.md
  `z`*: float64 ## @brief geometry_msgs/Quaternion.z: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Geometry_msgsQuaternion; share/platform/ros/nim/API-CONTRACT.md
  `w`*: float64 ## @brief geometry_msgs/Quaternion.w: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Geometry_msgsQuaternion; share/platform/ros/nim/API-CONTRACT.md
const Ros1Geometry_msgsQuaternionMaximumWireBytes* = 32 ## @brief Maximum canonical extent of geometry_msgs/Quaternion
## in bytes.
## @details The inclusive bound is 32 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Geometry_msgsQuaternion; share/platform/ros/nim/API-CONTRACT.md
const Ros1Geometry_msgsQuaternionCodecIdentity* = "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934" ## @brief Canonical codec
## identity of
## geometry_msgs/Quaternion.
## @details Exact identity UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Geometry_msgsQuaternion; share/platform/ros/nim/API-CONTRACT.md
const Ros1Geometry_msgsQuaternionNativeType* = "geometry_msgs/Quaternion" ## @brief Original ROS type name for
## geometry_msgs/Quaternion.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Geometry_msgsQuaternion; share/platform/ros/nim/API-CONTRACT.md
const Ros1Geometry_msgsQuaternionNativeIdentity* = "" ## @brief Selected original native identity for
## geometry_msgs/Quaternion.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Geometry_msgsQuaternion; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Geometry_msgsQuaternion*(): Ros1Geometry_msgsQuaternion =
  ## ``@brief Construct the declared defaults of geometry_msgs/Quaternion.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Geometry_msgsQuaternion; share/platform/ros/nim/API-CONTRACT.md``
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
  result.`w` = 0
proc writeFields*(value: Ros1Geometry_msgsQuaternion; w: var Writer) =
  ## ``@brief Append every canonical field of geometry_msgs/Quaternion.``
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
  ## ``@see Ros1Geometry_msgsQuaternion; share/platform/ros/nim/API-CONTRACT.md``
  putFloat64(w,value.`x`)
  putFloat64(w,value.`y`)
  putFloat64(w,value.`z`)
  putFloat64(w,value.`w`)
proc readRos1Geometry_msgsQuaternion*(r: var Reader): Ros1Geometry_msgsQuaternion =
  ## ``@brief Read the ordered canonical fields of geometry_msgs/Quaternion.``
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
  ## ``@see Ros1Geometry_msgsQuaternion; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Geometry_msgsQuaternion()
  result.`x` = getFloat64(r)
  result.`y` = getFloat64(r)
  result.`z` = getFloat64(r)
  result.`w` = getFloat64(r)
proc encode*(value: Ros1Geometry_msgsQuaternion): seq[byte] =
  ## ``@brief Encode one complete geometry_msgs/Quaternion value.``
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
  ## ``@see Ros1Geometry_msgsQuaternion; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(32)
  writeFields(value,w)
  w.bytes
proc decodeRos1Geometry_msgsQuaternion*(b: seq[byte]): Ros1Geometry_msgsQuaternion =
  ## ``@brief Decode exactly one complete geometry_msgs/Quaternion value.``
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
  ## ``@see Ros1Geometry_msgsQuaternion; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,32)
  result = readRos1Geometry_msgsQuaternion(r)
  finish(r)
type Ros1Geometry_msgsPose* = object
  ## ``@brief Complete ROS 1 geometry_msgs/Pose value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 56..56 bytes and is identified by``
  ## ``UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `position`*: Ros1Geometry_msgsPoint ## @brief geometry_msgs/Pose.position: geometry_msgs/Point.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Geometry_msgsPose; share/platform/ros/nim/API-CONTRACT.md
  `orientation`*: Ros1Geometry_msgsQuaternion ## @brief geometry_msgs/Pose.orientation: geometry_msgs/Quaternion.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Geometry_msgsPose; share/platform/ros/nim/API-CONTRACT.md
const Ros1Geometry_msgsPoseMaximumWireBytes* = 56 ## @brief Maximum canonical extent of geometry_msgs/Pose in bytes.
## @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Geometry_msgsPose; share/platform/ros/nim/API-CONTRACT.md
const Ros1Geometry_msgsPoseCodecIdentity* = "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471" ## @brief Canonical codec
## identity of
## geometry_msgs/Pose.
## @details Exact identity UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Geometry_msgsPose; share/platform/ros/nim/API-CONTRACT.md
const Ros1Geometry_msgsPoseNativeType* = "geometry_msgs/Pose" ## @brief Original ROS type name for geometry_msgs/Pose.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Geometry_msgsPose; share/platform/ros/nim/API-CONTRACT.md
const Ros1Geometry_msgsPoseNativeIdentity* = "" ## @brief Selected original native identity for geometry_msgs/Pose.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Geometry_msgsPose; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Geometry_msgsPose*(): Ros1Geometry_msgsPose =
  ## ``@brief Construct the declared defaults of geometry_msgs/Pose.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Geometry_msgsPose; share/platform/ros/nim/API-CONTRACT.md``
  result.`position` = initRos1Geometry_msgsPoint()
  result.`orientation` = initRos1Geometry_msgsQuaternion()
proc writeFields*(value: Ros1Geometry_msgsPose; w: var Writer) =
  ## ``@brief Append every canonical field of geometry_msgs/Pose.``
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
  ## ``@see Ros1Geometry_msgsPose; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`position`,w)
  writeFields(value.`orientation`,w)
proc readRos1Geometry_msgsPose*(r: var Reader): Ros1Geometry_msgsPose =
  ## ``@brief Read the ordered canonical fields of geometry_msgs/Pose.``
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
  ## ``@see Ros1Geometry_msgsPose; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Geometry_msgsPose()
  result.`position` = readRos1Geometry_msgsPoint(r)
  result.`orientation` = readRos1Geometry_msgsQuaternion(r)
proc encode*(value: Ros1Geometry_msgsPose): seq[byte] =
  ## ``@brief Encode one complete geometry_msgs/Pose value.``
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
  ## ``@see Ros1Geometry_msgsPose; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(56)
  writeFields(value,w)
  w.bytes
proc decodeRos1Geometry_msgsPose*(b: seq[byte]): Ros1Geometry_msgsPose =
  ## ``@brief Decode exactly one complete geometry_msgs/Pose value.``
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
  ## ``@see Ros1Geometry_msgsPose; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,56)
  result = readRos1Geometry_msgsPose(r)
  finish(r)
type Ros1Geometry_msgsPoseStamped* = object
  ## ``@brief Complete ROS 1 geometry_msgs/PoseStamped value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 72..200 bytes and is identified by``
  ## ``UWVMROS1_bb59c4e82f561266c0f10500bfbbd1a809e9c1122ecbf559a812326af3eb2e95.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `header`*: Ros1Std_msgsHeader ## @brief geometry_msgs/PoseStamped.header: std_msgs/Header.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Geometry_msgsPoseStamped; share/platform/ros/nim/API-CONTRACT.md
  `pose`*: Ros1Geometry_msgsPose ## @brief geometry_msgs/PoseStamped.pose: geometry_msgs/Pose.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Geometry_msgsPoseStamped; share/platform/ros/nim/API-CONTRACT.md
const Ros1Geometry_msgsPoseStampedMaximumWireBytes* = 200 ## @brief Maximum canonical extent of
## geometry_msgs/PoseStamped in bytes.
## @details The inclusive bound is 200 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros1Geometry_msgsPoseStamped; share/platform/ros/nim/API-CONTRACT.md
const Ros1Geometry_msgsPoseStampedCodecIdentity* = "UWVMROS1_bb59c4e82f561266c0f10500bfbbd1a809e9c1122ecbf559a812326af3eb2e95" ## @brief Canonical codec
## identity of
## geometry_msgs/PoseStamped.
## @details Exact identity UWVMROS1_bb59c4e82f561266c0f10500bfbbd1a809e9c1122ecbf559a812326af3eb2e95 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Geometry_msgsPoseStamped; share/platform/ros/nim/API-CONTRACT.md
const Ros1Geometry_msgsPoseStampedNativeType* = "geometry_msgs/PoseStamped" ## @brief Original ROS type name for
## geometry_msgs/PoseStamped.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Geometry_msgsPoseStamped; share/platform/ros/nim/API-CONTRACT.md
const Ros1Geometry_msgsPoseStampedNativeIdentity* = "" ## @brief Selected original native identity for
## geometry_msgs/PoseStamped.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Geometry_msgsPoseStamped; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Geometry_msgsPoseStamped*(): Ros1Geometry_msgsPoseStamped =
  ## ``@brief Construct the declared defaults of geometry_msgs/PoseStamped.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Geometry_msgsPoseStamped; share/platform/ros/nim/API-CONTRACT.md``
  result.`header` = initRos1Std_msgsHeader()
  result.`pose` = initRos1Geometry_msgsPose()
proc writeFields*(value: Ros1Geometry_msgsPoseStamped; w: var Writer) =
  ## ``@brief Append every canonical field of geometry_msgs/PoseStamped.``
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
  ## ``@see Ros1Geometry_msgsPoseStamped; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`header`,w)
  writeFields(value.`pose`,w)
proc readRos1Geometry_msgsPoseStamped*(r: var Reader): Ros1Geometry_msgsPoseStamped =
  ## ``@brief Read the ordered canonical fields of geometry_msgs/PoseStamped.``
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
  ## ``@see Ros1Geometry_msgsPoseStamped; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Geometry_msgsPoseStamped()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`pose` = readRos1Geometry_msgsPose(r)
proc encode*(value: Ros1Geometry_msgsPoseStamped): seq[byte] =
  ## ``@brief Encode one complete geometry_msgs/PoseStamped value.``
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
  ## ``@see Ros1Geometry_msgsPoseStamped; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(200)
  writeFields(value,w)
  w.bytes
proc decodeRos1Geometry_msgsPoseStamped*(b: seq[byte]): Ros1Geometry_msgsPoseStamped =
  ## ``@brief Decode exactly one complete geometry_msgs/PoseStamped value.``
  ## ``@details Require the complete 72..200-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros1Geometry_msgsPoseStamped; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,200)
  result = readRos1Geometry_msgsPoseStamped(r)
  finish(r)
type Ros1Geometry_msgsVector3* = object
  ## ``@brief Complete ROS 1 geometry_msgs/Vector3 value.``
  ## ``@details All 3 declared fields are retained in source order. The canonical representation``
  ## ``occupies 24..24 bytes and is identified by``
  ## ``UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `x`*: float64 ## @brief geometry_msgs/Vector3.x: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Geometry_msgsVector3; share/platform/ros/nim/API-CONTRACT.md
  `y`*: float64 ## @brief geometry_msgs/Vector3.y: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Geometry_msgsVector3; share/platform/ros/nim/API-CONTRACT.md
  `z`*: float64 ## @brief geometry_msgs/Vector3.z: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Geometry_msgsVector3; share/platform/ros/nim/API-CONTRACT.md
const Ros1Geometry_msgsVector3MaximumWireBytes* = 24 ## @brief Maximum canonical extent of geometry_msgs/Vector3 in
## bytes.
## @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Geometry_msgsVector3; share/platform/ros/nim/API-CONTRACT.md
const Ros1Geometry_msgsVector3CodecIdentity* = "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc" ## @brief Canonical codec
## identity of
## geometry_msgs/Vector3.
## @details Exact identity UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Geometry_msgsVector3; share/platform/ros/nim/API-CONTRACT.md
const Ros1Geometry_msgsVector3NativeType* = "geometry_msgs/Vector3" ## @brief Original ROS type name for
## geometry_msgs/Vector3.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Geometry_msgsVector3; share/platform/ros/nim/API-CONTRACT.md
const Ros1Geometry_msgsVector3NativeIdentity* = "" ## @brief Selected original native identity for
## geometry_msgs/Vector3.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Geometry_msgsVector3; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Geometry_msgsVector3*(): Ros1Geometry_msgsVector3 =
  ## ``@brief Construct the declared defaults of geometry_msgs/Vector3.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Geometry_msgsVector3; share/platform/ros/nim/API-CONTRACT.md``
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
proc writeFields*(value: Ros1Geometry_msgsVector3; w: var Writer) =
  ## ``@brief Append every canonical field of geometry_msgs/Vector3.``
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
  ## ``@see Ros1Geometry_msgsVector3; share/platform/ros/nim/API-CONTRACT.md``
  putFloat64(w,value.`x`)
  putFloat64(w,value.`y`)
  putFloat64(w,value.`z`)
proc readRos1Geometry_msgsVector3*(r: var Reader): Ros1Geometry_msgsVector3 =
  ## ``@brief Read the ordered canonical fields of geometry_msgs/Vector3.``
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
  ## ``@see Ros1Geometry_msgsVector3; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Geometry_msgsVector3()
  result.`x` = getFloat64(r)
  result.`y` = getFloat64(r)
  result.`z` = getFloat64(r)
proc encode*(value: Ros1Geometry_msgsVector3): seq[byte] =
  ## ``@brief Encode one complete geometry_msgs/Vector3 value.``
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
  ## ``@see Ros1Geometry_msgsVector3; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos1Geometry_msgsVector3*(b: seq[byte]): Ros1Geometry_msgsVector3 =
  ## ``@brief Decode exactly one complete geometry_msgs/Vector3 value.``
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
  ## ``@see Ros1Geometry_msgsVector3; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,24)
  result = readRos1Geometry_msgsVector3(r)
  finish(r)
type Ros1Geometry_msgsTwist* = object
  ## ``@brief Complete ROS 1 geometry_msgs/Twist value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 48..48 bytes and is identified by``
  ## ``UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `linear`*: Ros1Geometry_msgsVector3 ## @brief geometry_msgs/Twist.linear: geometry_msgs/Vector3.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Geometry_msgsTwist; share/platform/ros/nim/API-CONTRACT.md
  `angular`*: Ros1Geometry_msgsVector3 ## @brief geometry_msgs/Twist.angular: geometry_msgs/Vector3.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Geometry_msgsTwist; share/platform/ros/nim/API-CONTRACT.md
const Ros1Geometry_msgsTwistMaximumWireBytes* = 48 ## @brief Maximum canonical extent of geometry_msgs/Twist in bytes.
## @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Geometry_msgsTwist; share/platform/ros/nim/API-CONTRACT.md
const Ros1Geometry_msgsTwistCodecIdentity* = "UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921" ## @brief Canonical codec
## identity of
## geometry_msgs/Twist.
## @details Exact identity UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Geometry_msgsTwist; share/platform/ros/nim/API-CONTRACT.md
const Ros1Geometry_msgsTwistNativeType* = "geometry_msgs/Twist" ## @brief Original ROS type name for
## geometry_msgs/Twist.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Geometry_msgsTwist; share/platform/ros/nim/API-CONTRACT.md
const Ros1Geometry_msgsTwistNativeIdentity* = "" ## @brief Selected original native identity for geometry_msgs/Twist.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Geometry_msgsTwist; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Geometry_msgsTwist*(): Ros1Geometry_msgsTwist =
  ## ``@brief Construct the declared defaults of geometry_msgs/Twist.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Geometry_msgsTwist; share/platform/ros/nim/API-CONTRACT.md``
  result.`linear` = initRos1Geometry_msgsVector3()
  result.`angular` = initRos1Geometry_msgsVector3()
proc writeFields*(value: Ros1Geometry_msgsTwist; w: var Writer) =
  ## ``@brief Append every canonical field of geometry_msgs/Twist.``
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
  ## ``@see Ros1Geometry_msgsTwist; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`linear`,w)
  writeFields(value.`angular`,w)
proc readRos1Geometry_msgsTwist*(r: var Reader): Ros1Geometry_msgsTwist =
  ## ``@brief Read the ordered canonical fields of geometry_msgs/Twist.``
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
  ## ``@see Ros1Geometry_msgsTwist; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Geometry_msgsTwist()
  result.`linear` = readRos1Geometry_msgsVector3(r)
  result.`angular` = readRos1Geometry_msgsVector3(r)
proc encode*(value: Ros1Geometry_msgsTwist): seq[byte] =
  ## ``@brief Encode one complete geometry_msgs/Twist value.``
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
  ## ``@see Ros1Geometry_msgsTwist; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(48)
  writeFields(value,w)
  w.bytes
proc decodeRos1Geometry_msgsTwist*(b: seq[byte]): Ros1Geometry_msgsTwist =
  ## ``@brief Decode exactly one complete geometry_msgs/Twist value.``
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
  ## ``@see Ros1Geometry_msgsTwist; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,48)
  result = readRos1Geometry_msgsTwist(r)
  finish(r)
type Ros1Geometry_msgsWrench* = object
  ## ``@brief Complete ROS 1 geometry_msgs/Wrench value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 48..48 bytes and is identified by``
  ## ``UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `force`*: Ros1Geometry_msgsVector3 ## @brief geometry_msgs/Wrench.force: geometry_msgs/Vector3.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Geometry_msgsWrench; share/platform/ros/nim/API-CONTRACT.md
  `torque`*: Ros1Geometry_msgsVector3 ## @brief geometry_msgs/Wrench.torque: geometry_msgs/Vector3.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Geometry_msgsWrench; share/platform/ros/nim/API-CONTRACT.md
const Ros1Geometry_msgsWrenchMaximumWireBytes* = 48 ## @brief Maximum canonical extent of geometry_msgs/Wrench in bytes.
## @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Geometry_msgsWrench; share/platform/ros/nim/API-CONTRACT.md
const Ros1Geometry_msgsWrenchCodecIdentity* = "UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3" ## @brief Canonical codec
## identity of
## geometry_msgs/Wrench.
## @details Exact identity UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Geometry_msgsWrench; share/platform/ros/nim/API-CONTRACT.md
const Ros1Geometry_msgsWrenchNativeType* = "geometry_msgs/Wrench" ## @brief Original ROS type name for
## geometry_msgs/Wrench.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Geometry_msgsWrench; share/platform/ros/nim/API-CONTRACT.md
const Ros1Geometry_msgsWrenchNativeIdentity* = "" ## @brief Selected original native identity for geometry_msgs/Wrench.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Geometry_msgsWrench; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Geometry_msgsWrench*(): Ros1Geometry_msgsWrench =
  ## ``@brief Construct the declared defaults of geometry_msgs/Wrench.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Geometry_msgsWrench; share/platform/ros/nim/API-CONTRACT.md``
  result.`force` = initRos1Geometry_msgsVector3()
  result.`torque` = initRos1Geometry_msgsVector3()
proc writeFields*(value: Ros1Geometry_msgsWrench; w: var Writer) =
  ## ``@brief Append every canonical field of geometry_msgs/Wrench.``
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
  ## ``@see Ros1Geometry_msgsWrench; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`force`,w)
  writeFields(value.`torque`,w)
proc readRos1Geometry_msgsWrench*(r: var Reader): Ros1Geometry_msgsWrench =
  ## ``@brief Read the ordered canonical fields of geometry_msgs/Wrench.``
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
  ## ``@see Ros1Geometry_msgsWrench; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Geometry_msgsWrench()
  result.`force` = readRos1Geometry_msgsVector3(r)
  result.`torque` = readRos1Geometry_msgsVector3(r)
proc encode*(value: Ros1Geometry_msgsWrench): seq[byte] =
  ## ``@brief Encode one complete geometry_msgs/Wrench value.``
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
  ## ``@see Ros1Geometry_msgsWrench; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(48)
  writeFields(value,w)
  w.bytes
proc decodeRos1Geometry_msgsWrench*(b: seq[byte]): Ros1Geometry_msgsWrench =
  ## ``@brief Decode exactly one complete geometry_msgs/Wrench value.``
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
  ## ``@see Ros1Geometry_msgsWrench; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,48)
  result = readRos1Geometry_msgsWrench(r)
  finish(r)
type Ros1Sensor_msgsJointState* = object
  ## ``@brief Complete ROS 1 sensor_msgs/JointState value.``
  ## ``@details All 5 declared fields are retained in source order. The canonical representation``
  ## ``occupies 32..1864 bytes and is identified by``
  ## ``UWVMROS1_ee28116009ad317c6a8db950f43d6a712b328b93740460dc70f97a632c3b5e0f.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `header`*: Ros1Std_msgsHeader ## @brief sensor_msgs/JointState.header: std_msgs/Header.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Sensor_msgsJointState; share/platform/ros/nim/API-CONTRACT.md
  `name`*: seq[string] ## @brief sensor_msgs/JointState.name: string; 0..6 elements; each string is 0..256 bytes; strict
  ## UTF-8 with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Sensor_msgsJointState; share/platform/ros/nim/API-CONTRACT.md
  `position`*: seq[float64] ## @brief sensor_msgs/JointState.position: float64; 0..6 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Sensor_msgsJointState; share/platform/ros/nim/API-CONTRACT.md
  `velocity`*: seq[float64] ## @brief sensor_msgs/JointState.velocity: float64; 0..6 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Sensor_msgsJointState; share/platform/ros/nim/API-CONTRACT.md
  `effort`*: seq[float64] ## @brief sensor_msgs/JointState.effort: float64; 0..6 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Sensor_msgsJointState; share/platform/ros/nim/API-CONTRACT.md
const Ros1Sensor_msgsJointStateMaximumWireBytes* = 1864 ## @brief Maximum canonical extent of sensor_msgs/JointState in
## bytes.
## @details The inclusive bound is 1864 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros1Sensor_msgsJointState; share/platform/ros/nim/API-CONTRACT.md
const Ros1Sensor_msgsJointStateCodecIdentity* = "UWVMROS1_ee28116009ad317c6a8db950f43d6a712b328b93740460dc70f97a632c3b5e0f" ## @brief Canonical codec
## identity of
## sensor_msgs/JointState.
## @details Exact identity UWVMROS1_ee28116009ad317c6a8db950f43d6a712b328b93740460dc70f97a632c3b5e0f binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Sensor_msgsJointState; share/platform/ros/nim/API-CONTRACT.md
const Ros1Sensor_msgsJointStateNativeType* = "sensor_msgs/JointState" ## @brief Original ROS type name for
## sensor_msgs/JointState.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Sensor_msgsJointState; share/platform/ros/nim/API-CONTRACT.md
const Ros1Sensor_msgsJointStateNativeIdentity* = "" ## @brief Selected original native identity for
## sensor_msgs/JointState.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Sensor_msgsJointState; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Sensor_msgsJointState*(): Ros1Sensor_msgsJointState =
  ## ``@brief Construct the declared defaults of sensor_msgs/JointState.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Sensor_msgsJointState; share/platform/ros/nim/API-CONTRACT.md``
  result.`header` = initRos1Std_msgsHeader()
  result.`name` = @[]
  result.`position` = @[]
  result.`velocity` = @[]
  result.`effort` = @[]
proc writeFields*(value: Ros1Sensor_msgsJointState; w: var Writer) =
  ## ``@brief Append every canonical field of sensor_msgs/JointState.``
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
  ## ``@see Ros1Sensor_msgsJointState; share/platform/ros/nim/API-CONTRACT.md``
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
  if value.`name`.len > 6: fail(22)
  putInteger(w,uint32(value.`name`.len))
  for e in value.`name`:
    putString(w,e,256)
  if value.`position`.len > 6: fail(22)
  putInteger(w,uint32(value.`position`.len))
  for e in value.`position`:
    putFloat64(w,e)
  if value.`velocity`.len > 6: fail(22)
  putInteger(w,uint32(value.`velocity`.len))
  for e in value.`velocity`:
    putFloat64(w,e)
  if value.`effort`.len > 6: fail(22)
  putInteger(w,uint32(value.`effort`.len))
  for e in value.`effort`:
    putFloat64(w,e)
proc readRos1Sensor_msgsJointState*(r: var Reader): Ros1Sensor_msgsJointState =
  ## ``@brief Read the ordered canonical fields of sensor_msgs/JointState.``
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
  ## ``@see Ros1Sensor_msgsJointState; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Sensor_msgsJointState()
  result.`header` = readRos1Std_msgsHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 6: fail(22)
  let count1 = int(rawcount1)
  result.`name` = newSeq[string](count1)
  for i in 0..<count1:
    result.`name`[i] = getString(r,256)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 6: fail(22)
  let count2 = int(rawcount2)
  result.`position` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`position`[i] = getFloat64(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 6: fail(22)
  let count3 = int(rawcount3)
  result.`velocity` = newSeq[float64](count3)
  for i in 0..<count3:
    result.`velocity`[i] = getFloat64(r)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 6: fail(22)
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
proc encode*(value: Ros1Sensor_msgsJointState): seq[byte] =
  ## ``@brief Encode one complete sensor_msgs/JointState value.``
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
  ## ``@see Ros1Sensor_msgsJointState; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1864)
  writeFields(value,w)
  w.bytes
proc decodeRos1Sensor_msgsJointState*(b: seq[byte]): Ros1Sensor_msgsJointState =
  ## ``@brief Decode exactly one complete sensor_msgs/JointState value.``
  ## ``@details Require the complete 32..1864-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros1Sensor_msgsJointState; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1864)
  result = readRos1Sensor_msgsJointState(r)
  finish(r)
type Ros1Ur_dashboard_msgsAddToLogRequest* = object
  ## ``@brief Complete ROS 1 ur_dashboard_msgs/AddToLogRequest value.``
  ## ``@details All 1 declared fields are retained in source order. The canonical representation``
  ## ``occupies 4..260 bytes and is identified by``
  ## ``UWVMROS1_faf6c1ab9c749a05ae3f4e6196cc1c3574560daae1463ebe8684bf13ea938ac4.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `message`*: string ## @brief ur_dashboard_msgs/AddToLogRequest.message: string; each string is 0..256 bytes; strict
  ## UTF-8 with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsAddToLogRequestMaximumWireBytes* = 260 ## @brief Maximum canonical extent of
## ur_dashboard_msgs/AddToLogRequest in bytes.
## @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsAddToLogRequestCodecIdentity* = "UWVMROS1_faf6c1ab9c749a05ae3f4e6196cc1c3574560daae1463ebe8684bf13ea938ac4" ## @brief Canonical codec
## identity of
## ur_dashboard_msgs/AddToLogRequest.
## @details Exact identity UWVMROS1_faf6c1ab9c749a05ae3f4e6196cc1c3574560daae1463ebe8684bf13ea938ac4 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsAddToLogRequestNativeType* = "ur_dashboard_msgs/AddToLogRequest" ## @brief Original ROS type name
## for
## ur_dashboard_msgs/AddToLogRequest.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsAddToLogRequestNativeIdentity* = "" ## @brief Selected original native identity for
## ur_dashboard_msgs/AddToLogRequest.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_dashboard_msgsAddToLogRequest*(): Ros1Ur_dashboard_msgsAddToLogRequest =
  ## ``@brief Construct the declared defaults of ur_dashboard_msgs/AddToLogRequest.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/nim/API-CONTRACT.md``
  result.`message` = ""
proc writeFields*(value: Ros1Ur_dashboard_msgsAddToLogRequest; w: var Writer) =
  ## ``@brief Append every canonical field of ur_dashboard_msgs/AddToLogRequest.``
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
  ## ``@see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/nim/API-CONTRACT.md``
  putString(w,value.`message`,256)
proc readRos1Ur_dashboard_msgsAddToLogRequest*(r: var Reader): Ros1Ur_dashboard_msgsAddToLogRequest =
  ## ``@brief Read the ordered canonical fields of ur_dashboard_msgs/AddToLogRequest.``
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
  ## ``@see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_dashboard_msgsAddToLogRequest()
  result.`message` = getString(r,256)
proc encode*(value: Ros1Ur_dashboard_msgsAddToLogRequest): seq[byte] =
  ## ``@brief Encode one complete ur_dashboard_msgs/AddToLogRequest value.``
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
  ## ``@see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_dashboard_msgsAddToLogRequest*(b: seq[byte]): Ros1Ur_dashboard_msgsAddToLogRequest =
  ## ``@brief Decode exactly one complete ur_dashboard_msgs/AddToLogRequest value.``
  ## ``@details Require the complete 4..260-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,260)
  result = readRos1Ur_dashboard_msgsAddToLogRequest(r)
  finish(r)
type Ros1Ur_dashboard_msgsAddToLogResponse* = object
  ## ``@brief Complete ROS 1 ur_dashboard_msgs/AddToLogResponse value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 5..261 bytes and is identified by``
  ## ``UWVMROS1_d495f7609d04abde44cb35ec5114618a2875e0a30986d2f7cc62c8ce99354e7c.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `answer`*: string ## @brief ur_dashboard_msgs/AddToLogResponse.answer: string; each string is 0..256 bytes; strict
  ## UTF-8 with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/nim/API-CONTRACT.md
  `success`*: bool ## @brief ur_dashboard_msgs/AddToLogResponse.success: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsAddToLogResponseMaximumWireBytes* = 261 ## @brief Maximum canonical extent of
## ur_dashboard_msgs/AddToLogResponse in bytes.
## @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsAddToLogResponseCodecIdentity* = "UWVMROS1_d495f7609d04abde44cb35ec5114618a2875e0a30986d2f7cc62c8ce99354e7c" ## @brief Canonical codec
## identity of
## ur_dashboard_msgs/AddToLogResponse.
## @details Exact identity UWVMROS1_d495f7609d04abde44cb35ec5114618a2875e0a30986d2f7cc62c8ce99354e7c binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsAddToLogResponseNativeType* = "ur_dashboard_msgs/AddToLogResponse" ## @brief Original ROS type name
## for
## ur_dashboard_msgs/AddToLogResponse.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsAddToLogResponseNativeIdentity* = "" ## @brief Selected original native identity for
## ur_dashboard_msgs/AddToLogResponse.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_dashboard_msgsAddToLogResponse*(): Ros1Ur_dashboard_msgsAddToLogResponse =
  ## ``@brief Construct the declared defaults of ur_dashboard_msgs/AddToLogResponse.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`answer` = ""
  result.`success` = false
proc writeFields*(value: Ros1Ur_dashboard_msgsAddToLogResponse; w: var Writer) =
  ## ``@brief Append every canonical field of ur_dashboard_msgs/AddToLogResponse.``
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
  ## ``@see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/nim/API-CONTRACT.md``
  putString(w,value.`answer`,256)
  putBool(w,value.`success`)
proc readRos1Ur_dashboard_msgsAddToLogResponse*(r: var Reader): Ros1Ur_dashboard_msgsAddToLogResponse =
  ## ``@brief Read the ordered canonical fields of ur_dashboard_msgs/AddToLogResponse.``
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
  ## ``@see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_dashboard_msgsAddToLogResponse()
  result.`answer` = getString(r,256)
  result.`success` = getBool(r)
proc encode*(value: Ros1Ur_dashboard_msgsAddToLogResponse): seq[byte] =
  ## ``@brief Encode one complete ur_dashboard_msgs/AddToLogResponse value.``
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
  ## ``@see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_dashboard_msgsAddToLogResponse*(b: seq[byte]): Ros1Ur_dashboard_msgsAddToLogResponse =
  ## ``@brief Decode exactly one complete ur_dashboard_msgs/AddToLogResponse value.``
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
  ## ``@see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,261)
  result = readRos1Ur_dashboard_msgsAddToLogResponse(r)
  finish(r)
type Ros1Ur_dashboard_msgsGetLoadedProgramRequest* = object
  ## ``@brief Complete ROS 1 ur_dashboard_msgs/GetLoadedProgramRequest value.``
  ## ``@details All 0 declared fields are retained in source order. The canonical representation``
  ## ``occupies 0..0 bytes and is identified by``
  ## ``UWVMROS1_54eecd0b652707f9c16dcbacbef05902112db993500404e1adaf26618e1d3a1a.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
const Ros1Ur_dashboard_msgsGetLoadedProgramRequestMaximumWireBytes* = 0 ## @brief Maximum canonical extent of
## ur_dashboard_msgs/GetLoadedProgramRequest in
## bytes.
## @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsGetLoadedProgramRequestCodecIdentity* = "UWVMROS1_54eecd0b652707f9c16dcbacbef05902112db993500404e1adaf26618e1d3a1a" ## @brief Canonical codec
## identity of
## ur_dashboard_msgs/GetLoadedProgramRequest.
## @details Exact identity UWVMROS1_54eecd0b652707f9c16dcbacbef05902112db993500404e1adaf26618e1d3a1a binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsGetLoadedProgramRequestNativeType* = "ur_dashboard_msgs/GetLoadedProgramRequest" ## @brief Original ROS type name
## for
## ur_dashboard_msgs/GetLoadedProgramRequest.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsGetLoadedProgramRequestNativeIdentity* = "" ## @brief Selected original native identity for
## ur_dashboard_msgs/GetLoadedProgramRequest.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_dashboard_msgsGetLoadedProgramRequest*(): Ros1Ur_dashboard_msgsGetLoadedProgramRequest =
  ## ``@brief Construct the declared defaults of ur_dashboard_msgs/GetLoadedProgramRequest.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc writeFields*(value: Ros1Ur_dashboard_msgsGetLoadedProgramRequest; w: var Writer) =
  ## ``@brief Append every canonical field of ur_dashboard_msgs/GetLoadedProgramRequest.``
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
  ## ``@see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc readRos1Ur_dashboard_msgsGetLoadedProgramRequest*(r: var Reader): Ros1Ur_dashboard_msgsGetLoadedProgramRequest =
  ## ``@brief Read the ordered canonical fields of ur_dashboard_msgs/GetLoadedProgramRequest.``
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
  ## ``@see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_dashboard_msgsGetLoadedProgramRequest()
proc encode*(value: Ros1Ur_dashboard_msgsGetLoadedProgramRequest): seq[byte] =
  ## ``@brief Encode one complete ur_dashboard_msgs/GetLoadedProgramRequest value.``
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
  ## ``@see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_dashboard_msgsGetLoadedProgramRequest*(b: seq[byte]): Ros1Ur_dashboard_msgsGetLoadedProgramRequest =
  ## ``@brief Decode exactly one complete ur_dashboard_msgs/GetLoadedProgramRequest value.``
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
  ## ``@see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,0)
  result = readRos1Ur_dashboard_msgsGetLoadedProgramRequest(r)
  finish(r)
type Ros1Ur_dashboard_msgsGetLoadedProgramResponse* = object
  ## ``@brief Complete ROS 1 ur_dashboard_msgs/GetLoadedProgramResponse value.``
  ## ``@details All 3 declared fields are retained in source order. The canonical representation``
  ## ``occupies 9..521 bytes and is identified by``
  ## ``UWVMROS1_1680747345d40412a4731c48f08c402ac97fb12dd871fb320c2a9d002453f87a.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `answer`*: string ## @brief ur_dashboard_msgs/GetLoadedProgramResponse.answer: string; each string is 0..256 bytes;
  ## strict UTF-8 with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/nim/API-CONTRACT.md
  `program_name`*: string ## @brief ur_dashboard_msgs/GetLoadedProgramResponse.program_name: string; each string is
  ## 0..256 bytes; strict UTF-8 with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/nim/API-CONTRACT.md
  `success`*: bool ## @brief ur_dashboard_msgs/GetLoadedProgramResponse.success: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsGetLoadedProgramResponseMaximumWireBytes* = 521 ## @brief Maximum canonical extent of
## ur_dashboard_msgs/GetLoadedProgramResponse
## in bytes.
## @details The inclusive bound is 521 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsGetLoadedProgramResponseCodecIdentity* = "UWVMROS1_1680747345d40412a4731c48f08c402ac97fb12dd871fb320c2a9d002453f87a" ## @brief Canonical codec
## identity of
## ur_dashboard_msgs/GetLoadedProgramResponse.
## @details Exact identity UWVMROS1_1680747345d40412a4731c48f08c402ac97fb12dd871fb320c2a9d002453f87a binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsGetLoadedProgramResponseNativeType* = "ur_dashboard_msgs/GetLoadedProgramResponse" ## @brief Original ROS type name
## for
## ur_dashboard_msgs/GetLoadedProgramResponse.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsGetLoadedProgramResponseNativeIdentity* = "" ## @brief Selected original native identity for
## ur_dashboard_msgs/GetLoadedProgramResponse.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_dashboard_msgsGetLoadedProgramResponse*(): Ros1Ur_dashboard_msgsGetLoadedProgramResponse =
  ## ``@brief Construct the declared defaults of ur_dashboard_msgs/GetLoadedProgramResponse.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`answer` = ""
  result.`program_name` = ""
  result.`success` = false
proc writeFields*(value: Ros1Ur_dashboard_msgsGetLoadedProgramResponse; w: var Writer) =
  ## ``@brief Append every canonical field of ur_dashboard_msgs/GetLoadedProgramResponse.``
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
  ## ``@see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/nim/API-CONTRACT.md``
  putString(w,value.`answer`,256)
  putString(w,value.`program_name`,256)
  putBool(w,value.`success`)
proc readRos1Ur_dashboard_msgsGetLoadedProgramResponse*(r: var Reader): Ros1Ur_dashboard_msgsGetLoadedProgramResponse =
  ## ``@brief Read the ordered canonical fields of ur_dashboard_msgs/GetLoadedProgramResponse.``
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
  ## ``@see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_dashboard_msgsGetLoadedProgramResponse()
  result.`answer` = getString(r,256)
  result.`program_name` = getString(r,256)
  result.`success` = getBool(r)
proc encode*(value: Ros1Ur_dashboard_msgsGetLoadedProgramResponse): seq[byte] =
  ## ``@brief Encode one complete ur_dashboard_msgs/GetLoadedProgramResponse value.``
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
  ## ``@see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(521)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_dashboard_msgsGetLoadedProgramResponse*(b: seq[byte]): Ros1Ur_dashboard_msgsGetLoadedProgramResponse =
  ## ``@brief Decode exactly one complete ur_dashboard_msgs/GetLoadedProgramResponse value.``
  ## ``@details Require the complete 9..521-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,521)
  result = readRos1Ur_dashboard_msgsGetLoadedProgramResponse(r)
  finish(r)
type Ros1Ur_dashboard_msgsGetProgramStateRequest* = object
  ## ``@brief Complete ROS 1 ur_dashboard_msgs/GetProgramStateRequest value.``
  ## ``@details All 0 declared fields are retained in source order. The canonical representation``
  ## ``occupies 0..0 bytes and is identified by``
  ## ``UWVMROS1_cf14c6f86ef1904f80e88117dc2f2d29a003b52e21bc6569795771f04cf072a2.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
const Ros1Ur_dashboard_msgsGetProgramStateRequestMaximumWireBytes* = 0 ## @brief Maximum canonical extent of
## ur_dashboard_msgs/GetProgramStateRequest in
## bytes.
## @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsGetProgramStateRequestCodecIdentity* = "UWVMROS1_cf14c6f86ef1904f80e88117dc2f2d29a003b52e21bc6569795771f04cf072a2" ## @brief Canonical codec
## identity of
## ur_dashboard_msgs/GetProgramStateRequest.
## @details Exact identity UWVMROS1_cf14c6f86ef1904f80e88117dc2f2d29a003b52e21bc6569795771f04cf072a2 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsGetProgramStateRequestNativeType* = "ur_dashboard_msgs/GetProgramStateRequest" ## @brief Original ROS type name
## for
## ur_dashboard_msgs/GetProgramStateRequest.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsGetProgramStateRequestNativeIdentity* = "" ## @brief Selected original native identity for
## ur_dashboard_msgs/GetProgramStateRequest.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_dashboard_msgsGetProgramStateRequest*(): Ros1Ur_dashboard_msgsGetProgramStateRequest =
  ## ``@brief Construct the declared defaults of ur_dashboard_msgs/GetProgramStateRequest.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc writeFields*(value: Ros1Ur_dashboard_msgsGetProgramStateRequest; w: var Writer) =
  ## ``@brief Append every canonical field of ur_dashboard_msgs/GetProgramStateRequest.``
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
  ## ``@see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc readRos1Ur_dashboard_msgsGetProgramStateRequest*(r: var Reader): Ros1Ur_dashboard_msgsGetProgramStateRequest =
  ## ``@brief Read the ordered canonical fields of ur_dashboard_msgs/GetProgramStateRequest.``
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
  ## ``@see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_dashboard_msgsGetProgramStateRequest()
proc encode*(value: Ros1Ur_dashboard_msgsGetProgramStateRequest): seq[byte] =
  ## ``@brief Encode one complete ur_dashboard_msgs/GetProgramStateRequest value.``
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
  ## ``@see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_dashboard_msgsGetProgramStateRequest*(b: seq[byte]): Ros1Ur_dashboard_msgsGetProgramStateRequest =
  ## ``@brief Decode exactly one complete ur_dashboard_msgs/GetProgramStateRequest value.``
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
  ## ``@see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,0)
  result = readRos1Ur_dashboard_msgsGetProgramStateRequest(r)
  finish(r)
type Ros1Ur_dashboard_msgsProgramState* = object
  ## ``@brief Complete ROS 1 ur_dashboard_msgs/ProgramState value.``
  ## ``@details All 1 declared fields are retained in source order. The canonical representation``
  ## ``occupies 4..260 bytes and is identified by``
  ## ``UWVMROS1_97a57db64f20abcb9929b5296c75d66d994f2e9e26449810197c657694d3850e.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `state`*: string ## @brief ur_dashboard_msgs/ProgramState.state: string; each string is 0..256 bytes; strict UTF-8
  ## with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsProgramStateMaximumWireBytes* = 260 ## @brief Maximum canonical extent of
## ur_dashboard_msgs/ProgramState in bytes.
## @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsProgramStateCodecIdentity* = "UWVMROS1_97a57db64f20abcb9929b5296c75d66d994f2e9e26449810197c657694d3850e" ## @brief Canonical codec
## identity of
## ur_dashboard_msgs/ProgramState.
## @details Exact identity UWVMROS1_97a57db64f20abcb9929b5296c75d66d994f2e9e26449810197c657694d3850e binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsProgramStateNativeType* = "ur_dashboard_msgs/ProgramState" ## @brief Original ROS type name
## for
## ur_dashboard_msgs/ProgramState.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsProgramStateNativeIdentity* = "" ## @brief Selected original native identity for
## ur_dashboard_msgs/ProgramState.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsProgramState_STOPPED*: string = "\x53\x54\x4f\x50\x50\x45\x44" ## @brief
## ur_dashboard_msgs/ProgramState.STOPPED:
## original string constant.
## @details Exact admitted value STOPPED. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsProgramState_PLAYING*: string = "\x50\x4c\x41\x59\x49\x4e\x47" ## @brief
## ur_dashboard_msgs/ProgramState.PLAYING:
## original string constant.
## @details Exact admitted value PLAYING. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsProgramState_PAUSED*: string = "\x50\x41\x55\x53\x45\x44" ## @brief
## ur_dashboard_msgs/ProgramState.PAUSED:
## original string constant.
## @details Exact admitted value PAUSED. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_dashboard_msgsProgramState*(): Ros1Ur_dashboard_msgsProgramState =
  ## ``@brief Construct the declared defaults of ur_dashboard_msgs/ProgramState.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/nim/API-CONTRACT.md``
  result.`state` = ""
proc writeFields*(value: Ros1Ur_dashboard_msgsProgramState; w: var Writer) =
  ## ``@brief Append every canonical field of ur_dashboard_msgs/ProgramState.``
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
  ## ``@see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/nim/API-CONTRACT.md``
  putString(w,value.`state`,256)
proc readRos1Ur_dashboard_msgsProgramState*(r: var Reader): Ros1Ur_dashboard_msgsProgramState =
  ## ``@brief Read the ordered canonical fields of ur_dashboard_msgs/ProgramState.``
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
  ## ``@see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_dashboard_msgsProgramState()
  result.`state` = getString(r,256)
proc encode*(value: Ros1Ur_dashboard_msgsProgramState): seq[byte] =
  ## ``@brief Encode one complete ur_dashboard_msgs/ProgramState value.``
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
  ## ``@see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_dashboard_msgsProgramState*(b: seq[byte]): Ros1Ur_dashboard_msgsProgramState =
  ## ``@brief Decode exactly one complete ur_dashboard_msgs/ProgramState value.``
  ## ``@details Require the complete 4..260-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,260)
  result = readRos1Ur_dashboard_msgsProgramState(r)
  finish(r)
type Ros1Ur_dashboard_msgsGetProgramStateResponse* = object
  ## ``@brief Complete ROS 1 ur_dashboard_msgs/GetProgramStateResponse value.``
  ## ``@details All 4 declared fields are retained in source order. The canonical representation``
  ## ``occupies 13..781 bytes and is identified by``
  ## ``UWVMROS1_366caf89303bfff48d3c0f89aa2a640c3d29af5a0c19d76ceccf26d50c3ab2ed.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `state`*: Ros1Ur_dashboard_msgsProgramState ## @brief ur_dashboard_msgs/GetProgramStateResponse.state:
  ## ur_dashboard_msgs/ProgramState.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/nim/API-CONTRACT.md
  `program_name`*: string ## @brief ur_dashboard_msgs/GetProgramStateResponse.program_name: string; each string is
  ## 0..256 bytes; strict UTF-8 with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/nim/API-CONTRACT.md
  `answer`*: string ## @brief ur_dashboard_msgs/GetProgramStateResponse.answer: string; each string is 0..256 bytes;
  ## strict UTF-8 with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/nim/API-CONTRACT.md
  `success`*: bool ## @brief ur_dashboard_msgs/GetProgramStateResponse.success: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsGetProgramStateResponseMaximumWireBytes* = 781 ## @brief Maximum canonical extent of
## ur_dashboard_msgs/GetProgramStateResponse
## in bytes.
## @details The inclusive bound is 781 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsGetProgramStateResponseCodecIdentity* = "UWVMROS1_366caf89303bfff48d3c0f89aa2a640c3d29af5a0c19d76ceccf26d50c3ab2ed" ## @brief Canonical codec
## identity of
## ur_dashboard_msgs/GetProgramStateResponse.
## @details Exact identity UWVMROS1_366caf89303bfff48d3c0f89aa2a640c3d29af5a0c19d76ceccf26d50c3ab2ed binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsGetProgramStateResponseNativeType* = "ur_dashboard_msgs/GetProgramStateResponse" ## @brief Original ROS type name
## for
## ur_dashboard_msgs/GetProgramStateResponse.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsGetProgramStateResponseNativeIdentity* = "" ## @brief Selected original native identity for
## ur_dashboard_msgs/GetProgramStateResponse.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_dashboard_msgsGetProgramStateResponse*(): Ros1Ur_dashboard_msgsGetProgramStateResponse =
  ## ``@brief Construct the declared defaults of ur_dashboard_msgs/GetProgramStateResponse.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`state` = initRos1Ur_dashboard_msgsProgramState()
  result.`program_name` = ""
  result.`answer` = ""
  result.`success` = false
proc writeFields*(value: Ros1Ur_dashboard_msgsGetProgramStateResponse; w: var Writer) =
  ## ``@brief Append every canonical field of ur_dashboard_msgs/GetProgramStateResponse.``
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
  ## ``@see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`state`,w)
  putString(w,value.`program_name`,256)
  putString(w,value.`answer`,256)
  putBool(w,value.`success`)
proc readRos1Ur_dashboard_msgsGetProgramStateResponse*(r: var Reader): Ros1Ur_dashboard_msgsGetProgramStateResponse =
  ## ``@brief Read the ordered canonical fields of ur_dashboard_msgs/GetProgramStateResponse.``
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
  ## ``@see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_dashboard_msgsGetProgramStateResponse()
  result.`state` = readRos1Ur_dashboard_msgsProgramState(r)
  result.`program_name` = getString(r,256)
  result.`answer` = getString(r,256)
  result.`success` = getBool(r)
proc encode*(value: Ros1Ur_dashboard_msgsGetProgramStateResponse): seq[byte] =
  ## ``@brief Encode one complete ur_dashboard_msgs/GetProgramStateResponse value.``
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
  ## ``@see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(781)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_dashboard_msgsGetProgramStateResponse*(b: seq[byte]): Ros1Ur_dashboard_msgsGetProgramStateResponse =
  ## ``@brief Decode exactly one complete ur_dashboard_msgs/GetProgramStateResponse value.``
  ## ``@details Require the complete 13..781-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,781)
  result = readRos1Ur_dashboard_msgsGetProgramStateResponse(r)
  finish(r)
type Ros1Ur_dashboard_msgsGetRobotModeRequest* = object
  ## ``@brief Complete ROS 1 ur_dashboard_msgs/GetRobotModeRequest value.``
  ## ``@details All 0 declared fields are retained in source order. The canonical representation``
  ## ``occupies 0..0 bytes and is identified by``
  ## ``UWVMROS1_b9ffe283d7dbcb85879dbf6964d393f5d44661227bb26e1acc34308edb288609.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
const Ros1Ur_dashboard_msgsGetRobotModeRequestMaximumWireBytes* = 0 ## @brief Maximum canonical extent of
## ur_dashboard_msgs/GetRobotModeRequest in bytes.
## @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsGetRobotModeRequestCodecIdentity* = "UWVMROS1_b9ffe283d7dbcb85879dbf6964d393f5d44661227bb26e1acc34308edb288609" ## @brief Canonical codec
## identity of
## ur_dashboard_msgs/GetRobotModeRequest.
## @details Exact identity UWVMROS1_b9ffe283d7dbcb85879dbf6964d393f5d44661227bb26e1acc34308edb288609 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsGetRobotModeRequestNativeType* = "ur_dashboard_msgs/GetRobotModeRequest" ## @brief Original ROS type name
## for
## ur_dashboard_msgs/GetRobotModeRequest.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsGetRobotModeRequestNativeIdentity* = "" ## @brief Selected original native identity for
## ur_dashboard_msgs/GetRobotModeRequest.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_dashboard_msgsGetRobotModeRequest*(): Ros1Ur_dashboard_msgsGetRobotModeRequest =
  ## ``@brief Construct the declared defaults of ur_dashboard_msgs/GetRobotModeRequest.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc writeFields*(value: Ros1Ur_dashboard_msgsGetRobotModeRequest; w: var Writer) =
  ## ``@brief Append every canonical field of ur_dashboard_msgs/GetRobotModeRequest.``
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
  ## ``@see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc readRos1Ur_dashboard_msgsGetRobotModeRequest*(r: var Reader): Ros1Ur_dashboard_msgsGetRobotModeRequest =
  ## ``@brief Read the ordered canonical fields of ur_dashboard_msgs/GetRobotModeRequest.``
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
  ## ``@see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_dashboard_msgsGetRobotModeRequest()
proc encode*(value: Ros1Ur_dashboard_msgsGetRobotModeRequest): seq[byte] =
  ## ``@brief Encode one complete ur_dashboard_msgs/GetRobotModeRequest value.``
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
  ## ``@see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_dashboard_msgsGetRobotModeRequest*(b: seq[byte]): Ros1Ur_dashboard_msgsGetRobotModeRequest =
  ## ``@brief Decode exactly one complete ur_dashboard_msgs/GetRobotModeRequest value.``
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
  ## ``@see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,0)
  result = readRos1Ur_dashboard_msgsGetRobotModeRequest(r)
  finish(r)
type Ros1Ur_dashboard_msgsRobotMode* = object
  ## ``@brief Complete ROS 1 ur_dashboard_msgs/RobotMode value.``
  ## ``@details All 1 declared fields are retained in source order. The canonical representation``
  ## ``occupies 1..1 bytes and is identified by``
  ## ``UWVMROS1_b2772853eff2ec9b849b6de4a90ce98487a8eff49d1371283dce503908702066.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `mode`*: int8 ## @brief ur_dashboard_msgs/RobotMode.mode: int8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsRobotModeMaximumWireBytes* = 1 ## @brief Maximum canonical extent of
## ur_dashboard_msgs/RobotMode in bytes.
## @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsRobotModeCodecIdentity* = "UWVMROS1_b2772853eff2ec9b849b6de4a90ce98487a8eff49d1371283dce503908702066" ## @brief Canonical codec
## identity of
## ur_dashboard_msgs/RobotMode.
## @details Exact identity UWVMROS1_b2772853eff2ec9b849b6de4a90ce98487a8eff49d1371283dce503908702066 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsRobotModeNativeType* = "ur_dashboard_msgs/RobotMode" ## @brief Original ROS type name for
## ur_dashboard_msgs/RobotMode.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsRobotModeNativeIdentity* = "" ## @brief Selected original native identity for
## ur_dashboard_msgs/RobotMode.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsRobotMode_NO_CONTROLLER*: int8 = -1'i8 ## @brief ur_dashboard_msgs/RobotMode.NO_CONTROLLER:
## original int8 constant.
## @details Exact admitted value -1. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsRobotMode_DISCONNECTED*: int8 = 0'i8 ## @brief ur_dashboard_msgs/RobotMode.DISCONNECTED:
## original int8 constant.
## @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsRobotMode_CONFIRM_SAFETY*: int8 = 1'i8 ## @brief ur_dashboard_msgs/RobotMode.CONFIRM_SAFETY:
## original int8 constant.
## @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsRobotMode_BOOTING*: int8 = 2'i8 ## @brief ur_dashboard_msgs/RobotMode.BOOTING: original int8
## constant.
## @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsRobotMode_POWER_OFF*: int8 = 3'i8 ## @brief ur_dashboard_msgs/RobotMode.POWER_OFF: original
## int8 constant.
## @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsRobotMode_POWER_ON*: int8 = 4'i8 ## @brief ur_dashboard_msgs/RobotMode.POWER_ON: original
## int8 constant.
## @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsRobotMode_IDLE*: int8 = 5'i8 ## @brief ur_dashboard_msgs/RobotMode.IDLE: original int8
## constant.
## @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsRobotMode_BACKDRIVE*: int8 = 6'i8 ## @brief ur_dashboard_msgs/RobotMode.BACKDRIVE: original
## int8 constant.
## @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsRobotMode_RUNNING*: int8 = 7'i8 ## @brief ur_dashboard_msgs/RobotMode.RUNNING: original int8
## constant.
## @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsRobotMode_UPDATING_FIRMWARE*: int8 = 8'i8 ## @brief
## ur_dashboard_msgs/RobotMode.UPDATING_FIRMWARE:
## original int8 constant.
## @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_dashboard_msgsRobotMode*(): Ros1Ur_dashboard_msgsRobotMode =
  ## ``@brief Construct the declared defaults of ur_dashboard_msgs/RobotMode.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/nim/API-CONTRACT.md``
  result.`mode` = 0
proc writeFields*(value: Ros1Ur_dashboard_msgsRobotMode; w: var Writer) =
  ## ``@brief Append every canonical field of ur_dashboard_msgs/RobotMode.``
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
  ## ``@see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`mode`)
proc readRos1Ur_dashboard_msgsRobotMode*(r: var Reader): Ros1Ur_dashboard_msgsRobotMode =
  ## ``@brief Read the ordered canonical fields of ur_dashboard_msgs/RobotMode.``
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
  ## ``@see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_dashboard_msgsRobotMode()
  result.`mode` = getInteger(r,int8)
proc encode*(value: Ros1Ur_dashboard_msgsRobotMode): seq[byte] =
  ## ``@brief Encode one complete ur_dashboard_msgs/RobotMode value.``
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
  ## ``@see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_dashboard_msgsRobotMode*(b: seq[byte]): Ros1Ur_dashboard_msgsRobotMode =
  ## ``@brief Decode exactly one complete ur_dashboard_msgs/RobotMode value.``
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
  ## ``@see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos1Ur_dashboard_msgsRobotMode(r)
  finish(r)
type Ros1Ur_dashboard_msgsGetRobotModeResponse* = object
  ## ``@brief Complete ROS 1 ur_dashboard_msgs/GetRobotModeResponse value.``
  ## ``@details All 3 declared fields are retained in source order. The canonical representation``
  ## ``occupies 6..262 bytes and is identified by``
  ## ``UWVMROS1_f6c0d0d03a956a34b00fd63540226b6abb8b106e2a35cb912b4886a5c4cecc3f.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `robot_mode`*: Ros1Ur_dashboard_msgsRobotMode ## @brief ur_dashboard_msgs/GetRobotModeResponse.robot_mode:
  ## ur_dashboard_msgs/RobotMode.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/nim/API-CONTRACT.md
  `answer`*: string ## @brief ur_dashboard_msgs/GetRobotModeResponse.answer: string; each string is 0..256 bytes; strict
  ## UTF-8 with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/nim/API-CONTRACT.md
  `success`*: bool ## @brief ur_dashboard_msgs/GetRobotModeResponse.success: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsGetRobotModeResponseMaximumWireBytes* = 262 ## @brief Maximum canonical extent of
## ur_dashboard_msgs/GetRobotModeResponse in
## bytes.
## @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsGetRobotModeResponseCodecIdentity* = "UWVMROS1_f6c0d0d03a956a34b00fd63540226b6abb8b106e2a35cb912b4886a5c4cecc3f" ## @brief Canonical codec
## identity of
## ur_dashboard_msgs/GetRobotModeResponse.
## @details Exact identity UWVMROS1_f6c0d0d03a956a34b00fd63540226b6abb8b106e2a35cb912b4886a5c4cecc3f binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsGetRobotModeResponseNativeType* = "ur_dashboard_msgs/GetRobotModeResponse" ## @brief Original ROS type name
## for
## ur_dashboard_msgs/GetRobotModeResponse.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsGetRobotModeResponseNativeIdentity* = "" ## @brief Selected original native identity for
## ur_dashboard_msgs/GetRobotModeResponse.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_dashboard_msgsGetRobotModeResponse*(): Ros1Ur_dashboard_msgsGetRobotModeResponse =
  ## ``@brief Construct the declared defaults of ur_dashboard_msgs/GetRobotModeResponse.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`robot_mode` = initRos1Ur_dashboard_msgsRobotMode()
  result.`answer` = ""
  result.`success` = false
proc writeFields*(value: Ros1Ur_dashboard_msgsGetRobotModeResponse; w: var Writer) =
  ## ``@brief Append every canonical field of ur_dashboard_msgs/GetRobotModeResponse.``
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
  ## ``@see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`robot_mode`,w)
  putString(w,value.`answer`,256)
  putBool(w,value.`success`)
proc readRos1Ur_dashboard_msgsGetRobotModeResponse*(r: var Reader): Ros1Ur_dashboard_msgsGetRobotModeResponse =
  ## ``@brief Read the ordered canonical fields of ur_dashboard_msgs/GetRobotModeResponse.``
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
  ## ``@see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_dashboard_msgsGetRobotModeResponse()
  result.`robot_mode` = readRos1Ur_dashboard_msgsRobotMode(r)
  result.`answer` = getString(r,256)
  result.`success` = getBool(r)
proc encode*(value: Ros1Ur_dashboard_msgsGetRobotModeResponse): seq[byte] =
  ## ``@brief Encode one complete ur_dashboard_msgs/GetRobotModeResponse value.``
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
  ## ``@see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(262)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_dashboard_msgsGetRobotModeResponse*(b: seq[byte]): Ros1Ur_dashboard_msgsGetRobotModeResponse =
  ## ``@brief Decode exactly one complete ur_dashboard_msgs/GetRobotModeResponse value.``
  ## ``@details Require the complete 6..262-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,262)
  result = readRos1Ur_dashboard_msgsGetRobotModeResponse(r)
  finish(r)
type Ros1Ur_dashboard_msgsGetSafetyModeRequest* = object
  ## ``@brief Complete ROS 1 ur_dashboard_msgs/GetSafetyModeRequest value.``
  ## ``@details All 0 declared fields are retained in source order. The canonical representation``
  ## ``occupies 0..0 bytes and is identified by``
  ## ``UWVMROS1_f697e2ff2bcd56523563060a46bca2e1b7af487128f05562fcb18bfa73cbca8b.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
const Ros1Ur_dashboard_msgsGetSafetyModeRequestMaximumWireBytes* = 0 ## @brief Maximum canonical extent of
## ur_dashboard_msgs/GetSafetyModeRequest in bytes.
## @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsGetSafetyModeRequestCodecIdentity* = "UWVMROS1_f697e2ff2bcd56523563060a46bca2e1b7af487128f05562fcb18bfa73cbca8b" ## @brief Canonical codec
## identity of
## ur_dashboard_msgs/GetSafetyModeRequest.
## @details Exact identity UWVMROS1_f697e2ff2bcd56523563060a46bca2e1b7af487128f05562fcb18bfa73cbca8b binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsGetSafetyModeRequestNativeType* = "ur_dashboard_msgs/GetSafetyModeRequest" ## @brief Original ROS type name
## for
## ur_dashboard_msgs/GetSafetyModeRequest.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsGetSafetyModeRequestNativeIdentity* = "" ## @brief Selected original native identity for
## ur_dashboard_msgs/GetSafetyModeRequest.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_dashboard_msgsGetSafetyModeRequest*(): Ros1Ur_dashboard_msgsGetSafetyModeRequest =
  ## ``@brief Construct the declared defaults of ur_dashboard_msgs/GetSafetyModeRequest.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc writeFields*(value: Ros1Ur_dashboard_msgsGetSafetyModeRequest; w: var Writer) =
  ## ``@brief Append every canonical field of ur_dashboard_msgs/GetSafetyModeRequest.``
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
  ## ``@see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc readRos1Ur_dashboard_msgsGetSafetyModeRequest*(r: var Reader): Ros1Ur_dashboard_msgsGetSafetyModeRequest =
  ## ``@brief Read the ordered canonical fields of ur_dashboard_msgs/GetSafetyModeRequest.``
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
  ## ``@see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_dashboard_msgsGetSafetyModeRequest()
proc encode*(value: Ros1Ur_dashboard_msgsGetSafetyModeRequest): seq[byte] =
  ## ``@brief Encode one complete ur_dashboard_msgs/GetSafetyModeRequest value.``
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
  ## ``@see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_dashboard_msgsGetSafetyModeRequest*(b: seq[byte]): Ros1Ur_dashboard_msgsGetSafetyModeRequest =
  ## ``@brief Decode exactly one complete ur_dashboard_msgs/GetSafetyModeRequest value.``
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
  ## ``@see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,0)
  result = readRos1Ur_dashboard_msgsGetSafetyModeRequest(r)
  finish(r)
type Ros1Ur_dashboard_msgsSafetyMode* = object
  ## ``@brief Complete ROS 1 ur_dashboard_msgs/SafetyMode value.``
  ## ``@details All 1 declared fields are retained in source order. The canonical representation``
  ## ``occupies 1..1 bytes and is identified by``
  ## ``UWVMROS1_5a0c2737166cf2e2bd4c17b46c597f674b8d806b802d4e86ee0d76fc55f29cf7.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `mode`*: uint8 ## @brief ur_dashboard_msgs/SafetyMode.mode: uint8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsSafetyModeMaximumWireBytes* = 1 ## @brief Maximum canonical extent of
## ur_dashboard_msgs/SafetyMode in bytes.
## @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsSafetyModeCodecIdentity* = "UWVMROS1_5a0c2737166cf2e2bd4c17b46c597f674b8d806b802d4e86ee0d76fc55f29cf7" ## @brief Canonical codec
## identity of
## ur_dashboard_msgs/SafetyMode.
## @details Exact identity UWVMROS1_5a0c2737166cf2e2bd4c17b46c597f674b8d806b802d4e86ee0d76fc55f29cf7 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsSafetyModeNativeType* = "ur_dashboard_msgs/SafetyMode" ## @brief Original ROS type name for
## ur_dashboard_msgs/SafetyMode.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsSafetyModeNativeIdentity* = "" ## @brief Selected original native identity for
## ur_dashboard_msgs/SafetyMode.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsSafetyMode_NORMAL*: uint8 = 1'u8 ## @brief ur_dashboard_msgs/SafetyMode.NORMAL: original
## uint8 constant.
## @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsSafetyMode_REDUCED*: uint8 = 2'u8 ## @brief ur_dashboard_msgs/SafetyMode.REDUCED: original
## uint8 constant.
## @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsSafetyMode_PROTECTIVE_STOP*: uint8 = 3'u8 ## @brief
## ur_dashboard_msgs/SafetyMode.PROTECTIVE_STOP:
## original uint8 constant.
## @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsSafetyMode_RECOVERY*: uint8 = 4'u8 ## @brief ur_dashboard_msgs/SafetyMode.RECOVERY: original
## uint8 constant.
## @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsSafetyMode_SAFEGUARD_STOP*: uint8 = 5'u8 ## @brief
## ur_dashboard_msgs/SafetyMode.SAFEGUARD_STOP:
## original uint8 constant.
## @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsSafetyMode_SYSTEM_EMERGENCY_STOP*: uint8 = 6'u8 ## @brief
## ur_dashboard_msgs/SafetyMode.SYSTEM_EMERGENCY_STOP:
## original uint8 constant.
## @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsSafetyMode_ROBOT_EMERGENCY_STOP*: uint8 = 7'u8 ## @brief
## ur_dashboard_msgs/SafetyMode.ROBOT_EMERGENCY_STOP:
## original uint8 constant.
## @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsSafetyMode_VIOLATION*: uint8 = 8'u8 ## @brief ur_dashboard_msgs/SafetyMode.VIOLATION:
## original uint8 constant.
## @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsSafetyMode_FAULT*: uint8 = 9'u8 ## @brief ur_dashboard_msgs/SafetyMode.FAULT: original uint8
## constant.
## @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsSafetyMode_VALIDATE_JOINT_ID*: uint8 = 10'u8 ## @brief
## ur_dashboard_msgs/SafetyMode.VALIDATE_JOINT_ID:
## original uint8 constant.
## @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsSafetyMode_UNDEFINED_SAFETY_MODE*: uint8 = 11'u8 ## @brief
## ur_dashboard_msgs/SafetyMode.UNDEFINED_SAFETY_MODE:
## original uint8 constant.
## @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsSafetyMode_AUTOMATIC_MODE_SAFEGUARD_STOP*: uint8 = 12'u8 ## @brief
## ur_dashboard_msgs/SafetyMode.AUTOMATIC_MODE_SAFEGUARD_STOP:
## original uint8 constant.
## @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsSafetyMode_SYSTEM_THREE_POSITION_ENABLING_STOP*: uint8 = 13'u8 ## @brief
## ur_dashboard_msgs/SafetyMode.SYSTEM_THREE_POSITION_ENABLING_STOP:
## original uint8 constant.
## @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_dashboard_msgsSafetyMode*(): Ros1Ur_dashboard_msgsSafetyMode =
  ## ``@brief Construct the declared defaults of ur_dashboard_msgs/SafetyMode.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/nim/API-CONTRACT.md``
  result.`mode` = 0
proc writeFields*(value: Ros1Ur_dashboard_msgsSafetyMode; w: var Writer) =
  ## ``@brief Append every canonical field of ur_dashboard_msgs/SafetyMode.``
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
  ## ``@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`mode`)
proc readRos1Ur_dashboard_msgsSafetyMode*(r: var Reader): Ros1Ur_dashboard_msgsSafetyMode =
  ## ``@brief Read the ordered canonical fields of ur_dashboard_msgs/SafetyMode.``
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
  ## ``@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_dashboard_msgsSafetyMode()
  result.`mode` = getInteger(r,uint8)
proc encode*(value: Ros1Ur_dashboard_msgsSafetyMode): seq[byte] =
  ## ``@brief Encode one complete ur_dashboard_msgs/SafetyMode value.``
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
  ## ``@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_dashboard_msgsSafetyMode*(b: seq[byte]): Ros1Ur_dashboard_msgsSafetyMode =
  ## ``@brief Decode exactly one complete ur_dashboard_msgs/SafetyMode value.``
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
  ## ``@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos1Ur_dashboard_msgsSafetyMode(r)
  finish(r)
type Ros1Ur_dashboard_msgsGetSafetyModeResponse* = object
  ## ``@brief Complete ROS 1 ur_dashboard_msgs/GetSafetyModeResponse value.``
  ## ``@details All 3 declared fields are retained in source order. The canonical representation``
  ## ``occupies 6..262 bytes and is identified by``
  ## ``UWVMROS1_70121af922588eaab9a34855e3da0cde837b1449d2a2d6c28addc70916df1a15.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `safety_mode`*: Ros1Ur_dashboard_msgsSafetyMode ## @brief ur_dashboard_msgs/GetSafetyModeResponse.safety_mode:
  ## ur_dashboard_msgs/SafetyMode.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/nim/API-CONTRACT.md
  `answer`*: string ## @brief ur_dashboard_msgs/GetSafetyModeResponse.answer: string; each string is 0..256 bytes;
  ## strict UTF-8 with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/nim/API-CONTRACT.md
  `success`*: bool ## @brief ur_dashboard_msgs/GetSafetyModeResponse.success: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsGetSafetyModeResponseMaximumWireBytes* = 262 ## @brief Maximum canonical extent of
## ur_dashboard_msgs/GetSafetyModeResponse in
## bytes.
## @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsGetSafetyModeResponseCodecIdentity* = "UWVMROS1_70121af922588eaab9a34855e3da0cde837b1449d2a2d6c28addc70916df1a15" ## @brief Canonical codec
## identity of
## ur_dashboard_msgs/GetSafetyModeResponse.
## @details Exact identity UWVMROS1_70121af922588eaab9a34855e3da0cde837b1449d2a2d6c28addc70916df1a15 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsGetSafetyModeResponseNativeType* = "ur_dashboard_msgs/GetSafetyModeResponse" ## @brief Original ROS type name
## for
## ur_dashboard_msgs/GetSafetyModeResponse.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsGetSafetyModeResponseNativeIdentity* = "" ## @brief Selected original native identity for
## ur_dashboard_msgs/GetSafetyModeResponse.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_dashboard_msgsGetSafetyModeResponse*(): Ros1Ur_dashboard_msgsGetSafetyModeResponse =
  ## ``@brief Construct the declared defaults of ur_dashboard_msgs/GetSafetyModeResponse.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`safety_mode` = initRos1Ur_dashboard_msgsSafetyMode()
  result.`answer` = ""
  result.`success` = false
proc writeFields*(value: Ros1Ur_dashboard_msgsGetSafetyModeResponse; w: var Writer) =
  ## ``@brief Append every canonical field of ur_dashboard_msgs/GetSafetyModeResponse.``
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
  ## ``@see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`safety_mode`,w)
  putString(w,value.`answer`,256)
  putBool(w,value.`success`)
proc readRos1Ur_dashboard_msgsGetSafetyModeResponse*(r: var Reader): Ros1Ur_dashboard_msgsGetSafetyModeResponse =
  ## ``@brief Read the ordered canonical fields of ur_dashboard_msgs/GetSafetyModeResponse.``
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
  ## ``@see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_dashboard_msgsGetSafetyModeResponse()
  result.`safety_mode` = readRos1Ur_dashboard_msgsSafetyMode(r)
  result.`answer` = getString(r,256)
  result.`success` = getBool(r)
proc encode*(value: Ros1Ur_dashboard_msgsGetSafetyModeResponse): seq[byte] =
  ## ``@brief Encode one complete ur_dashboard_msgs/GetSafetyModeResponse value.``
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
  ## ``@see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(262)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_dashboard_msgsGetSafetyModeResponse*(b: seq[byte]): Ros1Ur_dashboard_msgsGetSafetyModeResponse =
  ## ``@brief Decode exactly one complete ur_dashboard_msgs/GetSafetyModeResponse value.``
  ## ``@details Require the complete 6..262-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,262)
  result = readRos1Ur_dashboard_msgsGetSafetyModeResponse(r)
  finish(r)
type Ros1Ur_dashboard_msgsIsInRemoteControlRequest* = object
  ## ``@brief Complete ROS 1 ur_dashboard_msgs/IsInRemoteControlRequest value.``
  ## ``@details All 0 declared fields are retained in source order. The canonical representation``
  ## ``occupies 0..0 bytes and is identified by``
  ## ``UWVMROS1_4b3c39f36f953904eb582d8c5f91161f2864782d4a4ab209a7dab32a117175da.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
const Ros1Ur_dashboard_msgsIsInRemoteControlRequestMaximumWireBytes* = 0 ## @brief Maximum canonical extent of
## ur_dashboard_msgs/IsInRemoteControlRequest
## in bytes.
## @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsIsInRemoteControlRequestCodecIdentity* = "UWVMROS1_4b3c39f36f953904eb582d8c5f91161f2864782d4a4ab209a7dab32a117175da" ## @brief Canonical codec
## identity of
## ur_dashboard_msgs/IsInRemoteControlRequest.
## @details Exact identity UWVMROS1_4b3c39f36f953904eb582d8c5f91161f2864782d4a4ab209a7dab32a117175da binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsIsInRemoteControlRequestNativeType* = "ur_dashboard_msgs/IsInRemoteControlRequest" ## @brief Original ROS type name
## for
## ur_dashboard_msgs/IsInRemoteControlRequest.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsIsInRemoteControlRequestNativeIdentity* = "" ## @brief Selected original native identity for
## ur_dashboard_msgs/IsInRemoteControlRequest.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_dashboard_msgsIsInRemoteControlRequest*(): Ros1Ur_dashboard_msgsIsInRemoteControlRequest =
  ## ``@brief Construct the declared defaults of ur_dashboard_msgs/IsInRemoteControlRequest.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc writeFields*(value: Ros1Ur_dashboard_msgsIsInRemoteControlRequest; w: var Writer) =
  ## ``@brief Append every canonical field of ur_dashboard_msgs/IsInRemoteControlRequest.``
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
  ## ``@see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc readRos1Ur_dashboard_msgsIsInRemoteControlRequest*(r: var Reader): Ros1Ur_dashboard_msgsIsInRemoteControlRequest =
  ## ``@brief Read the ordered canonical fields of ur_dashboard_msgs/IsInRemoteControlRequest.``
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
  ## ``@see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_dashboard_msgsIsInRemoteControlRequest()
proc encode*(value: Ros1Ur_dashboard_msgsIsInRemoteControlRequest): seq[byte] =
  ## ``@brief Encode one complete ur_dashboard_msgs/IsInRemoteControlRequest value.``
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
  ## ``@see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_dashboard_msgsIsInRemoteControlRequest*(b: seq[byte]): Ros1Ur_dashboard_msgsIsInRemoteControlRequest =
  ## ``@brief Decode exactly one complete ur_dashboard_msgs/IsInRemoteControlRequest value.``
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
  ## ``@see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,0)
  result = readRos1Ur_dashboard_msgsIsInRemoteControlRequest(r)
  finish(r)
type Ros1Ur_dashboard_msgsIsInRemoteControlResponse* = object
  ## ``@brief Complete ROS 1 ur_dashboard_msgs/IsInRemoteControlResponse value.``
  ## ``@details All 3 declared fields are retained in source order. The canonical representation``
  ## ``occupies 6..262 bytes and is identified by``
  ## ``UWVMROS1_6c4af27571b48a5b8e8f1f857b2c02a333e7b4b360f8f3645a39630594c1663a.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `answer`*: string ## @brief ur_dashboard_msgs/IsInRemoteControlResponse.answer: string; each string is 0..256 bytes;
  ## strict UTF-8 with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/nim/API-CONTRACT.md
  `in_remote_control`*: bool ## @brief ur_dashboard_msgs/IsInRemoteControlResponse.in_remote_control: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/nim/API-CONTRACT.md
  `success`*: bool ## @brief ur_dashboard_msgs/IsInRemoteControlResponse.success: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsIsInRemoteControlResponseMaximumWireBytes* = 262 ## @brief Maximum canonical extent of
## ur_dashboard_msgs/IsInRemoteControlResponse
## in bytes.
## @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsIsInRemoteControlResponseCodecIdentity* = "UWVMROS1_6c4af27571b48a5b8e8f1f857b2c02a333e7b4b360f8f3645a39630594c1663a" ## @brief Canonical codec
## identity of
## ur_dashboard_msgs/IsInRemoteControlResponse.
## @details Exact identity UWVMROS1_6c4af27571b48a5b8e8f1f857b2c02a333e7b4b360f8f3645a39630594c1663a binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsIsInRemoteControlResponseNativeType* = "ur_dashboard_msgs/IsInRemoteControlResponse" ## @brief Original ROS type name
## for
## ur_dashboard_msgs/IsInRemoteControlResponse.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsIsInRemoteControlResponseNativeIdentity* = "" ## @brief Selected original native identity for
## ur_dashboard_msgs/IsInRemoteControlResponse.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_dashboard_msgsIsInRemoteControlResponse*(): Ros1Ur_dashboard_msgsIsInRemoteControlResponse =
  ## ``@brief Construct the declared defaults of ur_dashboard_msgs/IsInRemoteControlResponse.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`answer` = ""
  result.`in_remote_control` = false
  result.`success` = false
proc writeFields*(value: Ros1Ur_dashboard_msgsIsInRemoteControlResponse; w: var Writer) =
  ## ``@brief Append every canonical field of ur_dashboard_msgs/IsInRemoteControlResponse.``
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
  ## ``@see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/nim/API-CONTRACT.md``
  putString(w,value.`answer`,256)
  putBool(w,value.`in_remote_control`)
  putBool(w,value.`success`)
proc readRos1Ur_dashboard_msgsIsInRemoteControlResponse*(r: var Reader): Ros1Ur_dashboard_msgsIsInRemoteControlResponse =
  ## ``@brief Read the ordered canonical fields of ur_dashboard_msgs/IsInRemoteControlResponse.``
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
  ## ``@see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_dashboard_msgsIsInRemoteControlResponse()
  result.`answer` = getString(r,256)
  result.`in_remote_control` = getBool(r)
  result.`success` = getBool(r)
proc encode*(value: Ros1Ur_dashboard_msgsIsInRemoteControlResponse): seq[byte] =
  ## ``@brief Encode one complete ur_dashboard_msgs/IsInRemoteControlResponse value.``
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
  ## ``@see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(262)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_dashboard_msgsIsInRemoteControlResponse*(b: seq[byte]): Ros1Ur_dashboard_msgsIsInRemoteControlResponse =
  ## ``@brief Decode exactly one complete ur_dashboard_msgs/IsInRemoteControlResponse value.``
  ## ``@details Require the complete 6..262-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,262)
  result = readRos1Ur_dashboard_msgsIsInRemoteControlResponse(r)
  finish(r)
type Ros1Ur_dashboard_msgsIsProgramRunningRequest* = object
  ## ``@brief Complete ROS 1 ur_dashboard_msgs/IsProgramRunningRequest value.``
  ## ``@details All 0 declared fields are retained in source order. The canonical representation``
  ## ``occupies 0..0 bytes and is identified by``
  ## ``UWVMROS1_0be481297028886e15f07ace4178ca0aec595724cd83ab01d0155e7c6aa6666f.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
const Ros1Ur_dashboard_msgsIsProgramRunningRequestMaximumWireBytes* = 0 ## @brief Maximum canonical extent of
## ur_dashboard_msgs/IsProgramRunningRequest in
## bytes.
## @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsIsProgramRunningRequestCodecIdentity* = "UWVMROS1_0be481297028886e15f07ace4178ca0aec595724cd83ab01d0155e7c6aa6666f" ## @brief Canonical codec
## identity of
## ur_dashboard_msgs/IsProgramRunningRequest.
## @details Exact identity UWVMROS1_0be481297028886e15f07ace4178ca0aec595724cd83ab01d0155e7c6aa6666f binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsIsProgramRunningRequestNativeType* = "ur_dashboard_msgs/IsProgramRunningRequest" ## @brief Original ROS type name
## for
## ur_dashboard_msgs/IsProgramRunningRequest.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsIsProgramRunningRequestNativeIdentity* = "" ## @brief Selected original native identity for
## ur_dashboard_msgs/IsProgramRunningRequest.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_dashboard_msgsIsProgramRunningRequest*(): Ros1Ur_dashboard_msgsIsProgramRunningRequest =
  ## ``@brief Construct the declared defaults of ur_dashboard_msgs/IsProgramRunningRequest.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc writeFields*(value: Ros1Ur_dashboard_msgsIsProgramRunningRequest; w: var Writer) =
  ## ``@brief Append every canonical field of ur_dashboard_msgs/IsProgramRunningRequest.``
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
  ## ``@see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc readRos1Ur_dashboard_msgsIsProgramRunningRequest*(r: var Reader): Ros1Ur_dashboard_msgsIsProgramRunningRequest =
  ## ``@brief Read the ordered canonical fields of ur_dashboard_msgs/IsProgramRunningRequest.``
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
  ## ``@see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_dashboard_msgsIsProgramRunningRequest()
proc encode*(value: Ros1Ur_dashboard_msgsIsProgramRunningRequest): seq[byte] =
  ## ``@brief Encode one complete ur_dashboard_msgs/IsProgramRunningRequest value.``
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
  ## ``@see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_dashboard_msgsIsProgramRunningRequest*(b: seq[byte]): Ros1Ur_dashboard_msgsIsProgramRunningRequest =
  ## ``@brief Decode exactly one complete ur_dashboard_msgs/IsProgramRunningRequest value.``
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
  ## ``@see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,0)
  result = readRos1Ur_dashboard_msgsIsProgramRunningRequest(r)
  finish(r)
type Ros1Ur_dashboard_msgsIsProgramRunningResponse* = object
  ## ``@brief Complete ROS 1 ur_dashboard_msgs/IsProgramRunningResponse value.``
  ## ``@details All 3 declared fields are retained in source order. The canonical representation``
  ## ``occupies 6..262 bytes and is identified by``
  ## ``UWVMROS1_4d9de4f7e7071d142c09e3184d4a6f29d4044d003ad11ba3b72e1129ecf144ac.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `answer`*: string ## @brief ur_dashboard_msgs/IsProgramRunningResponse.answer: string; each string is 0..256 bytes;
  ## strict UTF-8 with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/nim/API-CONTRACT.md
  `program_running`*: bool ## @brief ur_dashboard_msgs/IsProgramRunningResponse.program_running: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/nim/API-CONTRACT.md
  `success`*: bool ## @brief ur_dashboard_msgs/IsProgramRunningResponse.success: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsIsProgramRunningResponseMaximumWireBytes* = 262 ## @brief Maximum canonical extent of
## ur_dashboard_msgs/IsProgramRunningResponse
## in bytes.
## @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsIsProgramRunningResponseCodecIdentity* = "UWVMROS1_4d9de4f7e7071d142c09e3184d4a6f29d4044d003ad11ba3b72e1129ecf144ac" ## @brief Canonical codec
## identity of
## ur_dashboard_msgs/IsProgramRunningResponse.
## @details Exact identity UWVMROS1_4d9de4f7e7071d142c09e3184d4a6f29d4044d003ad11ba3b72e1129ecf144ac binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsIsProgramRunningResponseNativeType* = "ur_dashboard_msgs/IsProgramRunningResponse" ## @brief Original ROS type name
## for
## ur_dashboard_msgs/IsProgramRunningResponse.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsIsProgramRunningResponseNativeIdentity* = "" ## @brief Selected original native identity for
## ur_dashboard_msgs/IsProgramRunningResponse.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_dashboard_msgsIsProgramRunningResponse*(): Ros1Ur_dashboard_msgsIsProgramRunningResponse =
  ## ``@brief Construct the declared defaults of ur_dashboard_msgs/IsProgramRunningResponse.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`answer` = ""
  result.`program_running` = false
  result.`success` = false
proc writeFields*(value: Ros1Ur_dashboard_msgsIsProgramRunningResponse; w: var Writer) =
  ## ``@brief Append every canonical field of ur_dashboard_msgs/IsProgramRunningResponse.``
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
  ## ``@see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/nim/API-CONTRACT.md``
  putString(w,value.`answer`,256)
  putBool(w,value.`program_running`)
  putBool(w,value.`success`)
proc readRos1Ur_dashboard_msgsIsProgramRunningResponse*(r: var Reader): Ros1Ur_dashboard_msgsIsProgramRunningResponse =
  ## ``@brief Read the ordered canonical fields of ur_dashboard_msgs/IsProgramRunningResponse.``
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
  ## ``@see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_dashboard_msgsIsProgramRunningResponse()
  result.`answer` = getString(r,256)
  result.`program_running` = getBool(r)
  result.`success` = getBool(r)
proc encode*(value: Ros1Ur_dashboard_msgsIsProgramRunningResponse): seq[byte] =
  ## ``@brief Encode one complete ur_dashboard_msgs/IsProgramRunningResponse value.``
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
  ## ``@see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(262)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_dashboard_msgsIsProgramRunningResponse*(b: seq[byte]): Ros1Ur_dashboard_msgsIsProgramRunningResponse =
  ## ``@brief Decode exactly one complete ur_dashboard_msgs/IsProgramRunningResponse value.``
  ## ``@details Require the complete 6..262-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,262)
  result = readRos1Ur_dashboard_msgsIsProgramRunningResponse(r)
  finish(r)
type Ros1Ur_dashboard_msgsIsProgramSavedRequest* = object
  ## ``@brief Complete ROS 1 ur_dashboard_msgs/IsProgramSavedRequest value.``
  ## ``@details All 0 declared fields are retained in source order. The canonical representation``
  ## ``occupies 0..0 bytes and is identified by``
  ## ``UWVMROS1_45ce1466c35adc812096bfb8b2cd84dfa87940109831c9f797b5786afa14f5a8.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
const Ros1Ur_dashboard_msgsIsProgramSavedRequestMaximumWireBytes* = 0 ## @brief Maximum canonical extent of
## ur_dashboard_msgs/IsProgramSavedRequest in
## bytes.
## @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsIsProgramSavedRequestCodecIdentity* = "UWVMROS1_45ce1466c35adc812096bfb8b2cd84dfa87940109831c9f797b5786afa14f5a8" ## @brief Canonical codec
## identity of
## ur_dashboard_msgs/IsProgramSavedRequest.
## @details Exact identity UWVMROS1_45ce1466c35adc812096bfb8b2cd84dfa87940109831c9f797b5786afa14f5a8 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsIsProgramSavedRequestNativeType* = "ur_dashboard_msgs/IsProgramSavedRequest" ## @brief Original ROS type name
## for
## ur_dashboard_msgs/IsProgramSavedRequest.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsIsProgramSavedRequestNativeIdentity* = "" ## @brief Selected original native identity for
## ur_dashboard_msgs/IsProgramSavedRequest.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_dashboard_msgsIsProgramSavedRequest*(): Ros1Ur_dashboard_msgsIsProgramSavedRequest =
  ## ``@brief Construct the declared defaults of ur_dashboard_msgs/IsProgramSavedRequest.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc writeFields*(value: Ros1Ur_dashboard_msgsIsProgramSavedRequest; w: var Writer) =
  ## ``@brief Append every canonical field of ur_dashboard_msgs/IsProgramSavedRequest.``
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
  ## ``@see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc readRos1Ur_dashboard_msgsIsProgramSavedRequest*(r: var Reader): Ros1Ur_dashboard_msgsIsProgramSavedRequest =
  ## ``@brief Read the ordered canonical fields of ur_dashboard_msgs/IsProgramSavedRequest.``
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
  ## ``@see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_dashboard_msgsIsProgramSavedRequest()
proc encode*(value: Ros1Ur_dashboard_msgsIsProgramSavedRequest): seq[byte] =
  ## ``@brief Encode one complete ur_dashboard_msgs/IsProgramSavedRequest value.``
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
  ## ``@see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_dashboard_msgsIsProgramSavedRequest*(b: seq[byte]): Ros1Ur_dashboard_msgsIsProgramSavedRequest =
  ## ``@brief Decode exactly one complete ur_dashboard_msgs/IsProgramSavedRequest value.``
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
  ## ``@see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,0)
  result = readRos1Ur_dashboard_msgsIsProgramSavedRequest(r)
  finish(r)
type Ros1Ur_dashboard_msgsIsProgramSavedResponse* = object
  ## ``@brief Complete ROS 1 ur_dashboard_msgs/IsProgramSavedResponse value.``
  ## ``@details All 4 declared fields are retained in source order. The canonical representation``
  ## ``occupies 10..522 bytes and is identified by``
  ## ``UWVMROS1_eb53e077fe7b216e27fc57f838666a54a84e479e02e508d41df5cff9f0637a52.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `answer`*: string ## @brief ur_dashboard_msgs/IsProgramSavedResponse.answer: string; each string is 0..256 bytes;
  ## strict UTF-8 with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/nim/API-CONTRACT.md
  `program_name`*: string ## @brief ur_dashboard_msgs/IsProgramSavedResponse.program_name: string; each string is 0..256
  ## bytes; strict UTF-8 with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/nim/API-CONTRACT.md
  `program_saved`*: bool ## @brief ur_dashboard_msgs/IsProgramSavedResponse.program_saved: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/nim/API-CONTRACT.md
  `success`*: bool ## @brief ur_dashboard_msgs/IsProgramSavedResponse.success: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsIsProgramSavedResponseMaximumWireBytes* = 522 ## @brief Maximum canonical extent of
## ur_dashboard_msgs/IsProgramSavedResponse in
## bytes.
## @details The inclusive bound is 522 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsIsProgramSavedResponseCodecIdentity* = "UWVMROS1_eb53e077fe7b216e27fc57f838666a54a84e479e02e508d41df5cff9f0637a52" ## @brief Canonical codec
## identity of
## ur_dashboard_msgs/IsProgramSavedResponse.
## @details Exact identity UWVMROS1_eb53e077fe7b216e27fc57f838666a54a84e479e02e508d41df5cff9f0637a52 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsIsProgramSavedResponseNativeType* = "ur_dashboard_msgs/IsProgramSavedResponse" ## @brief Original ROS type name
## for
## ur_dashboard_msgs/IsProgramSavedResponse.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsIsProgramSavedResponseNativeIdentity* = "" ## @brief Selected original native identity for
## ur_dashboard_msgs/IsProgramSavedResponse.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_dashboard_msgsIsProgramSavedResponse*(): Ros1Ur_dashboard_msgsIsProgramSavedResponse =
  ## ``@brief Construct the declared defaults of ur_dashboard_msgs/IsProgramSavedResponse.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`answer` = ""
  result.`program_name` = ""
  result.`program_saved` = false
  result.`success` = false
proc writeFields*(value: Ros1Ur_dashboard_msgsIsProgramSavedResponse; w: var Writer) =
  ## ``@brief Append every canonical field of ur_dashboard_msgs/IsProgramSavedResponse.``
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
  ## ``@see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/nim/API-CONTRACT.md``
  putString(w,value.`answer`,256)
  putString(w,value.`program_name`,256)
  putBool(w,value.`program_saved`)
  putBool(w,value.`success`)
proc readRos1Ur_dashboard_msgsIsProgramSavedResponse*(r: var Reader): Ros1Ur_dashboard_msgsIsProgramSavedResponse =
  ## ``@brief Read the ordered canonical fields of ur_dashboard_msgs/IsProgramSavedResponse.``
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
  ## ``@see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_dashboard_msgsIsProgramSavedResponse()
  result.`answer` = getString(r,256)
  result.`program_name` = getString(r,256)
  result.`program_saved` = getBool(r)
  result.`success` = getBool(r)
proc encode*(value: Ros1Ur_dashboard_msgsIsProgramSavedResponse): seq[byte] =
  ## ``@brief Encode one complete ur_dashboard_msgs/IsProgramSavedResponse value.``
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
  ## ``@see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(522)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_dashboard_msgsIsProgramSavedResponse*(b: seq[byte]): Ros1Ur_dashboard_msgsIsProgramSavedResponse =
  ## ``@brief Decode exactly one complete ur_dashboard_msgs/IsProgramSavedResponse value.``
  ## ``@details Require the complete 10..522-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,522)
  result = readRos1Ur_dashboard_msgsIsProgramSavedResponse(r)
  finish(r)
type Ros1Ur_dashboard_msgsLoadRequest* = object
  ## ``@brief Complete ROS 1 ur_dashboard_msgs/LoadRequest value.``
  ## ``@details All 1 declared fields are retained in source order. The canonical representation``
  ## ``occupies 4..260 bytes and is identified by``
  ## ``UWVMROS1_dfbde7b2376c7c9ba3926e4803f16b22f7ade3b2f768a25886a1490656edd2bd.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `filename`*: string ## @brief ur_dashboard_msgs/LoadRequest.filename: string; each string is 0..256 bytes; strict
  ## UTF-8 with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsLoadRequestMaximumWireBytes* = 260 ## @brief Maximum canonical extent of
## ur_dashboard_msgs/LoadRequest in bytes.
## @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsLoadRequestCodecIdentity* = "UWVMROS1_dfbde7b2376c7c9ba3926e4803f16b22f7ade3b2f768a25886a1490656edd2bd" ## @brief Canonical codec
## identity of
## ur_dashboard_msgs/LoadRequest.
## @details Exact identity UWVMROS1_dfbde7b2376c7c9ba3926e4803f16b22f7ade3b2f768a25886a1490656edd2bd binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsLoadRequestNativeType* = "ur_dashboard_msgs/LoadRequest" ## @brief Original ROS type name for
## ur_dashboard_msgs/LoadRequest.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsLoadRequestNativeIdentity* = "" ## @brief Selected original native identity for
## ur_dashboard_msgs/LoadRequest.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_dashboard_msgsLoadRequest*(): Ros1Ur_dashboard_msgsLoadRequest =
  ## ``@brief Construct the declared defaults of ur_dashboard_msgs/LoadRequest.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/nim/API-CONTRACT.md``
  result.`filename` = ""
proc writeFields*(value: Ros1Ur_dashboard_msgsLoadRequest; w: var Writer) =
  ## ``@brief Append every canonical field of ur_dashboard_msgs/LoadRequest.``
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
  ## ``@see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/nim/API-CONTRACT.md``
  putString(w,value.`filename`,256)
proc readRos1Ur_dashboard_msgsLoadRequest*(r: var Reader): Ros1Ur_dashboard_msgsLoadRequest =
  ## ``@brief Read the ordered canonical fields of ur_dashboard_msgs/LoadRequest.``
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
  ## ``@see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_dashboard_msgsLoadRequest()
  result.`filename` = getString(r,256)
proc encode*(value: Ros1Ur_dashboard_msgsLoadRequest): seq[byte] =
  ## ``@brief Encode one complete ur_dashboard_msgs/LoadRequest value.``
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
  ## ``@see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_dashboard_msgsLoadRequest*(b: seq[byte]): Ros1Ur_dashboard_msgsLoadRequest =
  ## ``@brief Decode exactly one complete ur_dashboard_msgs/LoadRequest value.``
  ## ``@details Require the complete 4..260-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,260)
  result = readRos1Ur_dashboard_msgsLoadRequest(r)
  finish(r)
type Ros1Ur_dashboard_msgsLoadResponse* = object
  ## ``@brief Complete ROS 1 ur_dashboard_msgs/LoadResponse value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 5..261 bytes and is identified by``
  ## ``UWVMROS1_0ed3b3f2a0066248734e64c0706e52ebf07113569a98baf249a99adfff59be02.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `answer`*: string ## @brief ur_dashboard_msgs/LoadResponse.answer: string; each string is 0..256 bytes; strict UTF-8
  ## with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/nim/API-CONTRACT.md
  `success`*: bool ## @brief ur_dashboard_msgs/LoadResponse.success: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsLoadResponseMaximumWireBytes* = 261 ## @brief Maximum canonical extent of
## ur_dashboard_msgs/LoadResponse in bytes.
## @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsLoadResponseCodecIdentity* = "UWVMROS1_0ed3b3f2a0066248734e64c0706e52ebf07113569a98baf249a99adfff59be02" ## @brief Canonical codec
## identity of
## ur_dashboard_msgs/LoadResponse.
## @details Exact identity UWVMROS1_0ed3b3f2a0066248734e64c0706e52ebf07113569a98baf249a99adfff59be02 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsLoadResponseNativeType* = "ur_dashboard_msgs/LoadResponse" ## @brief Original ROS type name
## for
## ur_dashboard_msgs/LoadResponse.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsLoadResponseNativeIdentity* = "" ## @brief Selected original native identity for
## ur_dashboard_msgs/LoadResponse.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_dashboard_msgsLoadResponse*(): Ros1Ur_dashboard_msgsLoadResponse =
  ## ``@brief Construct the declared defaults of ur_dashboard_msgs/LoadResponse.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`answer` = ""
  result.`success` = false
proc writeFields*(value: Ros1Ur_dashboard_msgsLoadResponse; w: var Writer) =
  ## ``@brief Append every canonical field of ur_dashboard_msgs/LoadResponse.``
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
  ## ``@see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/nim/API-CONTRACT.md``
  putString(w,value.`answer`,256)
  putBool(w,value.`success`)
proc readRos1Ur_dashboard_msgsLoadResponse*(r: var Reader): Ros1Ur_dashboard_msgsLoadResponse =
  ## ``@brief Read the ordered canonical fields of ur_dashboard_msgs/LoadResponse.``
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
  ## ``@see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_dashboard_msgsLoadResponse()
  result.`answer` = getString(r,256)
  result.`success` = getBool(r)
proc encode*(value: Ros1Ur_dashboard_msgsLoadResponse): seq[byte] =
  ## ``@brief Encode one complete ur_dashboard_msgs/LoadResponse value.``
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
  ## ``@see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_dashboard_msgsLoadResponse*(b: seq[byte]): Ros1Ur_dashboard_msgsLoadResponse =
  ## ``@brief Decode exactly one complete ur_dashboard_msgs/LoadResponse value.``
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
  ## ``@see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,261)
  result = readRos1Ur_dashboard_msgsLoadResponse(r)
  finish(r)
type Ros1Ur_dashboard_msgsPopupRequest* = object
  ## ``@brief Complete ROS 1 ur_dashboard_msgs/PopupRequest value.``
  ## ``@details All 1 declared fields are retained in source order. The canonical representation``
  ## ``occupies 4..260 bytes and is identified by``
  ## ``UWVMROS1_11556bfb811a28141b6c5e9c11720920a389d735b8c09ed1a8f47d05f293e90d.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `message`*: string ## @brief ur_dashboard_msgs/PopupRequest.message: string; each string is 0..256 bytes; strict UTF-8
  ## with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsPopupRequestMaximumWireBytes* = 260 ## @brief Maximum canonical extent of
## ur_dashboard_msgs/PopupRequest in bytes.
## @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsPopupRequestCodecIdentity* = "UWVMROS1_11556bfb811a28141b6c5e9c11720920a389d735b8c09ed1a8f47d05f293e90d" ## @brief Canonical codec
## identity of
## ur_dashboard_msgs/PopupRequest.
## @details Exact identity UWVMROS1_11556bfb811a28141b6c5e9c11720920a389d735b8c09ed1a8f47d05f293e90d binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsPopupRequestNativeType* = "ur_dashboard_msgs/PopupRequest" ## @brief Original ROS type name
## for
## ur_dashboard_msgs/PopupRequest.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsPopupRequestNativeIdentity* = "" ## @brief Selected original native identity for
## ur_dashboard_msgs/PopupRequest.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_dashboard_msgsPopupRequest*(): Ros1Ur_dashboard_msgsPopupRequest =
  ## ``@brief Construct the declared defaults of ur_dashboard_msgs/PopupRequest.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/nim/API-CONTRACT.md``
  result.`message` = ""
proc writeFields*(value: Ros1Ur_dashboard_msgsPopupRequest; w: var Writer) =
  ## ``@brief Append every canonical field of ur_dashboard_msgs/PopupRequest.``
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
  ## ``@see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/nim/API-CONTRACT.md``
  putString(w,value.`message`,256)
proc readRos1Ur_dashboard_msgsPopupRequest*(r: var Reader): Ros1Ur_dashboard_msgsPopupRequest =
  ## ``@brief Read the ordered canonical fields of ur_dashboard_msgs/PopupRequest.``
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
  ## ``@see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_dashboard_msgsPopupRequest()
  result.`message` = getString(r,256)
proc encode*(value: Ros1Ur_dashboard_msgsPopupRequest): seq[byte] =
  ## ``@brief Encode one complete ur_dashboard_msgs/PopupRequest value.``
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
  ## ``@see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_dashboard_msgsPopupRequest*(b: seq[byte]): Ros1Ur_dashboard_msgsPopupRequest =
  ## ``@brief Decode exactly one complete ur_dashboard_msgs/PopupRequest value.``
  ## ``@details Require the complete 4..260-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,260)
  result = readRos1Ur_dashboard_msgsPopupRequest(r)
  finish(r)
type Ros1Ur_dashboard_msgsPopupResponse* = object
  ## ``@brief Complete ROS 1 ur_dashboard_msgs/PopupResponse value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 5..261 bytes and is identified by``
  ## ``UWVMROS1_33ac5b2128d6e7c2e562af7e2b8a8e907c16c07034b377920cba4fbd04ca9e14.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `answer`*: string ## @brief ur_dashboard_msgs/PopupResponse.answer: string; each string is 0..256 bytes; strict UTF-8
  ## with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/nim/API-CONTRACT.md
  `success`*: bool ## @brief ur_dashboard_msgs/PopupResponse.success: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsPopupResponseMaximumWireBytes* = 261 ## @brief Maximum canonical extent of
## ur_dashboard_msgs/PopupResponse in bytes.
## @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsPopupResponseCodecIdentity* = "UWVMROS1_33ac5b2128d6e7c2e562af7e2b8a8e907c16c07034b377920cba4fbd04ca9e14" ## @brief Canonical codec
## identity of
## ur_dashboard_msgs/PopupResponse.
## @details Exact identity UWVMROS1_33ac5b2128d6e7c2e562af7e2b8a8e907c16c07034b377920cba4fbd04ca9e14 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsPopupResponseNativeType* = "ur_dashboard_msgs/PopupResponse" ## @brief Original ROS type name
## for
## ur_dashboard_msgs/PopupResponse.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsPopupResponseNativeIdentity* = "" ## @brief Selected original native identity for
## ur_dashboard_msgs/PopupResponse.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_dashboard_msgsPopupResponse*(): Ros1Ur_dashboard_msgsPopupResponse =
  ## ``@brief Construct the declared defaults of ur_dashboard_msgs/PopupResponse.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`answer` = ""
  result.`success` = false
proc writeFields*(value: Ros1Ur_dashboard_msgsPopupResponse; w: var Writer) =
  ## ``@brief Append every canonical field of ur_dashboard_msgs/PopupResponse.``
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
  ## ``@see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/nim/API-CONTRACT.md``
  putString(w,value.`answer`,256)
  putBool(w,value.`success`)
proc readRos1Ur_dashboard_msgsPopupResponse*(r: var Reader): Ros1Ur_dashboard_msgsPopupResponse =
  ## ``@brief Read the ordered canonical fields of ur_dashboard_msgs/PopupResponse.``
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
  ## ``@see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_dashboard_msgsPopupResponse()
  result.`answer` = getString(r,256)
  result.`success` = getBool(r)
proc encode*(value: Ros1Ur_dashboard_msgsPopupResponse): seq[byte] =
  ## ``@brief Encode one complete ur_dashboard_msgs/PopupResponse value.``
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
  ## ``@see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_dashboard_msgsPopupResponse*(b: seq[byte]): Ros1Ur_dashboard_msgsPopupResponse =
  ## ``@brief Decode exactly one complete ur_dashboard_msgs/PopupResponse value.``
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
  ## ``@see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,261)
  result = readRos1Ur_dashboard_msgsPopupResponse(r)
  finish(r)
type Ros1Ur_dashboard_msgsRawRequestRequest* = object
  ## ``@brief Complete ROS 1 ur_dashboard_msgs/RawRequestRequest value.``
  ## ``@details All 1 declared fields are retained in source order. The canonical representation``
  ## ``occupies 4..260 bytes and is identified by``
  ## ``UWVMROS1_ca8e3fdb45888bf4feb3c0f4ed05b7b9499a74493aaa0a8727f9f513922adfb4.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `query`*: string ## @brief ur_dashboard_msgs/RawRequestRequest.query: string; each string is 0..256 bytes; strict
  ## UTF-8 with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsRawRequestRequestMaximumWireBytes* = 260 ## @brief Maximum canonical extent of
## ur_dashboard_msgs/RawRequestRequest in bytes.
## @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsRawRequestRequestCodecIdentity* = "UWVMROS1_ca8e3fdb45888bf4feb3c0f4ed05b7b9499a74493aaa0a8727f9f513922adfb4" ## @brief Canonical codec
## identity of
## ur_dashboard_msgs/RawRequestRequest.
## @details Exact identity UWVMROS1_ca8e3fdb45888bf4feb3c0f4ed05b7b9499a74493aaa0a8727f9f513922adfb4 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsRawRequestRequestNativeType* = "ur_dashboard_msgs/RawRequestRequest" ## @brief Original ROS type name
## for
## ur_dashboard_msgs/RawRequestRequest.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsRawRequestRequestNativeIdentity* = "" ## @brief Selected original native identity for
## ur_dashboard_msgs/RawRequestRequest.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_dashboard_msgsRawRequestRequest*(): Ros1Ur_dashboard_msgsRawRequestRequest =
  ## ``@brief Construct the declared defaults of ur_dashboard_msgs/RawRequestRequest.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/nim/API-CONTRACT.md``
  result.`query` = ""
proc writeFields*(value: Ros1Ur_dashboard_msgsRawRequestRequest; w: var Writer) =
  ## ``@brief Append every canonical field of ur_dashboard_msgs/RawRequestRequest.``
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
  ## ``@see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/nim/API-CONTRACT.md``
  putString(w,value.`query`,256)
proc readRos1Ur_dashboard_msgsRawRequestRequest*(r: var Reader): Ros1Ur_dashboard_msgsRawRequestRequest =
  ## ``@brief Read the ordered canonical fields of ur_dashboard_msgs/RawRequestRequest.``
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
  ## ``@see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_dashboard_msgsRawRequestRequest()
  result.`query` = getString(r,256)
proc encode*(value: Ros1Ur_dashboard_msgsRawRequestRequest): seq[byte] =
  ## ``@brief Encode one complete ur_dashboard_msgs/RawRequestRequest value.``
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
  ## ``@see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_dashboard_msgsRawRequestRequest*(b: seq[byte]): Ros1Ur_dashboard_msgsRawRequestRequest =
  ## ``@brief Decode exactly one complete ur_dashboard_msgs/RawRequestRequest value.``
  ## ``@details Require the complete 4..260-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,260)
  result = readRos1Ur_dashboard_msgsRawRequestRequest(r)
  finish(r)
type Ros1Ur_dashboard_msgsRawRequestResponse* = object
  ## ``@brief Complete ROS 1 ur_dashboard_msgs/RawRequestResponse value.``
  ## ``@details All 1 declared fields are retained in source order. The canonical representation``
  ## ``occupies 4..260 bytes and is identified by``
  ## ``UWVMROS1_76dbb0c8d0143bd4d39bbf66c6866b0771013fe67fbad76887c6490c91f39e80.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `answer`*: string ## @brief ur_dashboard_msgs/RawRequestResponse.answer: string; each string is 0..256 bytes; strict
  ## UTF-8 with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsRawRequestResponseMaximumWireBytes* = 260 ## @brief Maximum canonical extent of
## ur_dashboard_msgs/RawRequestResponse in bytes.
## @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsRawRequestResponseCodecIdentity* = "UWVMROS1_76dbb0c8d0143bd4d39bbf66c6866b0771013fe67fbad76887c6490c91f39e80" ## @brief Canonical codec
## identity of
## ur_dashboard_msgs/RawRequestResponse.
## @details Exact identity UWVMROS1_76dbb0c8d0143bd4d39bbf66c6866b0771013fe67fbad76887c6490c91f39e80 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsRawRequestResponseNativeType* = "ur_dashboard_msgs/RawRequestResponse" ## @brief Original ROS type name
## for
## ur_dashboard_msgs/RawRequestResponse.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsRawRequestResponseNativeIdentity* = "" ## @brief Selected original native identity for
## ur_dashboard_msgs/RawRequestResponse.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_dashboard_msgsRawRequestResponse*(): Ros1Ur_dashboard_msgsRawRequestResponse =
  ## ``@brief Construct the declared defaults of ur_dashboard_msgs/RawRequestResponse.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`answer` = ""
proc writeFields*(value: Ros1Ur_dashboard_msgsRawRequestResponse; w: var Writer) =
  ## ``@brief Append every canonical field of ur_dashboard_msgs/RawRequestResponse.``
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
  ## ``@see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/nim/API-CONTRACT.md``
  putString(w,value.`answer`,256)
proc readRos1Ur_dashboard_msgsRawRequestResponse*(r: var Reader): Ros1Ur_dashboard_msgsRawRequestResponse =
  ## ``@brief Read the ordered canonical fields of ur_dashboard_msgs/RawRequestResponse.``
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
  ## ``@see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_dashboard_msgsRawRequestResponse()
  result.`answer` = getString(r,256)
proc encode*(value: Ros1Ur_dashboard_msgsRawRequestResponse): seq[byte] =
  ## ``@brief Encode one complete ur_dashboard_msgs/RawRequestResponse value.``
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
  ## ``@see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_dashboard_msgsRawRequestResponse*(b: seq[byte]): Ros1Ur_dashboard_msgsRawRequestResponse =
  ## ``@brief Decode exactly one complete ur_dashboard_msgs/RawRequestResponse value.``
  ## ``@details Require the complete 4..260-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,260)
  result = readRos1Ur_dashboard_msgsRawRequestResponse(r)
  finish(r)
type Ros1Ur_dashboard_msgsSetModeGoal* = object
  ## ``@brief Complete ROS 1 ur_dashboard_msgs/SetModeGoal value.``
  ## ``@details All 3 declared fields are retained in source order. The canonical representation``
  ## ``occupies 3..3 bytes and is identified by``
  ## ``UWVMROS1_27ba58b57af47e8efff15a70fb0562d5904d019c17e39a499bf003730434a528.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `target_robot_mode`*: Ros1Ur_dashboard_msgsRobotMode ## @brief ur_dashboard_msgs/SetModeGoal.target_robot_mode:
  ## ur_dashboard_msgs/RobotMode.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/nim/API-CONTRACT.md
  `stop_program`*: bool ## @brief ur_dashboard_msgs/SetModeGoal.stop_program: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/nim/API-CONTRACT.md
  `play_program`*: bool ## @brief ur_dashboard_msgs/SetModeGoal.play_program: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsSetModeGoalMaximumWireBytes* = 3 ## @brief Maximum canonical extent of
## ur_dashboard_msgs/SetModeGoal in bytes.
## @details The inclusive bound is 3 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsSetModeGoalCodecIdentity* = "UWVMROS1_27ba58b57af47e8efff15a70fb0562d5904d019c17e39a499bf003730434a528" ## @brief Canonical codec
## identity of
## ur_dashboard_msgs/SetModeGoal.
## @details Exact identity UWVMROS1_27ba58b57af47e8efff15a70fb0562d5904d019c17e39a499bf003730434a528 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsSetModeGoalNativeType* = "ur_dashboard_msgs/SetModeGoal" ## @brief Original ROS type name for
## ur_dashboard_msgs/SetModeGoal.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsSetModeGoalNativeIdentity* = "" ## @brief Selected original native identity for
## ur_dashboard_msgs/SetModeGoal.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_dashboard_msgsSetModeGoal*(): Ros1Ur_dashboard_msgsSetModeGoal =
  ## ``@brief Construct the declared defaults of ur_dashboard_msgs/SetModeGoal.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/nim/API-CONTRACT.md``
  result.`target_robot_mode` = initRos1Ur_dashboard_msgsRobotMode()
  result.`stop_program` = false
  result.`play_program` = false
proc writeFields*(value: Ros1Ur_dashboard_msgsSetModeGoal; w: var Writer) =
  ## ``@brief Append every canonical field of ur_dashboard_msgs/SetModeGoal.``
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
  ## ``@see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`target_robot_mode`,w)
  putBool(w,value.`stop_program`)
  putBool(w,value.`play_program`)
proc readRos1Ur_dashboard_msgsSetModeGoal*(r: var Reader): Ros1Ur_dashboard_msgsSetModeGoal =
  ## ``@brief Read the ordered canonical fields of ur_dashboard_msgs/SetModeGoal.``
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
  ## ``@see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_dashboard_msgsSetModeGoal()
  result.`target_robot_mode` = readRos1Ur_dashboard_msgsRobotMode(r)
  result.`stop_program` = getBool(r)
  result.`play_program` = getBool(r)
proc encode*(value: Ros1Ur_dashboard_msgsSetModeGoal): seq[byte] =
  ## ``@brief Encode one complete ur_dashboard_msgs/SetModeGoal value.``
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
  ## ``@see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(3)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_dashboard_msgsSetModeGoal*(b: seq[byte]): Ros1Ur_dashboard_msgsSetModeGoal =
  ## ``@brief Decode exactly one complete ur_dashboard_msgs/SetModeGoal value.``
  ## ``@details Require the complete 3..3-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,3)
  result = readRos1Ur_dashboard_msgsSetModeGoal(r)
  finish(r)
type Ros1Ur_dashboard_msgsSetModeResult* = object
  ## ``@brief Complete ROS 1 ur_dashboard_msgs/SetModeResult value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 5..261 bytes and is identified by``
  ## ``UWVMROS1_e558d01061183cabca7022bd66aeb1958e14dfc62226a701c86020e73ffa1114.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `success`*: bool ## @brief ur_dashboard_msgs/SetModeResult.success: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/nim/API-CONTRACT.md
  `message`*: string ## @brief ur_dashboard_msgs/SetModeResult.message: string; each string is 0..256 bytes; strict
  ## UTF-8 with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsSetModeResultMaximumWireBytes* = 261 ## @brief Maximum canonical extent of
## ur_dashboard_msgs/SetModeResult in bytes.
## @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsSetModeResultCodecIdentity* = "UWVMROS1_e558d01061183cabca7022bd66aeb1958e14dfc62226a701c86020e73ffa1114" ## @brief Canonical codec
## identity of
## ur_dashboard_msgs/SetModeResult.
## @details Exact identity UWVMROS1_e558d01061183cabca7022bd66aeb1958e14dfc62226a701c86020e73ffa1114 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsSetModeResultNativeType* = "ur_dashboard_msgs/SetModeResult" ## @brief Original ROS type name
## for
## ur_dashboard_msgs/SetModeResult.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsSetModeResultNativeIdentity* = "" ## @brief Selected original native identity for
## ur_dashboard_msgs/SetModeResult.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_dashboard_msgsSetModeResult*(): Ros1Ur_dashboard_msgsSetModeResult =
  ## ``@brief Construct the declared defaults of ur_dashboard_msgs/SetModeResult.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/nim/API-CONTRACT.md``
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Ur_dashboard_msgsSetModeResult; w: var Writer) =
  ## ``@brief Append every canonical field of ur_dashboard_msgs/SetModeResult.``
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
  ## ``@see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Ur_dashboard_msgsSetModeResult*(r: var Reader): Ros1Ur_dashboard_msgsSetModeResult =
  ## ``@brief Read the ordered canonical fields of ur_dashboard_msgs/SetModeResult.``
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
  ## ``@see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_dashboard_msgsSetModeResult()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Ur_dashboard_msgsSetModeResult): seq[byte] =
  ## ``@brief Encode one complete ur_dashboard_msgs/SetModeResult value.``
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
  ## ``@see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_dashboard_msgsSetModeResult*(b: seq[byte]): Ros1Ur_dashboard_msgsSetModeResult =
  ## ``@brief Decode exactly one complete ur_dashboard_msgs/SetModeResult value.``
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
  ## ``@see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,261)
  result = readRos1Ur_dashboard_msgsSetModeResult(r)
  finish(r)
type Ros1Ur_dashboard_msgsSetModeFeedback* = object
  ## ``@brief Complete ROS 1 ur_dashboard_msgs/SetModeFeedback value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 2..2 bytes and is identified by``
  ## ``UWVMROS1_d29b507dcc5d72ee086c8a5a9a7a762d677ed408ec02dbe661abc17e2de5c7e2.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `current_robot_mode`*: int8 ## @brief ur_dashboard_msgs/SetModeFeedback.current_robot_mode: int8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/nim/API-CONTRACT.md
  `current_safety_mode`*: int8 ## @brief ur_dashboard_msgs/SetModeFeedback.current_safety_mode: int8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsSetModeFeedbackMaximumWireBytes* = 2 ## @brief Maximum canonical extent of
## ur_dashboard_msgs/SetModeFeedback in bytes.
## @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsSetModeFeedbackCodecIdentity* = "UWVMROS1_d29b507dcc5d72ee086c8a5a9a7a762d677ed408ec02dbe661abc17e2de5c7e2" ## @brief Canonical codec
## identity of
## ur_dashboard_msgs/SetModeFeedback.
## @details Exact identity UWVMROS1_d29b507dcc5d72ee086c8a5a9a7a762d677ed408ec02dbe661abc17e2de5c7e2 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsSetModeFeedbackNativeType* = "ur_dashboard_msgs/SetModeFeedback" ## @brief Original ROS type name
## for
## ur_dashboard_msgs/SetModeFeedback.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_dashboard_msgsSetModeFeedbackNativeIdentity* = "" ## @brief Selected original native identity for
## ur_dashboard_msgs/SetModeFeedback.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_dashboard_msgsSetModeFeedback*(): Ros1Ur_dashboard_msgsSetModeFeedback =
  ## ``@brief Construct the declared defaults of ur_dashboard_msgs/SetModeFeedback.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/nim/API-CONTRACT.md``
  result.`current_robot_mode` = 0
  result.`current_safety_mode` = 0
proc writeFields*(value: Ros1Ur_dashboard_msgsSetModeFeedback; w: var Writer) =
  ## ``@brief Append every canonical field of ur_dashboard_msgs/SetModeFeedback.``
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
  ## ``@see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`current_robot_mode`)
  putInteger(w,value.`current_safety_mode`)
proc readRos1Ur_dashboard_msgsSetModeFeedback*(r: var Reader): Ros1Ur_dashboard_msgsSetModeFeedback =
  ## ``@brief Read the ordered canonical fields of ur_dashboard_msgs/SetModeFeedback.``
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
  ## ``@see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_dashboard_msgsSetModeFeedback()
  result.`current_robot_mode` = getInteger(r,int8)
  result.`current_safety_mode` = getInteger(r,int8)
proc encode*(value: Ros1Ur_dashboard_msgsSetModeFeedback): seq[byte] =
  ## ``@brief Encode one complete ur_dashboard_msgs/SetModeFeedback value.``
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
  ## ``@see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(2)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_dashboard_msgsSetModeFeedback*(b: seq[byte]): Ros1Ur_dashboard_msgsSetModeFeedback =
  ## ``@brief Decode exactly one complete ur_dashboard_msgs/SetModeFeedback value.``
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
  ## ``@see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,2)
  result = readRos1Ur_dashboard_msgsSetModeFeedback(r)
  finish(r)
type Ros1Ur_msgsAnalog* = object
  ## ``@brief Complete ROS 1 ur_msgs/Analog value.``
  ## ``@details All 3 declared fields are retained in source order. The canonical representation``
  ## ``occupies 6..6 bytes and is identified by``
  ## ``UWVMROS1_638dc3b30def8193a501b4c1c778792a60c8c683a96880e9fa6db6c01774f6a7.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `pin`*: uint8 ## @brief ur_msgs/Analog.pin: uint8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsAnalog; share/platform/ros/nim/API-CONTRACT.md
  `domain`*: uint8 ## @brief ur_msgs/Analog.domain: uint8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsAnalog; share/platform/ros/nim/API-CONTRACT.md
  `state`*: float32 ## @brief ur_msgs/Analog.state: float32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsAnalog; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsAnalogMaximumWireBytes* = 6 ## @brief Maximum canonical extent of ur_msgs/Analog in bytes.
## @details The inclusive bound is 6 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Ur_msgsAnalog; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsAnalogCodecIdentity* = "UWVMROS1_638dc3b30def8193a501b4c1c778792a60c8c683a96880e9fa6db6c01774f6a7" ## @brief Canonical codec
## identity of ur_msgs/Analog.
## @details Exact identity UWVMROS1_638dc3b30def8193a501b4c1c778792a60c8c683a96880e9fa6db6c01774f6a7 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_msgsAnalog; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsAnalogNativeType* = "ur_msgs/Analog" ## @brief Original ROS type name for ur_msgs/Analog.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_msgsAnalog; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsAnalogNativeIdentity* = "" ## @brief Selected original native identity for ur_msgs/Analog.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_msgsAnalog; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsAnalog_CURRENT*: uint8 = 0'u8 ## @brief ur_msgs/Analog.CURRENT: original uint8 constant.
## @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_msgsAnalog; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsAnalog_VOLTAGE*: uint8 = 1'u8 ## @brief ur_msgs/Analog.VOLTAGE: original uint8 constant.
## @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_msgsAnalog; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_msgsAnalog*(): Ros1Ur_msgsAnalog =
  ## ``@brief Construct the declared defaults of ur_msgs/Analog.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_msgsAnalog; share/platform/ros/nim/API-CONTRACT.md``
  result.`pin` = 0
  result.`domain` = 0
  result.`state` = 0
proc writeFields*(value: Ros1Ur_msgsAnalog; w: var Writer) =
  ## ``@brief Append every canonical field of ur_msgs/Analog.``
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
  ## ``@see Ros1Ur_msgsAnalog; share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`pin`)
  putInteger(w,value.`domain`)
  putFloat32(w,value.`state`)
proc readRos1Ur_msgsAnalog*(r: var Reader): Ros1Ur_msgsAnalog =
  ## ``@brief Read the ordered canonical fields of ur_msgs/Analog.``
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
  ## ``@see Ros1Ur_msgsAnalog; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_msgsAnalog()
  result.`pin` = getInteger(r,uint8)
  result.`domain` = getInteger(r,uint8)
  result.`state` = getFloat32(r)
proc encode*(value: Ros1Ur_msgsAnalog): seq[byte] =
  ## ``@brief Encode one complete ur_msgs/Analog value.``
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
  ## ``@see Ros1Ur_msgsAnalog; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(6)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_msgsAnalog*(b: seq[byte]): Ros1Ur_msgsAnalog =
  ## ``@brief Decode exactly one complete ur_msgs/Analog value.``
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
  ## ``@see Ros1Ur_msgsAnalog; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,6)
  result = readRos1Ur_msgsAnalog(r)
  finish(r)
type Ros1Ur_msgsDigital* = object
  ## ``@brief Complete ROS 1 ur_msgs/Digital value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 2..2 bytes and is identified by``
  ## ``UWVMROS1_c5840cfc5e26fe2f18817e46a0322a92e02ca21983920c71ebeb585769f5622c.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `pin`*: uint8 ## @brief ur_msgs/Digital.pin: uint8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsDigital; share/platform/ros/nim/API-CONTRACT.md
  `state`*: bool ## @brief ur_msgs/Digital.state: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsDigital; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsDigitalMaximumWireBytes* = 2 ## @brief Maximum canonical extent of ur_msgs/Digital in bytes.
## @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Ur_msgsDigital; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsDigitalCodecIdentity* = "UWVMROS1_c5840cfc5e26fe2f18817e46a0322a92e02ca21983920c71ebeb585769f5622c" ## @brief Canonical codec
## identity of ur_msgs/Digital.
## @details Exact identity UWVMROS1_c5840cfc5e26fe2f18817e46a0322a92e02ca21983920c71ebeb585769f5622c binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_msgsDigital; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsDigitalNativeType* = "ur_msgs/Digital" ## @brief Original ROS type name for ur_msgs/Digital.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_msgsDigital; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsDigitalNativeIdentity* = "" ## @brief Selected original native identity for ur_msgs/Digital.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_msgsDigital; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_msgsDigital*(): Ros1Ur_msgsDigital =
  ## ``@brief Construct the declared defaults of ur_msgs/Digital.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_msgsDigital; share/platform/ros/nim/API-CONTRACT.md``
  result.`pin` = 0
  result.`state` = false
proc writeFields*(value: Ros1Ur_msgsDigital; w: var Writer) =
  ## ``@brief Append every canonical field of ur_msgs/Digital.``
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
  ## ``@see Ros1Ur_msgsDigital; share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`pin`)
  putBool(w,value.`state`)
proc readRos1Ur_msgsDigital*(r: var Reader): Ros1Ur_msgsDigital =
  ## ``@brief Read the ordered canonical fields of ur_msgs/Digital.``
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
  ## ``@see Ros1Ur_msgsDigital; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_msgsDigital()
  result.`pin` = getInteger(r,uint8)
  result.`state` = getBool(r)
proc encode*(value: Ros1Ur_msgsDigital): seq[byte] =
  ## ``@brief Encode one complete ur_msgs/Digital value.``
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
  ## ``@see Ros1Ur_msgsDigital; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(2)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_msgsDigital*(b: seq[byte]): Ros1Ur_msgsDigital =
  ## ``@brief Decode exactly one complete ur_msgs/Digital value.``
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
  ## ``@see Ros1Ur_msgsDigital; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,2)
  result = readRos1Ur_msgsDigital(r)
  finish(r)
type Ros1Ur_msgsGetRobotSoftwareVersionRequest* = object
  ## ``@brief Complete ROS 1 ur_msgs/GetRobotSoftwareVersionRequest value.``
  ## ``@details All 0 declared fields are retained in source order. The canonical representation``
  ## ``occupies 0..0 bytes and is identified by``
  ## ``UWVMROS1_bbcdd98ee8d951a8a4fa873ad1c755f16c5cce14ceb7a614343dd44ccf84b9c8.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
const Ros1Ur_msgsGetRobotSoftwareVersionRequestMaximumWireBytes* = 0 ## @brief Maximum canonical extent of
## ur_msgs/GetRobotSoftwareVersionRequest in bytes.
## @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsGetRobotSoftwareVersionRequestCodecIdentity* = "UWVMROS1_bbcdd98ee8d951a8a4fa873ad1c755f16c5cce14ceb7a614343dd44ccf84b9c8" ## @brief Canonical codec
## identity of
## ur_msgs/GetRobotSoftwareVersionRequest.
## @details Exact identity UWVMROS1_bbcdd98ee8d951a8a4fa873ad1c755f16c5cce14ceb7a614343dd44ccf84b9c8 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsGetRobotSoftwareVersionRequestNativeType* = "ur_msgs/GetRobotSoftwareVersionRequest" ## @brief Original ROS type name
## for
## ur_msgs/GetRobotSoftwareVersionRequest.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsGetRobotSoftwareVersionRequestNativeIdentity* = "" ## @brief Selected original native identity for
## ur_msgs/GetRobotSoftwareVersionRequest.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_msgsGetRobotSoftwareVersionRequest*(): Ros1Ur_msgsGetRobotSoftwareVersionRequest =
  ## ``@brief Construct the declared defaults of ur_msgs/GetRobotSoftwareVersionRequest.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc writeFields*(value: Ros1Ur_msgsGetRobotSoftwareVersionRequest; w: var Writer) =
  ## ``@brief Append every canonical field of ur_msgs/GetRobotSoftwareVersionRequest.``
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
  ## ``@see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc readRos1Ur_msgsGetRobotSoftwareVersionRequest*(r: var Reader): Ros1Ur_msgsGetRobotSoftwareVersionRequest =
  ## ``@brief Read the ordered canonical fields of ur_msgs/GetRobotSoftwareVersionRequest.``
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
  ## ``@see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_msgsGetRobotSoftwareVersionRequest()
proc encode*(value: Ros1Ur_msgsGetRobotSoftwareVersionRequest): seq[byte] =
  ## ``@brief Encode one complete ur_msgs/GetRobotSoftwareVersionRequest value.``
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
  ## ``@see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_msgsGetRobotSoftwareVersionRequest*(b: seq[byte]): Ros1Ur_msgsGetRobotSoftwareVersionRequest =
  ## ``@brief Decode exactly one complete ur_msgs/GetRobotSoftwareVersionRequest value.``
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
  ## ``@see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,0)
  result = readRos1Ur_msgsGetRobotSoftwareVersionRequest(r)
  finish(r)
type Ros1Ur_msgsGetRobotSoftwareVersionResponse* = object
  ## ``@brief Complete ROS 1 ur_msgs/GetRobotSoftwareVersionResponse value.``
  ## ``@details All 4 declared fields are retained in source order. The canonical representation``
  ## ``occupies 16..16 bytes and is identified by``
  ## ``UWVMROS1_36ab51ce55e3630f8ca71f364f4c5cc1f4b010f678777e4fd7b03dd480f92e64.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `major`*: uint32 ## @brief ur_msgs/GetRobotSoftwareVersionResponse.major: uint32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/nim/API-CONTRACT.md
  `minor`*: uint32 ## @brief ur_msgs/GetRobotSoftwareVersionResponse.minor: uint32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/nim/API-CONTRACT.md
  `bugfix`*: uint32 ## @brief ur_msgs/GetRobotSoftwareVersionResponse.bugfix: uint32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/nim/API-CONTRACT.md
  `build`*: uint32 ## @brief ur_msgs/GetRobotSoftwareVersionResponse.build: uint32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsGetRobotSoftwareVersionResponseMaximumWireBytes* = 16 ## @brief Maximum canonical extent of
## ur_msgs/GetRobotSoftwareVersionResponse in
## bytes.
## @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsGetRobotSoftwareVersionResponseCodecIdentity* = "UWVMROS1_36ab51ce55e3630f8ca71f364f4c5cc1f4b010f678777e4fd7b03dd480f92e64" ## @brief Canonical codec
## identity of
## ur_msgs/GetRobotSoftwareVersionResponse.
## @details Exact identity UWVMROS1_36ab51ce55e3630f8ca71f364f4c5cc1f4b010f678777e4fd7b03dd480f92e64 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsGetRobotSoftwareVersionResponseNativeType* = "ur_msgs/GetRobotSoftwareVersionResponse" ## @brief Original ROS type name
## for
## ur_msgs/GetRobotSoftwareVersionResponse.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsGetRobotSoftwareVersionResponseNativeIdentity* = "" ## @brief Selected original native identity for
## ur_msgs/GetRobotSoftwareVersionResponse.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_msgsGetRobotSoftwareVersionResponse*(): Ros1Ur_msgsGetRobotSoftwareVersionResponse =
  ## ``@brief Construct the declared defaults of ur_msgs/GetRobotSoftwareVersionResponse.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`major` = 0
  result.`minor` = 0
  result.`bugfix` = 0
  result.`build` = 0
proc writeFields*(value: Ros1Ur_msgsGetRobotSoftwareVersionResponse; w: var Writer) =
  ## ``@brief Append every canonical field of ur_msgs/GetRobotSoftwareVersionResponse.``
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
  ## ``@see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`major`)
  putInteger(w,value.`minor`)
  putInteger(w,value.`bugfix`)
  putInteger(w,value.`build`)
proc readRos1Ur_msgsGetRobotSoftwareVersionResponse*(r: var Reader): Ros1Ur_msgsGetRobotSoftwareVersionResponse =
  ## ``@brief Read the ordered canonical fields of ur_msgs/GetRobotSoftwareVersionResponse.``
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
  ## ``@see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_msgsGetRobotSoftwareVersionResponse()
  result.`major` = getInteger(r,uint32)
  result.`minor` = getInteger(r,uint32)
  result.`bugfix` = getInteger(r,uint32)
  result.`build` = getInteger(r,uint32)
proc encode*(value: Ros1Ur_msgsGetRobotSoftwareVersionResponse): seq[byte] =
  ## ``@brief Encode one complete ur_msgs/GetRobotSoftwareVersionResponse value.``
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
  ## ``@see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(16)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_msgsGetRobotSoftwareVersionResponse*(b: seq[byte]): Ros1Ur_msgsGetRobotSoftwareVersionResponse =
  ## ``@brief Decode exactly one complete ur_msgs/GetRobotSoftwareVersionResponse value.``
  ## ``@details Require the complete 16..16-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,16)
  result = readRos1Ur_msgsGetRobotSoftwareVersionResponse(r)
  finish(r)
type Ros1Ur_msgsIOStates* = object
  ## ``@brief Complete ROS 1 ur_msgs/IOStates value.``
  ## ``@details All 5 declared fields are retained in source order. The canonical representation``
  ## ``occupies 20..404 bytes and is identified by``
  ## ``UWVMROS1_4b10f6efdd2f129267c407bc1f8caed03776fef6d49f0a1b9dfbf2451ad8f033.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `digital_in_states`*: seq[Ros1Ur_msgsDigital] ## @brief ur_msgs/IOStates.digital_in_states: ur_msgs/Digital; 0..32
  ## elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsIOStates; share/platform/ros/nim/API-CONTRACT.md
  `digital_out_states`*: seq[Ros1Ur_msgsDigital] ## @brief ur_msgs/IOStates.digital_out_states: ur_msgs/Digital; 0..32
  ## elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsIOStates; share/platform/ros/nim/API-CONTRACT.md
  `flag_states`*: seq[Ros1Ur_msgsDigital] ## @brief ur_msgs/IOStates.flag_states: ur_msgs/Digital; 0..32 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsIOStates; share/platform/ros/nim/API-CONTRACT.md
  `analog_in_states`*: seq[Ros1Ur_msgsAnalog] ## @brief ur_msgs/IOStates.analog_in_states: ur_msgs/Analog; 0..16
  ## elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsIOStates; share/platform/ros/nim/API-CONTRACT.md
  `analog_out_states`*: seq[Ros1Ur_msgsAnalog] ## @brief ur_msgs/IOStates.analog_out_states: ur_msgs/Analog; 0..16
  ## elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsIOStates; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsIOStatesMaximumWireBytes* = 404 ## @brief Maximum canonical extent of ur_msgs/IOStates in bytes.
## @details The inclusive bound is 404 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros1Ur_msgsIOStates; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsIOStatesCodecIdentity* = "UWVMROS1_4b10f6efdd2f129267c407bc1f8caed03776fef6d49f0a1b9dfbf2451ad8f033" ## @brief Canonical codec
## identity of ur_msgs/IOStates.
## @details Exact identity UWVMROS1_4b10f6efdd2f129267c407bc1f8caed03776fef6d49f0a1b9dfbf2451ad8f033 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_msgsIOStates; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsIOStatesNativeType* = "ur_msgs/IOStates" ## @brief Original ROS type name for ur_msgs/IOStates.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_msgsIOStates; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsIOStatesNativeIdentity* = "" ## @brief Selected original native identity for ur_msgs/IOStates.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_msgsIOStates; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_msgsIOStates*(): Ros1Ur_msgsIOStates =
  ## ``@brief Construct the declared defaults of ur_msgs/IOStates.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_msgsIOStates; share/platform/ros/nim/API-CONTRACT.md``
  result.`digital_in_states` = @[]
  result.`digital_out_states` = @[]
  result.`flag_states` = @[]
  result.`analog_in_states` = @[]
  result.`analog_out_states` = @[]
proc writeFields*(value: Ros1Ur_msgsIOStates; w: var Writer) =
  ## ``@brief Append every canonical field of ur_msgs/IOStates.``
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
  ## ``@see Ros1Ur_msgsIOStates; share/platform/ros/nim/API-CONTRACT.md``
  if value.`digital_in_states`.len > 32: fail(22)
  putInteger(w,uint32(value.`digital_in_states`.len))
  for e in value.`digital_in_states`:
    writeFields(e,w)
  if value.`digital_out_states`.len > 32: fail(22)
  putInteger(w,uint32(value.`digital_out_states`.len))
  for e in value.`digital_out_states`:
    writeFields(e,w)
  if value.`flag_states`.len > 32: fail(22)
  putInteger(w,uint32(value.`flag_states`.len))
  for e in value.`flag_states`:
    writeFields(e,w)
  if value.`analog_in_states`.len > 16: fail(22)
  putInteger(w,uint32(value.`analog_in_states`.len))
  for e in value.`analog_in_states`:
    writeFields(e,w)
  if value.`analog_out_states`.len > 16: fail(22)
  putInteger(w,uint32(value.`analog_out_states`.len))
  for e in value.`analog_out_states`:
    writeFields(e,w)
proc readRos1Ur_msgsIOStates*(r: var Reader): Ros1Ur_msgsIOStates =
  ## ``@brief Read the ordered canonical fields of ur_msgs/IOStates.``
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
  ## ``@see Ros1Ur_msgsIOStates; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_msgsIOStates()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 32: fail(22)
  let count0 = int(rawcount0)
  result.`digital_in_states` = newSeq[Ros1Ur_msgsDigital](count0)
  for i in 0..<count0:
    result.`digital_in_states`[i] = readRos1Ur_msgsDigital(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 32: fail(22)
  let count1 = int(rawcount1)
  result.`digital_out_states` = newSeq[Ros1Ur_msgsDigital](count1)
  for i in 0..<count1:
    result.`digital_out_states`[i] = readRos1Ur_msgsDigital(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 32: fail(22)
  let count2 = int(rawcount2)
  result.`flag_states` = newSeq[Ros1Ur_msgsDigital](count2)
  for i in 0..<count2:
    result.`flag_states`[i] = readRos1Ur_msgsDigital(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 16: fail(22)
  let count3 = int(rawcount3)
  result.`analog_in_states` = newSeq[Ros1Ur_msgsAnalog](count3)
  for i in 0..<count3:
    result.`analog_in_states`[i] = readRos1Ur_msgsAnalog(r)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 16: fail(22)
  let count4 = int(rawcount4)
  result.`analog_out_states` = newSeq[Ros1Ur_msgsAnalog](count4)
  for i in 0..<count4:
    result.`analog_out_states`[i] = readRos1Ur_msgsAnalog(r)
proc encode*(value: Ros1Ur_msgsIOStates): seq[byte] =
  ## ``@brief Encode one complete ur_msgs/IOStates value.``
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
  ## ``@see Ros1Ur_msgsIOStates; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(404)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_msgsIOStates*(b: seq[byte]): Ros1Ur_msgsIOStates =
  ## ``@brief Decode exactly one complete ur_msgs/IOStates value.``
  ## ``@details Require the complete 20..404-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros1Ur_msgsIOStates; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,404)
  result = readRos1Ur_msgsIOStates(r)
  finish(r)
type Ros1Ur_msgsMasterboardDataMsg* = object
  ## ``@brief Complete ROS 1 ur_msgs/MasterboardDataMsg value.``
  ## ``@details All 16 declared fields are retained in source order. The canonical representation``
  ## ``occupies 62..62 bytes and is identified by``
  ## ``UWVMROS1_f80f92b90cb33dd5b118df81447dfcc33c1ab230a91bb915a1be684401da265f.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `digital_input_bits`*: uint32 ## @brief ur_msgs/MasterboardDataMsg.digital_input_bits: uint32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/nim/API-CONTRACT.md
  `digital_output_bits`*: uint32 ## @brief ur_msgs/MasterboardDataMsg.digital_output_bits: uint32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/nim/API-CONTRACT.md
  `analog_input_range0`*: int8 ## @brief ur_msgs/MasterboardDataMsg.analog_input_range0: int8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/nim/API-CONTRACT.md
  `analog_input_range1`*: int8 ## @brief ur_msgs/MasterboardDataMsg.analog_input_range1: int8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/nim/API-CONTRACT.md
  `analog_input0`*: float64 ## @brief ur_msgs/MasterboardDataMsg.analog_input0: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/nim/API-CONTRACT.md
  `analog_input1`*: float64 ## @brief ur_msgs/MasterboardDataMsg.analog_input1: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/nim/API-CONTRACT.md
  `analog_output_domain0`*: int8 ## @brief ur_msgs/MasterboardDataMsg.analog_output_domain0: int8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/nim/API-CONTRACT.md
  `analog_output_domain1`*: int8 ## @brief ur_msgs/MasterboardDataMsg.analog_output_domain1: int8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/nim/API-CONTRACT.md
  `analog_output0`*: float64 ## @brief ur_msgs/MasterboardDataMsg.analog_output0: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/nim/API-CONTRACT.md
  `analog_output1`*: float64 ## @brief ur_msgs/MasterboardDataMsg.analog_output1: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/nim/API-CONTRACT.md
  `masterboard_temperature`*: float32 ## @brief ur_msgs/MasterboardDataMsg.masterboard_temperature: float32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/nim/API-CONTRACT.md
  `robot_voltage_48V`*: float32 ## @brief ur_msgs/MasterboardDataMsg.robot_voltage_48V: float32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/nim/API-CONTRACT.md
  `robot_current`*: float32 ## @brief ur_msgs/MasterboardDataMsg.robot_current: float32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/nim/API-CONTRACT.md
  `master_io_current`*: float32 ## @brief ur_msgs/MasterboardDataMsg.master_io_current: float32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/nim/API-CONTRACT.md
  `master_safety_state`*: uint8 ## @brief ur_msgs/MasterboardDataMsg.master_safety_state: uint8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/nim/API-CONTRACT.md
  `master_onoff_state`*: uint8 ## @brief ur_msgs/MasterboardDataMsg.master_onoff_state: uint8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsMasterboardDataMsgMaximumWireBytes* = 62 ## @brief Maximum canonical extent of
## ur_msgs/MasterboardDataMsg in bytes.
## @details The inclusive bound is 62 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsMasterboardDataMsgCodecIdentity* = "UWVMROS1_f80f92b90cb33dd5b118df81447dfcc33c1ab230a91bb915a1be684401da265f" ## @brief Canonical codec
## identity of
## ur_msgs/MasterboardDataMsg.
## @details Exact identity UWVMROS1_f80f92b90cb33dd5b118df81447dfcc33c1ab230a91bb915a1be684401da265f binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsMasterboardDataMsgNativeType* = "ur_msgs/MasterboardDataMsg" ## @brief Original ROS type name for
## ur_msgs/MasterboardDataMsg.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsMasterboardDataMsgNativeIdentity* = "" ## @brief Selected original native identity for
## ur_msgs/MasterboardDataMsg.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_msgsMasterboardDataMsg*(): Ros1Ur_msgsMasterboardDataMsg =
  ## ``@brief Construct the declared defaults of ur_msgs/MasterboardDataMsg.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/nim/API-CONTRACT.md``
  result.`digital_input_bits` = 0
  result.`digital_output_bits` = 0
  result.`analog_input_range0` = 0
  result.`analog_input_range1` = 0
  result.`analog_input0` = 0
  result.`analog_input1` = 0
  result.`analog_output_domain0` = 0
  result.`analog_output_domain1` = 0
  result.`analog_output0` = 0
  result.`analog_output1` = 0
  result.`masterboard_temperature` = 0
  result.`robot_voltage_48V` = 0
  result.`robot_current` = 0
  result.`master_io_current` = 0
  result.`master_safety_state` = 0
  result.`master_onoff_state` = 0
proc writeFields*(value: Ros1Ur_msgsMasterboardDataMsg; w: var Writer) =
  ## ``@brief Append every canonical field of ur_msgs/MasterboardDataMsg.``
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
  ## ``@see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`digital_input_bits`)
  putInteger(w,value.`digital_output_bits`)
  putInteger(w,value.`analog_input_range0`)
  putInteger(w,value.`analog_input_range1`)
  putFloat64(w,value.`analog_input0`)
  putFloat64(w,value.`analog_input1`)
  putInteger(w,value.`analog_output_domain0`)
  putInteger(w,value.`analog_output_domain1`)
  putFloat64(w,value.`analog_output0`)
  putFloat64(w,value.`analog_output1`)
  putFloat32(w,value.`masterboard_temperature`)
  putFloat32(w,value.`robot_voltage_48V`)
  putFloat32(w,value.`robot_current`)
  putFloat32(w,value.`master_io_current`)
  putInteger(w,value.`master_safety_state`)
  putInteger(w,value.`master_onoff_state`)
proc readRos1Ur_msgsMasterboardDataMsg*(r: var Reader): Ros1Ur_msgsMasterboardDataMsg =
  ## ``@brief Read the ordered canonical fields of ur_msgs/MasterboardDataMsg.``
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
  ## ``@see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_msgsMasterboardDataMsg()
  result.`digital_input_bits` = getInteger(r,uint32)
  result.`digital_output_bits` = getInteger(r,uint32)
  result.`analog_input_range0` = getInteger(r,int8)
  result.`analog_input_range1` = getInteger(r,int8)
  result.`analog_input0` = getFloat64(r)
  result.`analog_input1` = getFloat64(r)
  result.`analog_output_domain0` = getInteger(r,int8)
  result.`analog_output_domain1` = getInteger(r,int8)
  result.`analog_output0` = getFloat64(r)
  result.`analog_output1` = getFloat64(r)
  result.`masterboard_temperature` = getFloat32(r)
  result.`robot_voltage_48V` = getFloat32(r)
  result.`robot_current` = getFloat32(r)
  result.`master_io_current` = getFloat32(r)
  result.`master_safety_state` = getInteger(r,uint8)
  result.`master_onoff_state` = getInteger(r,uint8)
proc encode*(value: Ros1Ur_msgsMasterboardDataMsg): seq[byte] =
  ## ``@brief Encode one complete ur_msgs/MasterboardDataMsg value.``
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
  ## ``@see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(62)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_msgsMasterboardDataMsg*(b: seq[byte]): Ros1Ur_msgsMasterboardDataMsg =
  ## ``@brief Decode exactly one complete ur_msgs/MasterboardDataMsg value.``
  ## ``@details Require the complete 62..62-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,62)
  result = readRos1Ur_msgsMasterboardDataMsg(r)
  finish(r)
type Ros1Ur_msgsRobotModeDataMsg* = object
  ## ``@brief Complete ROS 1 ur_msgs/RobotModeDataMsg value.``
  ## ``@details All 8 declared fields are retained in source order. The canonical representation``
  ## ``occupies 15..15 bytes and is identified by``
  ## ``UWVMROS1_64c4247d865e0731b13ca13ce2e355df664cabf7f3d646051d9d3ef48b05a231.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `timestamp`*: uint64 ## @brief ur_msgs/RobotModeDataMsg.timestamp: uint64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/nim/API-CONTRACT.md
  `is_robot_connected`*: bool ## @brief ur_msgs/RobotModeDataMsg.is_robot_connected: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/nim/API-CONTRACT.md
  `is_real_robot_enabled`*: bool ## @brief ur_msgs/RobotModeDataMsg.is_real_robot_enabled: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/nim/API-CONTRACT.md
  `is_power_on_robot`*: bool ## @brief ur_msgs/RobotModeDataMsg.is_power_on_robot: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/nim/API-CONTRACT.md
  `is_emergency_stopped`*: bool ## @brief ur_msgs/RobotModeDataMsg.is_emergency_stopped: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/nim/API-CONTRACT.md
  `is_protective_stopped`*: bool ## @brief ur_msgs/RobotModeDataMsg.is_protective_stopped: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/nim/API-CONTRACT.md
  `is_program_running`*: bool ## @brief ur_msgs/RobotModeDataMsg.is_program_running: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/nim/API-CONTRACT.md
  `is_program_paused`*: bool ## @brief ur_msgs/RobotModeDataMsg.is_program_paused: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsRobotModeDataMsgMaximumWireBytes* = 15 ## @brief Maximum canonical extent of ur_msgs/RobotModeDataMsg
## in bytes.
## @details The inclusive bound is 15 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsRobotModeDataMsgCodecIdentity* = "UWVMROS1_64c4247d865e0731b13ca13ce2e355df664cabf7f3d646051d9d3ef48b05a231" ## @brief Canonical codec
## identity of
## ur_msgs/RobotModeDataMsg.
## @details Exact identity UWVMROS1_64c4247d865e0731b13ca13ce2e355df664cabf7f3d646051d9d3ef48b05a231 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsRobotModeDataMsgNativeType* = "ur_msgs/RobotModeDataMsg" ## @brief Original ROS type name for
## ur_msgs/RobotModeDataMsg.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsRobotModeDataMsgNativeIdentity* = "" ## @brief Selected original native identity for
## ur_msgs/RobotModeDataMsg.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_msgsRobotModeDataMsg*(): Ros1Ur_msgsRobotModeDataMsg =
  ## ``@brief Construct the declared defaults of ur_msgs/RobotModeDataMsg.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/nim/API-CONTRACT.md``
  result.`timestamp` = 0
  result.`is_robot_connected` = false
  result.`is_real_robot_enabled` = false
  result.`is_power_on_robot` = false
  result.`is_emergency_stopped` = false
  result.`is_protective_stopped` = false
  result.`is_program_running` = false
  result.`is_program_paused` = false
proc writeFields*(value: Ros1Ur_msgsRobotModeDataMsg; w: var Writer) =
  ## ``@brief Append every canonical field of ur_msgs/RobotModeDataMsg.``
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
  ## ``@see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`timestamp`)
  putBool(w,value.`is_robot_connected`)
  putBool(w,value.`is_real_robot_enabled`)
  putBool(w,value.`is_power_on_robot`)
  putBool(w,value.`is_emergency_stopped`)
  putBool(w,value.`is_protective_stopped`)
  putBool(w,value.`is_program_running`)
  putBool(w,value.`is_program_paused`)
proc readRos1Ur_msgsRobotModeDataMsg*(r: var Reader): Ros1Ur_msgsRobotModeDataMsg =
  ## ``@brief Read the ordered canonical fields of ur_msgs/RobotModeDataMsg.``
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
  ## ``@see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_msgsRobotModeDataMsg()
  result.`timestamp` = getInteger(r,uint64)
  result.`is_robot_connected` = getBool(r)
  result.`is_real_robot_enabled` = getBool(r)
  result.`is_power_on_robot` = getBool(r)
  result.`is_emergency_stopped` = getBool(r)
  result.`is_protective_stopped` = getBool(r)
  result.`is_program_running` = getBool(r)
  result.`is_program_paused` = getBool(r)
proc encode*(value: Ros1Ur_msgsRobotModeDataMsg): seq[byte] =
  ## ``@brief Encode one complete ur_msgs/RobotModeDataMsg value.``
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
  ## ``@see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(15)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_msgsRobotModeDataMsg*(b: seq[byte]): Ros1Ur_msgsRobotModeDataMsg =
  ## ``@brief Decode exactly one complete ur_msgs/RobotModeDataMsg value.``
  ## ``@details Require the complete 15..15-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,15)
  result = readRos1Ur_msgsRobotModeDataMsg(r)
  finish(r)
type Ros1Ur_msgsRobotStateRTMsg* = object
  ## ``@brief Complete ROS 1 ur_msgs/RobotStateRTMsg value.``
  ## ``@details All 19 declared fields are retained in source order. The canonical representation``
  ## ``occupies 96..768 bytes and is identified by``
  ## ``UWVMROS1_e3d93b6141f749b93c229d8eabebbeb2782a16621fea4d7d39096794e7a67ce7.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `time`*: float64 ## @brief ur_msgs/RobotStateRTMsg.time: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/nim/API-CONTRACT.md
  `q_target`*: seq[float64] ## @brief ur_msgs/RobotStateRTMsg.q_target: float64; 0..6 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/nim/API-CONTRACT.md
  `qd_target`*: seq[float64] ## @brief ur_msgs/RobotStateRTMsg.qd_target: float64; 0..6 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/nim/API-CONTRACT.md
  `qdd_target`*: seq[float64] ## @brief ur_msgs/RobotStateRTMsg.qdd_target: float64; 0..6 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/nim/API-CONTRACT.md
  `i_target`*: seq[float64] ## @brief ur_msgs/RobotStateRTMsg.i_target: float64; 0..6 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/nim/API-CONTRACT.md
  `m_target`*: seq[float64] ## @brief ur_msgs/RobotStateRTMsg.m_target: float64; 0..6 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/nim/API-CONTRACT.md
  `q_actual`*: seq[float64] ## @brief ur_msgs/RobotStateRTMsg.q_actual: float64; 0..6 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/nim/API-CONTRACT.md
  `qd_actual`*: seq[float64] ## @brief ur_msgs/RobotStateRTMsg.qd_actual: float64; 0..6 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/nim/API-CONTRACT.md
  `i_actual`*: seq[float64] ## @brief ur_msgs/RobotStateRTMsg.i_actual: float64; 0..6 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/nim/API-CONTRACT.md
  `tool_acc_values`*: seq[float64] ## @brief ur_msgs/RobotStateRTMsg.tool_acc_values: float64; 0..6 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/nim/API-CONTRACT.md
  `tcp_force`*: seq[float64] ## @brief ur_msgs/RobotStateRTMsg.tcp_force: float64; 0..6 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/nim/API-CONTRACT.md
  `tool_vector`*: seq[float64] ## @brief ur_msgs/RobotStateRTMsg.tool_vector: float64; 0..6 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/nim/API-CONTRACT.md
  `tcp_speed`*: seq[float64] ## @brief ur_msgs/RobotStateRTMsg.tcp_speed: float64; 0..6 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/nim/API-CONTRACT.md
  `digital_input_bits`*: float64 ## @brief ur_msgs/RobotStateRTMsg.digital_input_bits: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/nim/API-CONTRACT.md
  `motor_temperatures`*: seq[float64] ## @brief ur_msgs/RobotStateRTMsg.motor_temperatures: float64; 0..6 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/nim/API-CONTRACT.md
  `controller_timer`*: float64 ## @brief ur_msgs/RobotStateRTMsg.controller_timer: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/nim/API-CONTRACT.md
  `test_value`*: float64 ## @brief ur_msgs/RobotStateRTMsg.test_value: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/nim/API-CONTRACT.md
  `robot_mode`*: float64 ## @brief ur_msgs/RobotStateRTMsg.robot_mode: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/nim/API-CONTRACT.md
  `joint_modes`*: seq[float64] ## @brief ur_msgs/RobotStateRTMsg.joint_modes: float64; 0..6 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsRobotStateRTMsgMaximumWireBytes* = 768 ## @brief Maximum canonical extent of ur_msgs/RobotStateRTMsg in
## bytes.
## @details The inclusive bound is 768 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsRobotStateRTMsgCodecIdentity* = "UWVMROS1_e3d93b6141f749b93c229d8eabebbeb2782a16621fea4d7d39096794e7a67ce7" ## @brief Canonical codec
## identity of
## ur_msgs/RobotStateRTMsg.
## @details Exact identity UWVMROS1_e3d93b6141f749b93c229d8eabebbeb2782a16621fea4d7d39096794e7a67ce7 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsRobotStateRTMsgNativeType* = "ur_msgs/RobotStateRTMsg" ## @brief Original ROS type name for
## ur_msgs/RobotStateRTMsg.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsRobotStateRTMsgNativeIdentity* = "" ## @brief Selected original native identity for
## ur_msgs/RobotStateRTMsg.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_msgsRobotStateRTMsg*(): Ros1Ur_msgsRobotStateRTMsg =
  ## ``@brief Construct the declared defaults of ur_msgs/RobotStateRTMsg.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/nim/API-CONTRACT.md``
  result.`time` = 0
  result.`q_target` = @[]
  result.`qd_target` = @[]
  result.`qdd_target` = @[]
  result.`i_target` = @[]
  result.`m_target` = @[]
  result.`q_actual` = @[]
  result.`qd_actual` = @[]
  result.`i_actual` = @[]
  result.`tool_acc_values` = @[]
  result.`tcp_force` = @[]
  result.`tool_vector` = @[]
  result.`tcp_speed` = @[]
  result.`digital_input_bits` = 0
  result.`motor_temperatures` = @[]
  result.`controller_timer` = 0
  result.`test_value` = 0
  result.`robot_mode` = 0
  result.`joint_modes` = @[]
proc writeFields*(value: Ros1Ur_msgsRobotStateRTMsg; w: var Writer) =
  ## ``@brief Append every canonical field of ur_msgs/RobotStateRTMsg.``
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
  ## ``@see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/nim/API-CONTRACT.md``
  putFloat64(w,value.`time`)
  if value.`q_target`.len > 6: fail(22)
  putInteger(w,uint32(value.`q_target`.len))
  for e in value.`q_target`:
    putFloat64(w,e)
  if value.`qd_target`.len > 6: fail(22)
  putInteger(w,uint32(value.`qd_target`.len))
  for e in value.`qd_target`:
    putFloat64(w,e)
  if value.`qdd_target`.len > 6: fail(22)
  putInteger(w,uint32(value.`qdd_target`.len))
  for e in value.`qdd_target`:
    putFloat64(w,e)
  if value.`i_target`.len > 6: fail(22)
  putInteger(w,uint32(value.`i_target`.len))
  for e in value.`i_target`:
    putFloat64(w,e)
  if value.`m_target`.len > 6: fail(22)
  putInteger(w,uint32(value.`m_target`.len))
  for e in value.`m_target`:
    putFloat64(w,e)
  if value.`q_actual`.len > 6: fail(22)
  putInteger(w,uint32(value.`q_actual`.len))
  for e in value.`q_actual`:
    putFloat64(w,e)
  if value.`qd_actual`.len > 6: fail(22)
  putInteger(w,uint32(value.`qd_actual`.len))
  for e in value.`qd_actual`:
    putFloat64(w,e)
  if value.`i_actual`.len > 6: fail(22)
  putInteger(w,uint32(value.`i_actual`.len))
  for e in value.`i_actual`:
    putFloat64(w,e)
  if value.`tool_acc_values`.len > 6: fail(22)
  putInteger(w,uint32(value.`tool_acc_values`.len))
  for e in value.`tool_acc_values`:
    putFloat64(w,e)
  if value.`tcp_force`.len > 6: fail(22)
  putInteger(w,uint32(value.`tcp_force`.len))
  for e in value.`tcp_force`:
    putFloat64(w,e)
  if value.`tool_vector`.len > 6: fail(22)
  putInteger(w,uint32(value.`tool_vector`.len))
  for e in value.`tool_vector`:
    putFloat64(w,e)
  if value.`tcp_speed`.len > 6: fail(22)
  putInteger(w,uint32(value.`tcp_speed`.len))
  for e in value.`tcp_speed`:
    putFloat64(w,e)
  putFloat64(w,value.`digital_input_bits`)
  if value.`motor_temperatures`.len > 6: fail(22)
  putInteger(w,uint32(value.`motor_temperatures`.len))
  for e in value.`motor_temperatures`:
    putFloat64(w,e)
  putFloat64(w,value.`controller_timer`)
  putFloat64(w,value.`test_value`)
  putFloat64(w,value.`robot_mode`)
  if value.`joint_modes`.len > 6: fail(22)
  putInteger(w,uint32(value.`joint_modes`.len))
  for e in value.`joint_modes`:
    putFloat64(w,e)
proc readRos1Ur_msgsRobotStateRTMsg*(r: var Reader): Ros1Ur_msgsRobotStateRTMsg =
  ## ``@brief Read the ordered canonical fields of ur_msgs/RobotStateRTMsg.``
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
  ## ``@see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_msgsRobotStateRTMsg()
  result.`time` = getFloat64(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 6: fail(22)
  let count1 = int(rawcount1)
  result.`q_target` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`q_target`[i] = getFloat64(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 6: fail(22)
  let count2 = int(rawcount2)
  result.`qd_target` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`qd_target`[i] = getFloat64(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 6: fail(22)
  let count3 = int(rawcount3)
  result.`qdd_target` = newSeq[float64](count3)
  for i in 0..<count3:
    result.`qdd_target`[i] = getFloat64(r)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 6: fail(22)
  let count4 = int(rawcount4)
  result.`i_target` = newSeq[float64](count4)
  for i in 0..<count4:
    result.`i_target`[i] = getFloat64(r)
  let rawcount5 = getInteger(r,uint32)
  if rawcount5 > 6: fail(22)
  let count5 = int(rawcount5)
  result.`m_target` = newSeq[float64](count5)
  for i in 0..<count5:
    result.`m_target`[i] = getFloat64(r)
  let rawcount6 = getInteger(r,uint32)
  if rawcount6 > 6: fail(22)
  let count6 = int(rawcount6)
  result.`q_actual` = newSeq[float64](count6)
  for i in 0..<count6:
    result.`q_actual`[i] = getFloat64(r)
  let rawcount7 = getInteger(r,uint32)
  if rawcount7 > 6: fail(22)
  let count7 = int(rawcount7)
  result.`qd_actual` = newSeq[float64](count7)
  for i in 0..<count7:
    result.`qd_actual`[i] = getFloat64(r)
  let rawcount8 = getInteger(r,uint32)
  if rawcount8 > 6: fail(22)
  let count8 = int(rawcount8)
  result.`i_actual` = newSeq[float64](count8)
  for i in 0..<count8:
    result.`i_actual`[i] = getFloat64(r)
  let rawcount9 = getInteger(r,uint32)
  if rawcount9 > 6: fail(22)
  let count9 = int(rawcount9)
  result.`tool_acc_values` = newSeq[float64](count9)
  for i in 0..<count9:
    result.`tool_acc_values`[i] = getFloat64(r)
  let rawcount10 = getInteger(r,uint32)
  if rawcount10 > 6: fail(22)
  let count10 = int(rawcount10)
  result.`tcp_force` = newSeq[float64](count10)
  for i in 0..<count10:
    result.`tcp_force`[i] = getFloat64(r)
  let rawcount11 = getInteger(r,uint32)
  if rawcount11 > 6: fail(22)
  let count11 = int(rawcount11)
  result.`tool_vector` = newSeq[float64](count11)
  for i in 0..<count11:
    result.`tool_vector`[i] = getFloat64(r)
  let rawcount12 = getInteger(r,uint32)
  if rawcount12 > 6: fail(22)
  let count12 = int(rawcount12)
  result.`tcp_speed` = newSeq[float64](count12)
  for i in 0..<count12:
    result.`tcp_speed`[i] = getFloat64(r)
  result.`digital_input_bits` = getFloat64(r)
  let rawcount14 = getInteger(r,uint32)
  if rawcount14 > 6: fail(22)
  let count14 = int(rawcount14)
  result.`motor_temperatures` = newSeq[float64](count14)
  for i in 0..<count14:
    result.`motor_temperatures`[i] = getFloat64(r)
  result.`controller_timer` = getFloat64(r)
  result.`test_value` = getFloat64(r)
  result.`robot_mode` = getFloat64(r)
  let rawcount18 = getInteger(r,uint32)
  if rawcount18 > 6: fail(22)
  let count18 = int(rawcount18)
  result.`joint_modes` = newSeq[float64](count18)
  for i in 0..<count18:
    result.`joint_modes`[i] = getFloat64(r)
proc encode*(value: Ros1Ur_msgsRobotStateRTMsg): seq[byte] =
  ## ``@brief Encode one complete ur_msgs/RobotStateRTMsg value.``
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
  ## ``@see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(768)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_msgsRobotStateRTMsg*(b: seq[byte]): Ros1Ur_msgsRobotStateRTMsg =
  ## ``@brief Decode exactly one complete ur_msgs/RobotStateRTMsg value.``
  ## ``@details Require the complete 96..768-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,768)
  result = readRos1Ur_msgsRobotStateRTMsg(r)
  finish(r)
type Ros1Ur_msgsSetAnalogOutputRequest* = object
  ## ``@brief Complete ROS 1 ur_msgs/SetAnalogOutputRequest value.``
  ## ``@details All 1 declared fields are retained in source order. The canonical representation``
  ## ``occupies 6..6 bytes and is identified by``
  ## ``UWVMROS1_1830a63c8853ebe8842f0e8e6870fbdee136dfe78726ba581fd1c54f910c4789.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `data`*: Ros1Ur_msgsAnalog ## @brief ur_msgs/SetAnalogOutputRequest.data: ur_msgs/Analog.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetAnalogOutputRequestMaximumWireBytes* = 6 ## @brief Maximum canonical extent of
## ur_msgs/SetAnalogOutputRequest in bytes.
## @details The inclusive bound is 6 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetAnalogOutputRequestCodecIdentity* = "UWVMROS1_1830a63c8853ebe8842f0e8e6870fbdee136dfe78726ba581fd1c54f910c4789" ## @brief Canonical codec
## identity of
## ur_msgs/SetAnalogOutputRequest.
## @details Exact identity UWVMROS1_1830a63c8853ebe8842f0e8e6870fbdee136dfe78726ba581fd1c54f910c4789 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetAnalogOutputRequestNativeType* = "ur_msgs/SetAnalogOutputRequest" ## @brief Original ROS type name
## for
## ur_msgs/SetAnalogOutputRequest.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetAnalogOutputRequestNativeIdentity* = "" ## @brief Selected original native identity for
## ur_msgs/SetAnalogOutputRequest.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_msgsSetAnalogOutputRequest*(): Ros1Ur_msgsSetAnalogOutputRequest =
  ## ``@brief Construct the declared defaults of ur_msgs/SetAnalogOutputRequest.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/nim/API-CONTRACT.md``
  result.`data` = initRos1Ur_msgsAnalog()
proc writeFields*(value: Ros1Ur_msgsSetAnalogOutputRequest; w: var Writer) =
  ## ``@brief Append every canonical field of ur_msgs/SetAnalogOutputRequest.``
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
  ## ``@see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`data`,w)
proc readRos1Ur_msgsSetAnalogOutputRequest*(r: var Reader): Ros1Ur_msgsSetAnalogOutputRequest =
  ## ``@brief Read the ordered canonical fields of ur_msgs/SetAnalogOutputRequest.``
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
  ## ``@see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_msgsSetAnalogOutputRequest()
  result.`data` = readRos1Ur_msgsAnalog(r)
proc encode*(value: Ros1Ur_msgsSetAnalogOutputRequest): seq[byte] =
  ## ``@brief Encode one complete ur_msgs/SetAnalogOutputRequest value.``
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
  ## ``@see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(6)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_msgsSetAnalogOutputRequest*(b: seq[byte]): Ros1Ur_msgsSetAnalogOutputRequest =
  ## ``@brief Decode exactly one complete ur_msgs/SetAnalogOutputRequest value.``
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
  ## ``@see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,6)
  result = readRos1Ur_msgsSetAnalogOutputRequest(r)
  finish(r)
type Ros1Ur_msgsSetAnalogOutputResponse* = object
  ## ``@brief Complete ROS 1 ur_msgs/SetAnalogOutputResponse value.``
  ## ``@details All 1 declared fields are retained in source order. The canonical representation``
  ## ``occupies 1..1 bytes and is identified by``
  ## ``UWVMROS1_bb84c969f904082699f67d385b093b0c6de97bfacc33eab86932f4564a823580.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `success`*: bool ## @brief ur_msgs/SetAnalogOutputResponse.success: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetAnalogOutputResponseMaximumWireBytes* = 1 ## @brief Maximum canonical extent of
## ur_msgs/SetAnalogOutputResponse in bytes.
## @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetAnalogOutputResponseCodecIdentity* = "UWVMROS1_bb84c969f904082699f67d385b093b0c6de97bfacc33eab86932f4564a823580" ## @brief Canonical codec
## identity of
## ur_msgs/SetAnalogOutputResponse.
## @details Exact identity UWVMROS1_bb84c969f904082699f67d385b093b0c6de97bfacc33eab86932f4564a823580 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetAnalogOutputResponseNativeType* = "ur_msgs/SetAnalogOutputResponse" ## @brief Original ROS type name
## for
## ur_msgs/SetAnalogOutputResponse.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetAnalogOutputResponseNativeIdentity* = "" ## @brief Selected original native identity for
## ur_msgs/SetAnalogOutputResponse.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_msgsSetAnalogOutputResponse*(): Ros1Ur_msgsSetAnalogOutputResponse =
  ## ``@brief Construct the declared defaults of ur_msgs/SetAnalogOutputResponse.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`success` = false
proc writeFields*(value: Ros1Ur_msgsSetAnalogOutputResponse; w: var Writer) =
  ## ``@brief Append every canonical field of ur_msgs/SetAnalogOutputResponse.``
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
  ## ``@see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`success`)
proc readRos1Ur_msgsSetAnalogOutputResponse*(r: var Reader): Ros1Ur_msgsSetAnalogOutputResponse =
  ## ``@brief Read the ordered canonical fields of ur_msgs/SetAnalogOutputResponse.``
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
  ## ``@see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_msgsSetAnalogOutputResponse()
  result.`success` = getBool(r)
proc encode*(value: Ros1Ur_msgsSetAnalogOutputResponse): seq[byte] =
  ## ``@brief Encode one complete ur_msgs/SetAnalogOutputResponse value.``
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
  ## ``@see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_msgsSetAnalogOutputResponse*(b: seq[byte]): Ros1Ur_msgsSetAnalogOutputResponse =
  ## ``@brief Decode exactly one complete ur_msgs/SetAnalogOutputResponse value.``
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
  ## ``@see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos1Ur_msgsSetAnalogOutputResponse(r)
  finish(r)
type Ros1Ur_msgsSetForceModeRequest* = object
  ## ``@brief Complete ROS 1 ur_msgs/SetForceModeRequest value.``
  ## ``@details All 13 declared fields are retained in source order. The canonical representation``
  ## ``occupies 207..335 bytes and is identified by``
  ## ``UWVMROS1_c148d6eb37258e10f5d16e76e41c334fc57a3d751c0c35c47be4cabf4c015a6b.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `task_frame`*: Ros1Geometry_msgsPoseStamped ## @brief ur_msgs/SetForceModeRequest.task_frame:
  ## geometry_msgs/PoseStamped.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/nim/API-CONTRACT.md
  `selection_vector_x`*: bool ## @brief ur_msgs/SetForceModeRequest.selection_vector_x: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/nim/API-CONTRACT.md
  `selection_vector_y`*: bool ## @brief ur_msgs/SetForceModeRequest.selection_vector_y: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/nim/API-CONTRACT.md
  `selection_vector_z`*: bool ## @brief ur_msgs/SetForceModeRequest.selection_vector_z: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/nim/API-CONTRACT.md
  `selection_vector_rx`*: bool ## @brief ur_msgs/SetForceModeRequest.selection_vector_rx: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/nim/API-CONTRACT.md
  `selection_vector_ry`*: bool ## @brief ur_msgs/SetForceModeRequest.selection_vector_ry: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/nim/API-CONTRACT.md
  `selection_vector_rz`*: bool ## @brief ur_msgs/SetForceModeRequest.selection_vector_rz: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/nim/API-CONTRACT.md
  `wrench`*: Ros1Geometry_msgsWrench ## @brief ur_msgs/SetForceModeRequest.wrench: geometry_msgs/Wrench.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/nim/API-CONTRACT.md
  `type`*: uint8 ## @brief ur_msgs/SetForceModeRequest.type: uint8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/nim/API-CONTRACT.md
  `speed_limits`*: Ros1Geometry_msgsTwist ## @brief ur_msgs/SetForceModeRequest.speed_limits: geometry_msgs/Twist.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/nim/API-CONTRACT.md
  `deviation_limits`*: array[6,float32] ## @brief ur_msgs/SetForceModeRequest.deviation_limits: float32; exactly 6
  ## elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/nim/API-CONTRACT.md
  `damping_factor`*: float32 ## @brief ur_msgs/SetForceModeRequest.damping_factor: float32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/nim/API-CONTRACT.md
  `gain_scaling`*: float32 ## @brief ur_msgs/SetForceModeRequest.gain_scaling: float32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetForceModeRequestMaximumWireBytes* = 335 ## @brief Maximum canonical extent of
## ur_msgs/SetForceModeRequest in bytes.
## @details The inclusive bound is 335 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetForceModeRequestCodecIdentity* = "UWVMROS1_c148d6eb37258e10f5d16e76e41c334fc57a3d751c0c35c47be4cabf4c015a6b" ## @brief Canonical codec
## identity of
## ur_msgs/SetForceModeRequest.
## @details Exact identity UWVMROS1_c148d6eb37258e10f5d16e76e41c334fc57a3d751c0c35c47be4cabf4c015a6b binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetForceModeRequestNativeType* = "ur_msgs/SetForceModeRequest" ## @brief Original ROS type name for
## ur_msgs/SetForceModeRequest.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetForceModeRequestNativeIdentity* = "" ## @brief Selected original native identity for
## ur_msgs/SetForceModeRequest.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetForceModeRequest_TCP_TO_ORIGIN*: uint8 = 1'u8 ## @brief ur_msgs/SetForceModeRequest.TCP_TO_ORIGIN:
## original uint8 constant.
## @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetForceModeRequest_NO_TRANSFORM*: uint8 = 2'u8 ## @brief ur_msgs/SetForceModeRequest.NO_TRANSFORM:
## original uint8 constant.
## @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetForceModeRequest_TCP_VELOCITY_TO_X_Y*: uint8 = 3'u8 ## @brief
## ur_msgs/SetForceModeRequest.TCP_VELOCITY_TO_X_Y:
## original uint8 constant.
## @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_msgsSetForceModeRequest*(): Ros1Ur_msgsSetForceModeRequest =
  ## ``@brief Construct the declared defaults of ur_msgs/SetForceModeRequest.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/nim/API-CONTRACT.md``
  result.`task_frame` = initRos1Geometry_msgsPoseStamped()
  result.`selection_vector_x` = false
  result.`selection_vector_y` = false
  result.`selection_vector_z` = false
  result.`selection_vector_rx` = false
  result.`selection_vector_ry` = false
  result.`selection_vector_rz` = false
  result.`wrench` = initRos1Geometry_msgsWrench()
  result.`type` = 0
  result.`speed_limits` = initRos1Geometry_msgsTwist()
  result.`deviation_limits` = [0,0,0,0,0,0]
  result.`damping_factor` = 0
  result.`gain_scaling` = 0
proc writeFields*(value: Ros1Ur_msgsSetForceModeRequest; w: var Writer) =
  ## ``@brief Append every canonical field of ur_msgs/SetForceModeRequest.``
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
  ## ``@see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`task_frame`,w)
  putBool(w,value.`selection_vector_x`)
  putBool(w,value.`selection_vector_y`)
  putBool(w,value.`selection_vector_z`)
  putBool(w,value.`selection_vector_rx`)
  putBool(w,value.`selection_vector_ry`)
  putBool(w,value.`selection_vector_rz`)
  writeFields(value.`wrench`,w)
  putInteger(w,value.`type`)
  writeFields(value.`speed_limits`,w)
  for e in value.`deviation_limits`:
    putFloat32(w,e)
  putFloat32(w,value.`damping_factor`)
  putFloat32(w,value.`gain_scaling`)
proc readRos1Ur_msgsSetForceModeRequest*(r: var Reader): Ros1Ur_msgsSetForceModeRequest =
  ## ``@brief Read the ordered canonical fields of ur_msgs/SetForceModeRequest.``
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
  ## ``@see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_msgsSetForceModeRequest()
  result.`task_frame` = readRos1Geometry_msgsPoseStamped(r)
  result.`selection_vector_x` = getBool(r)
  result.`selection_vector_y` = getBool(r)
  result.`selection_vector_z` = getBool(r)
  result.`selection_vector_rx` = getBool(r)
  result.`selection_vector_ry` = getBool(r)
  result.`selection_vector_rz` = getBool(r)
  result.`wrench` = readRos1Geometry_msgsWrench(r)
  result.`type` = getInteger(r,uint8)
  result.`speed_limits` = readRos1Geometry_msgsTwist(r)
  let count10 = 6
  for i in 0..<count10:
    result.`deviation_limits`[i] = getFloat32(r)
  result.`damping_factor` = getFloat32(r)
  result.`gain_scaling` = getFloat32(r)
proc encode*(value: Ros1Ur_msgsSetForceModeRequest): seq[byte] =
  ## ``@brief Encode one complete ur_msgs/SetForceModeRequest value.``
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
  ## ``@see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(335)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_msgsSetForceModeRequest*(b: seq[byte]): Ros1Ur_msgsSetForceModeRequest =
  ## ``@brief Decode exactly one complete ur_msgs/SetForceModeRequest value.``
  ## ``@details Require the complete 207..335-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,335)
  result = readRos1Ur_msgsSetForceModeRequest(r)
  finish(r)
type Ros1Ur_msgsSetForceModeResponse* = object
  ## ``@brief Complete ROS 1 ur_msgs/SetForceModeResponse value.``
  ## ``@details All 1 declared fields are retained in source order. The canonical representation``
  ## ``occupies 1..1 bytes and is identified by``
  ## ``UWVMROS1_bb1eeb0b38d81d642066bed1510245423f62d25983a2de89e985d1fd1932308c.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `success`*: bool ## @brief ur_msgs/SetForceModeResponse.success: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetForceModeResponseMaximumWireBytes* = 1 ## @brief Maximum canonical extent of
## ur_msgs/SetForceModeResponse in bytes.
## @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetForceModeResponseCodecIdentity* = "UWVMROS1_bb1eeb0b38d81d642066bed1510245423f62d25983a2de89e985d1fd1932308c" ## @brief Canonical codec
## identity of
## ur_msgs/SetForceModeResponse.
## @details Exact identity UWVMROS1_bb1eeb0b38d81d642066bed1510245423f62d25983a2de89e985d1fd1932308c binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetForceModeResponseNativeType* = "ur_msgs/SetForceModeResponse" ## @brief Original ROS type name for
## ur_msgs/SetForceModeResponse.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetForceModeResponseNativeIdentity* = "" ## @brief Selected original native identity for
## ur_msgs/SetForceModeResponse.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_msgsSetForceModeResponse*(): Ros1Ur_msgsSetForceModeResponse =
  ## ``@brief Construct the declared defaults of ur_msgs/SetForceModeResponse.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`success` = false
proc writeFields*(value: Ros1Ur_msgsSetForceModeResponse; w: var Writer) =
  ## ``@brief Append every canonical field of ur_msgs/SetForceModeResponse.``
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
  ## ``@see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`success`)
proc readRos1Ur_msgsSetForceModeResponse*(r: var Reader): Ros1Ur_msgsSetForceModeResponse =
  ## ``@brief Read the ordered canonical fields of ur_msgs/SetForceModeResponse.``
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
  ## ``@see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_msgsSetForceModeResponse()
  result.`success` = getBool(r)
proc encode*(value: Ros1Ur_msgsSetForceModeResponse): seq[byte] =
  ## ``@brief Encode one complete ur_msgs/SetForceModeResponse value.``
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
  ## ``@see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_msgsSetForceModeResponse*(b: seq[byte]): Ros1Ur_msgsSetForceModeResponse =
  ## ``@brief Decode exactly one complete ur_msgs/SetForceModeResponse value.``
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
  ## ``@see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos1Ur_msgsSetForceModeResponse(r)
  finish(r)
type Ros1Ur_msgsSetIORequest* = object
  ## ``@brief Complete ROS 1 ur_msgs/SetIORequest value.``
  ## ``@details All 3 declared fields are retained in source order. The canonical representation``
  ## ``occupies 6..6 bytes and is identified by``
  ## ``UWVMROS1_3dbd2f05686ddaac16b37dc8ec98303acb672d176be34fc906cf32f2d4cd1872.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `fun`*: int8 ## @brief ur_msgs/SetIORequest.fun: int8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
  `pin`*: int8 ## @brief ur_msgs/SetIORequest.pin: int8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
  `state`*: float32 ## @brief ur_msgs/SetIORequest.state: float32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIORequestMaximumWireBytes* = 6 ## @brief Maximum canonical extent of ur_msgs/SetIORequest in bytes.
## @details The inclusive bound is 6 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIORequestCodecIdentity* = "UWVMROS1_3dbd2f05686ddaac16b37dc8ec98303acb672d176be34fc906cf32f2d4cd1872" ## @brief Canonical codec
## identity of
## ur_msgs/SetIORequest.
## @details Exact identity UWVMROS1_3dbd2f05686ddaac16b37dc8ec98303acb672d176be34fc906cf32f2d4cd1872 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIORequestNativeType* = "ur_msgs/SetIORequest" ## @brief Original ROS type name for
## ur_msgs/SetIORequest.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIORequestNativeIdentity* = "" ## @brief Selected original native identity for ur_msgs/SetIORequest.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIORequest_PIN_AOUT0*: int8 = 0'i8 ## @brief ur_msgs/SetIORequest.PIN_AOUT0: original int8 constant.
## @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIORequest_PIN_AOUT1*: int8 = 1'i8 ## @brief ur_msgs/SetIORequest.PIN_AOUT1: original int8 constant.
## @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIORequest_PIN_DOUT0*: int8 = 0'i8 ## @brief ur_msgs/SetIORequest.PIN_DOUT0: original int8 constant.
## @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIORequest_PIN_DOUT1*: int8 = 1'i8 ## @brief ur_msgs/SetIORequest.PIN_DOUT1: original int8 constant.
## @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIORequest_PIN_DOUT2*: int8 = 2'i8 ## @brief ur_msgs/SetIORequest.PIN_DOUT2: original int8 constant.
## @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIORequest_PIN_DOUT3*: int8 = 3'i8 ## @brief ur_msgs/SetIORequest.PIN_DOUT3: original int8 constant.
## @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIORequest_PIN_DOUT4*: int8 = 4'i8 ## @brief ur_msgs/SetIORequest.PIN_DOUT4: original int8 constant.
## @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIORequest_PIN_DOUT5*: int8 = 5'i8 ## @brief ur_msgs/SetIORequest.PIN_DOUT5: original int8 constant.
## @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIORequest_PIN_DOUT6*: int8 = 6'i8 ## @brief ur_msgs/SetIORequest.PIN_DOUT6: original int8 constant.
## @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIORequest_PIN_DOUT7*: int8 = 7'i8 ## @brief ur_msgs/SetIORequest.PIN_DOUT7: original int8 constant.
## @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIORequest_PIN_CONF_OUT0*: int8 = 8'i8 ## @brief ur_msgs/SetIORequest.PIN_CONF_OUT0: original int8
## constant.
## @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIORequest_PIN_CONF_OUT1*: int8 = 9'i8 ## @brief ur_msgs/SetIORequest.PIN_CONF_OUT1: original int8
## constant.
## @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIORequest_PIN_CONF_OUT2*: int8 = 10'i8 ## @brief ur_msgs/SetIORequest.PIN_CONF_OUT2: original int8
## constant.
## @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIORequest_PIN_CONF_OUT3*: int8 = 11'i8 ## @brief ur_msgs/SetIORequest.PIN_CONF_OUT3: original int8
## constant.
## @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIORequest_PIN_CONF_OUT4*: int8 = 12'i8 ## @brief ur_msgs/SetIORequest.PIN_CONF_OUT4: original int8
## constant.
## @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIORequest_PIN_CONF_OUT5*: int8 = 13'i8 ## @brief ur_msgs/SetIORequest.PIN_CONF_OUT5: original int8
## constant.
## @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIORequest_PIN_CONF_OUT6*: int8 = 14'i8 ## @brief ur_msgs/SetIORequest.PIN_CONF_OUT6: original int8
## constant.
## @details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIORequest_PIN_CONF_OUT7*: int8 = 15'i8 ## @brief ur_msgs/SetIORequest.PIN_CONF_OUT7: original int8
## constant.
## @details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIORequest_PIN_TOOL_DOUT0*: int8 = 16'i8 ## @brief ur_msgs/SetIORequest.PIN_TOOL_DOUT0: original int8
## constant.
## @details Exact admitted value 16. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIORequest_PIN_TOOL_DOUT1*: int8 = 17'i8 ## @brief ur_msgs/SetIORequest.PIN_TOOL_DOUT1: original int8
## constant.
## @details Exact admitted value 17. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIORequest_FUN_SET_DIGITAL_OUT*: int8 = 1'i8 ## @brief ur_msgs/SetIORequest.FUN_SET_DIGITAL_OUT:
## original int8 constant.
## @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIORequest_FUN_SET_FLAG*: int8 = 2'i8 ## @brief ur_msgs/SetIORequest.FUN_SET_FLAG: original int8
## constant.
## @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIORequest_FUN_SET_ANALOG_OUT*: int8 = 3'i8 ## @brief ur_msgs/SetIORequest.FUN_SET_ANALOG_OUT:
## original int8 constant.
## @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIORequest_FUN_SET_TOOL_VOLTAGE*: int8 = 4'i8 ## @brief ur_msgs/SetIORequest.FUN_SET_TOOL_VOLTAGE:
## original int8 constant.
## @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIORequest_STATE_OFF*: int8 = 0'i8 ## @brief ur_msgs/SetIORequest.STATE_OFF: original int8 constant.
## @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIORequest_STATE_ON*: int8 = 1'i8 ## @brief ur_msgs/SetIORequest.STATE_ON: original int8 constant.
## @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIORequest_STATE_TOOL_VOLTAGE_0V*: int8 = 0'i8 ## @brief ur_msgs/SetIORequest.STATE_TOOL_VOLTAGE_0V:
## original int8 constant.
## @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIORequest_STATE_TOOL_VOLTAGE_12V*: int8 = 12'i8 ## @brief
## ur_msgs/SetIORequest.STATE_TOOL_VOLTAGE_12V:
## original int8 constant.
## @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIORequest_STATE_TOOL_VOLTAGE_24V*: int8 = 24'i8 ## @brief
## ur_msgs/SetIORequest.STATE_TOOL_VOLTAGE_24V:
## original int8 constant.
## @details Exact admitted value 24. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_msgsSetIORequest*(): Ros1Ur_msgsSetIORequest =
  ## ``@brief Construct the declared defaults of ur_msgs/SetIORequest.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md``
  result.`fun` = 0
  result.`pin` = 0
  result.`state` = 0
proc writeFields*(value: Ros1Ur_msgsSetIORequest; w: var Writer) =
  ## ``@brief Append every canonical field of ur_msgs/SetIORequest.``
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
  ## ``@see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`fun`)
  putInteger(w,value.`pin`)
  putFloat32(w,value.`state`)
proc readRos1Ur_msgsSetIORequest*(r: var Reader): Ros1Ur_msgsSetIORequest =
  ## ``@brief Read the ordered canonical fields of ur_msgs/SetIORequest.``
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
  ## ``@see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_msgsSetIORequest()
  result.`fun` = getInteger(r,int8)
  result.`pin` = getInteger(r,int8)
  result.`state` = getFloat32(r)
proc encode*(value: Ros1Ur_msgsSetIORequest): seq[byte] =
  ## ``@brief Encode one complete ur_msgs/SetIORequest value.``
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
  ## ``@see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(6)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_msgsSetIORequest*(b: seq[byte]): Ros1Ur_msgsSetIORequest =
  ## ``@brief Decode exactly one complete ur_msgs/SetIORequest value.``
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
  ## ``@see Ros1Ur_msgsSetIORequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,6)
  result = readRos1Ur_msgsSetIORequest(r)
  finish(r)
type Ros1Ur_msgsSetIOResponse* = object
  ## ``@brief Complete ROS 1 ur_msgs/SetIOResponse value.``
  ## ``@details All 1 declared fields are retained in source order. The canonical representation``
  ## ``occupies 1..1 bytes and is identified by``
  ## ``UWVMROS1_7fc137aa3db3178a450b8b2396b7821c911c79656e52bf48814745c261aecf61.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `success`*: bool ## @brief ur_msgs/SetIOResponse.success: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsSetIOResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIOResponseMaximumWireBytes* = 1 ## @brief Maximum canonical extent of ur_msgs/SetIOResponse in
## bytes.
## @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Ur_msgsSetIOResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIOResponseCodecIdentity* = "UWVMROS1_7fc137aa3db3178a450b8b2396b7821c911c79656e52bf48814745c261aecf61" ## @brief Canonical codec
## identity of
## ur_msgs/SetIOResponse.
## @details Exact identity UWVMROS1_7fc137aa3db3178a450b8b2396b7821c911c79656e52bf48814745c261aecf61 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_msgsSetIOResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIOResponseNativeType* = "ur_msgs/SetIOResponse" ## @brief Original ROS type name for
## ur_msgs/SetIOResponse.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_msgsSetIOResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetIOResponseNativeIdentity* = "" ## @brief Selected original native identity for
## ur_msgs/SetIOResponse.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_msgsSetIOResponse; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_msgsSetIOResponse*(): Ros1Ur_msgsSetIOResponse =
  ## ``@brief Construct the declared defaults of ur_msgs/SetIOResponse.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_msgsSetIOResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`success` = false
proc writeFields*(value: Ros1Ur_msgsSetIOResponse; w: var Writer) =
  ## ``@brief Append every canonical field of ur_msgs/SetIOResponse.``
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
  ## ``@see Ros1Ur_msgsSetIOResponse; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`success`)
proc readRos1Ur_msgsSetIOResponse*(r: var Reader): Ros1Ur_msgsSetIOResponse =
  ## ``@brief Read the ordered canonical fields of ur_msgs/SetIOResponse.``
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
  ## ``@see Ros1Ur_msgsSetIOResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_msgsSetIOResponse()
  result.`success` = getBool(r)
proc encode*(value: Ros1Ur_msgsSetIOResponse): seq[byte] =
  ## ``@brief Encode one complete ur_msgs/SetIOResponse value.``
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
  ## ``@see Ros1Ur_msgsSetIOResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_msgsSetIOResponse*(b: seq[byte]): Ros1Ur_msgsSetIOResponse =
  ## ``@brief Decode exactly one complete ur_msgs/SetIOResponse value.``
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
  ## ``@see Ros1Ur_msgsSetIOResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos1Ur_msgsSetIOResponse(r)
  finish(r)
type Ros1Ur_msgsSetPayloadRequest* = object
  ## ``@brief Complete ROS 1 ur_msgs/SetPayloadRequest value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 28..28 bytes and is identified by``
  ## ``UWVMROS1_63ae68b44ce6aaad37cbda779fb51dee78923df27c582b4aab4104b16a307ee3.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `mass`*: float32 ## @brief ur_msgs/SetPayloadRequest.mass: float32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/nim/API-CONTRACT.md
  `center_of_gravity`*: Ros1Geometry_msgsVector3 ## @brief ur_msgs/SetPayloadRequest.center_of_gravity:
  ## geometry_msgs/Vector3.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetPayloadRequestMaximumWireBytes* = 28 ## @brief Maximum canonical extent of ur_msgs/SetPayloadRequest
## in bytes.
## @details The inclusive bound is 28 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetPayloadRequestCodecIdentity* = "UWVMROS1_63ae68b44ce6aaad37cbda779fb51dee78923df27c582b4aab4104b16a307ee3" ## @brief Canonical codec
## identity of
## ur_msgs/SetPayloadRequest.
## @details Exact identity UWVMROS1_63ae68b44ce6aaad37cbda779fb51dee78923df27c582b4aab4104b16a307ee3 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetPayloadRequestNativeType* = "ur_msgs/SetPayloadRequest" ## @brief Original ROS type name for
## ur_msgs/SetPayloadRequest.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetPayloadRequestNativeIdentity* = "" ## @brief Selected original native identity for
## ur_msgs/SetPayloadRequest.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_msgsSetPayloadRequest*(): Ros1Ur_msgsSetPayloadRequest =
  ## ``@brief Construct the declared defaults of ur_msgs/SetPayloadRequest.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/nim/API-CONTRACT.md``
  result.`mass` = 0
  result.`center_of_gravity` = initRos1Geometry_msgsVector3()
proc writeFields*(value: Ros1Ur_msgsSetPayloadRequest; w: var Writer) =
  ## ``@brief Append every canonical field of ur_msgs/SetPayloadRequest.``
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
  ## ``@see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`mass`)
  writeFields(value.`center_of_gravity`,w)
proc readRos1Ur_msgsSetPayloadRequest*(r: var Reader): Ros1Ur_msgsSetPayloadRequest =
  ## ``@brief Read the ordered canonical fields of ur_msgs/SetPayloadRequest.``
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
  ## ``@see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_msgsSetPayloadRequest()
  result.`mass` = getFloat32(r)
  result.`center_of_gravity` = readRos1Geometry_msgsVector3(r)
proc encode*(value: Ros1Ur_msgsSetPayloadRequest): seq[byte] =
  ## ``@brief Encode one complete ur_msgs/SetPayloadRequest value.``
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
  ## ``@see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(28)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_msgsSetPayloadRequest*(b: seq[byte]): Ros1Ur_msgsSetPayloadRequest =
  ## ``@brief Decode exactly one complete ur_msgs/SetPayloadRequest value.``
  ## ``@details Require the complete 28..28-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,28)
  result = readRos1Ur_msgsSetPayloadRequest(r)
  finish(r)
type Ros1Ur_msgsSetPayloadResponse* = object
  ## ``@brief Complete ROS 1 ur_msgs/SetPayloadResponse value.``
  ## ``@details All 1 declared fields are retained in source order. The canonical representation``
  ## ``occupies 1..1 bytes and is identified by``
  ## ``UWVMROS1_a3e991f1357f2d3017ccbb7636a6248e8774434d723f5f6c77ff251dd61fce73.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `success`*: bool ## @brief ur_msgs/SetPayloadResponse.success: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetPayloadResponseMaximumWireBytes* = 1 ## @brief Maximum canonical extent of
## ur_msgs/SetPayloadResponse in bytes.
## @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetPayloadResponseCodecIdentity* = "UWVMROS1_a3e991f1357f2d3017ccbb7636a6248e8774434d723f5f6c77ff251dd61fce73" ## @brief Canonical codec
## identity of
## ur_msgs/SetPayloadResponse.
## @details Exact identity UWVMROS1_a3e991f1357f2d3017ccbb7636a6248e8774434d723f5f6c77ff251dd61fce73 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetPayloadResponseNativeType* = "ur_msgs/SetPayloadResponse" ## @brief Original ROS type name for
## ur_msgs/SetPayloadResponse.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetPayloadResponseNativeIdentity* = "" ## @brief Selected original native identity for
## ur_msgs/SetPayloadResponse.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_msgsSetPayloadResponse*(): Ros1Ur_msgsSetPayloadResponse =
  ## ``@brief Construct the declared defaults of ur_msgs/SetPayloadResponse.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`success` = false
proc writeFields*(value: Ros1Ur_msgsSetPayloadResponse; w: var Writer) =
  ## ``@brief Append every canonical field of ur_msgs/SetPayloadResponse.``
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
  ## ``@see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`success`)
proc readRos1Ur_msgsSetPayloadResponse*(r: var Reader): Ros1Ur_msgsSetPayloadResponse =
  ## ``@brief Read the ordered canonical fields of ur_msgs/SetPayloadResponse.``
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
  ## ``@see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_msgsSetPayloadResponse()
  result.`success` = getBool(r)
proc encode*(value: Ros1Ur_msgsSetPayloadResponse): seq[byte] =
  ## ``@brief Encode one complete ur_msgs/SetPayloadResponse value.``
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
  ## ``@see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_msgsSetPayloadResponse*(b: seq[byte]): Ros1Ur_msgsSetPayloadResponse =
  ## ``@brief Decode exactly one complete ur_msgs/SetPayloadResponse value.``
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
  ## ``@see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos1Ur_msgsSetPayloadResponse(r)
  finish(r)
type Ros1Ur_msgsSetSpeedSliderFractionRequest* = object
  ## ``@brief Complete ROS 1 ur_msgs/SetSpeedSliderFractionRequest value.``
  ## ``@details All 1 declared fields are retained in source order. The canonical representation``
  ## ``occupies 8..8 bytes and is identified by``
  ## ``UWVMROS1_f192d6d655b2ed7725bf5afe6977a352870abfd4d07e0c3380a09d280a0a0a32.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `speed_slider_fraction`*: float64 ## @brief ur_msgs/SetSpeedSliderFractionRequest.speed_slider_fraction: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetSpeedSliderFractionRequestMaximumWireBytes* = 8 ## @brief Maximum canonical extent of
## ur_msgs/SetSpeedSliderFractionRequest in bytes.
## @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetSpeedSliderFractionRequestCodecIdentity* = "UWVMROS1_f192d6d655b2ed7725bf5afe6977a352870abfd4d07e0c3380a09d280a0a0a32" ## @brief Canonical codec
## identity of
## ur_msgs/SetSpeedSliderFractionRequest.
## @details Exact identity UWVMROS1_f192d6d655b2ed7725bf5afe6977a352870abfd4d07e0c3380a09d280a0a0a32 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetSpeedSliderFractionRequestNativeType* = "ur_msgs/SetSpeedSliderFractionRequest" ## @brief Original ROS type name
## for
## ur_msgs/SetSpeedSliderFractionRequest.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetSpeedSliderFractionRequestNativeIdentity* = "" ## @brief Selected original native identity for
## ur_msgs/SetSpeedSliderFractionRequest.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_msgsSetSpeedSliderFractionRequest*(): Ros1Ur_msgsSetSpeedSliderFractionRequest =
  ## ``@brief Construct the declared defaults of ur_msgs/SetSpeedSliderFractionRequest.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/nim/API-CONTRACT.md``
  result.`speed_slider_fraction` = 0
proc writeFields*(value: Ros1Ur_msgsSetSpeedSliderFractionRequest; w: var Writer) =
  ## ``@brief Append every canonical field of ur_msgs/SetSpeedSliderFractionRequest.``
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
  ## ``@see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/nim/API-CONTRACT.md``
  putFloat64(w,value.`speed_slider_fraction`)
proc readRos1Ur_msgsSetSpeedSliderFractionRequest*(r: var Reader): Ros1Ur_msgsSetSpeedSliderFractionRequest =
  ## ``@brief Read the ordered canonical fields of ur_msgs/SetSpeedSliderFractionRequest.``
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
  ## ``@see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_msgsSetSpeedSliderFractionRequest()
  result.`speed_slider_fraction` = getFloat64(r)
proc encode*(value: Ros1Ur_msgsSetSpeedSliderFractionRequest): seq[byte] =
  ## ``@brief Encode one complete ur_msgs/SetSpeedSliderFractionRequest value.``
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
  ## ``@see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_msgsSetSpeedSliderFractionRequest*(b: seq[byte]): Ros1Ur_msgsSetSpeedSliderFractionRequest =
  ## ``@brief Decode exactly one complete ur_msgs/SetSpeedSliderFractionRequest value.``
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
  ## ``@see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,8)
  result = readRos1Ur_msgsSetSpeedSliderFractionRequest(r)
  finish(r)
type Ros1Ur_msgsSetSpeedSliderFractionResponse* = object
  ## ``@brief Complete ROS 1 ur_msgs/SetSpeedSliderFractionResponse value.``
  ## ``@details All 1 declared fields are retained in source order. The canonical representation``
  ## ``occupies 1..1 bytes and is identified by``
  ## ``UWVMROS1_cb08c6758ce2eeeac93bc579d7895b19b84e74b7e2d19d87831023df579288b0.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `success`*: bool ## @brief ur_msgs/SetSpeedSliderFractionResponse.success: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetSpeedSliderFractionResponseMaximumWireBytes* = 1 ## @brief Maximum canonical extent of
## ur_msgs/SetSpeedSliderFractionResponse in bytes.
## @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetSpeedSliderFractionResponseCodecIdentity* = "UWVMROS1_cb08c6758ce2eeeac93bc579d7895b19b84e74b7e2d19d87831023df579288b0" ## @brief Canonical codec
## identity of
## ur_msgs/SetSpeedSliderFractionResponse.
## @details Exact identity UWVMROS1_cb08c6758ce2eeeac93bc579d7895b19b84e74b7e2d19d87831023df579288b0 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetSpeedSliderFractionResponseNativeType* = "ur_msgs/SetSpeedSliderFractionResponse" ## @brief Original ROS type name
## for
## ur_msgs/SetSpeedSliderFractionResponse.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsSetSpeedSliderFractionResponseNativeIdentity* = "" ## @brief Selected original native identity for
## ur_msgs/SetSpeedSliderFractionResponse.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_msgsSetSpeedSliderFractionResponse*(): Ros1Ur_msgsSetSpeedSliderFractionResponse =
  ## ``@brief Construct the declared defaults of ur_msgs/SetSpeedSliderFractionResponse.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`success` = false
proc writeFields*(value: Ros1Ur_msgsSetSpeedSliderFractionResponse; w: var Writer) =
  ## ``@brief Append every canonical field of ur_msgs/SetSpeedSliderFractionResponse.``
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
  ## ``@see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`success`)
proc readRos1Ur_msgsSetSpeedSliderFractionResponse*(r: var Reader): Ros1Ur_msgsSetSpeedSliderFractionResponse =
  ## ``@brief Read the ordered canonical fields of ur_msgs/SetSpeedSliderFractionResponse.``
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
  ## ``@see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_msgsSetSpeedSliderFractionResponse()
  result.`success` = getBool(r)
proc encode*(value: Ros1Ur_msgsSetSpeedSliderFractionResponse): seq[byte] =
  ## ``@brief Encode one complete ur_msgs/SetSpeedSliderFractionResponse value.``
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
  ## ``@see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_msgsSetSpeedSliderFractionResponse*(b: seq[byte]): Ros1Ur_msgsSetSpeedSliderFractionResponse =
  ## ``@brief Decode exactly one complete ur_msgs/SetSpeedSliderFractionResponse value.``
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
  ## ``@see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos1Ur_msgsSetSpeedSliderFractionResponse(r)
  finish(r)
type Ros1Ur_msgsToolDataMsg* = object
  ## ``@brief Complete ROS 1 ur_msgs/ToolDataMsg value.``
  ## ``@details All 9 declared fields are retained in source order. The canonical representation``
  ## ``occupies 32..32 bytes and is identified by``
  ## ``UWVMROS1_1fad1aba069bc474306dc421a62950ffeb3a0837668f08a9adf41ac1bc2bb390.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `analog_input_range2`*: int8 ## @brief ur_msgs/ToolDataMsg.analog_input_range2: int8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsToolDataMsg; share/platform/ros/nim/API-CONTRACT.md
  `analog_input_range3`*: int8 ## @brief ur_msgs/ToolDataMsg.analog_input_range3: int8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsToolDataMsg; share/platform/ros/nim/API-CONTRACT.md
  `analog_input2`*: float64 ## @brief ur_msgs/ToolDataMsg.analog_input2: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsToolDataMsg; share/platform/ros/nim/API-CONTRACT.md
  `analog_input3`*: float64 ## @brief ur_msgs/ToolDataMsg.analog_input3: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsToolDataMsg; share/platform/ros/nim/API-CONTRACT.md
  `tool_voltage_48v`*: float32 ## @brief ur_msgs/ToolDataMsg.tool_voltage_48v: float32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsToolDataMsg; share/platform/ros/nim/API-CONTRACT.md
  `tool_output_voltage`*: uint8 ## @brief ur_msgs/ToolDataMsg.tool_output_voltage: uint8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsToolDataMsg; share/platform/ros/nim/API-CONTRACT.md
  `tool_current`*: float32 ## @brief ur_msgs/ToolDataMsg.tool_current: float32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsToolDataMsg; share/platform/ros/nim/API-CONTRACT.md
  `tool_temperature`*: float32 ## @brief ur_msgs/ToolDataMsg.tool_temperature: float32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsToolDataMsg; share/platform/ros/nim/API-CONTRACT.md
  `tool_mode`*: uint8 ## @brief ur_msgs/ToolDataMsg.tool_mode: uint8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros1Ur_msgsToolDataMsg; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsToolDataMsgMaximumWireBytes* = 32 ## @brief Maximum canonical extent of ur_msgs/ToolDataMsg in bytes.
## @details The inclusive bound is 32 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros1Ur_msgsToolDataMsg; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsToolDataMsgCodecIdentity* = "UWVMROS1_1fad1aba069bc474306dc421a62950ffeb3a0837668f08a9adf41ac1bc2bb390" ## @brief Canonical codec
## identity of
## ur_msgs/ToolDataMsg.
## @details Exact identity UWVMROS1_1fad1aba069bc474306dc421a62950ffeb3a0837668f08a9adf41ac1bc2bb390 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros1Ur_msgsToolDataMsg; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsToolDataMsgNativeType* = "ur_msgs/ToolDataMsg" ## @brief Original ROS type name for
## ur_msgs/ToolDataMsg.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros1Ur_msgsToolDataMsg; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsToolDataMsgNativeIdentity* = "" ## @brief Selected original native identity for ur_msgs/ToolDataMsg.
## @details Absent: this source profile establishes no native identity.
## @see Ros1Ur_msgsToolDataMsg; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsToolDataMsg_ANALOG_INPUT_RANGE_CURRENT*: int8 = 0'i8 ## @brief
## ur_msgs/ToolDataMsg.ANALOG_INPUT_RANGE_CURRENT:
## original int8 constant.
## @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_msgsToolDataMsg; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsToolDataMsg_ANALOG_INPUT_RANGE_VOLTAGE*: int8 = 1'i8 ## @brief
## ur_msgs/ToolDataMsg.ANALOG_INPUT_RANGE_VOLTAGE:
## original int8 constant.
## @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros1Ur_msgsToolDataMsg; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsToolDataMsg_TOOL_BOOTLOADER_MODE*: uint8 = 249'u8 ## @brief ur_msgs/ToolDataMsg.TOOL_BOOTLOADER_MODE:
## original uint8 constant.
## @details Exact admitted value 249. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros1Ur_msgsToolDataMsg; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsToolDataMsg_TOOL_RUNNING_MODE*: uint8 = 253'u8 ## @brief ur_msgs/ToolDataMsg.TOOL_RUNNING_MODE:
## original uint8 constant.
## @details Exact admitted value 253. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros1Ur_msgsToolDataMsg; share/platform/ros/nim/API-CONTRACT.md
const Ros1Ur_msgsToolDataMsg_TOOL_IDLE_MODE*: uint8 = 255'u8 ## @brief ur_msgs/ToolDataMsg.TOOL_IDLE_MODE: original
## uint8 constant.
## @details Exact admitted value 255. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros1Ur_msgsToolDataMsg; share/platform/ros/nim/API-CONTRACT.md
proc initRos1Ur_msgsToolDataMsg*(): Ros1Ur_msgsToolDataMsg =
  ## ``@brief Construct the declared defaults of ur_msgs/ToolDataMsg.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros1Ur_msgsToolDataMsg; share/platform/ros/nim/API-CONTRACT.md``
  result.`analog_input_range2` = 0
  result.`analog_input_range3` = 0
  result.`analog_input2` = 0
  result.`analog_input3` = 0
  result.`tool_voltage_48v` = 0
  result.`tool_output_voltage` = 0
  result.`tool_current` = 0
  result.`tool_temperature` = 0
  result.`tool_mode` = 0
proc writeFields*(value: Ros1Ur_msgsToolDataMsg; w: var Writer) =
  ## ``@brief Append every canonical field of ur_msgs/ToolDataMsg.``
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
  ## ``@see Ros1Ur_msgsToolDataMsg; share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`analog_input_range2`)
  putInteger(w,value.`analog_input_range3`)
  putFloat64(w,value.`analog_input2`)
  putFloat64(w,value.`analog_input3`)
  putFloat32(w,value.`tool_voltage_48v`)
  putInteger(w,value.`tool_output_voltage`)
  putFloat32(w,value.`tool_current`)
  putFloat32(w,value.`tool_temperature`)
  putInteger(w,value.`tool_mode`)
proc readRos1Ur_msgsToolDataMsg*(r: var Reader): Ros1Ur_msgsToolDataMsg =
  ## ``@brief Read the ordered canonical fields of ur_msgs/ToolDataMsg.``
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
  ## ``@see Ros1Ur_msgsToolDataMsg; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Ur_msgsToolDataMsg()
  result.`analog_input_range2` = getInteger(r,int8)
  result.`analog_input_range3` = getInteger(r,int8)
  result.`analog_input2` = getFloat64(r)
  result.`analog_input3` = getFloat64(r)
  result.`tool_voltage_48v` = getFloat32(r)
  result.`tool_output_voltage` = getInteger(r,uint8)
  result.`tool_current` = getFloat32(r)
  result.`tool_temperature` = getFloat32(r)
  result.`tool_mode` = getInteger(r,uint8)
proc encode*(value: Ros1Ur_msgsToolDataMsg): seq[byte] =
  ## ``@brief Encode one complete ur_msgs/ToolDataMsg value.``
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
  ## ``@see Ros1Ur_msgsToolDataMsg; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(32)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ur_msgsToolDataMsg*(b: seq[byte]): Ros1Ur_msgsToolDataMsg =
  ## ``@brief Decode exactly one complete ur_msgs/ToolDataMsg value.``
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
  ## ``@see Ros1Ur_msgsToolDataMsg; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,32)
  result = readRos1Ur_msgsToolDataMsg(r)
  finish(r)
