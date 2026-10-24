## @file records.nim
## @brief Preserve the complete original ufactory/ros1_legacy canonical value domain.
## @details The selected domain contains 29 complete record/components and 67 original fields. Declared
## scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
## Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
## create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
## does not qualify a frontend, target ABI or native ROS transport.
## @see The platform's localized language guide and complete API-CATALOG.md.
# Generated complete canonical values; no I/O or implicit capabilities.
import roswasm
import roswasm/wire
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
  `x`*: float64 ## ``@brief geometry_msgs/Point.x: float64. @details The generated initializer supplies``
                ## ``the declared zero/empty/nested default. Encoding preserves the original field``
                ## ``position and signedness; invalid bounds fail instead of truncating the value.``
                ## ``@units Use the units and frame/clock domain of the pinned native definition. The``
                ## ``codec performs no scaling, frame conversion or normalization. @lifetime Retain``
                ## ``referenced string/sequence backing storage for each encoding call. Decoded``
                ## ``borrowing and allocator ownership follow the enclosing decode function. @see``
                ## ``Ros1Geometry_msgsPoint; share/platform/ros/nim/API-CONTRACT.md``
  `y`*: float64 ## ``@brief geometry_msgs/Point.y: float64. @details The generated initializer supplies``
                ## ``the declared zero/empty/nested default. Encoding preserves the original field``
                ## ``position and signedness; invalid bounds fail instead of truncating the value.``
                ## ``@units Use the units and frame/clock domain of the pinned native definition. The``
                ## ``codec performs no scaling, frame conversion or normalization. @lifetime Retain``
                ## ``referenced string/sequence backing storage for each encoding call. Decoded``
                ## ``borrowing and allocator ownership follow the enclosing decode function. @see``
                ## ``Ros1Geometry_msgsPoint; share/platform/ros/nim/API-CONTRACT.md``
  `z`*: float64 ## ``@brief geometry_msgs/Point.z: float64. @details The generated initializer supplies``
                ## ``the declared zero/empty/nested default. Encoding preserves the original field``
                ## ``position and signedness; invalid bounds fail instead of truncating the value.``
                ## ``@units Use the units and frame/clock domain of the pinned native definition. The``
                ## ``codec performs no scaling, frame conversion or normalization. @lifetime Retain``
                ## ``referenced string/sequence backing storage for each encoding call. Decoded``
                ## ``borrowing and allocator ownership follow the enclosing decode function. @see``
                ## ``Ros1Geometry_msgsPoint; share/platform/ros/nim/API-CONTRACT.md``
const Ros1Geometry_msgsPointMaximumWireBytes* = 24 ## ``@brief Maximum canonical extent of``
                                                   ## ``geometry_msgs/Point in bytes. @details The``
                                                   ## ``inclusive bound is 24 bytes for this selected``
                                                   ## ``profile; it is not a native sizeof or a queue``
                                                   ## ``reservation. @see Ros1Geometry_msgsPoint;``
                                                   ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Geometry_msgsPointCodecIdentity* = "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b" ## ``@brief Canonical codec identity``
    ## ``of geometry_msgs/Point. @details``
    ## ``Exact identity``
    ## ``UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Geometry_msgsPoint;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Geometry_msgsPointNativeType* = "geometry_msgs/Point" ## ``@brief Original ROS type name for``
                                                                ## ``geometry_msgs/Point. @details This``
                                                                ## ``exact name is descriptive and``
                                                                ## ``cannot select a different alias,``
                                                                ## ``endpoint or resource. @see``
                                                                ## ``Ros1Geometry_msgsPoint;``
                                                                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Geometry_msgsPointNativeIdentity* = "" ## ``@brief Selected original native identity for``
                                                 ## ``geometry_msgs/Point. @details Absent: this source``
                                                 ## ``profile establishes no native identity. @see``
                                                 ## ``Ros1Geometry_msgsPoint;``
                                                 ## ``share/platform/ros/nim/API-CONTRACT.md``
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
  `x`*: float64 ## ``@brief geometry_msgs/Quaternion.x: float64. @details The generated initializer``
                ## ``supplies the declared zero/empty/nested default. Encoding preserves the original``
                ## ``field position and signedness; invalid bounds fail instead of truncating the value.``
                ## ``@units Use the units and frame/clock domain of the pinned native definition. The``
                ## ``codec performs no scaling, frame conversion or normalization. @lifetime Retain``
                ## ``referenced string/sequence backing storage for each encoding call. Decoded``
                ## ``borrowing and allocator ownership follow the enclosing decode function. @see``
                ## ``Ros1Geometry_msgsQuaternion; share/platform/ros/nim/API-CONTRACT.md``
  `y`*: float64 ## ``@brief geometry_msgs/Quaternion.y: float64. @details The generated initializer``
                ## ``supplies the declared zero/empty/nested default. Encoding preserves the original``
                ## ``field position and signedness; invalid bounds fail instead of truncating the value.``
                ## ``@units Use the units and frame/clock domain of the pinned native definition. The``
                ## ``codec performs no scaling, frame conversion or normalization. @lifetime Retain``
                ## ``referenced string/sequence backing storage for each encoding call. Decoded``
                ## ``borrowing and allocator ownership follow the enclosing decode function. @see``
                ## ``Ros1Geometry_msgsQuaternion; share/platform/ros/nim/API-CONTRACT.md``
  `z`*: float64 ## ``@brief geometry_msgs/Quaternion.z: float64. @details The generated initializer``
                ## ``supplies the declared zero/empty/nested default. Encoding preserves the original``
                ## ``field position and signedness; invalid bounds fail instead of truncating the value.``
                ## ``@units Use the units and frame/clock domain of the pinned native definition. The``
                ## ``codec performs no scaling, frame conversion or normalization. @lifetime Retain``
                ## ``referenced string/sequence backing storage for each encoding call. Decoded``
                ## ``borrowing and allocator ownership follow the enclosing decode function. @see``
                ## ``Ros1Geometry_msgsQuaternion; share/platform/ros/nim/API-CONTRACT.md``
  `w`*: float64 ## ``@brief geometry_msgs/Quaternion.w: float64. @details The generated initializer``
                ## ``supplies the declared zero/empty/nested default. Encoding preserves the original``
                ## ``field position and signedness; invalid bounds fail instead of truncating the value.``
                ## ``@units Use the units and frame/clock domain of the pinned native definition. The``
                ## ``codec performs no scaling, frame conversion or normalization. @lifetime Retain``
                ## ``referenced string/sequence backing storage for each encoding call. Decoded``
                ## ``borrowing and allocator ownership follow the enclosing decode function. @see``
                ## ``Ros1Geometry_msgsQuaternion; share/platform/ros/nim/API-CONTRACT.md``
const Ros1Geometry_msgsQuaternionMaximumWireBytes* = 32 ## ``@brief Maximum canonical extent of``
                                                        ## ``geometry_msgs/Quaternion in bytes. @details``
                                                        ## ``The inclusive bound is 32 bytes for this``
                                                        ## ``selected profile; it is not a native sizeof``
                                                        ## ``or a queue reservation. @see``
                                                        ## ``Ros1Geometry_msgsQuaternion;``
                                                        ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Geometry_msgsQuaternionCodecIdentity* = "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934" ## ``@brief Canonical codec identity``
    ## ``of geometry_msgs/Quaternion.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Geometry_msgsQuaternion;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Geometry_msgsQuaternionNativeType* = "geometry_msgs/Quaternion" ## ``@brief Original ROS type name``
    ## ``for geometry_msgs/Quaternion.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Geometry_msgsQuaternion;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Geometry_msgsQuaternionNativeIdentity* = "" ## ``@brief Selected original native identity for``
                                                      ## ``geometry_msgs/Quaternion. @details Absent:``
                                                      ## ``this source profile establishes no native``
                                                      ## ``identity. @see Ros1Geometry_msgsQuaternion;``
                                                      ## ``share/platform/ros/nim/API-CONTRACT.md``
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
  `position`*: Ros1Geometry_msgsPoint ## ``@brief geometry_msgs/Pose.position: geometry_msgs/Point.``
                                      ## ``@details The generated initializer supplies the declared``
                                      ## ``zero/empty/nested default. Encoding preserves the original``
                                      ## ``field position and signedness; invalid bounds fail instead of``
                                      ## ``truncating the value. @units Use the units and frame/clock``
                                      ## ``domain of the pinned native definition. The codec performs no``
                                      ## ``scaling, frame conversion or normalization. @lifetime Retain``
                                      ## ``referenced string/sequence backing storage for each encoding``
                                      ## ``call. Decoded borrowing and allocator ownership follow the``
                                      ## ``enclosing decode function. @see Ros1Geometry_msgsPose;``
                                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `orientation`*: Ros1Geometry_msgsQuaternion ## ``@brief geometry_msgs/Pose.orientation:``
                                              ## ``geometry_msgs/Quaternion. @details The generated``
                                              ## ``initializer supplies the declared zero/empty/nested``
                                              ## ``default. Encoding preserves the original field``
                                              ## ``position and signedness; invalid bounds fail instead``
                                              ## ``of truncating the value. @units Use the units and``
                                              ## ``frame/clock domain of the pinned native definition.``
                                              ## ``The codec performs no scaling, frame conversion or``
                                              ## ``normalization. @lifetime Retain referenced``
                                              ## ``string/sequence backing storage for each encoding``
                                              ## ``call. Decoded borrowing and allocator ownership``
                                              ## ``follow the enclosing decode function. @see``
                                              ## ``Ros1Geometry_msgsPose;``
                                              ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Geometry_msgsPoseMaximumWireBytes* = 56 ## ``@brief Maximum canonical extent of``
                                                  ## ``geometry_msgs/Pose in bytes. @details The``
                                                  ## ``inclusive bound is 56 bytes for this selected``
                                                  ## ``profile; it is not a native sizeof or a queue``
                                                  ## ``reservation. @see Ros1Geometry_msgsPose;``
                                                  ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Geometry_msgsPoseCodecIdentity* = "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471" ## ``@brief Canonical codec identity``
    ## ``of geometry_msgs/Pose. @details``
    ## ``Exact identity``
    ## ``UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Geometry_msgsPose;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Geometry_msgsPoseNativeType* = "geometry_msgs/Pose" ## ``@brief Original ROS type name for``
                                                              ## ``geometry_msgs/Pose. @details This``
                                                              ## ``exact name is descriptive and cannot``
                                                              ## ``select a different alias, endpoint or``
                                                              ## ``resource. @see Ros1Geometry_msgsPose;``
                                                              ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Geometry_msgsPoseNativeIdentity* = "" ## ``@brief Selected original native identity for``
                                                ## ``geometry_msgs/Pose. @details Absent: this source``
                                                ## ``profile establishes no native identity. @see``
                                                ## ``Ros1Geometry_msgsPose;``
                                                ## ``share/platform/ros/nim/API-CONTRACT.md``
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
type Ros1Xarm_msgsIOState* = object
 ## ``@brief Complete ROS 1 xarm_msgs/IOState value.``
 ## ``@details All 4 declared fields are retained in source order. The canonical representation``
 ## ``occupies 16..16 bytes and is identified by``
 ## ``UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `digital_1`*: int32 ## ``@brief xarm_msgs/IOState.digital_1: int32. @details The generated initializer``
                      ## ``supplies the declared zero/empty/nested default. Encoding preserves the``
                      ## ``original field position and signedness; invalid bounds fail instead of``
                      ## ``truncating the value. @units Use the units and frame/clock domain of the``
                      ## ``pinned native definition. The codec performs no scaling, frame conversion or``
                      ## ``normalization. @lifetime Retain referenced string/sequence backing storage``
                      ## ``for each encoding call. Decoded borrowing and allocator ownership follow the``
                      ## ``enclosing decode function. @see Ros1Xarm_msgsIOState;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `digital_2`*: int32 ## ``@brief xarm_msgs/IOState.digital_2: int32. @details The generated initializer``
                      ## ``supplies the declared zero/empty/nested default. Encoding preserves the``
                      ## ``original field position and signedness; invalid bounds fail instead of``
                      ## ``truncating the value. @units Use the units and frame/clock domain of the``
                      ## ``pinned native definition. The codec performs no scaling, frame conversion or``
                      ## ``normalization. @lifetime Retain referenced string/sequence backing storage``
                      ## ``for each encoding call. Decoded borrowing and allocator ownership follow the``
                      ## ``enclosing decode function. @see Ros1Xarm_msgsIOState;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `analog_1`*: float32 ## ``@brief xarm_msgs/IOState.analog_1: float32. @details The generated``
                       ## ``initializer supplies the declared zero/empty/nested default. Encoding``
                       ## ``preserves the original field position and signedness; invalid bounds fail``
                       ## ``instead of truncating the value. @units Use the units and frame/clock domain``
                       ## ``of the pinned native definition. The codec performs no scaling, frame``
                       ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                       ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                       ## ``ownership follow the enclosing decode function. @see Ros1Xarm_msgsIOState;``
                       ## ``share/platform/ros/nim/API-CONTRACT.md``
  `analog_2`*: float32 ## ``@brief xarm_msgs/IOState.analog_2: float32. @details The generated``
                       ## ``initializer supplies the declared zero/empty/nested default. Encoding``
                       ## ``preserves the original field position and signedness; invalid bounds fail``
                       ## ``instead of truncating the value. @units Use the units and frame/clock domain``
                       ## ``of the pinned native definition. The codec performs no scaling, frame``
                       ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                       ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                       ## ``ownership follow the enclosing decode function. @see Ros1Xarm_msgsIOState;``
                       ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsIOStateMaximumWireBytes* = 16 ## ``@brief Maximum canonical extent of``
                                                 ## ``xarm_msgs/IOState in bytes. @details The inclusive``
                                                 ## ``bound is 16 bytes for this selected profile; it is``
                                                 ## ``not a native sizeof or a queue reservation. @see``
                                                 ## ``Ros1Xarm_msgsIOState;``
                                                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsIOStateCodecIdentity* = "UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996" ## ``@brief Canonical codec identity``
    ## ``of xarm_msgs/IOState. @details``
    ## ``Exact identity``
    ## ``UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Xarm_msgsIOState;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsIOStateNativeType* = "xarm_msgs/IOState" ## ``@brief Original ROS type name for``
                                                            ## ``xarm_msgs/IOState. @details This exact``
                                                            ## ``name is descriptive and cannot select a``
                                                            ## ``different alias, endpoint or resource.``
                                                            ## ``@see Ros1Xarm_msgsIOState;``
                                                            ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsIOStateNativeIdentity* = "" ## ``@brief Selected original native identity for``
                                               ## ``xarm_msgs/IOState. @details Absent: this source``
                                               ## ``profile establishes no native identity. @see``
                                               ## ``Ros1Xarm_msgsIOState;``
                                               ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Xarm_msgsIOState*(): Ros1Xarm_msgsIOState =
 ## ``@brief Construct the declared defaults of xarm_msgs/IOState.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Xarm_msgsIOState; share/platform/ros/nim/API-CONTRACT.md``
  result.`digital_1` = 0
  result.`digital_2` = 0
  result.`analog_1` = 0
  result.`analog_2` = 0
proc writeFields*(value: Ros1Xarm_msgsIOState; w: var Writer) =
 ## ``@brief Append every canonical field of xarm_msgs/IOState.``
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
 ## ``@see Ros1Xarm_msgsIOState; share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`digital_1`)
  putInteger(w,value.`digital_2`)
  putFloat32(w,value.`analog_1`)
  putFloat32(w,value.`analog_2`)
proc readRos1Xarm_msgsIOState*(r: var Reader): Ros1Xarm_msgsIOState =
 ## ``@brief Read the ordered canonical fields of xarm_msgs/IOState.``
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
 ## ``@see Ros1Xarm_msgsIOState; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Xarm_msgsIOState()
  result.`digital_1` = getInteger(r,int32)
  result.`digital_2` = getInteger(r,int32)
  result.`analog_1` = getFloat32(r)
  result.`analog_2` = getFloat32(r)
proc encode*(value: Ros1Xarm_msgsIOState): seq[byte] =
 ## ``@brief Encode one complete xarm_msgs/IOState value.``
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
 ## ``@see Ros1Xarm_msgsIOState; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(16)
  writeFields(value,w)
  w.bytes
proc decodeRos1Xarm_msgsIOState*(b: seq[byte]): Ros1Xarm_msgsIOState =
 ## ``@brief Decode exactly one complete xarm_msgs/IOState value.``
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
 ## ``@see Ros1Xarm_msgsIOState; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,16)
  result = readRos1Xarm_msgsIOState(r)
  finish(r)
type Ros1Xarm_msgsRobotMsg* = object
 ## ``@brief Complete ROS 1 xarm_msgs/RobotMsg value.``
 ## ``@details All 10 declared fields are retained in source order. The canonical representation``
 ## ``occupies 66..94 bytes and is identified by``
 ## ``UWVMROS1_e5509a530075a638bfa1f09cf5fd78c4d609dccbd79ddd75ef50f5061f68b0f7.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `state`*: int16 ## ``@brief xarm_msgs/RobotMsg.state: int16. @details The generated initializer``
                  ## ``supplies the declared zero/empty/nested default. Encoding preserves the original``
                  ## ``field position and signedness; invalid bounds fail instead of truncating the``
                  ## ``value. @units Use the units and frame/clock domain of the pinned native``
                  ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                  ## ``@lifetime Retain referenced string/sequence backing storage for each encoding``
                  ## ``call. Decoded borrowing and allocator ownership follow the enclosing decode``
                  ## ``function. @see Ros1Xarm_msgsRobotMsg; share/platform/ros/nim/API-CONTRACT.md``
  `mode`*: int16 ## ``@brief xarm_msgs/RobotMsg.mode: int16. @details The generated initializer supplies``
                 ## ``the declared zero/empty/nested default. Encoding preserves the original field``
                 ## ``position and signedness; invalid bounds fail instead of truncating the value.``
                 ## ``@units Use the units and frame/clock domain of the pinned native definition. The``
                 ## ``codec performs no scaling, frame conversion or normalization. @lifetime Retain``
                 ## ``referenced string/sequence backing storage for each encoding call. Decoded``
                 ## ``borrowing and allocator ownership follow the enclosing decode function. @see``
                 ## ``Ros1Xarm_msgsRobotMsg; share/platform/ros/nim/API-CONTRACT.md``
  `cmdnum`*: int16 ## ``@brief xarm_msgs/RobotMsg.cmdnum: int16. @details The generated initializer``
                   ## ``supplies the declared zero/empty/nested default. Encoding preserves the original``
                   ## ``field position and signedness; invalid bounds fail instead of truncating the``
                   ## ``value. @units Use the units and frame/clock domain of the pinned native``
                   ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                   ## ``@lifetime Retain referenced string/sequence backing storage for each encoding``
                   ## ``call. Decoded borrowing and allocator ownership follow the enclosing decode``
                   ## ``function. @see Ros1Xarm_msgsRobotMsg; share/platform/ros/nim/API-CONTRACT.md``
  `mt_brake`*: int16 ## ``@brief xarm_msgs/RobotMsg.mt_brake: int16. @details The generated initializer``
                     ## ``supplies the declared zero/empty/nested default. Encoding preserves the``
                     ## ``original field position and signedness; invalid bounds fail instead of``
                     ## ``truncating the value. @units Use the units and frame/clock domain of the``
                     ## ``pinned native definition. The codec performs no scaling, frame conversion or``
                     ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                     ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                     ## ``enclosing decode function. @see Ros1Xarm_msgsRobotMsg;``
                     ## ``share/platform/ros/nim/API-CONTRACT.md``
  `mt_able`*: int16 ## ``@brief xarm_msgs/RobotMsg.mt_able: int16. @details The generated initializer``
                    ## ``supplies the declared zero/empty/nested default. Encoding preserves the``
                    ## ``original field position and signedness; invalid bounds fail instead of``
                    ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                    ## ``native definition. The codec performs no scaling, frame conversion or``
                    ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                    ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                    ## ``enclosing decode function. @see Ros1Xarm_msgsRobotMsg;``
                    ## ``share/platform/ros/nim/API-CONTRACT.md``
  `err`*: int16 ## ``@brief xarm_msgs/RobotMsg.err: int16. @details The generated initializer supplies``
                ## ``the declared zero/empty/nested default. Encoding preserves the original field``
                ## ``position and signedness; invalid bounds fail instead of truncating the value.``
                ## ``@units Use the units and frame/clock domain of the pinned native definition. The``
                ## ``codec performs no scaling, frame conversion or normalization. @lifetime Retain``
                ## ``referenced string/sequence backing storage for each encoding call. Decoded``
                ## ``borrowing and allocator ownership follow the enclosing decode function. @see``
                ## ``Ros1Xarm_msgsRobotMsg; share/platform/ros/nim/API-CONTRACT.md``
  `warn`*: int16 ## ``@brief xarm_msgs/RobotMsg.warn: int16. @details The generated initializer supplies``
                 ## ``the declared zero/empty/nested default. Encoding preserves the original field``
                 ## ``position and signedness; invalid bounds fail instead of truncating the value.``
                 ## ``@units Use the units and frame/clock domain of the pinned native definition. The``
                 ## ``codec performs no scaling, frame conversion or normalization. @lifetime Retain``
                 ## ``referenced string/sequence backing storage for each encoding call. Decoded``
                 ## ``borrowing and allocator ownership follow the enclosing decode function. @see``
                 ## ``Ros1Xarm_msgsRobotMsg; share/platform/ros/nim/API-CONTRACT.md``
  `angle`*: seq[float32] ## ``@brief xarm_msgs/RobotMsg.angle: float32; 0..7 elements. @details The``
                         ## ``generated initializer supplies the declared zero/empty/nested default.``
                         ## ``Encoding preserves the original field position and signedness; invalid``
                         ## ``bounds fail instead of truncating the value. @units Use the units and``
                         ## ``frame/clock domain of the pinned native definition. The codec performs no``
                         ## ``scaling, frame conversion or normalization. @lifetime Retain referenced``
                         ## ``string/sequence backing storage for each encoding call. Decoded borrowing``
                         ## ``and allocator ownership follow the enclosing decode function. @see``
                         ## ``Ros1Xarm_msgsRobotMsg; share/platform/ros/nim/API-CONTRACT.md``
  `pose`*: array[6,float32] ## ``@brief xarm_msgs/RobotMsg.pose: float32; exactly 6 elements. @details``
                            ## ``The generated initializer supplies the declared zero/empty/nested``
                            ## ``default. Encoding preserves the original field position and signedness;``
                            ## ``invalid bounds fail instead of truncating the value. @units Use the``
                            ## ``units and frame/clock domain of the pinned native definition. The codec``
                            ## ``performs no scaling, frame conversion or normalization. @lifetime``
                            ## ``Retain referenced string/sequence backing storage for each encoding``
                            ## ``call. Decoded borrowing and allocator ownership follow the enclosing``
                            ## ``decode function. @see Ros1Xarm_msgsRobotMsg;``
                            ## ``share/platform/ros/nim/API-CONTRACT.md``
  `offset`*: array[6,float32] ## ``@brief xarm_msgs/RobotMsg.offset: float32; exactly 6 elements.``
                              ## ``@details The generated initializer supplies the declared``
                              ## ``zero/empty/nested default. Encoding preserves the original field``
                              ## ``position and signedness; invalid bounds fail instead of truncating``
                              ## ``the value. @units Use the units and frame/clock domain of the pinned``
                              ## ``native definition. The codec performs no scaling, frame conversion or``
                              ## ``normalization. @lifetime Retain referenced string/sequence backing``
                              ## ``storage for each encoding call. Decoded borrowing and allocator``
                              ## ``ownership follow the enclosing decode function. @see``
                              ## ``Ros1Xarm_msgsRobotMsg; share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsRobotMsgMaximumWireBytes* = 94 ## ``@brief Maximum canonical extent of``
                                                  ## ``xarm_msgs/RobotMsg in bytes. @details The``
                                                  ## ``inclusive bound is 94 bytes for this selected``
                                                  ## ``profile; it is not a native sizeof or a queue``
                                                  ## ``reservation. @see Ros1Xarm_msgsRobotMsg;``
                                                  ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsRobotMsgCodecIdentity* = "UWVMROS1_e5509a530075a638bfa1f09cf5fd78c4d609dccbd79ddd75ef50f5061f68b0f7" ## ``@brief Canonical codec identity``
    ## ``of xarm_msgs/RobotMsg. @details``
    ## ``Exact identity``
    ## ``UWVMROS1_e5509a530075a638bfa1f09cf5fd78c4d609dccbd79ddd75ef50f5061f68b0f7``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Xarm_msgsRobotMsg;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsRobotMsgNativeType* = "xarm_msgs/RobotMsg" ## ``@brief Original ROS type name for``
                                                              ## ``xarm_msgs/RobotMsg. @details This``
                                                              ## ``exact name is descriptive and cannot``
                                                              ## ``select a different alias, endpoint or``
                                                              ## ``resource. @see Ros1Xarm_msgsRobotMsg;``
                                                              ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsRobotMsgNativeIdentity* = "" ## ``@brief Selected original native identity for``
                                                ## ``xarm_msgs/RobotMsg. @details Absent: this source``
                                                ## ``profile establishes no native identity. @see``
                                                ## ``Ros1Xarm_msgsRobotMsg;``
                                                ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Xarm_msgsRobotMsg*(): Ros1Xarm_msgsRobotMsg =
 ## ``@brief Construct the declared defaults of xarm_msgs/RobotMsg.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Xarm_msgsRobotMsg; share/platform/ros/nim/API-CONTRACT.md``
  result.`state` = 0
  result.`mode` = 0
  result.`cmdnum` = 0
  result.`mt_brake` = 0
  result.`mt_able` = 0
  result.`err` = 0
  result.`warn` = 0
  result.`angle` = @[]
  result.`pose` = [0,0,0,0,0,0]
  result.`offset` = [0,0,0,0,0,0]
proc writeFields*(value: Ros1Xarm_msgsRobotMsg; w: var Writer) =
 ## ``@brief Append every canonical field of xarm_msgs/RobotMsg.``
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
 ## ``@see Ros1Xarm_msgsRobotMsg; share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`state`)
  putInteger(w,value.`mode`)
  putInteger(w,value.`cmdnum`)
  putInteger(w,value.`mt_brake`)
  putInteger(w,value.`mt_able`)
  putInteger(w,value.`err`)
  putInteger(w,value.`warn`)
  if value.`angle`.len > 7: fail(22)
  putInteger(w,uint32(value.`angle`.len))
  for e in value.`angle`:
    putFloat32(w,e)
  for e in value.`pose`:
    putFloat32(w,e)
  for e in value.`offset`:
    putFloat32(w,e)
proc readRos1Xarm_msgsRobotMsg*(r: var Reader): Ros1Xarm_msgsRobotMsg =
 ## ``@brief Read the ordered canonical fields of xarm_msgs/RobotMsg.``
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
 ## ``@see Ros1Xarm_msgsRobotMsg; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Xarm_msgsRobotMsg()
  result.`state` = getInteger(r,int16)
  result.`mode` = getInteger(r,int16)
  result.`cmdnum` = getInteger(r,int16)
  result.`mt_brake` = getInteger(r,int16)
  result.`mt_able` = getInteger(r,int16)
  result.`err` = getInteger(r,int16)
  result.`warn` = getInteger(r,int16)
  let rawcount7 = getInteger(r,uint32)
  if rawcount7 > 7: fail(22)
  let count7 = int(rawcount7)
  result.`angle` = newSeq[float32](count7)
  for i in 0..<count7:
    result.`angle`[i] = getFloat32(r)
  let count8 = 6
  for i in 0..<count8:
    result.`pose`[i] = getFloat32(r)
  let count9 = 6
  for i in 0..<count9:
    result.`offset`[i] = getFloat32(r)
proc encode*(value: Ros1Xarm_msgsRobotMsg): seq[byte] =
 ## ``@brief Encode one complete xarm_msgs/RobotMsg value.``
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
 ## ``@see Ros1Xarm_msgsRobotMsg; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(94)
  writeFields(value,w)
  w.bytes
proc decodeRos1Xarm_msgsRobotMsg*(b: seq[byte]): Ros1Xarm_msgsRobotMsg =
 ## ``@brief Decode exactly one complete xarm_msgs/RobotMsg value.``
 ## ``@details Require the complete 66..94-byte canonical representation. Reject truncation,``
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
 ## ``@see Ros1Xarm_msgsRobotMsg; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,94)
  result = readRos1Xarm_msgsRobotMsg(r)
  finish(r)
type Ros1Xarm_msgsClearErrRequest* = object
 ## ``@brief Complete ROS 1 xarm_msgs/ClearErrRequest value.``
 ## ``@details All 0 declared fields are retained in source order. The canonical representation``
 ## ``occupies 0..0 bytes and is identified by``
 ## ``UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsClearErrRequestMaximumWireBytes* = 0 ## ``@brief Maximum canonical extent of``
                                                        ## ``xarm_msgs/ClearErrRequest in bytes.``
                                                        ## ``@details The inclusive bound is 0 bytes for``
                                                        ## ``this selected profile; it is not a native``
                                                        ## ``sizeof or a queue reservation. @see``
                                                        ## ``Ros1Xarm_msgsClearErrRequest;``
                                                        ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsClearErrRequestCodecIdentity* = "UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8" ## ``@brief Canonical codec identity``
    ## ``of xarm_msgs/ClearErrRequest.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Xarm_msgsClearErrRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsClearErrRequestNativeType* = "xarm_msgs/ClearErrRequest" ## ``@brief Original ROS type name``
    ## ``for xarm_msgs/ClearErrRequest.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Xarm_msgsClearErrRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsClearErrRequestNativeIdentity* = "" ## ``@brief Selected original native identity for``
                                                       ## ``xarm_msgs/ClearErrRequest. @details Absent:``
                                                       ## ``this source profile establishes no native``
                                                       ## ``identity. @see Ros1Xarm_msgsClearErrRequest;``
                                                       ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Xarm_msgsClearErrRequest*(): Ros1Xarm_msgsClearErrRequest =
 ## ``@brief Construct the declared defaults of xarm_msgs/ClearErrRequest.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Xarm_msgsClearErrRequest; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc writeFields*(value: Ros1Xarm_msgsClearErrRequest; w: var Writer) =
 ## ``@brief Append every canonical field of xarm_msgs/ClearErrRequest.``
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
 ## ``@see Ros1Xarm_msgsClearErrRequest; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc readRos1Xarm_msgsClearErrRequest*(r: var Reader): Ros1Xarm_msgsClearErrRequest =
 ## ``@brief Read the ordered canonical fields of xarm_msgs/ClearErrRequest.``
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
 ## ``@see Ros1Xarm_msgsClearErrRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Xarm_msgsClearErrRequest()
proc encode*(value: Ros1Xarm_msgsClearErrRequest): seq[byte] =
 ## ``@brief Encode one complete xarm_msgs/ClearErrRequest value.``
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
 ## ``@see Ros1Xarm_msgsClearErrRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Xarm_msgsClearErrRequest*(b: seq[byte]): Ros1Xarm_msgsClearErrRequest =
 ## ``@brief Decode exactly one complete xarm_msgs/ClearErrRequest value.``
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
 ## ``@see Ros1Xarm_msgsClearErrRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,0)
  result = readRos1Xarm_msgsClearErrRequest(r)
  finish(r)
type Ros1Xarm_msgsClearErrResponse* = object
 ## ``@brief Complete ROS 1 xarm_msgs/ClearErrResponse value.``
 ## ``@details All 2 declared fields are retained in source order. The canonical representation``
 ## ``occupies 6..262 bytes and is identified by``
 ## ``UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `ret`*: int16 ## ``@brief xarm_msgs/ClearErrResponse.ret: int16. @details The generated initializer``
                ## ``supplies the declared zero/empty/nested default. Encoding preserves the original``
                ## ``field position and signedness; invalid bounds fail instead of truncating the value.``
                ## ``@units Use the units and frame/clock domain of the pinned native definition. The``
                ## ``codec performs no scaling, frame conversion or normalization. @lifetime Retain``
                ## ``referenced string/sequence backing storage for each encoding call. Decoded``
                ## ``borrowing and allocator ownership follow the enclosing decode function. @see``
                ## ``Ros1Xarm_msgsClearErrResponse; share/platform/ros/nim/API-CONTRACT.md``
  `message`*: string ## ``@brief xarm_msgs/ClearErrResponse.message: string; each string is 0..256``
                     ## ``bytes; strict UTF-8 with no embedded NUL. @details The generated initializer``
                     ## ``supplies the declared zero/empty/nested default. Encoding preserves the``
                     ## ``original field position and signedness; invalid bounds fail instead of``
                     ## ``truncating the value. @units Use the units and frame/clock domain of the``
                     ## ``pinned native definition. The codec performs no scaling, frame conversion or``
                     ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                     ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                     ## ``enclosing decode function. @see Ros1Xarm_msgsClearErrResponse;``
                     ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsClearErrResponseMaximumWireBytes* = 262 ## ``@brief Maximum canonical extent of``
                                                           ## ``xarm_msgs/ClearErrResponse in bytes.``
                                                           ## ``@details The inclusive bound is 262``
                                                           ## ``bytes for this selected profile; it is``
                                                           ## ``not a native sizeof or a queue``
                                                           ## ``reservation. @see``
                                                           ## ``Ros1Xarm_msgsClearErrResponse;``
                                                           ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsClearErrResponseCodecIdentity* = "UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054" ## ``@brief Canonical codec identity``
    ## ``of xarm_msgs/ClearErrResponse.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Xarm_msgsClearErrResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsClearErrResponseNativeType* = "xarm_msgs/ClearErrResponse" ## ``@brief Original ROS type name``
    ## ``for xarm_msgs/ClearErrResponse.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Xarm_msgsClearErrResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsClearErrResponseNativeIdentity* = "" ## ``@brief Selected original native identity``
                                                        ## ``for xarm_msgs/ClearErrResponse. @details``
                                                        ## ``Absent: this source profile establishes no``
                                                        ## ``native identity. @see``
                                                        ## ``Ros1Xarm_msgsClearErrResponse;``
                                                        ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Xarm_msgsClearErrResponse*(): Ros1Xarm_msgsClearErrResponse =
 ## ``@brief Construct the declared defaults of xarm_msgs/ClearErrResponse.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Xarm_msgsClearErrResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`ret` = 0
  result.`message` = ""
proc writeFields*(value: Ros1Xarm_msgsClearErrResponse; w: var Writer) =
 ## ``@brief Append every canonical field of xarm_msgs/ClearErrResponse.``
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
 ## ``@see Ros1Xarm_msgsClearErrResponse; share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`ret`)
  putString(w,value.`message`,256)
proc readRos1Xarm_msgsClearErrResponse*(r: var Reader): Ros1Xarm_msgsClearErrResponse =
 ## ``@brief Read the ordered canonical fields of xarm_msgs/ClearErrResponse.``
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
 ## ``@see Ros1Xarm_msgsClearErrResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Xarm_msgsClearErrResponse()
  result.`ret` = getInteger(r,int16)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Xarm_msgsClearErrResponse): seq[byte] =
 ## ``@brief Encode one complete xarm_msgs/ClearErrResponse value.``
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
 ## ``@see Ros1Xarm_msgsClearErrResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(262)
  writeFields(value,w)
  w.bytes
proc decodeRos1Xarm_msgsClearErrResponse*(b: seq[byte]): Ros1Xarm_msgsClearErrResponse =
 ## ``@brief Decode exactly one complete xarm_msgs/ClearErrResponse value.``
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
 ## ``@see Ros1Xarm_msgsClearErrResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,262)
  result = readRos1Xarm_msgsClearErrResponse(r)
  finish(r)
type Ros1Xarm_msgsGetAnalogIORequest* = object
 ## ``@brief Complete ROS 1 xarm_msgs/GetAnalogIORequest value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 2..2 bytes and is identified by``
 ## ``UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `port_num`*: int16 ## ``@brief xarm_msgs/GetAnalogIORequest.port_num: int16. @details The generated``
                     ## ``initializer supplies the declared zero/empty/nested default. Encoding``
                     ## ``preserves the original field position and signedness; invalid bounds fail``
                     ## ``instead of truncating the value. @units Use the units and frame/clock domain``
                     ## ``of the pinned native definition. The codec performs no scaling, frame``
                     ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                     ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                     ## ``ownership follow the enclosing decode function. @see``
                     ## ``Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsGetAnalogIORequestMaximumWireBytes* = 2 ## ``@brief Maximum canonical extent of``
                                                           ## ``xarm_msgs/GetAnalogIORequest in bytes.``
                                                           ## ``@details The inclusive bound is 2 bytes``
                                                           ## ``for this selected profile; it is not a``
                                                           ## ``native sizeof or a queue reservation.``
                                                           ## ``@see Ros1Xarm_msgsGetAnalogIORequest;``
                                                           ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsGetAnalogIORequestCodecIdentity* = "UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8" ## ``@brief Canonical codec identity``
    ## ``of xarm_msgs/GetAnalogIORequest.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Xarm_msgsGetAnalogIORequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsGetAnalogIORequestNativeType* = "xarm_msgs/GetAnalogIORequest" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``xarm_msgs/GetAnalogIORequest.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Xarm_msgsGetAnalogIORequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsGetAnalogIORequestNativeIdentity* = "" ## ``@brief Selected original native identity``
                                                          ## ``for xarm_msgs/GetAnalogIORequest.``
                                                          ## ``@details Absent: this source profile``
                                                          ## ``establishes no native identity. @see``
                                                          ## ``Ros1Xarm_msgsGetAnalogIORequest;``
                                                          ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Xarm_msgsGetAnalogIORequest*(): Ros1Xarm_msgsGetAnalogIORequest =
 ## ``@brief Construct the declared defaults of xarm_msgs/GetAnalogIORequest.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/nim/API-CONTRACT.md``
  result.`port_num` = 0
proc writeFields*(value: Ros1Xarm_msgsGetAnalogIORequest; w: var Writer) =
 ## ``@brief Append every canonical field of xarm_msgs/GetAnalogIORequest.``
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
 ## ``@see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`port_num`)
proc readRos1Xarm_msgsGetAnalogIORequest*(r: var Reader): Ros1Xarm_msgsGetAnalogIORequest =
 ## ``@brief Read the ordered canonical fields of xarm_msgs/GetAnalogIORequest.``
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
 ## ``@see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Xarm_msgsGetAnalogIORequest()
  result.`port_num` = getInteger(r,int16)
proc encode*(value: Ros1Xarm_msgsGetAnalogIORequest): seq[byte] =
 ## ``@brief Encode one complete xarm_msgs/GetAnalogIORequest value.``
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
 ## ``@see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(2)
  writeFields(value,w)
  w.bytes
proc decodeRos1Xarm_msgsGetAnalogIORequest*(b: seq[byte]): Ros1Xarm_msgsGetAnalogIORequest =
 ## ``@brief Decode exactly one complete xarm_msgs/GetAnalogIORequest value.``
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
 ## ``@see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,2)
  result = readRos1Xarm_msgsGetAnalogIORequest(r)
  finish(r)
type Ros1Xarm_msgsGetAnalogIOResponse* = object
 ## ``@brief Complete ROS 1 xarm_msgs/GetAnalogIOResponse value.``
 ## ``@details All 3 declared fields are retained in source order. The canonical representation``
 ## ``occupies 10..266 bytes and is identified by``
 ## ``UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `analog_value`*: float32 ## ``@brief xarm_msgs/GetAnalogIOResponse.analog_value: float32. @details The``
                           ## ``generated initializer supplies the declared zero/empty/nested default.``
                           ## ``Encoding preserves the original field position and signedness; invalid``
                           ## ``bounds fail instead of truncating the value. @units Use the units and``
                           ## ``frame/clock domain of the pinned native definition. The codec performs``
                           ## ``no scaling, frame conversion or normalization. @lifetime Retain``
                           ## ``referenced string/sequence backing storage for each encoding call.``
                           ## ``Decoded borrowing and allocator ownership follow the enclosing decode``
                           ## ``function. @see Ros1Xarm_msgsGetAnalogIOResponse;``
                           ## ``share/platform/ros/nim/API-CONTRACT.md``
  `ret`*: int16 ## ``@brief xarm_msgs/GetAnalogIOResponse.ret: int16. @details The generated initializer``
                ## ``supplies the declared zero/empty/nested default. Encoding preserves the original``
                ## ``field position and signedness; invalid bounds fail instead of truncating the value.``
                ## ``@units Use the units and frame/clock domain of the pinned native definition. The``
                ## ``codec performs no scaling, frame conversion or normalization. @lifetime Retain``
                ## ``referenced string/sequence backing storage for each encoding call. Decoded``
                ## ``borrowing and allocator ownership follow the enclosing decode function. @see``
                ## ``Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/nim/API-CONTRACT.md``
  `message`*: string ## ``@brief xarm_msgs/GetAnalogIOResponse.message: string; each string is 0..256``
                     ## ``bytes; strict UTF-8 with no embedded NUL. @details The generated initializer``
                     ## ``supplies the declared zero/empty/nested default. Encoding preserves the``
                     ## ``original field position and signedness; invalid bounds fail instead of``
                     ## ``truncating the value. @units Use the units and frame/clock domain of the``
                     ## ``pinned native definition. The codec performs no scaling, frame conversion or``
                     ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                     ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                     ## ``enclosing decode function. @see Ros1Xarm_msgsGetAnalogIOResponse;``
                     ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsGetAnalogIOResponseMaximumWireBytes* = 266 ## ``@brief Maximum canonical extent of``
                                                              ## ``xarm_msgs/GetAnalogIOResponse in``
                                                              ## ``bytes. @details The inclusive bound``
                                                              ## ``is 266 bytes for this selected``
                                                              ## ``profile; it is not a native sizeof or``
                                                              ## ``a queue reservation. @see``
                                                              ## ``Ros1Xarm_msgsGetAnalogIOResponse;``
                                                              ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsGetAnalogIOResponseCodecIdentity* = "UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``xarm_msgs/GetAnalogIOResponse.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Xarm_msgsGetAnalogIOResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsGetAnalogIOResponseNativeType* = "xarm_msgs/GetAnalogIOResponse" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``xarm_msgs/GetAnalogIOResponse.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Xarm_msgsGetAnalogIOResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsGetAnalogIOResponseNativeIdentity* = "" ## ``@brief Selected original native identity``
                                                           ## ``for xarm_msgs/GetAnalogIOResponse.``
                                                           ## ``@details Absent: this source profile``
                                                           ## ``establishes no native identity. @see``
                                                           ## ``Ros1Xarm_msgsGetAnalogIOResponse;``
                                                           ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Xarm_msgsGetAnalogIOResponse*(): Ros1Xarm_msgsGetAnalogIOResponse =
 ## ``@brief Construct the declared defaults of xarm_msgs/GetAnalogIOResponse.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`analog_value` = 0
  result.`ret` = 0
  result.`message` = ""
proc writeFields*(value: Ros1Xarm_msgsGetAnalogIOResponse; w: var Writer) =
 ## ``@brief Append every canonical field of xarm_msgs/GetAnalogIOResponse.``
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
 ## ``@see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`analog_value`)
  putInteger(w,value.`ret`)
  putString(w,value.`message`,256)
proc readRos1Xarm_msgsGetAnalogIOResponse*(r: var Reader): Ros1Xarm_msgsGetAnalogIOResponse =
 ## ``@brief Read the ordered canonical fields of xarm_msgs/GetAnalogIOResponse.``
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
 ## ``@see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Xarm_msgsGetAnalogIOResponse()
  result.`analog_value` = getFloat32(r)
  result.`ret` = getInteger(r,int16)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Xarm_msgsGetAnalogIOResponse): seq[byte] =
 ## ``@brief Encode one complete xarm_msgs/GetAnalogIOResponse value.``
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
 ## ``@see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(266)
  writeFields(value,w)
  w.bytes
proc decodeRos1Xarm_msgsGetAnalogIOResponse*(b: seq[byte]): Ros1Xarm_msgsGetAnalogIOResponse =
 ## ``@brief Decode exactly one complete xarm_msgs/GetAnalogIOResponse value.``
 ## ``@details Require the complete 10..266-byte canonical representation. Reject truncation,``
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
 ## ``@see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,266)
  result = readRos1Xarm_msgsGetAnalogIOResponse(r)
  finish(r)
type Ros1Xarm_msgsGetDigitalIORequest* = object
 ## ``@brief Complete ROS 1 xarm_msgs/GetDigitalIORequest value.``
 ## ``@details All 0 declared fields are retained in source order. The canonical representation``
 ## ``occupies 0..0 bytes and is identified by``
 ## ``UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsGetDigitalIORequestMaximumWireBytes* = 0 ## ``@brief Maximum canonical extent of``
                                                            ## ``xarm_msgs/GetDigitalIORequest in bytes.``
                                                            ## ``@details The inclusive bound is 0 bytes``
                                                            ## ``for this selected profile; it is not a``
                                                            ## ``native sizeof or a queue reservation.``
                                                            ## ``@see Ros1Xarm_msgsGetDigitalIORequest;``
                                                            ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsGetDigitalIORequestCodecIdentity* = "UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``xarm_msgs/GetDigitalIORequest.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Xarm_msgsGetDigitalIORequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsGetDigitalIORequestNativeType* = "xarm_msgs/GetDigitalIORequest" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``xarm_msgs/GetDigitalIORequest.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Xarm_msgsGetDigitalIORequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsGetDigitalIORequestNativeIdentity* = "" ## ``@brief Selected original native identity``
                                                           ## ``for xarm_msgs/GetDigitalIORequest.``
                                                           ## ``@details Absent: this source profile``
                                                           ## ``establishes no native identity. @see``
                                                           ## ``Ros1Xarm_msgsGetDigitalIORequest;``
                                                           ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Xarm_msgsGetDigitalIORequest*(): Ros1Xarm_msgsGetDigitalIORequest =
 ## ``@brief Construct the declared defaults of xarm_msgs/GetDigitalIORequest.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc writeFields*(value: Ros1Xarm_msgsGetDigitalIORequest; w: var Writer) =
 ## ``@brief Append every canonical field of xarm_msgs/GetDigitalIORequest.``
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
 ## ``@see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc readRos1Xarm_msgsGetDigitalIORequest*(r: var Reader): Ros1Xarm_msgsGetDigitalIORequest =
 ## ``@brief Read the ordered canonical fields of xarm_msgs/GetDigitalIORequest.``
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
 ## ``@see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Xarm_msgsGetDigitalIORequest()
proc encode*(value: Ros1Xarm_msgsGetDigitalIORequest): seq[byte] =
 ## ``@brief Encode one complete xarm_msgs/GetDigitalIORequest value.``
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
 ## ``@see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Xarm_msgsGetDigitalIORequest*(b: seq[byte]): Ros1Xarm_msgsGetDigitalIORequest =
 ## ``@brief Decode exactly one complete xarm_msgs/GetDigitalIORequest value.``
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
 ## ``@see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,0)
  result = readRos1Xarm_msgsGetDigitalIORequest(r)
  finish(r)
type Ros1Xarm_msgsGetDigitalIOResponse* = object
 ## ``@brief Complete ROS 1 xarm_msgs/GetDigitalIOResponse value.``
 ## ``@details All 4 declared fields are retained in source order. The canonical representation``
 ## ``occupies 14..270 bytes and is identified by``
 ## ``UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `digital_1`*: int32 ## ``@brief xarm_msgs/GetDigitalIOResponse.digital_1: int32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/nim/API-CONTRACT.md``
  `digital_2`*: int32 ## ``@brief xarm_msgs/GetDigitalIOResponse.digital_2: int32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/nim/API-CONTRACT.md``
  `ret`*: int16 ## ``@brief xarm_msgs/GetDigitalIOResponse.ret: int16. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/nim/API-CONTRACT.md``
  `message`*: string ## ``@brief xarm_msgs/GetDigitalIOResponse.message: string; each string is 0..256``
                     ## ``bytes; strict UTF-8 with no embedded NUL. @details The generated initializer``
                     ## ``supplies the declared zero/empty/nested default. Encoding preserves the``
                     ## ``original field position and signedness; invalid bounds fail instead of``
                     ## ``truncating the value. @units Use the units and frame/clock domain of the``
                     ## ``pinned native definition. The codec performs no scaling, frame conversion or``
                     ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                     ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                     ## ``enclosing decode function. @see Ros1Xarm_msgsGetDigitalIOResponse;``
                     ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsGetDigitalIOResponseMaximumWireBytes* = 270 ## ``@brief Maximum canonical extent of``
                                                               ## ``xarm_msgs/GetDigitalIOResponse in``
                                                               ## ``bytes. @details The inclusive bound``
                                                               ## ``is 270 bytes for this selected``
                                                               ## ``profile; it is not a native sizeof``
                                                               ## ``or a queue reservation. @see``
                                                               ## ``Ros1Xarm_msgsGetDigitalIOResponse;``
                                                               ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsGetDigitalIOResponseCodecIdentity* = "UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``xarm_msgs/GetDigitalIOResponse.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Xarm_msgsGetDigitalIOResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsGetDigitalIOResponseNativeType* = "xarm_msgs/GetDigitalIOResponse" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``xarm_msgs/GetDigitalIOResponse.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Xarm_msgsGetDigitalIOResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsGetDigitalIOResponseNativeIdentity* = "" ## ``@brief Selected original native``
                                                            ## ``identity for``
                                                            ## ``xarm_msgs/GetDigitalIOResponse.``
                                                            ## ``@details Absent: this source profile``
                                                            ## ``establishes no native identity. @see``
                                                            ## ``Ros1Xarm_msgsGetDigitalIOResponse;``
                                                            ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Xarm_msgsGetDigitalIOResponse*(): Ros1Xarm_msgsGetDigitalIOResponse =
 ## ``@brief Construct the declared defaults of xarm_msgs/GetDigitalIOResponse.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`digital_1` = 0
  result.`digital_2` = 0
  result.`ret` = 0
  result.`message` = ""
proc writeFields*(value: Ros1Xarm_msgsGetDigitalIOResponse; w: var Writer) =
 ## ``@brief Append every canonical field of xarm_msgs/GetDigitalIOResponse.``
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
 ## ``@see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`digital_1`)
  putInteger(w,value.`digital_2`)
  putInteger(w,value.`ret`)
  putString(w,value.`message`,256)
proc readRos1Xarm_msgsGetDigitalIOResponse*(r: var Reader): Ros1Xarm_msgsGetDigitalIOResponse =
 ## ``@brief Read the ordered canonical fields of xarm_msgs/GetDigitalIOResponse.``
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
 ## ``@see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Xarm_msgsGetDigitalIOResponse()
  result.`digital_1` = getInteger(r,int32)
  result.`digital_2` = getInteger(r,int32)
  result.`ret` = getInteger(r,int16)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Xarm_msgsGetDigitalIOResponse): seq[byte] =
 ## ``@brief Encode one complete xarm_msgs/GetDigitalIOResponse value.``
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
 ## ``@see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(270)
  writeFields(value,w)
  w.bytes
proc decodeRos1Xarm_msgsGetDigitalIOResponse*(b: seq[byte]): Ros1Xarm_msgsGetDigitalIOResponse =
 ## ``@brief Decode exactly one complete xarm_msgs/GetDigitalIOResponse value.``
 ## ``@details Require the complete 14..270-byte canonical representation. Reject truncation,``
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
 ## ``@see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,270)
  result = readRos1Xarm_msgsGetDigitalIOResponse(r)
  finish(r)
type Ros1Xarm_msgsMoveRequest* = object
 ## ``@brief Complete ROS 1 xarm_msgs/MoveRequest value.``
 ## ``@details All 5 declared fields are retained in source order. The canonical representation``
 ## ``occupies 20..148 bytes and is identified by``
 ## ``UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `pose`*: seq[float32] ## ``@brief xarm_msgs/MoveRequest.pose: float32; 0..32 elements. @details The``
                        ## ``generated initializer supplies the declared zero/empty/nested default.``
                        ## ``Encoding preserves the original field position and signedness; invalid``
                        ## ``bounds fail instead of truncating the value. @units Use the units and``
                        ## ``frame/clock domain of the pinned native definition. The codec performs no``
                        ## ``scaling, frame conversion or normalization. @lifetime Retain referenced``
                        ## ``string/sequence backing storage for each encoding call. Decoded borrowing``
                        ## ``and allocator ownership follow the enclosing decode function. @see``
                        ## ``Ros1Xarm_msgsMoveRequest; share/platform/ros/nim/API-CONTRACT.md``
  `mvvelo`*: float32 ## ``@brief xarm_msgs/MoveRequest.mvvelo: float32. @details The generated``
                     ## ``initializer supplies the declared zero/empty/nested default. Encoding``
                     ## ``preserves the original field position and signedness; invalid bounds fail``
                     ## ``instead of truncating the value. @units Use the units and frame/clock domain``
                     ## ``of the pinned native definition. The codec performs no scaling, frame``
                     ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                     ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                     ## ``ownership follow the enclosing decode function. @see Ros1Xarm_msgsMoveRequest;``
                     ## ``share/platform/ros/nim/API-CONTRACT.md``
  `mvacc`*: float32 ## ``@brief xarm_msgs/MoveRequest.mvacc: float32. @details The generated initializer``
                    ## ``supplies the declared zero/empty/nested default. Encoding preserves the``
                    ## ``original field position and signedness; invalid bounds fail instead of``
                    ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                    ## ``native definition. The codec performs no scaling, frame conversion or``
                    ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                    ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                    ## ``enclosing decode function. @see Ros1Xarm_msgsMoveRequest;``
                    ## ``share/platform/ros/nim/API-CONTRACT.md``
  `mvtime`*: float32 ## ``@brief xarm_msgs/MoveRequest.mvtime: float32. @details The generated``
                     ## ``initializer supplies the declared zero/empty/nested default. Encoding``
                     ## ``preserves the original field position and signedness; invalid bounds fail``
                     ## ``instead of truncating the value. @units Use the units and frame/clock domain``
                     ## ``of the pinned native definition. The codec performs no scaling, frame``
                     ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                     ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                     ## ``ownership follow the enclosing decode function. @see Ros1Xarm_msgsMoveRequest;``
                     ## ``share/platform/ros/nim/API-CONTRACT.md``
  `mvradii`*: float32 ## ``@brief xarm_msgs/MoveRequest.mvradii: float32. @details The generated``
                      ## ``initializer supplies the declared zero/empty/nested default. Encoding``
                      ## ``preserves the original field position and signedness; invalid bounds fail``
                      ## ``instead of truncating the value. @units Use the units and frame/clock domain``
                      ## ``of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Xarm_msgsMoveRequest; share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsMoveRequestMaximumWireBytes* = 148 ## ``@brief Maximum canonical extent of``
                                                      ## ``xarm_msgs/MoveRequest in bytes. @details The``
                                                      ## ``inclusive bound is 148 bytes for this``
                                                      ## ``selected profile; it is not a native sizeof``
                                                      ## ``or a queue reservation. @see``
                                                      ## ``Ros1Xarm_msgsMoveRequest;``
                                                      ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsMoveRequestCodecIdentity* = "UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced" ## ``@brief Canonical codec identity``
    ## ``of xarm_msgs/MoveRequest.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Xarm_msgsMoveRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsMoveRequestNativeType* = "xarm_msgs/MoveRequest" ## ``@brief Original ROS type name``
    ## ``for xarm_msgs/MoveRequest.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Xarm_msgsMoveRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsMoveRequestNativeIdentity* = "" ## ``@brief Selected original native identity for``
                                                   ## ``xarm_msgs/MoveRequest. @details Absent: this``
                                                   ## ``source profile establishes no native identity.``
                                                   ## ``@see Ros1Xarm_msgsMoveRequest;``
                                                   ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Xarm_msgsMoveRequest*(): Ros1Xarm_msgsMoveRequest =
 ## ``@brief Construct the declared defaults of xarm_msgs/MoveRequest.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Xarm_msgsMoveRequest; share/platform/ros/nim/API-CONTRACT.md``
  result.`pose` = @[]
  result.`mvvelo` = 0
  result.`mvacc` = 0
  result.`mvtime` = 0
  result.`mvradii` = 0
proc writeFields*(value: Ros1Xarm_msgsMoveRequest; w: var Writer) =
 ## ``@brief Append every canonical field of xarm_msgs/MoveRequest.``
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
 ## ``@see Ros1Xarm_msgsMoveRequest; share/platform/ros/nim/API-CONTRACT.md``
  if value.`pose`.len > 32: fail(22)
  putInteger(w,uint32(value.`pose`.len))
  for e in value.`pose`:
    putFloat32(w,e)
  putFloat32(w,value.`mvvelo`)
  putFloat32(w,value.`mvacc`)
  putFloat32(w,value.`mvtime`)
  putFloat32(w,value.`mvradii`)
proc readRos1Xarm_msgsMoveRequest*(r: var Reader): Ros1Xarm_msgsMoveRequest =
 ## ``@brief Read the ordered canonical fields of xarm_msgs/MoveRequest.``
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
 ## ``@see Ros1Xarm_msgsMoveRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Xarm_msgsMoveRequest()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 32: fail(22)
  let count0 = int(rawcount0)
  result.`pose` = newSeq[float32](count0)
  for i in 0..<count0:
    result.`pose`[i] = getFloat32(r)
  result.`mvvelo` = getFloat32(r)
  result.`mvacc` = getFloat32(r)
  result.`mvtime` = getFloat32(r)
  result.`mvradii` = getFloat32(r)
proc encode*(value: Ros1Xarm_msgsMoveRequest): seq[byte] =
 ## ``@brief Encode one complete xarm_msgs/MoveRequest value.``
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
 ## ``@see Ros1Xarm_msgsMoveRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(148)
  writeFields(value,w)
  w.bytes
proc decodeRos1Xarm_msgsMoveRequest*(b: seq[byte]): Ros1Xarm_msgsMoveRequest =
 ## ``@brief Decode exactly one complete xarm_msgs/MoveRequest value.``
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
 ## ``@see Ros1Xarm_msgsMoveRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,148)
  result = readRos1Xarm_msgsMoveRequest(r)
  finish(r)
type Ros1Xarm_msgsMoveResponse* = object
 ## ``@brief Complete ROS 1 xarm_msgs/MoveResponse value.``
 ## ``@details All 2 declared fields are retained in source order. The canonical representation``
 ## ``occupies 6..262 bytes and is identified by``
 ## ``UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `ret`*: int16 ## ``@brief xarm_msgs/MoveResponse.ret: int16. @details The generated initializer``
                ## ``supplies the declared zero/empty/nested default. Encoding preserves the original``
                ## ``field position and signedness; invalid bounds fail instead of truncating the value.``
                ## ``@units Use the units and frame/clock domain of the pinned native definition. The``
                ## ``codec performs no scaling, frame conversion or normalization. @lifetime Retain``
                ## ``referenced string/sequence backing storage for each encoding call. Decoded``
                ## ``borrowing and allocator ownership follow the enclosing decode function. @see``
                ## ``Ros1Xarm_msgsMoveResponse; share/platform/ros/nim/API-CONTRACT.md``
  `message`*: string ## ``@brief xarm_msgs/MoveResponse.message: string; each string is 0..256 bytes;``
                     ## ``strict UTF-8 with no embedded NUL. @details The generated initializer supplies``
                     ## ``the declared zero/empty/nested default. Encoding preserves the original field``
                     ## ``position and signedness; invalid bounds fail instead of truncating the value.``
                     ## ``@units Use the units and frame/clock domain of the pinned native definition.``
                     ## ``The codec performs no scaling, frame conversion or normalization. @lifetime``
                     ## ``Retain referenced string/sequence backing storage for each encoding call.``
                     ## ``Decoded borrowing and allocator ownership follow the enclosing decode``
                     ## ``function. @see Ros1Xarm_msgsMoveResponse;``
                     ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsMoveResponseMaximumWireBytes* = 262 ## ``@brief Maximum canonical extent of``
                                                       ## ``xarm_msgs/MoveResponse in bytes. @details``
                                                       ## ``The inclusive bound is 262 bytes for this``
                                                       ## ``selected profile; it is not a native sizeof``
                                                       ## ``or a queue reservation. @see``
                                                       ## ``Ros1Xarm_msgsMoveResponse;``
                                                       ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsMoveResponseCodecIdentity* = "UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d" ## ``@brief Canonical codec identity``
    ## ``of xarm_msgs/MoveResponse.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Xarm_msgsMoveResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsMoveResponseNativeType* = "xarm_msgs/MoveResponse" ## ``@brief Original ROS type name``
    ## ``for xarm_msgs/MoveResponse.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Xarm_msgsMoveResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsMoveResponseNativeIdentity* = "" ## ``@brief Selected original native identity for``
                                                    ## ``xarm_msgs/MoveResponse. @details Absent: this``
                                                    ## ``source profile establishes no native identity.``
                                                    ## ``@see Ros1Xarm_msgsMoveResponse;``
                                                    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Xarm_msgsMoveResponse*(): Ros1Xarm_msgsMoveResponse =
 ## ``@brief Construct the declared defaults of xarm_msgs/MoveResponse.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Xarm_msgsMoveResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`ret` = 0
  result.`message` = ""
proc writeFields*(value: Ros1Xarm_msgsMoveResponse; w: var Writer) =
 ## ``@brief Append every canonical field of xarm_msgs/MoveResponse.``
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
 ## ``@see Ros1Xarm_msgsMoveResponse; share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`ret`)
  putString(w,value.`message`,256)
proc readRos1Xarm_msgsMoveResponse*(r: var Reader): Ros1Xarm_msgsMoveResponse =
 ## ``@brief Read the ordered canonical fields of xarm_msgs/MoveResponse.``
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
 ## ``@see Ros1Xarm_msgsMoveResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Xarm_msgsMoveResponse()
  result.`ret` = getInteger(r,int16)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Xarm_msgsMoveResponse): seq[byte] =
 ## ``@brief Encode one complete xarm_msgs/MoveResponse value.``
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
 ## ``@see Ros1Xarm_msgsMoveResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(262)
  writeFields(value,w)
  w.bytes
proc decodeRos1Xarm_msgsMoveResponse*(b: seq[byte]): Ros1Xarm_msgsMoveResponse =
 ## ``@brief Decode exactly one complete xarm_msgs/MoveResponse value.``
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
 ## ``@see Ros1Xarm_msgsMoveResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,262)
  result = readRos1Xarm_msgsMoveResponse(r)
  finish(r)
type Ros1Xarm_msgsSetAxisRequest* = object
 ## ``@brief Complete ROS 1 xarm_msgs/SetAxisRequest value.``
 ## ``@details All 2 declared fields are retained in source order. The canonical representation``
 ## ``occupies 4..4 bytes and is identified by``
 ## ``UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `id`*: int16 ## ``@brief xarm_msgs/SetAxisRequest.id: int16. @details The generated initializer``
               ## ``supplies the declared zero/empty/nested default. Encoding preserves the original``
               ## ``field position and signedness; invalid bounds fail instead of truncating the value.``
               ## ``@units Use the units and frame/clock domain of the pinned native definition. The``
               ## ``codec performs no scaling, frame conversion or normalization. @lifetime Retain``
               ## ``referenced string/sequence backing storage for each encoding call. Decoded borrowing``
               ## ``and allocator ownership follow the enclosing decode function. @see``
               ## ``Ros1Xarm_msgsSetAxisRequest; share/platform/ros/nim/API-CONTRACT.md``
  `data`*: int16 ## ``@brief xarm_msgs/SetAxisRequest.data: int16. @details The generated initializer``
                 ## ``supplies the declared zero/empty/nested default. Encoding preserves the original``
                 ## ``field position and signedness; invalid bounds fail instead of truncating the``
                 ## ``value. @units Use the units and frame/clock domain of the pinned native``
                 ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                 ## ``@lifetime Retain referenced string/sequence backing storage for each encoding``
                 ## ``call. Decoded borrowing and allocator ownership follow the enclosing decode``
                 ## ``function. @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsSetAxisRequestMaximumWireBytes* = 4 ## ``@brief Maximum canonical extent of``
                                                       ## ``xarm_msgs/SetAxisRequest in bytes. @details``
                                                       ## ``The inclusive bound is 4 bytes for this``
                                                       ## ``selected profile; it is not a native sizeof``
                                                       ## ``or a queue reservation. @see``
                                                       ## ``Ros1Xarm_msgsSetAxisRequest;``
                                                       ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsSetAxisRequestCodecIdentity* = "UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6" ## ``@brief Canonical codec identity``
    ## ``of xarm_msgs/SetAxisRequest.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Xarm_msgsSetAxisRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsSetAxisRequestNativeType* = "xarm_msgs/SetAxisRequest" ## ``@brief Original ROS type name``
    ## ``for xarm_msgs/SetAxisRequest.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Xarm_msgsSetAxisRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsSetAxisRequestNativeIdentity* = "" ## ``@brief Selected original native identity for``
                                                      ## ``xarm_msgs/SetAxisRequest. @details Absent:``
                                                      ## ``this source profile establishes no native``
                                                      ## ``identity. @see Ros1Xarm_msgsSetAxisRequest;``
                                                      ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Xarm_msgsSetAxisRequest*(): Ros1Xarm_msgsSetAxisRequest =
 ## ``@brief Construct the declared defaults of xarm_msgs/SetAxisRequest.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/nim/API-CONTRACT.md``
  result.`id` = 0
  result.`data` = 0
proc writeFields*(value: Ros1Xarm_msgsSetAxisRequest; w: var Writer) =
 ## ``@brief Append every canonical field of xarm_msgs/SetAxisRequest.``
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
 ## ``@see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`id`)
  putInteger(w,value.`data`)
proc readRos1Xarm_msgsSetAxisRequest*(r: var Reader): Ros1Xarm_msgsSetAxisRequest =
 ## ``@brief Read the ordered canonical fields of xarm_msgs/SetAxisRequest.``
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
 ## ``@see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Xarm_msgsSetAxisRequest()
  result.`id` = getInteger(r,int16)
  result.`data` = getInteger(r,int16)
proc encode*(value: Ros1Xarm_msgsSetAxisRequest): seq[byte] =
 ## ``@brief Encode one complete xarm_msgs/SetAxisRequest value.``
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
 ## ``@see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
proc decodeRos1Xarm_msgsSetAxisRequest*(b: seq[byte]): Ros1Xarm_msgsSetAxisRequest =
 ## ``@brief Decode exactly one complete xarm_msgs/SetAxisRequest value.``
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
 ## ``@see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,4)
  result = readRos1Xarm_msgsSetAxisRequest(r)
  finish(r)
type Ros1Xarm_msgsSetAxisResponse* = object
 ## ``@brief Complete ROS 1 xarm_msgs/SetAxisResponse value.``
 ## ``@details All 2 declared fields are retained in source order. The canonical representation``
 ## ``occupies 6..262 bytes and is identified by``
 ## ``UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `ret`*: int16 ## ``@brief xarm_msgs/SetAxisResponse.ret: int16. @details The generated initializer``
                ## ``supplies the declared zero/empty/nested default. Encoding preserves the original``
                ## ``field position and signedness; invalid bounds fail instead of truncating the value.``
                ## ``@units Use the units and frame/clock domain of the pinned native definition. The``
                ## ``codec performs no scaling, frame conversion or normalization. @lifetime Retain``
                ## ``referenced string/sequence backing storage for each encoding call. Decoded``
                ## ``borrowing and allocator ownership follow the enclosing decode function. @see``
                ## ``Ros1Xarm_msgsSetAxisResponse; share/platform/ros/nim/API-CONTRACT.md``
  `message`*: string ## ``@brief xarm_msgs/SetAxisResponse.message: string; each string is 0..256 bytes;``
                     ## ``strict UTF-8 with no embedded NUL. @details The generated initializer supplies``
                     ## ``the declared zero/empty/nested default. Encoding preserves the original field``
                     ## ``position and signedness; invalid bounds fail instead of truncating the value.``
                     ## ``@units Use the units and frame/clock domain of the pinned native definition.``
                     ## ``The codec performs no scaling, frame conversion or normalization. @lifetime``
                     ## ``Retain referenced string/sequence backing storage for each encoding call.``
                     ## ``Decoded borrowing and allocator ownership follow the enclosing decode``
                     ## ``function. @see Ros1Xarm_msgsSetAxisResponse;``
                     ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsSetAxisResponseMaximumWireBytes* = 262 ## ``@brief Maximum canonical extent of``
                                                          ## ``xarm_msgs/SetAxisResponse in bytes.``
                                                          ## ``@details The inclusive bound is 262 bytes``
                                                          ## ``for this selected profile; it is not a``
                                                          ## ``native sizeof or a queue reservation.``
                                                          ## ``@see Ros1Xarm_msgsSetAxisResponse;``
                                                          ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsSetAxisResponseCodecIdentity* = "UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27" ## ``@brief Canonical codec identity``
    ## ``of xarm_msgs/SetAxisResponse.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Xarm_msgsSetAxisResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsSetAxisResponseNativeType* = "xarm_msgs/SetAxisResponse" ## ``@brief Original ROS type name``
    ## ``for xarm_msgs/SetAxisResponse.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Xarm_msgsSetAxisResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsSetAxisResponseNativeIdentity* = "" ## ``@brief Selected original native identity for``
                                                       ## ``xarm_msgs/SetAxisResponse. @details Absent:``
                                                       ## ``this source profile establishes no native``
                                                       ## ``identity. @see Ros1Xarm_msgsSetAxisResponse;``
                                                       ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Xarm_msgsSetAxisResponse*(): Ros1Xarm_msgsSetAxisResponse =
 ## ``@brief Construct the declared defaults of xarm_msgs/SetAxisResponse.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`ret` = 0
  result.`message` = ""
proc writeFields*(value: Ros1Xarm_msgsSetAxisResponse; w: var Writer) =
 ## ``@brief Append every canonical field of xarm_msgs/SetAxisResponse.``
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
 ## ``@see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`ret`)
  putString(w,value.`message`,256)
proc readRos1Xarm_msgsSetAxisResponse*(r: var Reader): Ros1Xarm_msgsSetAxisResponse =
 ## ``@brief Read the ordered canonical fields of xarm_msgs/SetAxisResponse.``
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
 ## ``@see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Xarm_msgsSetAxisResponse()
  result.`ret` = getInteger(r,int16)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Xarm_msgsSetAxisResponse): seq[byte] =
 ## ``@brief Encode one complete xarm_msgs/SetAxisResponse value.``
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
 ## ``@see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(262)
  writeFields(value,w)
  w.bytes
proc decodeRos1Xarm_msgsSetAxisResponse*(b: seq[byte]): Ros1Xarm_msgsSetAxisResponse =
 ## ``@brief Decode exactly one complete xarm_msgs/SetAxisResponse value.``
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
 ## ``@see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,262)
  result = readRos1Xarm_msgsSetAxisResponse(r)
  finish(r)
type Ros1Xarm_msgsSetDigitalIORequest* = object
 ## ``@brief Complete ROS 1 xarm_msgs/SetDigitalIORequest value.``
 ## ``@details All 2 declared fields are retained in source order. The canonical representation``
 ## ``occupies 4..4 bytes and is identified by``
 ## ``UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `io_num`*: int16 ## ``@brief xarm_msgs/SetDigitalIORequest.io_num: int16. @details The generated``
                   ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                   ## ``the original field position and signedness; invalid bounds fail instead of``
                   ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                   ## ``native definition. The codec performs no scaling, frame conversion or``
                   ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                   ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                   ## ``enclosing decode function. @see Ros1Xarm_msgsSetDigitalIORequest;``
                   ## ``share/platform/ros/nim/API-CONTRACT.md``
  `value`*: int16 ## ``@brief xarm_msgs/SetDigitalIORequest.value: int16. @details The generated``
                  ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                  ## ``the original field position and signedness; invalid bounds fail instead of``
                  ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                  ## ``native definition. The codec performs no scaling, frame conversion or``
                  ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                  ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                  ## ``enclosing decode function. @see Ros1Xarm_msgsSetDigitalIORequest;``
                  ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsSetDigitalIORequestMaximumWireBytes* = 4 ## ``@brief Maximum canonical extent of``
                                                            ## ``xarm_msgs/SetDigitalIORequest in bytes.``
                                                            ## ``@details The inclusive bound is 4 bytes``
                                                            ## ``for this selected profile; it is not a``
                                                            ## ``native sizeof or a queue reservation.``
                                                            ## ``@see Ros1Xarm_msgsSetDigitalIORequest;``
                                                            ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsSetDigitalIORequestCodecIdentity* = "UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``xarm_msgs/SetDigitalIORequest.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Xarm_msgsSetDigitalIORequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsSetDigitalIORequestNativeType* = "xarm_msgs/SetDigitalIORequest" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``xarm_msgs/SetDigitalIORequest.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Xarm_msgsSetDigitalIORequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsSetDigitalIORequestNativeIdentity* = "" ## ``@brief Selected original native identity``
                                                           ## ``for xarm_msgs/SetDigitalIORequest.``
                                                           ## ``@details Absent: this source profile``
                                                           ## ``establishes no native identity. @see``
                                                           ## ``Ros1Xarm_msgsSetDigitalIORequest;``
                                                           ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Xarm_msgsSetDigitalIORequest*(): Ros1Xarm_msgsSetDigitalIORequest =
 ## ``@brief Construct the declared defaults of xarm_msgs/SetDigitalIORequest.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/nim/API-CONTRACT.md``
  result.`io_num` = 0
  result.`value` = 0
proc writeFields*(value: Ros1Xarm_msgsSetDigitalIORequest; w: var Writer) =
 ## ``@brief Append every canonical field of xarm_msgs/SetDigitalIORequest.``
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
 ## ``@see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`io_num`)
  putInteger(w,value.`value`)
proc readRos1Xarm_msgsSetDigitalIORequest*(r: var Reader): Ros1Xarm_msgsSetDigitalIORequest =
 ## ``@brief Read the ordered canonical fields of xarm_msgs/SetDigitalIORequest.``
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
 ## ``@see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Xarm_msgsSetDigitalIORequest()
  result.`io_num` = getInteger(r,int16)
  result.`value` = getInteger(r,int16)
proc encode*(value: Ros1Xarm_msgsSetDigitalIORequest): seq[byte] =
 ## ``@brief Encode one complete xarm_msgs/SetDigitalIORequest value.``
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
 ## ``@see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
proc decodeRos1Xarm_msgsSetDigitalIORequest*(b: seq[byte]): Ros1Xarm_msgsSetDigitalIORequest =
 ## ``@brief Decode exactly one complete xarm_msgs/SetDigitalIORequest value.``
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
 ## ``@see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,4)
  result = readRos1Xarm_msgsSetDigitalIORequest(r)
  finish(r)
type Ros1Xarm_msgsSetDigitalIOResponse* = object
 ## ``@brief Complete ROS 1 xarm_msgs/SetDigitalIOResponse value.``
 ## ``@details All 2 declared fields are retained in source order. The canonical representation``
 ## ``occupies 6..262 bytes and is identified by``
 ## ``UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `ret`*: int16 ## ``@brief xarm_msgs/SetDigitalIOResponse.ret: int16. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/nim/API-CONTRACT.md``
  `message`*: string ## ``@brief xarm_msgs/SetDigitalIOResponse.message: string; each string is 0..256``
                     ## ``bytes; strict UTF-8 with no embedded NUL. @details The generated initializer``
                     ## ``supplies the declared zero/empty/nested default. Encoding preserves the``
                     ## ``original field position and signedness; invalid bounds fail instead of``
                     ## ``truncating the value. @units Use the units and frame/clock domain of the``
                     ## ``pinned native definition. The codec performs no scaling, frame conversion or``
                     ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                     ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                     ## ``enclosing decode function. @see Ros1Xarm_msgsSetDigitalIOResponse;``
                     ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsSetDigitalIOResponseMaximumWireBytes* = 262 ## ``@brief Maximum canonical extent of``
                                                               ## ``xarm_msgs/SetDigitalIOResponse in``
                                                               ## ``bytes. @details The inclusive bound``
                                                               ## ``is 262 bytes for this selected``
                                                               ## ``profile; it is not a native sizeof``
                                                               ## ``or a queue reservation. @see``
                                                               ## ``Ros1Xarm_msgsSetDigitalIOResponse;``
                                                               ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsSetDigitalIOResponseCodecIdentity* = "UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``xarm_msgs/SetDigitalIOResponse.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Xarm_msgsSetDigitalIOResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsSetDigitalIOResponseNativeType* = "xarm_msgs/SetDigitalIOResponse" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``xarm_msgs/SetDigitalIOResponse.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Xarm_msgsSetDigitalIOResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsSetDigitalIOResponseNativeIdentity* = "" ## ``@brief Selected original native``
                                                            ## ``identity for``
                                                            ## ``xarm_msgs/SetDigitalIOResponse.``
                                                            ## ``@details Absent: this source profile``
                                                            ## ``establishes no native identity. @see``
                                                            ## ``Ros1Xarm_msgsSetDigitalIOResponse;``
                                                            ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Xarm_msgsSetDigitalIOResponse*(): Ros1Xarm_msgsSetDigitalIOResponse =
 ## ``@brief Construct the declared defaults of xarm_msgs/SetDigitalIOResponse.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`ret` = 0
  result.`message` = ""
proc writeFields*(value: Ros1Xarm_msgsSetDigitalIOResponse; w: var Writer) =
 ## ``@brief Append every canonical field of xarm_msgs/SetDigitalIOResponse.``
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
 ## ``@see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`ret`)
  putString(w,value.`message`,256)
proc readRos1Xarm_msgsSetDigitalIOResponse*(r: var Reader): Ros1Xarm_msgsSetDigitalIOResponse =
 ## ``@brief Read the ordered canonical fields of xarm_msgs/SetDigitalIOResponse.``
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
 ## ``@see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Xarm_msgsSetDigitalIOResponse()
  result.`ret` = getInteger(r,int16)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Xarm_msgsSetDigitalIOResponse): seq[byte] =
 ## ``@brief Encode one complete xarm_msgs/SetDigitalIOResponse value.``
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
 ## ``@see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(262)
  writeFields(value,w)
  w.bytes
proc decodeRos1Xarm_msgsSetDigitalIOResponse*(b: seq[byte]): Ros1Xarm_msgsSetDigitalIOResponse =
 ## ``@brief Decode exactly one complete xarm_msgs/SetDigitalIOResponse value.``
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
 ## ``@see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,262)
  result = readRos1Xarm_msgsSetDigitalIOResponse(r)
  finish(r)
type Ros1Xarm_msgsSetInt16Request* = object
 ## ``@brief Complete ROS 1 xarm_msgs/SetInt16Request value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 2..2 bytes and is identified by``
 ## ``UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `data`*: int16 ## ``@brief xarm_msgs/SetInt16Request.data: int16. @details The generated initializer``
                 ## ``supplies the declared zero/empty/nested default. Encoding preserves the original``
                 ## ``field position and signedness; invalid bounds fail instead of truncating the``
                 ## ``value. @units Use the units and frame/clock domain of the pinned native``
                 ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                 ## ``@lifetime Retain referenced string/sequence backing storage for each encoding``
                 ## ``call. Decoded borrowing and allocator ownership follow the enclosing decode``
                 ## ``function. @see Ros1Xarm_msgsSetInt16Request;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsSetInt16RequestMaximumWireBytes* = 2 ## ``@brief Maximum canonical extent of``
                                                        ## ``xarm_msgs/SetInt16Request in bytes.``
                                                        ## ``@details The inclusive bound is 2 bytes for``
                                                        ## ``this selected profile; it is not a native``
                                                        ## ``sizeof or a queue reservation. @see``
                                                        ## ``Ros1Xarm_msgsSetInt16Request;``
                                                        ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsSetInt16RequestCodecIdentity* = "UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7" ## ``@brief Canonical codec identity``
    ## ``of xarm_msgs/SetInt16Request.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Xarm_msgsSetInt16Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsSetInt16RequestNativeType* = "xarm_msgs/SetInt16Request" ## ``@brief Original ROS type name``
    ## ``for xarm_msgs/SetInt16Request.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Xarm_msgsSetInt16Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsSetInt16RequestNativeIdentity* = "" ## ``@brief Selected original native identity for``
                                                       ## ``xarm_msgs/SetInt16Request. @details Absent:``
                                                       ## ``this source profile establishes no native``
                                                       ## ``identity. @see Ros1Xarm_msgsSetInt16Request;``
                                                       ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Xarm_msgsSetInt16Request*(): Ros1Xarm_msgsSetInt16Request =
 ## ``@brief Construct the declared defaults of xarm_msgs/SetInt16Request.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Xarm_msgsSetInt16Request; share/platform/ros/nim/API-CONTRACT.md``
  result.`data` = 0
proc writeFields*(value: Ros1Xarm_msgsSetInt16Request; w: var Writer) =
 ## ``@brief Append every canonical field of xarm_msgs/SetInt16Request.``
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
 ## ``@see Ros1Xarm_msgsSetInt16Request; share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`data`)
proc readRos1Xarm_msgsSetInt16Request*(r: var Reader): Ros1Xarm_msgsSetInt16Request =
 ## ``@brief Read the ordered canonical fields of xarm_msgs/SetInt16Request.``
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
 ## ``@see Ros1Xarm_msgsSetInt16Request; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Xarm_msgsSetInt16Request()
  result.`data` = getInteger(r,int16)
proc encode*(value: Ros1Xarm_msgsSetInt16Request): seq[byte] =
 ## ``@brief Encode one complete xarm_msgs/SetInt16Request value.``
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
 ## ``@see Ros1Xarm_msgsSetInt16Request; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(2)
  writeFields(value,w)
  w.bytes
proc decodeRos1Xarm_msgsSetInt16Request*(b: seq[byte]): Ros1Xarm_msgsSetInt16Request =
 ## ``@brief Decode exactly one complete xarm_msgs/SetInt16Request value.``
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
 ## ``@see Ros1Xarm_msgsSetInt16Request; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,2)
  result = readRos1Xarm_msgsSetInt16Request(r)
  finish(r)
type Ros1Xarm_msgsSetInt16Response* = object
 ## ``@brief Complete ROS 1 xarm_msgs/SetInt16Response value.``
 ## ``@details All 2 declared fields are retained in source order. The canonical representation``
 ## ``occupies 6..262 bytes and is identified by``
 ## ``UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `ret`*: int16 ## ``@brief xarm_msgs/SetInt16Response.ret: int16. @details The generated initializer``
                ## ``supplies the declared zero/empty/nested default. Encoding preserves the original``
                ## ``field position and signedness; invalid bounds fail instead of truncating the value.``
                ## ``@units Use the units and frame/clock domain of the pinned native definition. The``
                ## ``codec performs no scaling, frame conversion or normalization. @lifetime Retain``
                ## ``referenced string/sequence backing storage for each encoding call. Decoded``
                ## ``borrowing and allocator ownership follow the enclosing decode function. @see``
                ## ``Ros1Xarm_msgsSetInt16Response; share/platform/ros/nim/API-CONTRACT.md``
  `message`*: string ## ``@brief xarm_msgs/SetInt16Response.message: string; each string is 0..256``
                     ## ``bytes; strict UTF-8 with no embedded NUL. @details The generated initializer``
                     ## ``supplies the declared zero/empty/nested default. Encoding preserves the``
                     ## ``original field position and signedness; invalid bounds fail instead of``
                     ## ``truncating the value. @units Use the units and frame/clock domain of the``
                     ## ``pinned native definition. The codec performs no scaling, frame conversion or``
                     ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                     ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                     ## ``enclosing decode function. @see Ros1Xarm_msgsSetInt16Response;``
                     ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsSetInt16ResponseMaximumWireBytes* = 262 ## ``@brief Maximum canonical extent of``
                                                           ## ``xarm_msgs/SetInt16Response in bytes.``
                                                           ## ``@details The inclusive bound is 262``
                                                           ## ``bytes for this selected profile; it is``
                                                           ## ``not a native sizeof or a queue``
                                                           ## ``reservation. @see``
                                                           ## ``Ros1Xarm_msgsSetInt16Response;``
                                                           ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsSetInt16ResponseCodecIdentity* = "UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656" ## ``@brief Canonical codec identity``
    ## ``of xarm_msgs/SetInt16Response.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Xarm_msgsSetInt16Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsSetInt16ResponseNativeType* = "xarm_msgs/SetInt16Response" ## ``@brief Original ROS type name``
    ## ``for xarm_msgs/SetInt16Response.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Xarm_msgsSetInt16Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsSetInt16ResponseNativeIdentity* = "" ## ``@brief Selected original native identity``
                                                        ## ``for xarm_msgs/SetInt16Response. @details``
                                                        ## ``Absent: this source profile establishes no``
                                                        ## ``native identity. @see``
                                                        ## ``Ros1Xarm_msgsSetInt16Response;``
                                                        ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Xarm_msgsSetInt16Response*(): Ros1Xarm_msgsSetInt16Response =
 ## ``@brief Construct the declared defaults of xarm_msgs/SetInt16Response.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Xarm_msgsSetInt16Response; share/platform/ros/nim/API-CONTRACT.md``
  result.`ret` = 0
  result.`message` = ""
proc writeFields*(value: Ros1Xarm_msgsSetInt16Response; w: var Writer) =
 ## ``@brief Append every canonical field of xarm_msgs/SetInt16Response.``
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
 ## ``@see Ros1Xarm_msgsSetInt16Response; share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`ret`)
  putString(w,value.`message`,256)
proc readRos1Xarm_msgsSetInt16Response*(r: var Reader): Ros1Xarm_msgsSetInt16Response =
 ## ``@brief Read the ordered canonical fields of xarm_msgs/SetInt16Response.``
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
 ## ``@see Ros1Xarm_msgsSetInt16Response; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Xarm_msgsSetInt16Response()
  result.`ret` = getInteger(r,int16)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Xarm_msgsSetInt16Response): seq[byte] =
 ## ``@brief Encode one complete xarm_msgs/SetInt16Response value.``
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
 ## ``@see Ros1Xarm_msgsSetInt16Response; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(262)
  writeFields(value,w)
  w.bytes
proc decodeRos1Xarm_msgsSetInt16Response*(b: seq[byte]): Ros1Xarm_msgsSetInt16Response =
 ## ``@brief Decode exactly one complete xarm_msgs/SetInt16Response value.``
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
 ## ``@see Ros1Xarm_msgsSetInt16Response; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,262)
  result = readRos1Xarm_msgsSetInt16Response(r)
  finish(r)
type Ros1Xarm_msgsTCPOffsetRequest* = object
 ## ``@brief Complete ROS 1 xarm_msgs/TCPOffsetRequest value.``
 ## ``@details All 6 declared fields are retained in source order. The canonical representation``
 ## ``occupies 24..24 bytes and is identified by``
 ## ``UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `x`*: float32 ## ``@brief xarm_msgs/TCPOffsetRequest.x: float32. @details The generated initializer``
                ## ``supplies the declared zero/empty/nested default. Encoding preserves the original``
                ## ``field position and signedness; invalid bounds fail instead of truncating the value.``
                ## ``@units Use the units and frame/clock domain of the pinned native definition. The``
                ## ``codec performs no scaling, frame conversion or normalization. @lifetime Retain``
                ## ``referenced string/sequence backing storage for each encoding call. Decoded``
                ## ``borrowing and allocator ownership follow the enclosing decode function. @see``
                ## ``Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/nim/API-CONTRACT.md``
  `y`*: float32 ## ``@brief xarm_msgs/TCPOffsetRequest.y: float32. @details The generated initializer``
                ## ``supplies the declared zero/empty/nested default. Encoding preserves the original``
                ## ``field position and signedness; invalid bounds fail instead of truncating the value.``
                ## ``@units Use the units and frame/clock domain of the pinned native definition. The``
                ## ``codec performs no scaling, frame conversion or normalization. @lifetime Retain``
                ## ``referenced string/sequence backing storage for each encoding call. Decoded``
                ## ``borrowing and allocator ownership follow the enclosing decode function. @see``
                ## ``Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/nim/API-CONTRACT.md``
  `z`*: float32 ## ``@brief xarm_msgs/TCPOffsetRequest.z: float32. @details The generated initializer``
                ## ``supplies the declared zero/empty/nested default. Encoding preserves the original``
                ## ``field position and signedness; invalid bounds fail instead of truncating the value.``
                ## ``@units Use the units and frame/clock domain of the pinned native definition. The``
                ## ``codec performs no scaling, frame conversion or normalization. @lifetime Retain``
                ## ``referenced string/sequence backing storage for each encoding call. Decoded``
                ## ``borrowing and allocator ownership follow the enclosing decode function. @see``
                ## ``Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/nim/API-CONTRACT.md``
  `roll`*: float32 ## ``@brief xarm_msgs/TCPOffsetRequest.roll: float32. @details The generated``
                   ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                   ## ``the original field position and signedness; invalid bounds fail instead of``
                   ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                   ## ``native definition. The codec performs no scaling, frame conversion or``
                   ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                   ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                   ## ``enclosing decode function. @see Ros1Xarm_msgsTCPOffsetRequest;``
                   ## ``share/platform/ros/nim/API-CONTRACT.md``
  `pitch`*: float32 ## ``@brief xarm_msgs/TCPOffsetRequest.pitch: float32. @details The generated``
                    ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                    ## ``the original field position and signedness; invalid bounds fail instead of``
                    ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                    ## ``native definition. The codec performs no scaling, frame conversion or``
                    ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                    ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                    ## ``enclosing decode function. @see Ros1Xarm_msgsTCPOffsetRequest;``
                    ## ``share/platform/ros/nim/API-CONTRACT.md``
  `yaw`*: float32 ## ``@brief xarm_msgs/TCPOffsetRequest.yaw: float32. @details The generated``
                  ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                  ## ``the original field position and signedness; invalid bounds fail instead of``
                  ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                  ## ``native definition. The codec performs no scaling, frame conversion or``
                  ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                  ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                  ## ``enclosing decode function. @see Ros1Xarm_msgsTCPOffsetRequest;``
                  ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsTCPOffsetRequestMaximumWireBytes* = 24 ## ``@brief Maximum canonical extent of``
                                                          ## ``xarm_msgs/TCPOffsetRequest in bytes.``
                                                          ## ``@details The inclusive bound is 24 bytes``
                                                          ## ``for this selected profile; it is not a``
                                                          ## ``native sizeof or a queue reservation.``
                                                          ## ``@see Ros1Xarm_msgsTCPOffsetRequest;``
                                                          ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsTCPOffsetRequestCodecIdentity* = "UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd" ## ``@brief Canonical codec identity``
    ## ``of xarm_msgs/TCPOffsetRequest.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Xarm_msgsTCPOffsetRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsTCPOffsetRequestNativeType* = "xarm_msgs/TCPOffsetRequest" ## ``@brief Original ROS type name``
    ## ``for xarm_msgs/TCPOffsetRequest.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Xarm_msgsTCPOffsetRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsTCPOffsetRequestNativeIdentity* = "" ## ``@brief Selected original native identity``
                                                        ## ``for xarm_msgs/TCPOffsetRequest. @details``
                                                        ## ``Absent: this source profile establishes no``
                                                        ## ``native identity. @see``
                                                        ## ``Ros1Xarm_msgsTCPOffsetRequest;``
                                                        ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Xarm_msgsTCPOffsetRequest*(): Ros1Xarm_msgsTCPOffsetRequest =
 ## ``@brief Construct the declared defaults of xarm_msgs/TCPOffsetRequest.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/nim/API-CONTRACT.md``
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
  result.`roll` = 0
  result.`pitch` = 0
  result.`yaw` = 0
proc writeFields*(value: Ros1Xarm_msgsTCPOffsetRequest; w: var Writer) =
 ## ``@brief Append every canonical field of xarm_msgs/TCPOffsetRequest.``
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
 ## ``@see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`x`)
  putFloat32(w,value.`y`)
  putFloat32(w,value.`z`)
  putFloat32(w,value.`roll`)
  putFloat32(w,value.`pitch`)
  putFloat32(w,value.`yaw`)
proc readRos1Xarm_msgsTCPOffsetRequest*(r: var Reader): Ros1Xarm_msgsTCPOffsetRequest =
 ## ``@brief Read the ordered canonical fields of xarm_msgs/TCPOffsetRequest.``
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
 ## ``@see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Xarm_msgsTCPOffsetRequest()
  result.`x` = getFloat32(r)
  result.`y` = getFloat32(r)
  result.`z` = getFloat32(r)
  result.`roll` = getFloat32(r)
  result.`pitch` = getFloat32(r)
  result.`yaw` = getFloat32(r)
proc encode*(value: Ros1Xarm_msgsTCPOffsetRequest): seq[byte] =
 ## ``@brief Encode one complete xarm_msgs/TCPOffsetRequest value.``
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
 ## ``@see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos1Xarm_msgsTCPOffsetRequest*(b: seq[byte]): Ros1Xarm_msgsTCPOffsetRequest =
 ## ``@brief Decode exactly one complete xarm_msgs/TCPOffsetRequest value.``
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
 ## ``@see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,24)
  result = readRos1Xarm_msgsTCPOffsetRequest(r)
  finish(r)
type Ros1Xarm_msgsTCPOffsetResponse* = object
 ## ``@brief Complete ROS 1 xarm_msgs/TCPOffsetResponse value.``
 ## ``@details All 2 declared fields are retained in source order. The canonical representation``
 ## ``occupies 6..262 bytes and is identified by``
 ## ``UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `ret`*: int16 ## ``@brief xarm_msgs/TCPOffsetResponse.ret: int16. @details The generated initializer``
                ## ``supplies the declared zero/empty/nested default. Encoding preserves the original``
                ## ``field position and signedness; invalid bounds fail instead of truncating the value.``
                ## ``@units Use the units and frame/clock domain of the pinned native definition. The``
                ## ``codec performs no scaling, frame conversion or normalization. @lifetime Retain``
                ## ``referenced string/sequence backing storage for each encoding call. Decoded``
                ## ``borrowing and allocator ownership follow the enclosing decode function. @see``
                ## ``Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/nim/API-CONTRACT.md``
  `message`*: string ## ``@brief xarm_msgs/TCPOffsetResponse.message: string; each string is 0..256``
                     ## ``bytes; strict UTF-8 with no embedded NUL. @details The generated initializer``
                     ## ``supplies the declared zero/empty/nested default. Encoding preserves the``
                     ## ``original field position and signedness; invalid bounds fail instead of``
                     ## ``truncating the value. @units Use the units and frame/clock domain of the``
                     ## ``pinned native definition. The codec performs no scaling, frame conversion or``
                     ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                     ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                     ## ``enclosing decode function. @see Ros1Xarm_msgsTCPOffsetResponse;``
                     ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsTCPOffsetResponseMaximumWireBytes* = 262 ## ``@brief Maximum canonical extent of``
                                                            ## ``xarm_msgs/TCPOffsetResponse in bytes.``
                                                            ## ``@details The inclusive bound is 262``
                                                            ## ``bytes for this selected profile; it is``
                                                            ## ``not a native sizeof or a queue``
                                                            ## ``reservation. @see``
                                                            ## ``Ros1Xarm_msgsTCPOffsetResponse;``
                                                            ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsTCPOffsetResponseCodecIdentity* = "UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d" ## ``@brief Canonical codec identity``
    ## ``of xarm_msgs/TCPOffsetResponse.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Xarm_msgsTCPOffsetResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsTCPOffsetResponseNativeType* = "xarm_msgs/TCPOffsetResponse" ## ``@brief Original ROS type name``
    ## ``for xarm_msgs/TCPOffsetResponse.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Xarm_msgsTCPOffsetResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_msgsTCPOffsetResponseNativeIdentity* = "" ## ``@brief Selected original native identity``
                                                         ## ``for xarm_msgs/TCPOffsetResponse. @details``
                                                         ## ``Absent: this source profile establishes no``
                                                         ## ``native identity. @see``
                                                         ## ``Ros1Xarm_msgsTCPOffsetResponse;``
                                                         ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Xarm_msgsTCPOffsetResponse*(): Ros1Xarm_msgsTCPOffsetResponse =
 ## ``@brief Construct the declared defaults of xarm_msgs/TCPOffsetResponse.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`ret` = 0
  result.`message` = ""
proc writeFields*(value: Ros1Xarm_msgsTCPOffsetResponse; w: var Writer) =
 ## ``@brief Append every canonical field of xarm_msgs/TCPOffsetResponse.``
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
 ## ``@see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`ret`)
  putString(w,value.`message`,256)
proc readRos1Xarm_msgsTCPOffsetResponse*(r: var Reader): Ros1Xarm_msgsTCPOffsetResponse =
 ## ``@brief Read the ordered canonical fields of xarm_msgs/TCPOffsetResponse.``
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
 ## ``@see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Xarm_msgsTCPOffsetResponse()
  result.`ret` = getInteger(r,int16)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Xarm_msgsTCPOffsetResponse): seq[byte] =
 ## ``@brief Encode one complete xarm_msgs/TCPOffsetResponse value.``
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
 ## ``@see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(262)
  writeFields(value,w)
  w.bytes
proc decodeRos1Xarm_msgsTCPOffsetResponse*(b: seq[byte]): Ros1Xarm_msgsTCPOffsetResponse =
 ## ``@brief Decode exactly one complete xarm_msgs/TCPOffsetResponse value.``
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
 ## ``@see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,262)
  result = readRos1Xarm_msgsTCPOffsetResponse(r)
  finish(r)
type Ros1Xarm_plannerExec_planRequest* = object
 ## ``@brief Complete ROS 1 xarm_planner/exec_planRequest value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `exec`*: bool ## ``@brief xarm_planner/exec_planRequest.exec: bool. @details The generated initializer``
                ## ``supplies the declared zero/empty/nested default. Encoding preserves the original``
                ## ``field position and signedness; invalid bounds fail instead of truncating the value.``
                ## ``@units Use the units and frame/clock domain of the pinned native definition. The``
                ## ``codec performs no scaling, frame conversion or normalization. @lifetime Retain``
                ## ``referenced string/sequence backing storage for each encoding call. Decoded``
                ## ``borrowing and allocator ownership follow the enclosing decode function. @see``
                ## ``Ros1Xarm_plannerExec_planRequest; share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_plannerExec_planRequestMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent of``
                                                            ## ``xarm_planner/exec_planRequest in bytes.``
                                                            ## ``@details The inclusive bound is 1 bytes``
                                                            ## ``for this selected profile; it is not a``
                                                            ## ``native sizeof or a queue reservation.``
                                                            ## ``@see Ros1Xarm_plannerExec_planRequest;``
                                                            ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_plannerExec_planRequestCodecIdentity* = "UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``xarm_planner/exec_planRequest.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Xarm_plannerExec_planRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_plannerExec_planRequestNativeType* = "xarm_planner/exec_planRequest" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``xarm_planner/exec_planRequest.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Xarm_plannerExec_planRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_plannerExec_planRequestNativeIdentity* = "" ## ``@brief Selected original native identity``
                                                           ## ``for xarm_planner/exec_planRequest.``
                                                           ## ``@details Absent: this source profile``
                                                           ## ``establishes no native identity. @see``
                                                           ## ``Ros1Xarm_plannerExec_planRequest;``
                                                           ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Xarm_plannerExec_planRequest*(): Ros1Xarm_plannerExec_planRequest =
 ## ``@brief Construct the declared defaults of xarm_planner/exec_planRequest.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Xarm_plannerExec_planRequest; share/platform/ros/nim/API-CONTRACT.md``
  result.`exec` = false
proc writeFields*(value: Ros1Xarm_plannerExec_planRequest; w: var Writer) =
 ## ``@brief Append every canonical field of xarm_planner/exec_planRequest.``
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
 ## ``@see Ros1Xarm_plannerExec_planRequest; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`exec`)
proc readRos1Xarm_plannerExec_planRequest*(r: var Reader): Ros1Xarm_plannerExec_planRequest =
 ## ``@brief Read the ordered canonical fields of xarm_planner/exec_planRequest.``
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
 ## ``@see Ros1Xarm_plannerExec_planRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Xarm_plannerExec_planRequest()
  result.`exec` = getBool(r)
proc encode*(value: Ros1Xarm_plannerExec_planRequest): seq[byte] =
 ## ``@brief Encode one complete xarm_planner/exec_planRequest value.``
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
 ## ``@see Ros1Xarm_plannerExec_planRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Xarm_plannerExec_planRequest*(b: seq[byte]): Ros1Xarm_plannerExec_planRequest =
 ## ``@brief Decode exactly one complete xarm_planner/exec_planRequest value.``
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
 ## ``@see Ros1Xarm_plannerExec_planRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos1Xarm_plannerExec_planRequest(r)
  finish(r)
type Ros1Xarm_plannerExec_planResponse* = object
 ## ``@brief Complete ROS 1 xarm_planner/exec_planResponse value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `success`*: bool ## ``@brief xarm_planner/exec_planResponse.success: bool. @details The generated``
                   ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                   ## ``the original field position and signedness; invalid bounds fail instead of``
                   ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                   ## ``native definition. The codec performs no scaling, frame conversion or``
                   ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                   ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                   ## ``enclosing decode function. @see Ros1Xarm_plannerExec_planResponse;``
                   ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_plannerExec_planResponseMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent of``
                                                             ## ``xarm_planner/exec_planResponse in``
                                                             ## ``bytes. @details The inclusive bound is``
                                                             ## ``1 bytes for this selected profile; it``
                                                             ## ``is not a native sizeof or a queue``
                                                             ## ``reservation. @see``
                                                             ## ``Ros1Xarm_plannerExec_planResponse;``
                                                             ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_plannerExec_planResponseCodecIdentity* = "UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``xarm_planner/exec_planResponse.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Xarm_plannerExec_planResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_plannerExec_planResponseNativeType* = "xarm_planner/exec_planResponse" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``xarm_planner/exec_planResponse.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Xarm_plannerExec_planResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_plannerExec_planResponseNativeIdentity* = "" ## ``@brief Selected original native``
                                                            ## ``identity for``
                                                            ## ``xarm_planner/exec_planResponse.``
                                                            ## ``@details Absent: this source profile``
                                                            ## ``establishes no native identity. @see``
                                                            ## ``Ros1Xarm_plannerExec_planResponse;``
                                                            ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Xarm_plannerExec_planResponse*(): Ros1Xarm_plannerExec_planResponse =
 ## ``@brief Construct the declared defaults of xarm_planner/exec_planResponse.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Xarm_plannerExec_planResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`success` = false
proc writeFields*(value: Ros1Xarm_plannerExec_planResponse; w: var Writer) =
 ## ``@brief Append every canonical field of xarm_planner/exec_planResponse.``
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
 ## ``@see Ros1Xarm_plannerExec_planResponse; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`success`)
proc readRos1Xarm_plannerExec_planResponse*(r: var Reader): Ros1Xarm_plannerExec_planResponse =
 ## ``@brief Read the ordered canonical fields of xarm_planner/exec_planResponse.``
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
 ## ``@see Ros1Xarm_plannerExec_planResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Xarm_plannerExec_planResponse()
  result.`success` = getBool(r)
proc encode*(value: Ros1Xarm_plannerExec_planResponse): seq[byte] =
 ## ``@brief Encode one complete xarm_planner/exec_planResponse value.``
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
 ## ``@see Ros1Xarm_plannerExec_planResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Xarm_plannerExec_planResponse*(b: seq[byte]): Ros1Xarm_plannerExec_planResponse =
 ## ``@brief Decode exactly one complete xarm_planner/exec_planResponse value.``
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
 ## ``@see Ros1Xarm_plannerExec_planResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos1Xarm_plannerExec_planResponse(r)
  finish(r)
type Ros1Xarm_plannerJoint_planRequest* = object
 ## ``@brief Complete ROS 1 xarm_planner/joint_planRequest value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 4..260 bytes and is identified by``
 ## ``UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `target`*: seq[float64] ## ``@brief xarm_planner/joint_planRequest.target: float64; 0..32 elements.``
                          ## ``@details The generated initializer supplies the declared``
                          ## ``zero/empty/nested default. Encoding preserves the original field position``
                          ## ``and signedness; invalid bounds fail instead of truncating the value.``
                          ## ``@units Use the units and frame/clock domain of the pinned native``
                          ## ``definition. The codec performs no scaling, frame conversion or``
                          ## ``normalization. @lifetime Retain referenced string/sequence backing``
                          ## ``storage for each encoding call. Decoded borrowing and allocator ownership``
                          ## ``follow the enclosing decode function. @see``
                          ## ``Ros1Xarm_plannerJoint_planRequest; share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_plannerJoint_planRequestMaximumWireBytes* = 260 ## ``@brief Maximum canonical extent of``
                                                               ## ``xarm_planner/joint_planRequest in``
                                                               ## ``bytes. @details The inclusive bound``
                                                               ## ``is 260 bytes for this selected``
                                                               ## ``profile; it is not a native sizeof``
                                                               ## ``or a queue reservation. @see``
                                                               ## ``Ros1Xarm_plannerJoint_planRequest;``
                                                               ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_plannerJoint_planRequestCodecIdentity* = "UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``xarm_planner/joint_planRequest.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Xarm_plannerJoint_planRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_plannerJoint_planRequestNativeType* = "xarm_planner/joint_planRequest" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``xarm_planner/joint_planRequest.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Xarm_plannerJoint_planRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_plannerJoint_planRequestNativeIdentity* = "" ## ``@brief Selected original native``
                                                            ## ``identity for``
                                                            ## ``xarm_planner/joint_planRequest.``
                                                            ## ``@details Absent: this source profile``
                                                            ## ``establishes no native identity. @see``
                                                            ## ``Ros1Xarm_plannerJoint_planRequest;``
                                                            ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Xarm_plannerJoint_planRequest*(): Ros1Xarm_plannerJoint_planRequest =
 ## ``@brief Construct the declared defaults of xarm_planner/joint_planRequest.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/nim/API-CONTRACT.md``
  result.`target` = @[]
proc writeFields*(value: Ros1Xarm_plannerJoint_planRequest; w: var Writer) =
 ## ``@brief Append every canonical field of xarm_planner/joint_planRequest.``
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
 ## ``@see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/nim/API-CONTRACT.md``
  if value.`target`.len > 32: fail(22)
  putInteger(w,uint32(value.`target`.len))
  for e in value.`target`:
    putFloat64(w,e)
proc readRos1Xarm_plannerJoint_planRequest*(r: var Reader): Ros1Xarm_plannerJoint_planRequest =
 ## ``@brief Read the ordered canonical fields of xarm_planner/joint_planRequest.``
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
 ## ``@see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Xarm_plannerJoint_planRequest()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 32: fail(22)
  let count0 = int(rawcount0)
  result.`target` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`target`[i] = getFloat64(r)
proc encode*(value: Ros1Xarm_plannerJoint_planRequest): seq[byte] =
 ## ``@brief Encode one complete xarm_planner/joint_planRequest value.``
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
 ## ``@see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
proc decodeRos1Xarm_plannerJoint_planRequest*(b: seq[byte]): Ros1Xarm_plannerJoint_planRequest =
 ## ``@brief Decode exactly one complete xarm_planner/joint_planRequest value.``
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
 ## ``@see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,260)
  result = readRos1Xarm_plannerJoint_planRequest(r)
  finish(r)
type Ros1Xarm_plannerJoint_planResponse* = object
 ## ``@brief Complete ROS 1 xarm_planner/joint_planResponse value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `success`*: bool ## ``@brief xarm_planner/joint_planResponse.success: bool. @details The generated``
                   ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                   ## ``the original field position and signedness; invalid bounds fail instead of``
                   ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                   ## ``native definition. The codec performs no scaling, frame conversion or``
                   ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                   ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                   ## ``enclosing decode function. @see Ros1Xarm_plannerJoint_planResponse;``
                   ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_plannerJoint_planResponseMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent of``
                                                              ## ``xarm_planner/joint_planResponse in``
                                                              ## ``bytes. @details The inclusive bound``
                                                              ## ``is 1 bytes for this selected profile;``
                                                              ## ``it is not a native sizeof or a queue``
                                                              ## ``reservation. @see``
                                                              ## ``Ros1Xarm_plannerJoint_planResponse;``
                                                              ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_plannerJoint_planResponseCodecIdentity* = "UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``xarm_planner/joint_planResponse.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Xarm_plannerJoint_planResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_plannerJoint_planResponseNativeType* = "xarm_planner/joint_planResponse" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``xarm_planner/joint_planResponse.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Xarm_plannerJoint_planResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_plannerJoint_planResponseNativeIdentity* = "" ## ``@brief Selected original native``
                                                             ## ``identity for``
                                                             ## ``xarm_planner/joint_planResponse.``
                                                             ## ``@details Absent: this source profile``
                                                             ## ``establishes no native identity. @see``
                                                             ## ``Ros1Xarm_plannerJoint_planResponse;``
                                                             ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Xarm_plannerJoint_planResponse*(): Ros1Xarm_plannerJoint_planResponse =
 ## ``@brief Construct the declared defaults of xarm_planner/joint_planResponse.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`success` = false
proc writeFields*(value: Ros1Xarm_plannerJoint_planResponse; w: var Writer) =
 ## ``@brief Append every canonical field of xarm_planner/joint_planResponse.``
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
 ## ``@see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`success`)
proc readRos1Xarm_plannerJoint_planResponse*(r: var Reader): Ros1Xarm_plannerJoint_planResponse =
 ## ``@brief Read the ordered canonical fields of xarm_planner/joint_planResponse.``
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
 ## ``@see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Xarm_plannerJoint_planResponse()
  result.`success` = getBool(r)
proc encode*(value: Ros1Xarm_plannerJoint_planResponse): seq[byte] =
 ## ``@brief Encode one complete xarm_planner/joint_planResponse value.``
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
 ## ``@see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Xarm_plannerJoint_planResponse*(b: seq[byte]): Ros1Xarm_plannerJoint_planResponse =
 ## ``@brief Decode exactly one complete xarm_planner/joint_planResponse value.``
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
 ## ``@see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos1Xarm_plannerJoint_planResponse(r)
  finish(r)
type Ros1Xarm_plannerPose_planRequest* = object
 ## ``@brief Complete ROS 1 xarm_planner/pose_planRequest value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 56..56 bytes and is identified by``
 ## ``UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `target`*: Ros1Geometry_msgsPose ## ``@brief xarm_planner/pose_planRequest.target: geometry_msgs/Pose.``
                                   ## ``@details The generated initializer supplies the declared``
                                   ## ``zero/empty/nested default. Encoding preserves the original field``
                                   ## ``position and signedness; invalid bounds fail instead of``
                                   ## ``truncating the value. @units Use the units and frame/clock``
                                   ## ``domain of the pinned native definition. The codec performs no``
                                   ## ``scaling, frame conversion or normalization. @lifetime Retain``
                                   ## ``referenced string/sequence backing storage for each encoding``
                                   ## ``call. Decoded borrowing and allocator ownership follow the``
                                   ## ``enclosing decode function. @see``
                                   ## ``Ros1Xarm_plannerPose_planRequest;``
                                   ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_plannerPose_planRequestMaximumWireBytes* = 56 ## ``@brief Maximum canonical extent of``
                                                             ## ``xarm_planner/pose_planRequest in``
                                                             ## ``bytes. @details The inclusive bound is``
                                                             ## ``56 bytes for this selected profile; it``
                                                             ## ``is not a native sizeof or a queue``
                                                             ## ``reservation. @see``
                                                             ## ``Ros1Xarm_plannerPose_planRequest;``
                                                             ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_plannerPose_planRequestCodecIdentity* = "UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``xarm_planner/pose_planRequest.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Xarm_plannerPose_planRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_plannerPose_planRequestNativeType* = "xarm_planner/pose_planRequest" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``xarm_planner/pose_planRequest.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Xarm_plannerPose_planRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_plannerPose_planRequestNativeIdentity* = "" ## ``@brief Selected original native identity``
                                                           ## ``for xarm_planner/pose_planRequest.``
                                                           ## ``@details Absent: this source profile``
                                                           ## ``establishes no native identity. @see``
                                                           ## ``Ros1Xarm_plannerPose_planRequest;``
                                                           ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Xarm_plannerPose_planRequest*(): Ros1Xarm_plannerPose_planRequest =
 ## ``@brief Construct the declared defaults of xarm_planner/pose_planRequest.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Xarm_plannerPose_planRequest; share/platform/ros/nim/API-CONTRACT.md``
  result.`target` = initRos1Geometry_msgsPose()
proc writeFields*(value: Ros1Xarm_plannerPose_planRequest; w: var Writer) =
 ## ``@brief Append every canonical field of xarm_planner/pose_planRequest.``
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
 ## ``@see Ros1Xarm_plannerPose_planRequest; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`target`,w)
proc readRos1Xarm_plannerPose_planRequest*(r: var Reader): Ros1Xarm_plannerPose_planRequest =
 ## ``@brief Read the ordered canonical fields of xarm_planner/pose_planRequest.``
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
 ## ``@see Ros1Xarm_plannerPose_planRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Xarm_plannerPose_planRequest()
  result.`target` = readRos1Geometry_msgsPose(r)
proc encode*(value: Ros1Xarm_plannerPose_planRequest): seq[byte] =
 ## ``@brief Encode one complete xarm_planner/pose_planRequest value.``
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
 ## ``@see Ros1Xarm_plannerPose_planRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(56)
  writeFields(value,w)
  w.bytes
proc decodeRos1Xarm_plannerPose_planRequest*(b: seq[byte]): Ros1Xarm_plannerPose_planRequest =
 ## ``@brief Decode exactly one complete xarm_planner/pose_planRequest value.``
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
 ## ``@see Ros1Xarm_plannerPose_planRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,56)
  result = readRos1Xarm_plannerPose_planRequest(r)
  finish(r)
type Ros1Xarm_plannerPose_planResponse* = object
 ## ``@brief Complete ROS 1 xarm_planner/pose_planResponse value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `success`*: bool ## ``@brief xarm_planner/pose_planResponse.success: bool. @details The generated``
                   ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                   ## ``the original field position and signedness; invalid bounds fail instead of``
                   ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                   ## ``native definition. The codec performs no scaling, frame conversion or``
                   ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                   ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                   ## ``enclosing decode function. @see Ros1Xarm_plannerPose_planResponse;``
                   ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_plannerPose_planResponseMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent of``
                                                             ## ``xarm_planner/pose_planResponse in``
                                                             ## ``bytes. @details The inclusive bound is``
                                                             ## ``1 bytes for this selected profile; it``
                                                             ## ``is not a native sizeof or a queue``
                                                             ## ``reservation. @see``
                                                             ## ``Ros1Xarm_plannerPose_planResponse;``
                                                             ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_plannerPose_planResponseCodecIdentity* = "UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``xarm_planner/pose_planResponse.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Xarm_plannerPose_planResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_plannerPose_planResponseNativeType* = "xarm_planner/pose_planResponse" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``xarm_planner/pose_planResponse.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Xarm_plannerPose_planResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_plannerPose_planResponseNativeIdentity* = "" ## ``@brief Selected original native``
                                                            ## ``identity for``
                                                            ## ``xarm_planner/pose_planResponse.``
                                                            ## ``@details Absent: this source profile``
                                                            ## ``establishes no native identity. @see``
                                                            ## ``Ros1Xarm_plannerPose_planResponse;``
                                                            ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Xarm_plannerPose_planResponse*(): Ros1Xarm_plannerPose_planResponse =
 ## ``@brief Construct the declared defaults of xarm_planner/pose_planResponse.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Xarm_plannerPose_planResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`success` = false
proc writeFields*(value: Ros1Xarm_plannerPose_planResponse; w: var Writer) =
 ## ``@brief Append every canonical field of xarm_planner/pose_planResponse.``
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
 ## ``@see Ros1Xarm_plannerPose_planResponse; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`success`)
proc readRos1Xarm_plannerPose_planResponse*(r: var Reader): Ros1Xarm_plannerPose_planResponse =
 ## ``@brief Read the ordered canonical fields of xarm_planner/pose_planResponse.``
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
 ## ``@see Ros1Xarm_plannerPose_planResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Xarm_plannerPose_planResponse()
  result.`success` = getBool(r)
proc encode*(value: Ros1Xarm_plannerPose_planResponse): seq[byte] =
 ## ``@brief Encode one complete xarm_planner/pose_planResponse value.``
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
 ## ``@see Ros1Xarm_plannerPose_planResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Xarm_plannerPose_planResponse*(b: seq[byte]): Ros1Xarm_plannerPose_planResponse =
 ## ``@brief Decode exactly one complete xarm_planner/pose_planResponse value.``
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
 ## ``@see Ros1Xarm_plannerPose_planResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos1Xarm_plannerPose_planResponse(r)
  finish(r)
type Ros1Xarm_plannerSingle_straight_planRequest* = object
 ## ``@brief Complete ROS 1 xarm_planner/single_straight_planRequest value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 56..56 bytes and is identified by``
 ## ``UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `target`*: Ros1Geometry_msgsPose ## ``@brief xarm_planner/single_straight_planRequest.target:``
                                   ## ``geometry_msgs/Pose. @details The generated initializer supplies``
                                   ## ``the declared zero/empty/nested default. Encoding preserves the``
                                   ## ``original field position and signedness; invalid bounds fail``
                                   ## ``instead of truncating the value. @units Use the units and``
                                   ## ``frame/clock domain of the pinned native definition. The codec``
                                   ## ``performs no scaling, frame conversion or normalization.``
                                   ## ``@lifetime Retain referenced string/sequence backing storage for``
                                   ## ``each encoding call. Decoded borrowing and allocator ownership``
                                   ## ``follow the enclosing decode function. @see``
                                   ## ``Ros1Xarm_plannerSingle_straight_planRequest;``
                                   ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_plannerSingle_straight_planRequestMaximumWireBytes* = 56 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``xarm_planner/single_straight_planRequest``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 56 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Xarm_plannerSingle_straight_planRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_plannerSingle_straight_planRequestCodecIdentity* = "UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``xarm_planner/single_straight_planRequest.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Xarm_plannerSingle_straight_planRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_plannerSingle_straight_planRequestNativeType* = "xarm_planner/single_straight_planRequest" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``xarm_planner/single_straight_planRequest.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Xarm_plannerSingle_straight_planRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_plannerSingle_straight_planRequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``xarm_planner/single_straight_planRequest.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Xarm_plannerSingle_straight_planRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Xarm_plannerSingle_straight_planRequest*(): Ros1Xarm_plannerSingle_straight_planRequest =
 ## ``@brief Construct the declared defaults of xarm_planner/single_straight_planRequest.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/nim/API-CONTRACT.md``
  result.`target` = initRos1Geometry_msgsPose()
proc writeFields*(value: Ros1Xarm_plannerSingle_straight_planRequest; w: var Writer) =
 ## ``@brief Append every canonical field of xarm_planner/single_straight_planRequest.``
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
 ## ``@see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`target`,w)
proc readRos1Xarm_plannerSingle_straight_planRequest*(r: var Reader): Ros1Xarm_plannerSingle_straight_planRequest =
 ## ``@brief Read the ordered canonical fields of xarm_planner/single_straight_planRequest.``
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
 ## ``@see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Xarm_plannerSingle_straight_planRequest()
  result.`target` = readRos1Geometry_msgsPose(r)
proc encode*(value: Ros1Xarm_plannerSingle_straight_planRequest): seq[byte] =
 ## ``@brief Encode one complete xarm_planner/single_straight_planRequest value.``
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
 ## ``@see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(56)
  writeFields(value,w)
  w.bytes
proc decodeRos1Xarm_plannerSingle_straight_planRequest*(b: seq[byte]): Ros1Xarm_plannerSingle_straight_planRequest =
 ## ``@brief Decode exactly one complete xarm_planner/single_straight_planRequest value.``
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
 ## ``@see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,56)
  result = readRos1Xarm_plannerSingle_straight_planRequest(r)
  finish(r)
type Ros1Xarm_plannerSingle_straight_planResponse* = object
 ## ``@brief Complete ROS 1 xarm_planner/single_straight_planResponse value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `success`*: bool ## ``@brief xarm_planner/single_straight_planResponse.success: bool. @details The``
                   ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                   ## ``preserves the original field position and signedness; invalid bounds fail``
                   ## ``instead of truncating the value. @units Use the units and frame/clock domain of``
                   ## ``the pinned native definition. The codec performs no scaling, frame conversion or``
                   ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                   ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                   ## ``enclosing decode function. @see Ros1Xarm_plannerSingle_straight_planResponse;``
                   ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_plannerSingle_straight_planResponseMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``xarm_planner/single_straight_planResponse``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Xarm_plannerSingle_straight_planResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_plannerSingle_straight_planResponseCodecIdentity* = "UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``xarm_planner/single_straight_planResponse.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Xarm_plannerSingle_straight_planResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_plannerSingle_straight_planResponseNativeType* = "xarm_planner/single_straight_planResponse" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``xarm_planner/single_straight_planResponse.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Xarm_plannerSingle_straight_planResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Xarm_plannerSingle_straight_planResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``xarm_planner/single_straight_planResponse.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Xarm_plannerSingle_straight_planResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Xarm_plannerSingle_straight_planResponse*(): Ros1Xarm_plannerSingle_straight_planResponse =
 ## ``@brief Construct the declared defaults of xarm_planner/single_straight_planResponse.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`success` = false
proc writeFields*(value: Ros1Xarm_plannerSingle_straight_planResponse; w: var Writer) =
 ## ``@brief Append every canonical field of xarm_planner/single_straight_planResponse.``
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
 ## ``@see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`success`)
proc readRos1Xarm_plannerSingle_straight_planResponse*(r: var Reader): Ros1Xarm_plannerSingle_straight_planResponse =
 ## ``@brief Read the ordered canonical fields of xarm_planner/single_straight_planResponse.``
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
 ## ``@see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Xarm_plannerSingle_straight_planResponse()
  result.`success` = getBool(r)
proc encode*(value: Ros1Xarm_plannerSingle_straight_planResponse): seq[byte] =
 ## ``@brief Encode one complete xarm_planner/single_straight_planResponse value.``
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
 ## ``@see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Xarm_plannerSingle_straight_planResponse*(b: seq[byte]): Ros1Xarm_plannerSingle_straight_planResponse =
 ## ``@brief Decode exactly one complete xarm_planner/single_straight_planResponse value.``
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
 ## ``@see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos1Xarm_plannerSingle_straight_planResponse(r)
  finish(r)
