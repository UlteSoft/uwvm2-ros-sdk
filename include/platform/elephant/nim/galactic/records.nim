## @file records.nim
## @brief Preserve the complete original elephant/galactic canonical value domain.
## @details The selected domain contains 71 complete record/components and 238 original fields. Declared
## scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
## Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
## create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
## does not qualify a frontend, target ABI or native ROS transport.
## @see The platform's localized language guide and complete API-CATALOG.md.
# Generated complete canonical values; no I/O or implicit capabilities.
import roswasm
import roswasm/wire
type Ros2Mecharm_interfacesMsgMecharmAngles* = object
 ## ``@brief Complete ROS 2 mecharm_interfaces/msg/MecharmAngles value.``
 ## ``@details All 6 declared fields are retained in source order. The canonical representation``
 ## ``occupies 24..24 bytes and is identified by``
 ## ``UWVMROS1_37d12e0fc3b7bbb50bdcee0ca624a5c637f9554f3c64d640f538aeda57417331.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `joint_1`*: float32 ## ``@brief mecharm_interfaces/msg/MecharmAngles.joint_1: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mecharm_interfacesMsgMecharmAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_2`*: float32 ## ``@brief mecharm_interfaces/msg/MecharmAngles.joint_2: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mecharm_interfacesMsgMecharmAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_3`*: float32 ## ``@brief mecharm_interfaces/msg/MecharmAngles.joint_3: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mecharm_interfacesMsgMecharmAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_4`*: float32 ## ``@brief mecharm_interfaces/msg/MecharmAngles.joint_4: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mecharm_interfacesMsgMecharmAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_5`*: float32 ## ``@brief mecharm_interfaces/msg/MecharmAngles.joint_5: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mecharm_interfacesMsgMecharmAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_6`*: float32 ## ``@brief mecharm_interfaces/msg/MecharmAngles.joint_6: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mecharm_interfacesMsgMecharmAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesMsgMecharmAnglesMaximumWireBytes* = 24 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mecharm_interfaces/msg/MecharmAngles``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 24 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mecharm_interfacesMsgMecharmAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesMsgMecharmAnglesCodecIdentity* = "UWVMROS1_37d12e0fc3b7bbb50bdcee0ca624a5c637f9554f3c64d640f538aeda57417331" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mecharm_interfaces/msg/MecharmAngles.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_37d12e0fc3b7bbb50bdcee0ca624a5c637f9554f3c64d640f538aeda57417331``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mecharm_interfacesMsgMecharmAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesMsgMecharmAnglesNativeType* = "mecharm_interfaces/msg/MecharmAngles" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mecharm_interfaces/msg/MecharmAngles.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mecharm_interfacesMsgMecharmAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesMsgMecharmAnglesNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mecharm_interfaces/msg/MecharmAngles.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mecharm_interfacesMsgMecharmAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mecharm_interfacesMsgMecharmAngles*(): Ros2Mecharm_interfacesMsgMecharmAngles =
 ## ``@brief Construct the declared defaults of mecharm_interfaces/msg/MecharmAngles.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mecharm_interfacesMsgMecharmAngles; share/platform/ros/nim/API-CONTRACT.md``
  result.`joint_1` = 0
  result.`joint_2` = 0
  result.`joint_3` = 0
  result.`joint_4` = 0
  result.`joint_5` = 0
  result.`joint_6` = 0
proc writeFields*(value: Ros2Mecharm_interfacesMsgMecharmAngles; w: var Writer) =
 ## ``@brief Append every canonical field of mecharm_interfaces/msg/MecharmAngles.``
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
 ## ``@see Ros2Mecharm_interfacesMsgMecharmAngles; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`joint_1`)
  putFloat32(w,value.`joint_2`)
  putFloat32(w,value.`joint_3`)
  putFloat32(w,value.`joint_4`)
  putFloat32(w,value.`joint_5`)
  putFloat32(w,value.`joint_6`)
proc readRos2Mecharm_interfacesMsgMecharmAngles*(r: var Reader): Ros2Mecharm_interfacesMsgMecharmAngles =
 ## ``@brief Read the ordered canonical fields of mecharm_interfaces/msg/MecharmAngles.``
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
 ## ``@see Ros2Mecharm_interfacesMsgMecharmAngles; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mecharm_interfacesMsgMecharmAngles()
  result.`joint_1` = getFloat32(r)
  result.`joint_2` = getFloat32(r)
  result.`joint_3` = getFloat32(r)
  result.`joint_4` = getFloat32(r)
  result.`joint_5` = getFloat32(r)
  result.`joint_6` = getFloat32(r)
proc encode*(value: Ros2Mecharm_interfacesMsgMecharmAngles): seq[byte] =
 ## ``@brief Encode one complete mecharm_interfaces/msg/MecharmAngles value.``
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
 ## ``@see Ros2Mecharm_interfacesMsgMecharmAngles; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mecharm_interfacesMsgMecharmAngles*(b: seq[byte]): Ros2Mecharm_interfacesMsgMecharmAngles =
 ## ``@brief Decode exactly one complete mecharm_interfaces/msg/MecharmAngles value.``
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
 ## ``@see Ros2Mecharm_interfacesMsgMecharmAngles; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,24)
  result = readRos2Mecharm_interfacesMsgMecharmAngles(r)
  finish(r)
type Ros2Mecharm_interfacesMsgMecharmCoords* = object
 ## ``@brief Complete ROS 2 mecharm_interfaces/msg/MecharmCoords value.``
 ## ``@details All 6 declared fields are retained in source order. The canonical representation``
 ## ``occupies 24..24 bytes and is identified by``
 ## ``UWVMROS1_e1bb96b1908c796e2a89eb4dd2402a6cc02bcc5077c52268bb378a52dd3029ed.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `x`*: float32 ## ``@brief mecharm_interfaces/msg/MecharmCoords.x: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/nim/API-CONTRACT.md``
  `y`*: float32 ## ``@brief mecharm_interfaces/msg/MecharmCoords.y: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/nim/API-CONTRACT.md``
  `z`*: float32 ## ``@brief mecharm_interfaces/msg/MecharmCoords.z: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/nim/API-CONTRACT.md``
  `rx`*: float32 ## ``@brief mecharm_interfaces/msg/MecharmCoords.rx: float32. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mecharm_interfacesMsgMecharmCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `ry`*: float32 ## ``@brief mecharm_interfaces/msg/MecharmCoords.ry: float32. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mecharm_interfacesMsgMecharmCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rz`*: float32 ## ``@brief mecharm_interfaces/msg/MecharmCoords.rz: float32. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mecharm_interfacesMsgMecharmCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesMsgMecharmCoordsMaximumWireBytes* = 24 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mecharm_interfaces/msg/MecharmCoords``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 24 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mecharm_interfacesMsgMecharmCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesMsgMecharmCoordsCodecIdentity* = "UWVMROS1_e1bb96b1908c796e2a89eb4dd2402a6cc02bcc5077c52268bb378a52dd3029ed" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mecharm_interfaces/msg/MecharmCoords.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_e1bb96b1908c796e2a89eb4dd2402a6cc02bcc5077c52268bb378a52dd3029ed``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mecharm_interfacesMsgMecharmCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesMsgMecharmCoordsNativeType* = "mecharm_interfaces/msg/MecharmCoords" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mecharm_interfaces/msg/MecharmCoords.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mecharm_interfacesMsgMecharmCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesMsgMecharmCoordsNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mecharm_interfaces/msg/MecharmCoords.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mecharm_interfacesMsgMecharmCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mecharm_interfacesMsgMecharmCoords*(): Ros2Mecharm_interfacesMsgMecharmCoords =
 ## ``@brief Construct the declared defaults of mecharm_interfaces/msg/MecharmCoords.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/nim/API-CONTRACT.md``
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
  result.`rx` = 0
  result.`ry` = 0
  result.`rz` = 0
proc writeFields*(value: Ros2Mecharm_interfacesMsgMecharmCoords; w: var Writer) =
 ## ``@brief Append every canonical field of mecharm_interfaces/msg/MecharmCoords.``
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
 ## ``@see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`x`)
  putFloat32(w,value.`y`)
  putFloat32(w,value.`z`)
  putFloat32(w,value.`rx`)
  putFloat32(w,value.`ry`)
  putFloat32(w,value.`rz`)
proc readRos2Mecharm_interfacesMsgMecharmCoords*(r: var Reader): Ros2Mecharm_interfacesMsgMecharmCoords =
 ## ``@brief Read the ordered canonical fields of mecharm_interfaces/msg/MecharmCoords.``
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
 ## ``@see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mecharm_interfacesMsgMecharmCoords()
  result.`x` = getFloat32(r)
  result.`y` = getFloat32(r)
  result.`z` = getFloat32(r)
  result.`rx` = getFloat32(r)
  result.`ry` = getFloat32(r)
  result.`rz` = getFloat32(r)
proc encode*(value: Ros2Mecharm_interfacesMsgMecharmCoords): seq[byte] =
 ## ``@brief Encode one complete mecharm_interfaces/msg/MecharmCoords value.``
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
 ## ``@see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mecharm_interfacesMsgMecharmCoords*(b: seq[byte]): Ros2Mecharm_interfacesMsgMecharmCoords =
 ## ``@brief Decode exactly one complete mecharm_interfaces/msg/MecharmCoords value.``
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
 ## ``@see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,24)
  result = readRos2Mecharm_interfacesMsgMecharmCoords(r)
  finish(r)
type Ros2Mecharm_interfacesMsgMecharmGripperStatus* = object
 ## ``@brief Complete ROS 2 mecharm_interfaces/msg/MecharmGripperStatus value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_2123b61d7b9ec218ee074473c26e5ec82fde818f40796047fc369cb84516e046.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `status`*: bool ## ``@brief mecharm_interfaces/msg/MecharmGripperStatus.status: bool. @details The``
                  ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                  ## ``preserves the original field position and signedness; invalid bounds fail instead``
                  ## ``of truncating the value. @units Use the units and frame/clock domain of the``
                  ## ``pinned native definition. The codec performs no scaling, frame conversion or``
                  ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                  ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                  ## ``enclosing decode function. @see Ros2Mecharm_interfacesMsgMecharmGripperStatus;``
                  ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesMsgMecharmGripperStatusMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mecharm_interfaces/msg/MecharmGripperStatus``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mecharm_interfacesMsgMecharmGripperStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesMsgMecharmGripperStatusCodecIdentity* = "UWVMROS1_2123b61d7b9ec218ee074473c26e5ec82fde818f40796047fc369cb84516e046" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mecharm_interfaces/msg/MecharmGripperStatus.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_2123b61d7b9ec218ee074473c26e5ec82fde818f40796047fc369cb84516e046``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mecharm_interfacesMsgMecharmGripperStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesMsgMecharmGripperStatusNativeType* = "mecharm_interfaces/msg/MecharmGripperStatus" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mecharm_interfaces/msg/MecharmGripperStatus.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mecharm_interfacesMsgMecharmGripperStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesMsgMecharmGripperStatusNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mecharm_interfaces/msg/MecharmGripperStatus.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mecharm_interfacesMsgMecharmGripperStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mecharm_interfacesMsgMecharmGripperStatus*(): Ros2Mecharm_interfacesMsgMecharmGripperStatus =
 ## ``@brief Construct the declared defaults of mecharm_interfaces/msg/MecharmGripperStatus.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mecharm_interfacesMsgMecharmGripperStatus; share/platform/ros/nim/API-CONTRACT.md``
  result.`status` = false
proc writeFields*(value: Ros2Mecharm_interfacesMsgMecharmGripperStatus; w: var Writer) =
 ## ``@brief Append every canonical field of mecharm_interfaces/msg/MecharmGripperStatus.``
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
 ## ``@see Ros2Mecharm_interfacesMsgMecharmGripperStatus; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`status`)
proc readRos2Mecharm_interfacesMsgMecharmGripperStatus*(r: var Reader): Ros2Mecharm_interfacesMsgMecharmGripperStatus =
 ## ``@brief Read the ordered canonical fields of mecharm_interfaces/msg/MecharmGripperStatus.``
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
 ## ``@see Ros2Mecharm_interfacesMsgMecharmGripperStatus; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mecharm_interfacesMsgMecharmGripperStatus()
  result.`status` = getBool(r)
proc encode*(value: Ros2Mecharm_interfacesMsgMecharmGripperStatus): seq[byte] =
 ## ``@brief Encode one complete mecharm_interfaces/msg/MecharmGripperStatus value.``
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
 ## ``@see Ros2Mecharm_interfacesMsgMecharmGripperStatus; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mecharm_interfacesMsgMecharmGripperStatus*(b: seq[byte]): Ros2Mecharm_interfacesMsgMecharmGripperStatus =
 ## ``@brief Decode exactly one complete mecharm_interfaces/msg/MecharmGripperStatus value.``
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
 ## ``@see Ros2Mecharm_interfacesMsgMecharmGripperStatus; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos2Mecharm_interfacesMsgMecharmGripperStatus(r)
  finish(r)
type Ros2Mecharm_interfacesMsgMecharmPumpStatus* = object
 ## ``@brief Complete ROS 2 mecharm_interfaces/msg/MecharmPumpStatus value.``
 ## ``@details All 3 declared fields are retained in source order. The canonical representation``
 ## ``occupies 3..3 bytes and is identified by``
 ## ``UWVMROS1_4d44c84c1fdd3f4db92d9975545348bfd727320e63c9fbfde5adf0b81ca04add.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `status`*: bool ## ``@brief mecharm_interfaces/msg/MecharmPumpStatus.status: bool. @details The``
                  ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                  ## ``preserves the original field position and signedness; invalid bounds fail instead``
                  ## ``of truncating the value. @units Use the units and frame/clock domain of the``
                  ## ``pinned native definition. The codec performs no scaling, frame conversion or``
                  ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                  ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                  ## ``enclosing decode function. @see Ros2Mecharm_interfacesMsgMecharmPumpStatus;``
                  ## ``share/platform/ros/nim/API-CONTRACT.md``
  `pin1`*: int8 ## ``@brief mecharm_interfaces/msg/MecharmPumpStatus.pin1: int8. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mecharm_interfacesMsgMecharmPumpStatus;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `pin2`*: int8 ## ``@brief mecharm_interfaces/msg/MecharmPumpStatus.pin2: int8. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mecharm_interfacesMsgMecharmPumpStatus;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesMsgMecharmPumpStatusMaximumWireBytes* = 3 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mecharm_interfaces/msg/MecharmPumpStatus``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 3 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mecharm_interfacesMsgMecharmPumpStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesMsgMecharmPumpStatusCodecIdentity* = "UWVMROS1_4d44c84c1fdd3f4db92d9975545348bfd727320e63c9fbfde5adf0b81ca04add" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mecharm_interfaces/msg/MecharmPumpStatus.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_4d44c84c1fdd3f4db92d9975545348bfd727320e63c9fbfde5adf0b81ca04add``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mecharm_interfacesMsgMecharmPumpStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesMsgMecharmPumpStatusNativeType* = "mecharm_interfaces/msg/MecharmPumpStatus" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mecharm_interfaces/msg/MecharmPumpStatus.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mecharm_interfacesMsgMecharmPumpStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesMsgMecharmPumpStatusNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mecharm_interfaces/msg/MecharmPumpStatus.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mecharm_interfacesMsgMecharmPumpStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mecharm_interfacesMsgMecharmPumpStatus*(): Ros2Mecharm_interfacesMsgMecharmPumpStatus =
 ## ``@brief Construct the declared defaults of mecharm_interfaces/msg/MecharmPumpStatus.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mecharm_interfacesMsgMecharmPumpStatus; share/platform/ros/nim/API-CONTRACT.md``
  result.`status` = false
  result.`pin1` = 0
  result.`pin2` = 0
proc writeFields*(value: Ros2Mecharm_interfacesMsgMecharmPumpStatus; w: var Writer) =
 ## ``@brief Append every canonical field of mecharm_interfaces/msg/MecharmPumpStatus.``
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
 ## ``@see Ros2Mecharm_interfacesMsgMecharmPumpStatus; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`status`)
  putInteger(w,value.`pin1`)
  putInteger(w,value.`pin2`)
proc readRos2Mecharm_interfacesMsgMecharmPumpStatus*(r: var Reader): Ros2Mecharm_interfacesMsgMecharmPumpStatus =
 ## ``@brief Read the ordered canonical fields of mecharm_interfaces/msg/MecharmPumpStatus.``
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
 ## ``@see Ros2Mecharm_interfacesMsgMecharmPumpStatus; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mecharm_interfacesMsgMecharmPumpStatus()
  result.`status` = getBool(r)
  result.`pin1` = getInteger(r,int8)
  result.`pin2` = getInteger(r,int8)
proc encode*(value: Ros2Mecharm_interfacesMsgMecharmPumpStatus): seq[byte] =
 ## ``@brief Encode one complete mecharm_interfaces/msg/MecharmPumpStatus value.``
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
 ## ``@see Ros2Mecharm_interfacesMsgMecharmPumpStatus; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(3)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mecharm_interfacesMsgMecharmPumpStatus*(b: seq[byte]): Ros2Mecharm_interfacesMsgMecharmPumpStatus =
 ## ``@brief Decode exactly one complete mecharm_interfaces/msg/MecharmPumpStatus value.``
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
 ## ``@see Ros2Mecharm_interfacesMsgMecharmPumpStatus; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,3)
  result = readRos2Mecharm_interfacesMsgMecharmPumpStatus(r)
  finish(r)
type Ros2Mecharm_interfacesMsgMecharmSetAngles* = object
 ## ``@brief Complete ROS 2 mecharm_interfaces/msg/MecharmSetAngles value.``
 ## ``@details All 7 declared fields are retained in source order. The canonical representation``
 ## ``occupies 25..25 bytes and is identified by``
 ## ``UWVMROS1_54b634e4c5d0bc9fdf04a98d31816e24d3a9c5eb497bb38fb16e2de593cf81f5.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `joint_1`*: float32 ## ``@brief mecharm_interfaces/msg/MecharmSetAngles.joint_1: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mecharm_interfacesMsgMecharmSetAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_2`*: float32 ## ``@brief mecharm_interfaces/msg/MecharmSetAngles.joint_2: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mecharm_interfacesMsgMecharmSetAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_3`*: float32 ## ``@brief mecharm_interfaces/msg/MecharmSetAngles.joint_3: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mecharm_interfacesMsgMecharmSetAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_4`*: float32 ## ``@brief mecharm_interfaces/msg/MecharmSetAngles.joint_4: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mecharm_interfacesMsgMecharmSetAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_5`*: float32 ## ``@brief mecharm_interfaces/msg/MecharmSetAngles.joint_5: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mecharm_interfacesMsgMecharmSetAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_6`*: float32 ## ``@brief mecharm_interfaces/msg/MecharmSetAngles.joint_6: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mecharm_interfacesMsgMecharmSetAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `speed`*: int8 ## ``@brief mecharm_interfaces/msg/MecharmSetAngles.speed: int8. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mecharm_interfacesMsgMecharmSetAngles;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesMsgMecharmSetAnglesMaximumWireBytes* = 25 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mecharm_interfaces/msg/MecharmSetAngles``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 25 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mecharm_interfacesMsgMecharmSetAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesMsgMecharmSetAnglesCodecIdentity* = "UWVMROS1_54b634e4c5d0bc9fdf04a98d31816e24d3a9c5eb497bb38fb16e2de593cf81f5" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mecharm_interfaces/msg/MecharmSetAngles.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_54b634e4c5d0bc9fdf04a98d31816e24d3a9c5eb497bb38fb16e2de593cf81f5``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mecharm_interfacesMsgMecharmSetAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesMsgMecharmSetAnglesNativeType* = "mecharm_interfaces/msg/MecharmSetAngles" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mecharm_interfaces/msg/MecharmSetAngles.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mecharm_interfacesMsgMecharmSetAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesMsgMecharmSetAnglesNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mecharm_interfaces/msg/MecharmSetAngles.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mecharm_interfacesMsgMecharmSetAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mecharm_interfacesMsgMecharmSetAngles*(): Ros2Mecharm_interfacesMsgMecharmSetAngles =
 ## ``@brief Construct the declared defaults of mecharm_interfaces/msg/MecharmSetAngles.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/nim/API-CONTRACT.md``
  result.`joint_1` = 0
  result.`joint_2` = 0
  result.`joint_3` = 0
  result.`joint_4` = 0
  result.`joint_5` = 0
  result.`joint_6` = 0
  result.`speed` = 0
proc writeFields*(value: Ros2Mecharm_interfacesMsgMecharmSetAngles; w: var Writer) =
 ## ``@brief Append every canonical field of mecharm_interfaces/msg/MecharmSetAngles.``
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
 ## ``@see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`joint_1`)
  putFloat32(w,value.`joint_2`)
  putFloat32(w,value.`joint_3`)
  putFloat32(w,value.`joint_4`)
  putFloat32(w,value.`joint_5`)
  putFloat32(w,value.`joint_6`)
  putInteger(w,value.`speed`)
proc readRos2Mecharm_interfacesMsgMecharmSetAngles*(r: var Reader): Ros2Mecharm_interfacesMsgMecharmSetAngles =
 ## ``@brief Read the ordered canonical fields of mecharm_interfaces/msg/MecharmSetAngles.``
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
 ## ``@see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mecharm_interfacesMsgMecharmSetAngles()
  result.`joint_1` = getFloat32(r)
  result.`joint_2` = getFloat32(r)
  result.`joint_3` = getFloat32(r)
  result.`joint_4` = getFloat32(r)
  result.`joint_5` = getFloat32(r)
  result.`joint_6` = getFloat32(r)
  result.`speed` = getInteger(r,int8)
proc encode*(value: Ros2Mecharm_interfacesMsgMecharmSetAngles): seq[byte] =
 ## ``@brief Encode one complete mecharm_interfaces/msg/MecharmSetAngles value.``
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
 ## ``@see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(25)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mecharm_interfacesMsgMecharmSetAngles*(b: seq[byte]): Ros2Mecharm_interfacesMsgMecharmSetAngles =
 ## ``@brief Decode exactly one complete mecharm_interfaces/msg/MecharmSetAngles value.``
 ## ``@details Require the complete 25..25-byte canonical representation. Reject truncation,``
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
 ## ``@see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,25)
  result = readRos2Mecharm_interfacesMsgMecharmSetAngles(r)
  finish(r)
type Ros2Mecharm_interfacesMsgMecharmSetCoords* = object
 ## ``@brief Complete ROS 2 mecharm_interfaces/msg/MecharmSetCoords value.``
 ## ``@details All 8 declared fields are retained in source order. The canonical representation``
 ## ``occupies 26..26 bytes and is identified by``
 ## ``UWVMROS1_44944ee22cd4254167083cfdcd7377ee2f59dbe27414932c980670a471a6e7c2.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `x`*: float32 ## ``@brief mecharm_interfaces/msg/MecharmSetCoords.x: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mecharm_interfacesMsgMecharmSetCoords;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `y`*: float32 ## ``@brief mecharm_interfaces/msg/MecharmSetCoords.y: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mecharm_interfacesMsgMecharmSetCoords;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `z`*: float32 ## ``@brief mecharm_interfaces/msg/MecharmSetCoords.z: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mecharm_interfacesMsgMecharmSetCoords;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rx`*: float32 ## ``@brief mecharm_interfaces/msg/MecharmSetCoords.rx: float32. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mecharm_interfacesMsgMecharmSetCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `ry`*: float32 ## ``@brief mecharm_interfaces/msg/MecharmSetCoords.ry: float32. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mecharm_interfacesMsgMecharmSetCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rz`*: float32 ## ``@brief mecharm_interfaces/msg/MecharmSetCoords.rz: float32. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mecharm_interfacesMsgMecharmSetCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `speed`*: int8 ## ``@brief mecharm_interfaces/msg/MecharmSetCoords.speed: int8. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mecharm_interfacesMsgMecharmSetCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `model`*: int8 ## ``@brief mecharm_interfaces/msg/MecharmSetCoords.model: int8. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mecharm_interfacesMsgMecharmSetCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesMsgMecharmSetCoordsMaximumWireBytes* = 26 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mecharm_interfaces/msg/MecharmSetCoords``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 26 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mecharm_interfacesMsgMecharmSetCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesMsgMecharmSetCoordsCodecIdentity* = "UWVMROS1_44944ee22cd4254167083cfdcd7377ee2f59dbe27414932c980670a471a6e7c2" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mecharm_interfaces/msg/MecharmSetCoords.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_44944ee22cd4254167083cfdcd7377ee2f59dbe27414932c980670a471a6e7c2``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mecharm_interfacesMsgMecharmSetCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesMsgMecharmSetCoordsNativeType* = "mecharm_interfaces/msg/MecharmSetCoords" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mecharm_interfaces/msg/MecharmSetCoords.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mecharm_interfacesMsgMecharmSetCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesMsgMecharmSetCoordsNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mecharm_interfaces/msg/MecharmSetCoords.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mecharm_interfacesMsgMecharmSetCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mecharm_interfacesMsgMecharmSetCoords*(): Ros2Mecharm_interfacesMsgMecharmSetCoords =
 ## ``@brief Construct the declared defaults of mecharm_interfaces/msg/MecharmSetCoords.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/nim/API-CONTRACT.md``
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
  result.`rx` = 0
  result.`ry` = 0
  result.`rz` = 0
  result.`speed` = 0
  result.`model` = 0
proc writeFields*(value: Ros2Mecharm_interfacesMsgMecharmSetCoords; w: var Writer) =
 ## ``@brief Append every canonical field of mecharm_interfaces/msg/MecharmSetCoords.``
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
 ## ``@see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`x`)
  putFloat32(w,value.`y`)
  putFloat32(w,value.`z`)
  putFloat32(w,value.`rx`)
  putFloat32(w,value.`ry`)
  putFloat32(w,value.`rz`)
  putInteger(w,value.`speed`)
  putInteger(w,value.`model`)
proc readRos2Mecharm_interfacesMsgMecharmSetCoords*(r: var Reader): Ros2Mecharm_interfacesMsgMecharmSetCoords =
 ## ``@brief Read the ordered canonical fields of mecharm_interfaces/msg/MecharmSetCoords.``
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
 ## ``@see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mecharm_interfacesMsgMecharmSetCoords()
  result.`x` = getFloat32(r)
  result.`y` = getFloat32(r)
  result.`z` = getFloat32(r)
  result.`rx` = getFloat32(r)
  result.`ry` = getFloat32(r)
  result.`rz` = getFloat32(r)
  result.`speed` = getInteger(r,int8)
  result.`model` = getInteger(r,int8)
proc encode*(value: Ros2Mecharm_interfacesMsgMecharmSetCoords): seq[byte] =
 ## ``@brief Encode one complete mecharm_interfaces/msg/MecharmSetCoords value.``
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
 ## ``@see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(26)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mecharm_interfacesMsgMecharmSetCoords*(b: seq[byte]): Ros2Mecharm_interfacesMsgMecharmSetCoords =
 ## ``@brief Decode exactly one complete mecharm_interfaces/msg/MecharmSetCoords value.``
 ## ``@details Require the complete 26..26-byte canonical representation. Reject truncation,``
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
 ## ``@see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,26)
  result = readRos2Mecharm_interfacesMsgMecharmSetCoords(r)
  finish(r)
type Ros2Mecharm_interfacesSrvGetAngles_Request* = object
 ## ``@brief Complete ROS 2 mecharm_interfaces/srv/GetAngles_Request value.``
 ## ``@details All 0 declared fields are retained in source order. The canonical representation``
 ## ``occupies 0..0 bytes and is identified by``
 ## ``UWVMROS1_95b1d7786c03c6fec98fec0706088481fe9c7aa48c9f33f4325031d0437d97df.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvGetAngles_RequestMaximumWireBytes* = 0 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mecharm_interfaces/srv/GetAngles_Request``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 0 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mecharm_interfacesSrvGetAngles_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvGetAngles_RequestCodecIdentity* = "UWVMROS1_95b1d7786c03c6fec98fec0706088481fe9c7aa48c9f33f4325031d0437d97df" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mecharm_interfaces/srv/GetAngles_Request.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_95b1d7786c03c6fec98fec0706088481fe9c7aa48c9f33f4325031d0437d97df``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mecharm_interfacesSrvGetAngles_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvGetAngles_RequestNativeType* = "mecharm_interfaces/srv/GetAngles_Request" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mecharm_interfaces/srv/GetAngles_Request.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mecharm_interfacesSrvGetAngles_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvGetAngles_RequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mecharm_interfaces/srv/GetAngles_Request.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mecharm_interfacesSrvGetAngles_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mecharm_interfacesSrvGetAngles_Request*(): Ros2Mecharm_interfacesSrvGetAngles_Request =
 ## ``@brief Construct the declared defaults of mecharm_interfaces/srv/GetAngles_Request.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mecharm_interfacesSrvGetAngles_Request; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc writeFields*(value: Ros2Mecharm_interfacesSrvGetAngles_Request; w: var Writer) =
 ## ``@brief Append every canonical field of mecharm_interfaces/srv/GetAngles_Request.``
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
 ## ``@see Ros2Mecharm_interfacesSrvGetAngles_Request; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc readRos2Mecharm_interfacesSrvGetAngles_Request*(r: var Reader): Ros2Mecharm_interfacesSrvGetAngles_Request =
 ## ``@brief Read the ordered canonical fields of mecharm_interfaces/srv/GetAngles_Request.``
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
 ## ``@see Ros2Mecharm_interfacesSrvGetAngles_Request; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mecharm_interfacesSrvGetAngles_Request()
proc encode*(value: Ros2Mecharm_interfacesSrvGetAngles_Request): seq[byte] =
 ## ``@brief Encode one complete mecharm_interfaces/srv/GetAngles_Request value.``
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
 ## ``@see Ros2Mecharm_interfacesSrvGetAngles_Request; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mecharm_interfacesSrvGetAngles_Request*(b: seq[byte]): Ros2Mecharm_interfacesSrvGetAngles_Request =
 ## ``@brief Decode exactly one complete mecharm_interfaces/srv/GetAngles_Request value.``
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
 ## ``@see Ros2Mecharm_interfacesSrvGetAngles_Request; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,0)
  result = readRos2Mecharm_interfacesSrvGetAngles_Request(r)
  finish(r)
type Ros2Mecharm_interfacesSrvGetAngles_Response* = object
 ## ``@brief Complete ROS 2 mecharm_interfaces/srv/GetAngles_Response value.``
 ## ``@details All 6 declared fields are retained in source order. The canonical representation``
 ## ``occupies 24..24 bytes and is identified by``
 ## ``UWVMROS1_b1a035847ac7a888053ba8de7494abb6d2cdc01f61e4d0a51cb3ef6f479adf61.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `joint_1`*: float32 ## ``@brief mecharm_interfaces/srv/GetAngles_Response.joint_1: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mecharm_interfacesSrvGetAngles_Response;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_2`*: float32 ## ``@brief mecharm_interfaces/srv/GetAngles_Response.joint_2: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mecharm_interfacesSrvGetAngles_Response;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_3`*: float32 ## ``@brief mecharm_interfaces/srv/GetAngles_Response.joint_3: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mecharm_interfacesSrvGetAngles_Response;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_4`*: float32 ## ``@brief mecharm_interfaces/srv/GetAngles_Response.joint_4: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mecharm_interfacesSrvGetAngles_Response;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_5`*: float32 ## ``@brief mecharm_interfaces/srv/GetAngles_Response.joint_5: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mecharm_interfacesSrvGetAngles_Response;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_6`*: float32 ## ``@brief mecharm_interfaces/srv/GetAngles_Response.joint_6: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mecharm_interfacesSrvGetAngles_Response;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvGetAngles_ResponseMaximumWireBytes* = 24 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mecharm_interfaces/srv/GetAngles_Response``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 24 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mecharm_interfacesSrvGetAngles_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvGetAngles_ResponseCodecIdentity* = "UWVMROS1_b1a035847ac7a888053ba8de7494abb6d2cdc01f61e4d0a51cb3ef6f479adf61" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mecharm_interfaces/srv/GetAngles_Response.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_b1a035847ac7a888053ba8de7494abb6d2cdc01f61e4d0a51cb3ef6f479adf61``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mecharm_interfacesSrvGetAngles_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvGetAngles_ResponseNativeType* = "mecharm_interfaces/srv/GetAngles_Response" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mecharm_interfaces/srv/GetAngles_Response.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mecharm_interfacesSrvGetAngles_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvGetAngles_ResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mecharm_interfaces/srv/GetAngles_Response.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mecharm_interfacesSrvGetAngles_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mecharm_interfacesSrvGetAngles_Response*(): Ros2Mecharm_interfacesSrvGetAngles_Response =
 ## ``@brief Construct the declared defaults of mecharm_interfaces/srv/GetAngles_Response.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mecharm_interfacesSrvGetAngles_Response; share/platform/ros/nim/API-CONTRACT.md``
  result.`joint_1` = 0
  result.`joint_2` = 0
  result.`joint_3` = 0
  result.`joint_4` = 0
  result.`joint_5` = 0
  result.`joint_6` = 0
proc writeFields*(value: Ros2Mecharm_interfacesSrvGetAngles_Response; w: var Writer) =
 ## ``@brief Append every canonical field of mecharm_interfaces/srv/GetAngles_Response.``
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
 ## ``@see Ros2Mecharm_interfacesSrvGetAngles_Response; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`joint_1`)
  putFloat32(w,value.`joint_2`)
  putFloat32(w,value.`joint_3`)
  putFloat32(w,value.`joint_4`)
  putFloat32(w,value.`joint_5`)
  putFloat32(w,value.`joint_6`)
proc readRos2Mecharm_interfacesSrvGetAngles_Response*(r: var Reader): Ros2Mecharm_interfacesSrvGetAngles_Response =
 ## ``@brief Read the ordered canonical fields of mecharm_interfaces/srv/GetAngles_Response.``
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
 ## ``@see Ros2Mecharm_interfacesSrvGetAngles_Response; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mecharm_interfacesSrvGetAngles_Response()
  result.`joint_1` = getFloat32(r)
  result.`joint_2` = getFloat32(r)
  result.`joint_3` = getFloat32(r)
  result.`joint_4` = getFloat32(r)
  result.`joint_5` = getFloat32(r)
  result.`joint_6` = getFloat32(r)
proc encode*(value: Ros2Mecharm_interfacesSrvGetAngles_Response): seq[byte] =
 ## ``@brief Encode one complete mecharm_interfaces/srv/GetAngles_Response value.``
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
 ## ``@see Ros2Mecharm_interfacesSrvGetAngles_Response; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mecharm_interfacesSrvGetAngles_Response*(b: seq[byte]): Ros2Mecharm_interfacesSrvGetAngles_Response =
 ## ``@brief Decode exactly one complete mecharm_interfaces/srv/GetAngles_Response value.``
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
 ## ``@see Ros2Mecharm_interfacesSrvGetAngles_Response; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,24)
  result = readRos2Mecharm_interfacesSrvGetAngles_Response(r)
  finish(r)
type Ros2Mecharm_interfacesSrvGetCoords_Request* = object
 ## ``@brief Complete ROS 2 mecharm_interfaces/srv/GetCoords_Request value.``
 ## ``@details All 0 declared fields are retained in source order. The canonical representation``
 ## ``occupies 0..0 bytes and is identified by``
 ## ``UWVMROS1_353827e7125cfa6c829f1138cc33901099a26cf73a8d045cf806b427994ccef1.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvGetCoords_RequestMaximumWireBytes* = 0 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mecharm_interfaces/srv/GetCoords_Request``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 0 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mecharm_interfacesSrvGetCoords_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvGetCoords_RequestCodecIdentity* = "UWVMROS1_353827e7125cfa6c829f1138cc33901099a26cf73a8d045cf806b427994ccef1" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mecharm_interfaces/srv/GetCoords_Request.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_353827e7125cfa6c829f1138cc33901099a26cf73a8d045cf806b427994ccef1``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mecharm_interfacesSrvGetCoords_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvGetCoords_RequestNativeType* = "mecharm_interfaces/srv/GetCoords_Request" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mecharm_interfaces/srv/GetCoords_Request.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mecharm_interfacesSrvGetCoords_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvGetCoords_RequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mecharm_interfaces/srv/GetCoords_Request.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mecharm_interfacesSrvGetCoords_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mecharm_interfacesSrvGetCoords_Request*(): Ros2Mecharm_interfacesSrvGetCoords_Request =
 ## ``@brief Construct the declared defaults of mecharm_interfaces/srv/GetCoords_Request.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mecharm_interfacesSrvGetCoords_Request; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc writeFields*(value: Ros2Mecharm_interfacesSrvGetCoords_Request; w: var Writer) =
 ## ``@brief Append every canonical field of mecharm_interfaces/srv/GetCoords_Request.``
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
 ## ``@see Ros2Mecharm_interfacesSrvGetCoords_Request; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc readRos2Mecharm_interfacesSrvGetCoords_Request*(r: var Reader): Ros2Mecharm_interfacesSrvGetCoords_Request =
 ## ``@brief Read the ordered canonical fields of mecharm_interfaces/srv/GetCoords_Request.``
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
 ## ``@see Ros2Mecharm_interfacesSrvGetCoords_Request; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mecharm_interfacesSrvGetCoords_Request()
proc encode*(value: Ros2Mecharm_interfacesSrvGetCoords_Request): seq[byte] =
 ## ``@brief Encode one complete mecharm_interfaces/srv/GetCoords_Request value.``
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
 ## ``@see Ros2Mecharm_interfacesSrvGetCoords_Request; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mecharm_interfacesSrvGetCoords_Request*(b: seq[byte]): Ros2Mecharm_interfacesSrvGetCoords_Request =
 ## ``@brief Decode exactly one complete mecharm_interfaces/srv/GetCoords_Request value.``
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
 ## ``@see Ros2Mecharm_interfacesSrvGetCoords_Request; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,0)
  result = readRos2Mecharm_interfacesSrvGetCoords_Request(r)
  finish(r)
type Ros2Mecharm_interfacesSrvGetCoords_Response* = object
 ## ``@brief Complete ROS 2 mecharm_interfaces/srv/GetCoords_Response value.``
 ## ``@details All 6 declared fields are retained in source order. The canonical representation``
 ## ``occupies 24..24 bytes and is identified by``
 ## ``UWVMROS1_f7fcb8c4fdb47c06e93a8f67613490f7ab0ef2af7efb02092874722670b36c75.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `x`*: float32 ## ``@brief mecharm_interfaces/srv/GetCoords_Response.x: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mecharm_interfacesSrvGetCoords_Response;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `y`*: float32 ## ``@brief mecharm_interfaces/srv/GetCoords_Response.y: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mecharm_interfacesSrvGetCoords_Response;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `z`*: float32 ## ``@brief mecharm_interfaces/srv/GetCoords_Response.z: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mecharm_interfacesSrvGetCoords_Response;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rx`*: float32 ## ``@brief mecharm_interfaces/srv/GetCoords_Response.rx: float32. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mecharm_interfacesSrvGetCoords_Response;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `ry`*: float32 ## ``@brief mecharm_interfaces/srv/GetCoords_Response.ry: float32. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mecharm_interfacesSrvGetCoords_Response;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rz`*: float32 ## ``@brief mecharm_interfaces/srv/GetCoords_Response.rz: float32. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mecharm_interfacesSrvGetCoords_Response;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvGetCoords_ResponseMaximumWireBytes* = 24 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mecharm_interfaces/srv/GetCoords_Response``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 24 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mecharm_interfacesSrvGetCoords_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvGetCoords_ResponseCodecIdentity* = "UWVMROS1_f7fcb8c4fdb47c06e93a8f67613490f7ab0ef2af7efb02092874722670b36c75" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mecharm_interfaces/srv/GetCoords_Response.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_f7fcb8c4fdb47c06e93a8f67613490f7ab0ef2af7efb02092874722670b36c75``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mecharm_interfacesSrvGetCoords_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvGetCoords_ResponseNativeType* = "mecharm_interfaces/srv/GetCoords_Response" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mecharm_interfaces/srv/GetCoords_Response.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mecharm_interfacesSrvGetCoords_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvGetCoords_ResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mecharm_interfaces/srv/GetCoords_Response.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mecharm_interfacesSrvGetCoords_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mecharm_interfacesSrvGetCoords_Response*(): Ros2Mecharm_interfacesSrvGetCoords_Response =
 ## ``@brief Construct the declared defaults of mecharm_interfaces/srv/GetCoords_Response.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mecharm_interfacesSrvGetCoords_Response; share/platform/ros/nim/API-CONTRACT.md``
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
  result.`rx` = 0
  result.`ry` = 0
  result.`rz` = 0
proc writeFields*(value: Ros2Mecharm_interfacesSrvGetCoords_Response; w: var Writer) =
 ## ``@brief Append every canonical field of mecharm_interfaces/srv/GetCoords_Response.``
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
 ## ``@see Ros2Mecharm_interfacesSrvGetCoords_Response; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`x`)
  putFloat32(w,value.`y`)
  putFloat32(w,value.`z`)
  putFloat32(w,value.`rx`)
  putFloat32(w,value.`ry`)
  putFloat32(w,value.`rz`)
proc readRos2Mecharm_interfacesSrvGetCoords_Response*(r: var Reader): Ros2Mecharm_interfacesSrvGetCoords_Response =
 ## ``@brief Read the ordered canonical fields of mecharm_interfaces/srv/GetCoords_Response.``
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
 ## ``@see Ros2Mecharm_interfacesSrvGetCoords_Response; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mecharm_interfacesSrvGetCoords_Response()
  result.`x` = getFloat32(r)
  result.`y` = getFloat32(r)
  result.`z` = getFloat32(r)
  result.`rx` = getFloat32(r)
  result.`ry` = getFloat32(r)
  result.`rz` = getFloat32(r)
proc encode*(value: Ros2Mecharm_interfacesSrvGetCoords_Response): seq[byte] =
 ## ``@brief Encode one complete mecharm_interfaces/srv/GetCoords_Response value.``
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
 ## ``@see Ros2Mecharm_interfacesSrvGetCoords_Response; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mecharm_interfacesSrvGetCoords_Response*(b: seq[byte]): Ros2Mecharm_interfacesSrvGetCoords_Response =
 ## ``@brief Decode exactly one complete mecharm_interfaces/srv/GetCoords_Response value.``
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
 ## ``@see Ros2Mecharm_interfacesSrvGetCoords_Response; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,24)
  result = readRos2Mecharm_interfacesSrvGetCoords_Response(r)
  finish(r)
type Ros2Mecharm_interfacesSrvGripperStatus_Request* = object
 ## ``@brief Complete ROS 2 mecharm_interfaces/srv/GripperStatus_Request value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_044bf47303f5da0d0e17e795b8567b714d55680e8144c8e2e71ff7032859dfbb.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `status`*: bool ## ``@brief mecharm_interfaces/srv/GripperStatus_Request.status: bool. @details The``
                  ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                  ## ``preserves the original field position and signedness; invalid bounds fail instead``
                  ## ``of truncating the value. @units Use the units and frame/clock domain of the``
                  ## ``pinned native definition. The codec performs no scaling, frame conversion or``
                  ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                  ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                  ## ``enclosing decode function. @see Ros2Mecharm_interfacesSrvGripperStatus_Request;``
                  ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvGripperStatus_RequestMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mecharm_interfaces/srv/GripperStatus_Request``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mecharm_interfacesSrvGripperStatus_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvGripperStatus_RequestCodecIdentity* = "UWVMROS1_044bf47303f5da0d0e17e795b8567b714d55680e8144c8e2e71ff7032859dfbb" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mecharm_interfaces/srv/GripperStatus_Request.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_044bf47303f5da0d0e17e795b8567b714d55680e8144c8e2e71ff7032859dfbb``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mecharm_interfacesSrvGripperStatus_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvGripperStatus_RequestNativeType* = "mecharm_interfaces/srv/GripperStatus_Request" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mecharm_interfaces/srv/GripperStatus_Request.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mecharm_interfacesSrvGripperStatus_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvGripperStatus_RequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mecharm_interfaces/srv/GripperStatus_Request.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mecharm_interfacesSrvGripperStatus_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mecharm_interfacesSrvGripperStatus_Request*(): Ros2Mecharm_interfacesSrvGripperStatus_Request =
 ## ``@brief Construct the declared defaults of mecharm_interfaces/srv/GripperStatus_Request.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mecharm_interfacesSrvGripperStatus_Request; share/platform/ros/nim/API-CONTRACT.md``
  result.`status` = false
proc writeFields*(value: Ros2Mecharm_interfacesSrvGripperStatus_Request; w: var Writer) =
 ## ``@brief Append every canonical field of mecharm_interfaces/srv/GripperStatus_Request.``
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
 ## ``@see Ros2Mecharm_interfacesSrvGripperStatus_Request; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`status`)
proc readRos2Mecharm_interfacesSrvGripperStatus_Request*(r: var Reader): Ros2Mecharm_interfacesSrvGripperStatus_Request =
 ## ``@brief Read the ordered canonical fields of mecharm_interfaces/srv/GripperStatus_Request.``
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
 ## ``@see Ros2Mecharm_interfacesSrvGripperStatus_Request; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mecharm_interfacesSrvGripperStatus_Request()
  result.`status` = getBool(r)
proc encode*(value: Ros2Mecharm_interfacesSrvGripperStatus_Request): seq[byte] =
 ## ``@brief Encode one complete mecharm_interfaces/srv/GripperStatus_Request value.``
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
 ## ``@see Ros2Mecharm_interfacesSrvGripperStatus_Request; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mecharm_interfacesSrvGripperStatus_Request*(b: seq[byte]): Ros2Mecharm_interfacesSrvGripperStatus_Request =
 ## ``@brief Decode exactly one complete mecharm_interfaces/srv/GripperStatus_Request value.``
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
 ## ``@see Ros2Mecharm_interfacesSrvGripperStatus_Request; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos2Mecharm_interfacesSrvGripperStatus_Request(r)
  finish(r)
type Ros2Mecharm_interfacesSrvGripperStatus_Response* = object
 ## ``@brief Complete ROS 2 mecharm_interfaces/srv/GripperStatus_Response value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_5aeee3c79bb6ebe4a4cb77f54552e97dcc155c65151a5965761a360d41acbea3.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `flag`*: bool ## ``@brief mecharm_interfaces/srv/GripperStatus_Response.flag: bool. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mecharm_interfacesSrvGripperStatus_Response;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvGripperStatus_ResponseMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mecharm_interfaces/srv/GripperStatus_Response``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mecharm_interfacesSrvGripperStatus_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvGripperStatus_ResponseCodecIdentity* = "UWVMROS1_5aeee3c79bb6ebe4a4cb77f54552e97dcc155c65151a5965761a360d41acbea3" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mecharm_interfaces/srv/GripperStatus_Response.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_5aeee3c79bb6ebe4a4cb77f54552e97dcc155c65151a5965761a360d41acbea3``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mecharm_interfacesSrvGripperStatus_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvGripperStatus_ResponseNativeType* = "mecharm_interfaces/srv/GripperStatus_Response" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mecharm_interfaces/srv/GripperStatus_Response.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mecharm_interfacesSrvGripperStatus_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvGripperStatus_ResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mecharm_interfaces/srv/GripperStatus_Response.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mecharm_interfacesSrvGripperStatus_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mecharm_interfacesSrvGripperStatus_Response*(): Ros2Mecharm_interfacesSrvGripperStatus_Response =
 ## ``@brief Construct the declared defaults of mecharm_interfaces/srv/GripperStatus_Response.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mecharm_interfacesSrvGripperStatus_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`flag` = false
proc writeFields*(value: Ros2Mecharm_interfacesSrvGripperStatus_Response; w: var Writer) =
 ## ``@brief Append every canonical field of mecharm_interfaces/srv/GripperStatus_Response.``
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
 ## ``@see Ros2Mecharm_interfacesSrvGripperStatus_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`flag`)
proc readRos2Mecharm_interfacesSrvGripperStatus_Response*(r: var Reader): Ros2Mecharm_interfacesSrvGripperStatus_Response =
 ## ``@brief Read the ordered canonical fields of mecharm_interfaces/srv/GripperStatus_Response.``
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
 ## ``@see Ros2Mecharm_interfacesSrvGripperStatus_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mecharm_interfacesSrvGripperStatus_Response()
  result.`flag` = getBool(r)
proc encode*(value: Ros2Mecharm_interfacesSrvGripperStatus_Response): seq[byte] =
 ## ``@brief Encode one complete mecharm_interfaces/srv/GripperStatus_Response value.``
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
 ## ``@see Ros2Mecharm_interfacesSrvGripperStatus_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mecharm_interfacesSrvGripperStatus_Response*(b: seq[byte]): Ros2Mecharm_interfacesSrvGripperStatus_Response =
 ## ``@brief Decode exactly one complete mecharm_interfaces/srv/GripperStatus_Response value.``
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
 ## ``@see Ros2Mecharm_interfacesSrvGripperStatus_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos2Mecharm_interfacesSrvGripperStatus_Response(r)
  finish(r)
type Ros2Mecharm_interfacesSrvPumpStatus_Request* = object
 ## ``@brief Complete ROS 2 mecharm_interfaces/srv/PumpStatus_Request value.``
 ## ``@details All 3 declared fields are retained in source order. The canonical representation``
 ## ``occupies 3..3 bytes and is identified by``
 ## ``UWVMROS1_f80774682b7b1d447ff2f8dd7f6ac2f917dd4f71ccd3b1685a57b579fa41d6b9.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `status`*: bool ## ``@brief mecharm_interfaces/srv/PumpStatus_Request.status: bool. @details The``
                  ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                  ## ``preserves the original field position and signedness; invalid bounds fail instead``
                  ## ``of truncating the value. @units Use the units and frame/clock domain of the``
                  ## ``pinned native definition. The codec performs no scaling, frame conversion or``
                  ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                  ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                  ## ``enclosing decode function. @see Ros2Mecharm_interfacesSrvPumpStatus_Request;``
                  ## ``share/platform/ros/nim/API-CONTRACT.md``
  `pin1`*: int8 ## ``@brief mecharm_interfaces/srv/PumpStatus_Request.pin1: int8. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mecharm_interfacesSrvPumpStatus_Request;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `pin2`*: int8 ## ``@brief mecharm_interfaces/srv/PumpStatus_Request.pin2: int8. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mecharm_interfacesSrvPumpStatus_Request;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvPumpStatus_RequestMaximumWireBytes* = 3 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mecharm_interfaces/srv/PumpStatus_Request``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 3 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mecharm_interfacesSrvPumpStatus_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvPumpStatus_RequestCodecIdentity* = "UWVMROS1_f80774682b7b1d447ff2f8dd7f6ac2f917dd4f71ccd3b1685a57b579fa41d6b9" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mecharm_interfaces/srv/PumpStatus_Request.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_f80774682b7b1d447ff2f8dd7f6ac2f917dd4f71ccd3b1685a57b579fa41d6b9``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mecharm_interfacesSrvPumpStatus_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvPumpStatus_RequestNativeType* = "mecharm_interfaces/srv/PumpStatus_Request" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mecharm_interfaces/srv/PumpStatus_Request.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mecharm_interfacesSrvPumpStatus_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvPumpStatus_RequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mecharm_interfaces/srv/PumpStatus_Request.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mecharm_interfacesSrvPumpStatus_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mecharm_interfacesSrvPumpStatus_Request*(): Ros2Mecharm_interfacesSrvPumpStatus_Request =
 ## ``@brief Construct the declared defaults of mecharm_interfaces/srv/PumpStatus_Request.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mecharm_interfacesSrvPumpStatus_Request; share/platform/ros/nim/API-CONTRACT.md``
  result.`status` = false
  result.`pin1` = 0
  result.`pin2` = 0
proc writeFields*(value: Ros2Mecharm_interfacesSrvPumpStatus_Request; w: var Writer) =
 ## ``@brief Append every canonical field of mecharm_interfaces/srv/PumpStatus_Request.``
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
 ## ``@see Ros2Mecharm_interfacesSrvPumpStatus_Request; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`status`)
  putInteger(w,value.`pin1`)
  putInteger(w,value.`pin2`)
proc readRos2Mecharm_interfacesSrvPumpStatus_Request*(r: var Reader): Ros2Mecharm_interfacesSrvPumpStatus_Request =
 ## ``@brief Read the ordered canonical fields of mecharm_interfaces/srv/PumpStatus_Request.``
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
 ## ``@see Ros2Mecharm_interfacesSrvPumpStatus_Request; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mecharm_interfacesSrvPumpStatus_Request()
  result.`status` = getBool(r)
  result.`pin1` = getInteger(r,int8)
  result.`pin2` = getInteger(r,int8)
proc encode*(value: Ros2Mecharm_interfacesSrvPumpStatus_Request): seq[byte] =
 ## ``@brief Encode one complete mecharm_interfaces/srv/PumpStatus_Request value.``
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
 ## ``@see Ros2Mecharm_interfacesSrvPumpStatus_Request; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(3)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mecharm_interfacesSrvPumpStatus_Request*(b: seq[byte]): Ros2Mecharm_interfacesSrvPumpStatus_Request =
 ## ``@brief Decode exactly one complete mecharm_interfaces/srv/PumpStatus_Request value.``
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
 ## ``@see Ros2Mecharm_interfacesSrvPumpStatus_Request; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,3)
  result = readRos2Mecharm_interfacesSrvPumpStatus_Request(r)
  finish(r)
type Ros2Mecharm_interfacesSrvPumpStatus_Response* = object
 ## ``@brief Complete ROS 2 mecharm_interfaces/srv/PumpStatus_Response value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_935c0e2aaca3f1e8aad8e4487484292b3d30ccdff180a9aaa50f454f75ecff1b.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `flag`*: bool ## ``@brief mecharm_interfaces/srv/PumpStatus_Response.flag: bool. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mecharm_interfacesSrvPumpStatus_Response;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvPumpStatus_ResponseMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mecharm_interfaces/srv/PumpStatus_Response``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mecharm_interfacesSrvPumpStatus_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvPumpStatus_ResponseCodecIdentity* = "UWVMROS1_935c0e2aaca3f1e8aad8e4487484292b3d30ccdff180a9aaa50f454f75ecff1b" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mecharm_interfaces/srv/PumpStatus_Response.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_935c0e2aaca3f1e8aad8e4487484292b3d30ccdff180a9aaa50f454f75ecff1b``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mecharm_interfacesSrvPumpStatus_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvPumpStatus_ResponseNativeType* = "mecharm_interfaces/srv/PumpStatus_Response" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mecharm_interfaces/srv/PumpStatus_Response.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mecharm_interfacesSrvPumpStatus_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvPumpStatus_ResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mecharm_interfaces/srv/PumpStatus_Response.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mecharm_interfacesSrvPumpStatus_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mecharm_interfacesSrvPumpStatus_Response*(): Ros2Mecharm_interfacesSrvPumpStatus_Response =
 ## ``@brief Construct the declared defaults of mecharm_interfaces/srv/PumpStatus_Response.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mecharm_interfacesSrvPumpStatus_Response; share/platform/ros/nim/API-CONTRACT.md``
  result.`flag` = false
proc writeFields*(value: Ros2Mecharm_interfacesSrvPumpStatus_Response; w: var Writer) =
 ## ``@brief Append every canonical field of mecharm_interfaces/srv/PumpStatus_Response.``
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
 ## ``@see Ros2Mecharm_interfacesSrvPumpStatus_Response; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`flag`)
proc readRos2Mecharm_interfacesSrvPumpStatus_Response*(r: var Reader): Ros2Mecharm_interfacesSrvPumpStatus_Response =
 ## ``@brief Read the ordered canonical fields of mecharm_interfaces/srv/PumpStatus_Response.``
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
 ## ``@see Ros2Mecharm_interfacesSrvPumpStatus_Response; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mecharm_interfacesSrvPumpStatus_Response()
  result.`flag` = getBool(r)
proc encode*(value: Ros2Mecharm_interfacesSrvPumpStatus_Response): seq[byte] =
 ## ``@brief Encode one complete mecharm_interfaces/srv/PumpStatus_Response value.``
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
 ## ``@see Ros2Mecharm_interfacesSrvPumpStatus_Response; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mecharm_interfacesSrvPumpStatus_Response*(b: seq[byte]): Ros2Mecharm_interfacesSrvPumpStatus_Response =
 ## ``@brief Decode exactly one complete mecharm_interfaces/srv/PumpStatus_Response value.``
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
 ## ``@see Ros2Mecharm_interfacesSrvPumpStatus_Response; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos2Mecharm_interfacesSrvPumpStatus_Response(r)
  finish(r)
type Ros2Mecharm_interfacesSrvSetAngles_Request* = object
 ## ``@brief Complete ROS 2 mecharm_interfaces/srv/SetAngles_Request value.``
 ## ``@details All 7 declared fields are retained in source order. The canonical representation``
 ## ``occupies 25..25 bytes and is identified by``
 ## ``UWVMROS1_86897875ef9a609098bc1eabba63aec7d960de380db98370e7a67626b2253eeb.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `joint_1`*: float32 ## ``@brief mecharm_interfaces/srv/SetAngles_Request.joint_1: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mecharm_interfacesSrvSetAngles_Request;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_2`*: float32 ## ``@brief mecharm_interfaces/srv/SetAngles_Request.joint_2: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mecharm_interfacesSrvSetAngles_Request;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_3`*: float32 ## ``@brief mecharm_interfaces/srv/SetAngles_Request.joint_3: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mecharm_interfacesSrvSetAngles_Request;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_4`*: float32 ## ``@brief mecharm_interfaces/srv/SetAngles_Request.joint_4: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mecharm_interfacesSrvSetAngles_Request;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_5`*: float32 ## ``@brief mecharm_interfaces/srv/SetAngles_Request.joint_5: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mecharm_interfacesSrvSetAngles_Request;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_6`*: float32 ## ``@brief mecharm_interfaces/srv/SetAngles_Request.joint_6: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mecharm_interfacesSrvSetAngles_Request;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `speed`*: int8 ## ``@brief mecharm_interfaces/srv/SetAngles_Request.speed: int8. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mecharm_interfacesSrvSetAngles_Request;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvSetAngles_RequestMaximumWireBytes* = 25 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mecharm_interfaces/srv/SetAngles_Request``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 25 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mecharm_interfacesSrvSetAngles_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvSetAngles_RequestCodecIdentity* = "UWVMROS1_86897875ef9a609098bc1eabba63aec7d960de380db98370e7a67626b2253eeb" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mecharm_interfaces/srv/SetAngles_Request.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_86897875ef9a609098bc1eabba63aec7d960de380db98370e7a67626b2253eeb``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mecharm_interfacesSrvSetAngles_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvSetAngles_RequestNativeType* = "mecharm_interfaces/srv/SetAngles_Request" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mecharm_interfaces/srv/SetAngles_Request.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mecharm_interfacesSrvSetAngles_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvSetAngles_RequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mecharm_interfaces/srv/SetAngles_Request.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mecharm_interfacesSrvSetAngles_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mecharm_interfacesSrvSetAngles_Request*(): Ros2Mecharm_interfacesSrvSetAngles_Request =
 ## ``@brief Construct the declared defaults of mecharm_interfaces/srv/SetAngles_Request.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/nim/API-CONTRACT.md``
  result.`joint_1` = 0
  result.`joint_2` = 0
  result.`joint_3` = 0
  result.`joint_4` = 0
  result.`joint_5` = 0
  result.`joint_6` = 0
  result.`speed` = 0
proc writeFields*(value: Ros2Mecharm_interfacesSrvSetAngles_Request; w: var Writer) =
 ## ``@brief Append every canonical field of mecharm_interfaces/srv/SetAngles_Request.``
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
 ## ``@see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`joint_1`)
  putFloat32(w,value.`joint_2`)
  putFloat32(w,value.`joint_3`)
  putFloat32(w,value.`joint_4`)
  putFloat32(w,value.`joint_5`)
  putFloat32(w,value.`joint_6`)
  putInteger(w,value.`speed`)
proc readRos2Mecharm_interfacesSrvSetAngles_Request*(r: var Reader): Ros2Mecharm_interfacesSrvSetAngles_Request =
 ## ``@brief Read the ordered canonical fields of mecharm_interfaces/srv/SetAngles_Request.``
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
 ## ``@see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mecharm_interfacesSrvSetAngles_Request()
  result.`joint_1` = getFloat32(r)
  result.`joint_2` = getFloat32(r)
  result.`joint_3` = getFloat32(r)
  result.`joint_4` = getFloat32(r)
  result.`joint_5` = getFloat32(r)
  result.`joint_6` = getFloat32(r)
  result.`speed` = getInteger(r,int8)
proc encode*(value: Ros2Mecharm_interfacesSrvSetAngles_Request): seq[byte] =
 ## ``@brief Encode one complete mecharm_interfaces/srv/SetAngles_Request value.``
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
 ## ``@see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(25)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mecharm_interfacesSrvSetAngles_Request*(b: seq[byte]): Ros2Mecharm_interfacesSrvSetAngles_Request =
 ## ``@brief Decode exactly one complete mecharm_interfaces/srv/SetAngles_Request value.``
 ## ``@details Require the complete 25..25-byte canonical representation. Reject truncation,``
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
 ## ``@see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,25)
  result = readRos2Mecharm_interfacesSrvSetAngles_Request(r)
  finish(r)
type Ros2Mecharm_interfacesSrvSetAngles_Response* = object
 ## ``@brief Complete ROS 2 mecharm_interfaces/srv/SetAngles_Response value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_4782fe6a137dee35bf39d863be0aea118f61dcef092c11b013c44c6f4c129620.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `flag`*: bool ## ``@brief mecharm_interfaces/srv/SetAngles_Response.flag: bool. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mecharm_interfacesSrvSetAngles_Response;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvSetAngles_ResponseMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mecharm_interfaces/srv/SetAngles_Response``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mecharm_interfacesSrvSetAngles_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvSetAngles_ResponseCodecIdentity* = "UWVMROS1_4782fe6a137dee35bf39d863be0aea118f61dcef092c11b013c44c6f4c129620" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mecharm_interfaces/srv/SetAngles_Response.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_4782fe6a137dee35bf39d863be0aea118f61dcef092c11b013c44c6f4c129620``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mecharm_interfacesSrvSetAngles_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvSetAngles_ResponseNativeType* = "mecharm_interfaces/srv/SetAngles_Response" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mecharm_interfaces/srv/SetAngles_Response.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mecharm_interfacesSrvSetAngles_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvSetAngles_ResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mecharm_interfaces/srv/SetAngles_Response.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mecharm_interfacesSrvSetAngles_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mecharm_interfacesSrvSetAngles_Response*(): Ros2Mecharm_interfacesSrvSetAngles_Response =
 ## ``@brief Construct the declared defaults of mecharm_interfaces/srv/SetAngles_Response.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mecharm_interfacesSrvSetAngles_Response; share/platform/ros/nim/API-CONTRACT.md``
  result.`flag` = false
proc writeFields*(value: Ros2Mecharm_interfacesSrvSetAngles_Response; w: var Writer) =
 ## ``@brief Append every canonical field of mecharm_interfaces/srv/SetAngles_Response.``
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
 ## ``@see Ros2Mecharm_interfacesSrvSetAngles_Response; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`flag`)
proc readRos2Mecharm_interfacesSrvSetAngles_Response*(r: var Reader): Ros2Mecharm_interfacesSrvSetAngles_Response =
 ## ``@brief Read the ordered canonical fields of mecharm_interfaces/srv/SetAngles_Response.``
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
 ## ``@see Ros2Mecharm_interfacesSrvSetAngles_Response; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mecharm_interfacesSrvSetAngles_Response()
  result.`flag` = getBool(r)
proc encode*(value: Ros2Mecharm_interfacesSrvSetAngles_Response): seq[byte] =
 ## ``@brief Encode one complete mecharm_interfaces/srv/SetAngles_Response value.``
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
 ## ``@see Ros2Mecharm_interfacesSrvSetAngles_Response; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mecharm_interfacesSrvSetAngles_Response*(b: seq[byte]): Ros2Mecharm_interfacesSrvSetAngles_Response =
 ## ``@brief Decode exactly one complete mecharm_interfaces/srv/SetAngles_Response value.``
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
 ## ``@see Ros2Mecharm_interfacesSrvSetAngles_Response; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos2Mecharm_interfacesSrvSetAngles_Response(r)
  finish(r)
type Ros2Mecharm_interfacesSrvSetCoords_Request* = object
 ## ``@brief Complete ROS 2 mecharm_interfaces/srv/SetCoords_Request value.``
 ## ``@details All 8 declared fields are retained in source order. The canonical representation``
 ## ``occupies 26..26 bytes and is identified by``
 ## ``UWVMROS1_a0daefe14076b73f1a64924ffc15a6b9647abe1b1887377e642f41b1a7920916.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `x`*: float32 ## ``@brief mecharm_interfaces/srv/SetCoords_Request.x: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mecharm_interfacesSrvSetCoords_Request;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `y`*: float32 ## ``@brief mecharm_interfaces/srv/SetCoords_Request.y: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mecharm_interfacesSrvSetCoords_Request;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `z`*: float32 ## ``@brief mecharm_interfaces/srv/SetCoords_Request.z: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mecharm_interfacesSrvSetCoords_Request;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rx`*: float32 ## ``@brief mecharm_interfaces/srv/SetCoords_Request.rx: float32. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mecharm_interfacesSrvSetCoords_Request;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `ry`*: float32 ## ``@brief mecharm_interfaces/srv/SetCoords_Request.ry: float32. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mecharm_interfacesSrvSetCoords_Request;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rz`*: float32 ## ``@brief mecharm_interfaces/srv/SetCoords_Request.rz: float32. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mecharm_interfacesSrvSetCoords_Request;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `speed`*: int8 ## ``@brief mecharm_interfaces/srv/SetCoords_Request.speed: int8. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mecharm_interfacesSrvSetCoords_Request;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `model`*: int8 ## ``@brief mecharm_interfaces/srv/SetCoords_Request.model: int8. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mecharm_interfacesSrvSetCoords_Request;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvSetCoords_RequestMaximumWireBytes* = 26 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mecharm_interfaces/srv/SetCoords_Request``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 26 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mecharm_interfacesSrvSetCoords_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvSetCoords_RequestCodecIdentity* = "UWVMROS1_a0daefe14076b73f1a64924ffc15a6b9647abe1b1887377e642f41b1a7920916" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mecharm_interfaces/srv/SetCoords_Request.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_a0daefe14076b73f1a64924ffc15a6b9647abe1b1887377e642f41b1a7920916``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mecharm_interfacesSrvSetCoords_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvSetCoords_RequestNativeType* = "mecharm_interfaces/srv/SetCoords_Request" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mecharm_interfaces/srv/SetCoords_Request.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mecharm_interfacesSrvSetCoords_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvSetCoords_RequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mecharm_interfaces/srv/SetCoords_Request.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mecharm_interfacesSrvSetCoords_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mecharm_interfacesSrvSetCoords_Request*(): Ros2Mecharm_interfacesSrvSetCoords_Request =
 ## ``@brief Construct the declared defaults of mecharm_interfaces/srv/SetCoords_Request.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/nim/API-CONTRACT.md``
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
  result.`rx` = 0
  result.`ry` = 0
  result.`rz` = 0
  result.`speed` = 0
  result.`model` = 0
proc writeFields*(value: Ros2Mecharm_interfacesSrvSetCoords_Request; w: var Writer) =
 ## ``@brief Append every canonical field of mecharm_interfaces/srv/SetCoords_Request.``
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
 ## ``@see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`x`)
  putFloat32(w,value.`y`)
  putFloat32(w,value.`z`)
  putFloat32(w,value.`rx`)
  putFloat32(w,value.`ry`)
  putFloat32(w,value.`rz`)
  putInteger(w,value.`speed`)
  putInteger(w,value.`model`)
proc readRos2Mecharm_interfacesSrvSetCoords_Request*(r: var Reader): Ros2Mecharm_interfacesSrvSetCoords_Request =
 ## ``@brief Read the ordered canonical fields of mecharm_interfaces/srv/SetCoords_Request.``
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
 ## ``@see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mecharm_interfacesSrvSetCoords_Request()
  result.`x` = getFloat32(r)
  result.`y` = getFloat32(r)
  result.`z` = getFloat32(r)
  result.`rx` = getFloat32(r)
  result.`ry` = getFloat32(r)
  result.`rz` = getFloat32(r)
  result.`speed` = getInteger(r,int8)
  result.`model` = getInteger(r,int8)
proc encode*(value: Ros2Mecharm_interfacesSrvSetCoords_Request): seq[byte] =
 ## ``@brief Encode one complete mecharm_interfaces/srv/SetCoords_Request value.``
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
 ## ``@see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(26)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mecharm_interfacesSrvSetCoords_Request*(b: seq[byte]): Ros2Mecharm_interfacesSrvSetCoords_Request =
 ## ``@brief Decode exactly one complete mecharm_interfaces/srv/SetCoords_Request value.``
 ## ``@details Require the complete 26..26-byte canonical representation. Reject truncation,``
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
 ## ``@see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,26)
  result = readRos2Mecharm_interfacesSrvSetCoords_Request(r)
  finish(r)
type Ros2Mecharm_interfacesSrvSetCoords_Response* = object
 ## ``@brief Complete ROS 2 mecharm_interfaces/srv/SetCoords_Response value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_43d02cfe61b6fb08f035e1f8ea78496cdcb488ed4c916f528415dce4ab810b7f.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `flag`*: bool ## ``@brief mecharm_interfaces/srv/SetCoords_Response.flag: bool. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mecharm_interfacesSrvSetCoords_Response;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvSetCoords_ResponseMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mecharm_interfaces/srv/SetCoords_Response``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mecharm_interfacesSrvSetCoords_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvSetCoords_ResponseCodecIdentity* = "UWVMROS1_43d02cfe61b6fb08f035e1f8ea78496cdcb488ed4c916f528415dce4ab810b7f" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mecharm_interfaces/srv/SetCoords_Response.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_43d02cfe61b6fb08f035e1f8ea78496cdcb488ed4c916f528415dce4ab810b7f``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mecharm_interfacesSrvSetCoords_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvSetCoords_ResponseNativeType* = "mecharm_interfaces/srv/SetCoords_Response" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mecharm_interfaces/srv/SetCoords_Response.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mecharm_interfacesSrvSetCoords_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mecharm_interfacesSrvSetCoords_ResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mecharm_interfaces/srv/SetCoords_Response.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mecharm_interfacesSrvSetCoords_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mecharm_interfacesSrvSetCoords_Response*(): Ros2Mecharm_interfacesSrvSetCoords_Response =
 ## ``@brief Construct the declared defaults of mecharm_interfaces/srv/SetCoords_Response.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mecharm_interfacesSrvSetCoords_Response; share/platform/ros/nim/API-CONTRACT.md``
  result.`flag` = false
proc writeFields*(value: Ros2Mecharm_interfacesSrvSetCoords_Response; w: var Writer) =
 ## ``@brief Append every canonical field of mecharm_interfaces/srv/SetCoords_Response.``
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
 ## ``@see Ros2Mecharm_interfacesSrvSetCoords_Response; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`flag`)
proc readRos2Mecharm_interfacesSrvSetCoords_Response*(r: var Reader): Ros2Mecharm_interfacesSrvSetCoords_Response =
 ## ``@brief Read the ordered canonical fields of mecharm_interfaces/srv/SetCoords_Response.``
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
 ## ``@see Ros2Mecharm_interfacesSrvSetCoords_Response; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mecharm_interfacesSrvSetCoords_Response()
  result.`flag` = getBool(r)
proc encode*(value: Ros2Mecharm_interfacesSrvSetCoords_Response): seq[byte] =
 ## ``@brief Encode one complete mecharm_interfaces/srv/SetCoords_Response value.``
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
 ## ``@see Ros2Mecharm_interfacesSrvSetCoords_Response; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mecharm_interfacesSrvSetCoords_Response*(b: seq[byte]): Ros2Mecharm_interfacesSrvSetCoords_Response =
 ## ``@brief Decode exactly one complete mecharm_interfaces/srv/SetCoords_Response value.``
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
 ## ``@see Ros2Mecharm_interfacesSrvSetCoords_Response; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos2Mecharm_interfacesSrvSetCoords_Response(r)
  finish(r)
type Ros2Mycobot_interfacesMsgMycobotAngles* = object
 ## ``@brief Complete ROS 2 mycobot_interfaces/msg/MycobotAngles value.``
 ## ``@details All 6 declared fields are retained in source order. The canonical representation``
 ## ``occupies 24..24 bytes and is identified by``
 ## ``UWVMROS1_38f099339ed5ee9fe56a5b44c3f0849e2ff7ff721b2a95b5cf49e3b92f6a9d82.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `joint_1`*: float32 ## ``@brief mycobot_interfaces/msg/MycobotAngles.joint_1: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_interfacesMsgMycobotAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_2`*: float32 ## ``@brief mycobot_interfaces/msg/MycobotAngles.joint_2: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_interfacesMsgMycobotAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_3`*: float32 ## ``@brief mycobot_interfaces/msg/MycobotAngles.joint_3: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_interfacesMsgMycobotAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_4`*: float32 ## ``@brief mycobot_interfaces/msg/MycobotAngles.joint_4: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_interfacesMsgMycobotAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_5`*: float32 ## ``@brief mycobot_interfaces/msg/MycobotAngles.joint_5: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_interfacesMsgMycobotAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_6`*: float32 ## ``@brief mycobot_interfaces/msg/MycobotAngles.joint_6: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_interfacesMsgMycobotAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesMsgMycobotAnglesMaximumWireBytes* = 24 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_interfaces/msg/MycobotAngles``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 24 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_interfacesMsgMycobotAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesMsgMycobotAnglesCodecIdentity* = "UWVMROS1_38f099339ed5ee9fe56a5b44c3f0849e2ff7ff721b2a95b5cf49e3b92f6a9d82" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_interfaces/msg/MycobotAngles.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_38f099339ed5ee9fe56a5b44c3f0849e2ff7ff721b2a95b5cf49e3b92f6a9d82``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_interfacesMsgMycobotAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesMsgMycobotAnglesNativeType* = "mycobot_interfaces/msg/MycobotAngles" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_interfaces/msg/MycobotAngles.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_interfacesMsgMycobotAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesMsgMycobotAnglesNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_interfaces/msg/MycobotAngles.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_interfacesMsgMycobotAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_interfacesMsgMycobotAngles*(): Ros2Mycobot_interfacesMsgMycobotAngles =
 ## ``@brief Construct the declared defaults of mycobot_interfaces/msg/MycobotAngles.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_interfacesMsgMycobotAngles; share/platform/ros/nim/API-CONTRACT.md``
  result.`joint_1` = 0
  result.`joint_2` = 0
  result.`joint_3` = 0
  result.`joint_4` = 0
  result.`joint_5` = 0
  result.`joint_6` = 0
proc writeFields*(value: Ros2Mycobot_interfacesMsgMycobotAngles; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_interfaces/msg/MycobotAngles.``
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
 ## ``@see Ros2Mycobot_interfacesMsgMycobotAngles; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`joint_1`)
  putFloat32(w,value.`joint_2`)
  putFloat32(w,value.`joint_3`)
  putFloat32(w,value.`joint_4`)
  putFloat32(w,value.`joint_5`)
  putFloat32(w,value.`joint_6`)
proc readRos2Mycobot_interfacesMsgMycobotAngles*(r: var Reader): Ros2Mycobot_interfacesMsgMycobotAngles =
 ## ``@brief Read the ordered canonical fields of mycobot_interfaces/msg/MycobotAngles.``
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
 ## ``@see Ros2Mycobot_interfacesMsgMycobotAngles; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_interfacesMsgMycobotAngles()
  result.`joint_1` = getFloat32(r)
  result.`joint_2` = getFloat32(r)
  result.`joint_3` = getFloat32(r)
  result.`joint_4` = getFloat32(r)
  result.`joint_5` = getFloat32(r)
  result.`joint_6` = getFloat32(r)
proc encode*(value: Ros2Mycobot_interfacesMsgMycobotAngles): seq[byte] =
 ## ``@brief Encode one complete mycobot_interfaces/msg/MycobotAngles value.``
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
 ## ``@see Ros2Mycobot_interfacesMsgMycobotAngles; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_interfacesMsgMycobotAngles*(b: seq[byte]): Ros2Mycobot_interfacesMsgMycobotAngles =
 ## ``@brief Decode exactly one complete mycobot_interfaces/msg/MycobotAngles value.``
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
 ## ``@see Ros2Mycobot_interfacesMsgMycobotAngles; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,24)
  result = readRos2Mycobot_interfacesMsgMycobotAngles(r)
  finish(r)
type Ros2Mycobot_interfacesMsgMycobotCoords* = object
 ## ``@brief Complete ROS 2 mycobot_interfaces/msg/MycobotCoords value.``
 ## ``@details All 6 declared fields are retained in source order. The canonical representation``
 ## ``occupies 24..24 bytes and is identified by``
 ## ``UWVMROS1_8d9606c561db7680e816f5a19fd148c374f271acee8b261f7d060f370e0399d7.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `x`*: float32 ## ``@brief mycobot_interfaces/msg/MycobotCoords.x: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/nim/API-CONTRACT.md``
  `y`*: float32 ## ``@brief mycobot_interfaces/msg/MycobotCoords.y: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/nim/API-CONTRACT.md``
  `z`*: float32 ## ``@brief mycobot_interfaces/msg/MycobotCoords.z: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/nim/API-CONTRACT.md``
  `rx`*: float32 ## ``@brief mycobot_interfaces/msg/MycobotCoords.rx: float32. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_interfacesMsgMycobotCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `ry`*: float32 ## ``@brief mycobot_interfaces/msg/MycobotCoords.ry: float32. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_interfacesMsgMycobotCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rz`*: float32 ## ``@brief mycobot_interfaces/msg/MycobotCoords.rz: float32. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_interfacesMsgMycobotCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesMsgMycobotCoordsMaximumWireBytes* = 24 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_interfaces/msg/MycobotCoords``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 24 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_interfacesMsgMycobotCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesMsgMycobotCoordsCodecIdentity* = "UWVMROS1_8d9606c561db7680e816f5a19fd148c374f271acee8b261f7d060f370e0399d7" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_interfaces/msg/MycobotCoords.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_8d9606c561db7680e816f5a19fd148c374f271acee8b261f7d060f370e0399d7``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_interfacesMsgMycobotCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesMsgMycobotCoordsNativeType* = "mycobot_interfaces/msg/MycobotCoords" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_interfaces/msg/MycobotCoords.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_interfacesMsgMycobotCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesMsgMycobotCoordsNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_interfaces/msg/MycobotCoords.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_interfacesMsgMycobotCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_interfacesMsgMycobotCoords*(): Ros2Mycobot_interfacesMsgMycobotCoords =
 ## ``@brief Construct the declared defaults of mycobot_interfaces/msg/MycobotCoords.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/nim/API-CONTRACT.md``
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
  result.`rx` = 0
  result.`ry` = 0
  result.`rz` = 0
proc writeFields*(value: Ros2Mycobot_interfacesMsgMycobotCoords; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_interfaces/msg/MycobotCoords.``
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
 ## ``@see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`x`)
  putFloat32(w,value.`y`)
  putFloat32(w,value.`z`)
  putFloat32(w,value.`rx`)
  putFloat32(w,value.`ry`)
  putFloat32(w,value.`rz`)
proc readRos2Mycobot_interfacesMsgMycobotCoords*(r: var Reader): Ros2Mycobot_interfacesMsgMycobotCoords =
 ## ``@brief Read the ordered canonical fields of mycobot_interfaces/msg/MycobotCoords.``
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
 ## ``@see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_interfacesMsgMycobotCoords()
  result.`x` = getFloat32(r)
  result.`y` = getFloat32(r)
  result.`z` = getFloat32(r)
  result.`rx` = getFloat32(r)
  result.`ry` = getFloat32(r)
  result.`rz` = getFloat32(r)
proc encode*(value: Ros2Mycobot_interfacesMsgMycobotCoords): seq[byte] =
 ## ``@brief Encode one complete mycobot_interfaces/msg/MycobotCoords value.``
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
 ## ``@see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_interfacesMsgMycobotCoords*(b: seq[byte]): Ros2Mycobot_interfacesMsgMycobotCoords =
 ## ``@brief Decode exactly one complete mycobot_interfaces/msg/MycobotCoords value.``
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
 ## ``@see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,24)
  result = readRos2Mycobot_interfacesMsgMycobotCoords(r)
  finish(r)
type Ros2Mycobot_interfacesMsgMycobotGripperStatus* = object
 ## ``@brief Complete ROS 2 mycobot_interfaces/msg/MycobotGripperStatus value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_4dc3ab413af3da01e26a3289ef9e5ef39488d00483631d701b4d617d9c9ba33d.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `status`*: bool ## ``@brief mycobot_interfaces/msg/MycobotGripperStatus.status: bool. @details The``
                  ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                  ## ``preserves the original field position and signedness; invalid bounds fail instead``
                  ## ``of truncating the value. @units Use the units and frame/clock domain of the``
                  ## ``pinned native definition. The codec performs no scaling, frame conversion or``
                  ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                  ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                  ## ``enclosing decode function. @see Ros2Mycobot_interfacesMsgMycobotGripperStatus;``
                  ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesMsgMycobotGripperStatusMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_interfaces/msg/MycobotGripperStatus``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_interfacesMsgMycobotGripperStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesMsgMycobotGripperStatusCodecIdentity* = "UWVMROS1_4dc3ab413af3da01e26a3289ef9e5ef39488d00483631d701b4d617d9c9ba33d" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_interfaces/msg/MycobotGripperStatus.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_4dc3ab413af3da01e26a3289ef9e5ef39488d00483631d701b4d617d9c9ba33d``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_interfacesMsgMycobotGripperStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesMsgMycobotGripperStatusNativeType* = "mycobot_interfaces/msg/MycobotGripperStatus" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_interfaces/msg/MycobotGripperStatus.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_interfacesMsgMycobotGripperStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesMsgMycobotGripperStatusNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_interfaces/msg/MycobotGripperStatus.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_interfacesMsgMycobotGripperStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_interfacesMsgMycobotGripperStatus*(): Ros2Mycobot_interfacesMsgMycobotGripperStatus =
 ## ``@brief Construct the declared defaults of mycobot_interfaces/msg/MycobotGripperStatus.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_interfacesMsgMycobotGripperStatus; share/platform/ros/nim/API-CONTRACT.md``
  result.`status` = false
proc writeFields*(value: Ros2Mycobot_interfacesMsgMycobotGripperStatus; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_interfaces/msg/MycobotGripperStatus.``
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
 ## ``@see Ros2Mycobot_interfacesMsgMycobotGripperStatus; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`status`)
proc readRos2Mycobot_interfacesMsgMycobotGripperStatus*(r: var Reader): Ros2Mycobot_interfacesMsgMycobotGripperStatus =
 ## ``@brief Read the ordered canonical fields of mycobot_interfaces/msg/MycobotGripperStatus.``
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
 ## ``@see Ros2Mycobot_interfacesMsgMycobotGripperStatus; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_interfacesMsgMycobotGripperStatus()
  result.`status` = getBool(r)
proc encode*(value: Ros2Mycobot_interfacesMsgMycobotGripperStatus): seq[byte] =
 ## ``@brief Encode one complete mycobot_interfaces/msg/MycobotGripperStatus value.``
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
 ## ``@see Ros2Mycobot_interfacesMsgMycobotGripperStatus; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_interfacesMsgMycobotGripperStatus*(b: seq[byte]): Ros2Mycobot_interfacesMsgMycobotGripperStatus =
 ## ``@brief Decode exactly one complete mycobot_interfaces/msg/MycobotGripperStatus value.``
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
 ## ``@see Ros2Mycobot_interfacesMsgMycobotGripperStatus; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos2Mycobot_interfacesMsgMycobotGripperStatus(r)
  finish(r)
type Ros2Mycobot_interfacesMsgMycobotPumpStatus* = object
 ## ``@brief Complete ROS 2 mycobot_interfaces/msg/MycobotPumpStatus value.``
 ## ``@details All 3 declared fields are retained in source order. The canonical representation``
 ## ``occupies 3..3 bytes and is identified by``
 ## ``UWVMROS1_860004dc3975ab44b5a1b0a77a9ff01ab58bfc71d7142d842d3bf9c636365e58.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `status`*: bool ## ``@brief mycobot_interfaces/msg/MycobotPumpStatus.status: bool. @details The``
                  ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                  ## ``preserves the original field position and signedness; invalid bounds fail instead``
                  ## ``of truncating the value. @units Use the units and frame/clock domain of the``
                  ## ``pinned native definition. The codec performs no scaling, frame conversion or``
                  ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                  ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                  ## ``enclosing decode function. @see Ros2Mycobot_interfacesMsgMycobotPumpStatus;``
                  ## ``share/platform/ros/nim/API-CONTRACT.md``
  `pin1`*: int8 ## ``@brief mycobot_interfaces/msg/MycobotPumpStatus.pin1: int8. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mycobot_interfacesMsgMycobotPumpStatus;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `pin2`*: int8 ## ``@brief mycobot_interfaces/msg/MycobotPumpStatus.pin2: int8. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mycobot_interfacesMsgMycobotPumpStatus;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesMsgMycobotPumpStatusMaximumWireBytes* = 3 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_interfaces/msg/MycobotPumpStatus``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 3 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_interfacesMsgMycobotPumpStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesMsgMycobotPumpStatusCodecIdentity* = "UWVMROS1_860004dc3975ab44b5a1b0a77a9ff01ab58bfc71d7142d842d3bf9c636365e58" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_interfaces/msg/MycobotPumpStatus.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_860004dc3975ab44b5a1b0a77a9ff01ab58bfc71d7142d842d3bf9c636365e58``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_interfacesMsgMycobotPumpStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesMsgMycobotPumpStatusNativeType* = "mycobot_interfaces/msg/MycobotPumpStatus" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_interfaces/msg/MycobotPumpStatus.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_interfacesMsgMycobotPumpStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesMsgMycobotPumpStatusNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_interfaces/msg/MycobotPumpStatus.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_interfacesMsgMycobotPumpStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_interfacesMsgMycobotPumpStatus*(): Ros2Mycobot_interfacesMsgMycobotPumpStatus =
 ## ``@brief Construct the declared defaults of mycobot_interfaces/msg/MycobotPumpStatus.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_interfacesMsgMycobotPumpStatus; share/platform/ros/nim/API-CONTRACT.md``
  result.`status` = false
  result.`pin1` = 0
  result.`pin2` = 0
proc writeFields*(value: Ros2Mycobot_interfacesMsgMycobotPumpStatus; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_interfaces/msg/MycobotPumpStatus.``
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
 ## ``@see Ros2Mycobot_interfacesMsgMycobotPumpStatus; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`status`)
  putInteger(w,value.`pin1`)
  putInteger(w,value.`pin2`)
proc readRos2Mycobot_interfacesMsgMycobotPumpStatus*(r: var Reader): Ros2Mycobot_interfacesMsgMycobotPumpStatus =
 ## ``@brief Read the ordered canonical fields of mycobot_interfaces/msg/MycobotPumpStatus.``
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
 ## ``@see Ros2Mycobot_interfacesMsgMycobotPumpStatus; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_interfacesMsgMycobotPumpStatus()
  result.`status` = getBool(r)
  result.`pin1` = getInteger(r,int8)
  result.`pin2` = getInteger(r,int8)
proc encode*(value: Ros2Mycobot_interfacesMsgMycobotPumpStatus): seq[byte] =
 ## ``@brief Encode one complete mycobot_interfaces/msg/MycobotPumpStatus value.``
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
 ## ``@see Ros2Mycobot_interfacesMsgMycobotPumpStatus; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(3)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_interfacesMsgMycobotPumpStatus*(b: seq[byte]): Ros2Mycobot_interfacesMsgMycobotPumpStatus =
 ## ``@brief Decode exactly one complete mycobot_interfaces/msg/MycobotPumpStatus value.``
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
 ## ``@see Ros2Mycobot_interfacesMsgMycobotPumpStatus; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,3)
  result = readRos2Mycobot_interfacesMsgMycobotPumpStatus(r)
  finish(r)
type Ros2Mycobot_interfacesMsgMycobotSetAngles* = object
 ## ``@brief Complete ROS 2 mycobot_interfaces/msg/MycobotSetAngles value.``
 ## ``@details All 7 declared fields are retained in source order. The canonical representation``
 ## ``occupies 25..25 bytes and is identified by``
 ## ``UWVMROS1_798576c5f0b03e46e5cc5d2edf81bc7042042482ef574643ca136621346d731e.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `joint_1`*: float32 ## ``@brief mycobot_interfaces/msg/MycobotSetAngles.joint_1: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_interfacesMsgMycobotSetAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_2`*: float32 ## ``@brief mycobot_interfaces/msg/MycobotSetAngles.joint_2: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_interfacesMsgMycobotSetAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_3`*: float32 ## ``@brief mycobot_interfaces/msg/MycobotSetAngles.joint_3: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_interfacesMsgMycobotSetAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_4`*: float32 ## ``@brief mycobot_interfaces/msg/MycobotSetAngles.joint_4: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_interfacesMsgMycobotSetAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_5`*: float32 ## ``@brief mycobot_interfaces/msg/MycobotSetAngles.joint_5: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_interfacesMsgMycobotSetAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_6`*: float32 ## ``@brief mycobot_interfaces/msg/MycobotSetAngles.joint_6: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_interfacesMsgMycobotSetAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `speed`*: int8 ## ``@brief mycobot_interfaces/msg/MycobotSetAngles.speed: int8. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_interfacesMsgMycobotSetAngles;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesMsgMycobotSetAnglesMaximumWireBytes* = 25 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_interfaces/msg/MycobotSetAngles``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 25 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_interfacesMsgMycobotSetAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesMsgMycobotSetAnglesCodecIdentity* = "UWVMROS1_798576c5f0b03e46e5cc5d2edf81bc7042042482ef574643ca136621346d731e" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_interfaces/msg/MycobotSetAngles.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_798576c5f0b03e46e5cc5d2edf81bc7042042482ef574643ca136621346d731e``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_interfacesMsgMycobotSetAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesMsgMycobotSetAnglesNativeType* = "mycobot_interfaces/msg/MycobotSetAngles" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_interfaces/msg/MycobotSetAngles.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_interfacesMsgMycobotSetAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesMsgMycobotSetAnglesNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_interfaces/msg/MycobotSetAngles.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_interfacesMsgMycobotSetAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_interfacesMsgMycobotSetAngles*(): Ros2Mycobot_interfacesMsgMycobotSetAngles =
 ## ``@brief Construct the declared defaults of mycobot_interfaces/msg/MycobotSetAngles.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/nim/API-CONTRACT.md``
  result.`joint_1` = 0
  result.`joint_2` = 0
  result.`joint_3` = 0
  result.`joint_4` = 0
  result.`joint_5` = 0
  result.`joint_6` = 0
  result.`speed` = 0
proc writeFields*(value: Ros2Mycobot_interfacesMsgMycobotSetAngles; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_interfaces/msg/MycobotSetAngles.``
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
 ## ``@see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`joint_1`)
  putFloat32(w,value.`joint_2`)
  putFloat32(w,value.`joint_3`)
  putFloat32(w,value.`joint_4`)
  putFloat32(w,value.`joint_5`)
  putFloat32(w,value.`joint_6`)
  putInteger(w,value.`speed`)
proc readRos2Mycobot_interfacesMsgMycobotSetAngles*(r: var Reader): Ros2Mycobot_interfacesMsgMycobotSetAngles =
 ## ``@brief Read the ordered canonical fields of mycobot_interfaces/msg/MycobotSetAngles.``
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
 ## ``@see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_interfacesMsgMycobotSetAngles()
  result.`joint_1` = getFloat32(r)
  result.`joint_2` = getFloat32(r)
  result.`joint_3` = getFloat32(r)
  result.`joint_4` = getFloat32(r)
  result.`joint_5` = getFloat32(r)
  result.`joint_6` = getFloat32(r)
  result.`speed` = getInteger(r,int8)
proc encode*(value: Ros2Mycobot_interfacesMsgMycobotSetAngles): seq[byte] =
 ## ``@brief Encode one complete mycobot_interfaces/msg/MycobotSetAngles value.``
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
 ## ``@see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(25)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_interfacesMsgMycobotSetAngles*(b: seq[byte]): Ros2Mycobot_interfacesMsgMycobotSetAngles =
 ## ``@brief Decode exactly one complete mycobot_interfaces/msg/MycobotSetAngles value.``
 ## ``@details Require the complete 25..25-byte canonical representation. Reject truncation,``
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
 ## ``@see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,25)
  result = readRos2Mycobot_interfacesMsgMycobotSetAngles(r)
  finish(r)
type Ros2Mycobot_interfacesMsgMycobotSetCoords* = object
 ## ``@brief Complete ROS 2 mycobot_interfaces/msg/MycobotSetCoords value.``
 ## ``@details All 8 declared fields are retained in source order. The canonical representation``
 ## ``occupies 26..26 bytes and is identified by``
 ## ``UWVMROS1_462b7629172037a6959d08984896980c8c07ae5b6364c6d848b172dea23cab49.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `x`*: float32 ## ``@brief mycobot_interfaces/msg/MycobotSetCoords.x: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mycobot_interfacesMsgMycobotSetCoords;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `y`*: float32 ## ``@brief mycobot_interfaces/msg/MycobotSetCoords.y: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mycobot_interfacesMsgMycobotSetCoords;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `z`*: float32 ## ``@brief mycobot_interfaces/msg/MycobotSetCoords.z: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mycobot_interfacesMsgMycobotSetCoords;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rx`*: float32 ## ``@brief mycobot_interfaces/msg/MycobotSetCoords.rx: float32. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_interfacesMsgMycobotSetCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `ry`*: float32 ## ``@brief mycobot_interfaces/msg/MycobotSetCoords.ry: float32. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_interfacesMsgMycobotSetCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rz`*: float32 ## ``@brief mycobot_interfaces/msg/MycobotSetCoords.rz: float32. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_interfacesMsgMycobotSetCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `speed`*: int8 ## ``@brief mycobot_interfaces/msg/MycobotSetCoords.speed: int8. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_interfacesMsgMycobotSetCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `model`*: int8 ## ``@brief mycobot_interfaces/msg/MycobotSetCoords.model: int8. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_interfacesMsgMycobotSetCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesMsgMycobotSetCoordsMaximumWireBytes* = 26 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_interfaces/msg/MycobotSetCoords``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 26 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_interfacesMsgMycobotSetCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesMsgMycobotSetCoordsCodecIdentity* = "UWVMROS1_462b7629172037a6959d08984896980c8c07ae5b6364c6d848b172dea23cab49" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_interfaces/msg/MycobotSetCoords.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_462b7629172037a6959d08984896980c8c07ae5b6364c6d848b172dea23cab49``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_interfacesMsgMycobotSetCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesMsgMycobotSetCoordsNativeType* = "mycobot_interfaces/msg/MycobotSetCoords" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_interfaces/msg/MycobotSetCoords.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_interfacesMsgMycobotSetCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesMsgMycobotSetCoordsNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_interfaces/msg/MycobotSetCoords.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_interfacesMsgMycobotSetCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_interfacesMsgMycobotSetCoords*(): Ros2Mycobot_interfacesMsgMycobotSetCoords =
 ## ``@brief Construct the declared defaults of mycobot_interfaces/msg/MycobotSetCoords.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/nim/API-CONTRACT.md``
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
  result.`rx` = 0
  result.`ry` = 0
  result.`rz` = 0
  result.`speed` = 0
  result.`model` = 0
proc writeFields*(value: Ros2Mycobot_interfacesMsgMycobotSetCoords; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_interfaces/msg/MycobotSetCoords.``
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
 ## ``@see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`x`)
  putFloat32(w,value.`y`)
  putFloat32(w,value.`z`)
  putFloat32(w,value.`rx`)
  putFloat32(w,value.`ry`)
  putFloat32(w,value.`rz`)
  putInteger(w,value.`speed`)
  putInteger(w,value.`model`)
proc readRos2Mycobot_interfacesMsgMycobotSetCoords*(r: var Reader): Ros2Mycobot_interfacesMsgMycobotSetCoords =
 ## ``@brief Read the ordered canonical fields of mycobot_interfaces/msg/MycobotSetCoords.``
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
 ## ``@see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_interfacesMsgMycobotSetCoords()
  result.`x` = getFloat32(r)
  result.`y` = getFloat32(r)
  result.`z` = getFloat32(r)
  result.`rx` = getFloat32(r)
  result.`ry` = getFloat32(r)
  result.`rz` = getFloat32(r)
  result.`speed` = getInteger(r,int8)
  result.`model` = getInteger(r,int8)
proc encode*(value: Ros2Mycobot_interfacesMsgMycobotSetCoords): seq[byte] =
 ## ``@brief Encode one complete mycobot_interfaces/msg/MycobotSetCoords value.``
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
 ## ``@see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(26)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_interfacesMsgMycobotSetCoords*(b: seq[byte]): Ros2Mycobot_interfacesMsgMycobotSetCoords =
 ## ``@brief Decode exactly one complete mycobot_interfaces/msg/MycobotSetCoords value.``
 ## ``@details Require the complete 26..26-byte canonical representation. Reject truncation,``
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
 ## ``@see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,26)
  result = readRos2Mycobot_interfacesMsgMycobotSetCoords(r)
  finish(r)
type Ros2Mycobot_interfacesSrvGetAngles_Request* = object
 ## ``@brief Complete ROS 2 mycobot_interfaces/srv/GetAngles_Request value.``
 ## ``@details All 0 declared fields are retained in source order. The canonical representation``
 ## ``occupies 0..0 bytes and is identified by``
 ## ``UWVMROS1_ea433bdb6e3cb77923720a56bec24aaec62c88480248a4ed425370092474d38e.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvGetAngles_RequestMaximumWireBytes* = 0 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_interfaces/srv/GetAngles_Request``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 0 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_interfacesSrvGetAngles_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvGetAngles_RequestCodecIdentity* = "UWVMROS1_ea433bdb6e3cb77923720a56bec24aaec62c88480248a4ed425370092474d38e" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_interfaces/srv/GetAngles_Request.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_ea433bdb6e3cb77923720a56bec24aaec62c88480248a4ed425370092474d38e``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_interfacesSrvGetAngles_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvGetAngles_RequestNativeType* = "mycobot_interfaces/srv/GetAngles_Request" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_interfaces/srv/GetAngles_Request.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_interfacesSrvGetAngles_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvGetAngles_RequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_interfaces/srv/GetAngles_Request.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_interfacesSrvGetAngles_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_interfacesSrvGetAngles_Request*(): Ros2Mycobot_interfacesSrvGetAngles_Request =
 ## ``@brief Construct the declared defaults of mycobot_interfaces/srv/GetAngles_Request.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_interfacesSrvGetAngles_Request; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc writeFields*(value: Ros2Mycobot_interfacesSrvGetAngles_Request; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_interfaces/srv/GetAngles_Request.``
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
 ## ``@see Ros2Mycobot_interfacesSrvGetAngles_Request; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc readRos2Mycobot_interfacesSrvGetAngles_Request*(r: var Reader): Ros2Mycobot_interfacesSrvGetAngles_Request =
 ## ``@brief Read the ordered canonical fields of mycobot_interfaces/srv/GetAngles_Request.``
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
 ## ``@see Ros2Mycobot_interfacesSrvGetAngles_Request; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_interfacesSrvGetAngles_Request()
proc encode*(value: Ros2Mycobot_interfacesSrvGetAngles_Request): seq[byte] =
 ## ``@brief Encode one complete mycobot_interfaces/srv/GetAngles_Request value.``
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
 ## ``@see Ros2Mycobot_interfacesSrvGetAngles_Request; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_interfacesSrvGetAngles_Request*(b: seq[byte]): Ros2Mycobot_interfacesSrvGetAngles_Request =
 ## ``@brief Decode exactly one complete mycobot_interfaces/srv/GetAngles_Request value.``
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
 ## ``@see Ros2Mycobot_interfacesSrvGetAngles_Request; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,0)
  result = readRos2Mycobot_interfacesSrvGetAngles_Request(r)
  finish(r)
type Ros2Mycobot_interfacesSrvGetAngles_Response* = object
 ## ``@brief Complete ROS 2 mycobot_interfaces/srv/GetAngles_Response value.``
 ## ``@details All 6 declared fields are retained in source order. The canonical representation``
 ## ``occupies 24..24 bytes and is identified by``
 ## ``UWVMROS1_14d6e2d8a6f7234719fae06d8807c651965387e252160df555ede0a070123b8a.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `joint_1`*: float32 ## ``@brief mycobot_interfaces/srv/GetAngles_Response.joint_1: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_interfacesSrvGetAngles_Response;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_2`*: float32 ## ``@brief mycobot_interfaces/srv/GetAngles_Response.joint_2: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_interfacesSrvGetAngles_Response;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_3`*: float32 ## ``@brief mycobot_interfaces/srv/GetAngles_Response.joint_3: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_interfacesSrvGetAngles_Response;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_4`*: float32 ## ``@brief mycobot_interfaces/srv/GetAngles_Response.joint_4: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_interfacesSrvGetAngles_Response;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_5`*: float32 ## ``@brief mycobot_interfaces/srv/GetAngles_Response.joint_5: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_interfacesSrvGetAngles_Response;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_6`*: float32 ## ``@brief mycobot_interfaces/srv/GetAngles_Response.joint_6: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_interfacesSrvGetAngles_Response;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvGetAngles_ResponseMaximumWireBytes* = 24 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_interfaces/srv/GetAngles_Response``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 24 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_interfacesSrvGetAngles_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvGetAngles_ResponseCodecIdentity* = "UWVMROS1_14d6e2d8a6f7234719fae06d8807c651965387e252160df555ede0a070123b8a" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_interfaces/srv/GetAngles_Response.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_14d6e2d8a6f7234719fae06d8807c651965387e252160df555ede0a070123b8a``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_interfacesSrvGetAngles_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvGetAngles_ResponseNativeType* = "mycobot_interfaces/srv/GetAngles_Response" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_interfaces/srv/GetAngles_Response.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_interfacesSrvGetAngles_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvGetAngles_ResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_interfaces/srv/GetAngles_Response.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_interfacesSrvGetAngles_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_interfacesSrvGetAngles_Response*(): Ros2Mycobot_interfacesSrvGetAngles_Response =
 ## ``@brief Construct the declared defaults of mycobot_interfaces/srv/GetAngles_Response.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_interfacesSrvGetAngles_Response; share/platform/ros/nim/API-CONTRACT.md``
  result.`joint_1` = 0
  result.`joint_2` = 0
  result.`joint_3` = 0
  result.`joint_4` = 0
  result.`joint_5` = 0
  result.`joint_6` = 0
proc writeFields*(value: Ros2Mycobot_interfacesSrvGetAngles_Response; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_interfaces/srv/GetAngles_Response.``
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
 ## ``@see Ros2Mycobot_interfacesSrvGetAngles_Response; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`joint_1`)
  putFloat32(w,value.`joint_2`)
  putFloat32(w,value.`joint_3`)
  putFloat32(w,value.`joint_4`)
  putFloat32(w,value.`joint_5`)
  putFloat32(w,value.`joint_6`)
proc readRos2Mycobot_interfacesSrvGetAngles_Response*(r: var Reader): Ros2Mycobot_interfacesSrvGetAngles_Response =
 ## ``@brief Read the ordered canonical fields of mycobot_interfaces/srv/GetAngles_Response.``
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
 ## ``@see Ros2Mycobot_interfacesSrvGetAngles_Response; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_interfacesSrvGetAngles_Response()
  result.`joint_1` = getFloat32(r)
  result.`joint_2` = getFloat32(r)
  result.`joint_3` = getFloat32(r)
  result.`joint_4` = getFloat32(r)
  result.`joint_5` = getFloat32(r)
  result.`joint_6` = getFloat32(r)
proc encode*(value: Ros2Mycobot_interfacesSrvGetAngles_Response): seq[byte] =
 ## ``@brief Encode one complete mycobot_interfaces/srv/GetAngles_Response value.``
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
 ## ``@see Ros2Mycobot_interfacesSrvGetAngles_Response; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_interfacesSrvGetAngles_Response*(b: seq[byte]): Ros2Mycobot_interfacesSrvGetAngles_Response =
 ## ``@brief Decode exactly one complete mycobot_interfaces/srv/GetAngles_Response value.``
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
 ## ``@see Ros2Mycobot_interfacesSrvGetAngles_Response; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,24)
  result = readRos2Mycobot_interfacesSrvGetAngles_Response(r)
  finish(r)
type Ros2Mycobot_interfacesSrvGetCoords_Request* = object
 ## ``@brief Complete ROS 2 mycobot_interfaces/srv/GetCoords_Request value.``
 ## ``@details All 0 declared fields are retained in source order. The canonical representation``
 ## ``occupies 0..0 bytes and is identified by``
 ## ``UWVMROS1_31ef03eefc143e9d040572e378a5803f44f68bac6d03fbb44ca27f87fb5fb076.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvGetCoords_RequestMaximumWireBytes* = 0 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_interfaces/srv/GetCoords_Request``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 0 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_interfacesSrvGetCoords_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvGetCoords_RequestCodecIdentity* = "UWVMROS1_31ef03eefc143e9d040572e378a5803f44f68bac6d03fbb44ca27f87fb5fb076" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_interfaces/srv/GetCoords_Request.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_31ef03eefc143e9d040572e378a5803f44f68bac6d03fbb44ca27f87fb5fb076``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_interfacesSrvGetCoords_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvGetCoords_RequestNativeType* = "mycobot_interfaces/srv/GetCoords_Request" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_interfaces/srv/GetCoords_Request.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_interfacesSrvGetCoords_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvGetCoords_RequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_interfaces/srv/GetCoords_Request.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_interfacesSrvGetCoords_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_interfacesSrvGetCoords_Request*(): Ros2Mycobot_interfacesSrvGetCoords_Request =
 ## ``@brief Construct the declared defaults of mycobot_interfaces/srv/GetCoords_Request.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_interfacesSrvGetCoords_Request; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc writeFields*(value: Ros2Mycobot_interfacesSrvGetCoords_Request; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_interfaces/srv/GetCoords_Request.``
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
 ## ``@see Ros2Mycobot_interfacesSrvGetCoords_Request; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc readRos2Mycobot_interfacesSrvGetCoords_Request*(r: var Reader): Ros2Mycobot_interfacesSrvGetCoords_Request =
 ## ``@brief Read the ordered canonical fields of mycobot_interfaces/srv/GetCoords_Request.``
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
 ## ``@see Ros2Mycobot_interfacesSrvGetCoords_Request; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_interfacesSrvGetCoords_Request()
proc encode*(value: Ros2Mycobot_interfacesSrvGetCoords_Request): seq[byte] =
 ## ``@brief Encode one complete mycobot_interfaces/srv/GetCoords_Request value.``
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
 ## ``@see Ros2Mycobot_interfacesSrvGetCoords_Request; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_interfacesSrvGetCoords_Request*(b: seq[byte]): Ros2Mycobot_interfacesSrvGetCoords_Request =
 ## ``@brief Decode exactly one complete mycobot_interfaces/srv/GetCoords_Request value.``
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
 ## ``@see Ros2Mycobot_interfacesSrvGetCoords_Request; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,0)
  result = readRos2Mycobot_interfacesSrvGetCoords_Request(r)
  finish(r)
type Ros2Mycobot_interfacesSrvGetCoords_Response* = object
 ## ``@brief Complete ROS 2 mycobot_interfaces/srv/GetCoords_Response value.``
 ## ``@details All 6 declared fields are retained in source order. The canonical representation``
 ## ``occupies 24..24 bytes and is identified by``
 ## ``UWVMROS1_c9886b5cc5f3c48116a1c884f75ab4af49be46e2c0476ffc3aa8167ff96f7787.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `x`*: float32 ## ``@brief mycobot_interfaces/srv/GetCoords_Response.x: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mycobot_interfacesSrvGetCoords_Response;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `y`*: float32 ## ``@brief mycobot_interfaces/srv/GetCoords_Response.y: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mycobot_interfacesSrvGetCoords_Response;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `z`*: float32 ## ``@brief mycobot_interfaces/srv/GetCoords_Response.z: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mycobot_interfacesSrvGetCoords_Response;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rx`*: float32 ## ``@brief mycobot_interfaces/srv/GetCoords_Response.rx: float32. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_interfacesSrvGetCoords_Response;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `ry`*: float32 ## ``@brief mycobot_interfaces/srv/GetCoords_Response.ry: float32. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_interfacesSrvGetCoords_Response;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rz`*: float32 ## ``@brief mycobot_interfaces/srv/GetCoords_Response.rz: float32. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_interfacesSrvGetCoords_Response;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvGetCoords_ResponseMaximumWireBytes* = 24 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_interfaces/srv/GetCoords_Response``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 24 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_interfacesSrvGetCoords_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvGetCoords_ResponseCodecIdentity* = "UWVMROS1_c9886b5cc5f3c48116a1c884f75ab4af49be46e2c0476ffc3aa8167ff96f7787" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_interfaces/srv/GetCoords_Response.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_c9886b5cc5f3c48116a1c884f75ab4af49be46e2c0476ffc3aa8167ff96f7787``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_interfacesSrvGetCoords_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvGetCoords_ResponseNativeType* = "mycobot_interfaces/srv/GetCoords_Response" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_interfaces/srv/GetCoords_Response.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_interfacesSrvGetCoords_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvGetCoords_ResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_interfaces/srv/GetCoords_Response.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_interfacesSrvGetCoords_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_interfacesSrvGetCoords_Response*(): Ros2Mycobot_interfacesSrvGetCoords_Response =
 ## ``@brief Construct the declared defaults of mycobot_interfaces/srv/GetCoords_Response.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_interfacesSrvGetCoords_Response; share/platform/ros/nim/API-CONTRACT.md``
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
  result.`rx` = 0
  result.`ry` = 0
  result.`rz` = 0
proc writeFields*(value: Ros2Mycobot_interfacesSrvGetCoords_Response; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_interfaces/srv/GetCoords_Response.``
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
 ## ``@see Ros2Mycobot_interfacesSrvGetCoords_Response; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`x`)
  putFloat32(w,value.`y`)
  putFloat32(w,value.`z`)
  putFloat32(w,value.`rx`)
  putFloat32(w,value.`ry`)
  putFloat32(w,value.`rz`)
proc readRos2Mycobot_interfacesSrvGetCoords_Response*(r: var Reader): Ros2Mycobot_interfacesSrvGetCoords_Response =
 ## ``@brief Read the ordered canonical fields of mycobot_interfaces/srv/GetCoords_Response.``
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
 ## ``@see Ros2Mycobot_interfacesSrvGetCoords_Response; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_interfacesSrvGetCoords_Response()
  result.`x` = getFloat32(r)
  result.`y` = getFloat32(r)
  result.`z` = getFloat32(r)
  result.`rx` = getFloat32(r)
  result.`ry` = getFloat32(r)
  result.`rz` = getFloat32(r)
proc encode*(value: Ros2Mycobot_interfacesSrvGetCoords_Response): seq[byte] =
 ## ``@brief Encode one complete mycobot_interfaces/srv/GetCoords_Response value.``
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
 ## ``@see Ros2Mycobot_interfacesSrvGetCoords_Response; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_interfacesSrvGetCoords_Response*(b: seq[byte]): Ros2Mycobot_interfacesSrvGetCoords_Response =
 ## ``@brief Decode exactly one complete mycobot_interfaces/srv/GetCoords_Response value.``
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
 ## ``@see Ros2Mycobot_interfacesSrvGetCoords_Response; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,24)
  result = readRos2Mycobot_interfacesSrvGetCoords_Response(r)
  finish(r)
type Ros2Mycobot_interfacesSrvGripperStatus_Request* = object
 ## ``@brief Complete ROS 2 mycobot_interfaces/srv/GripperStatus_Request value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_6c5ae66e66f12834b7d623e07a5b3ef2b8127cd9cd83cb36d6793a68d921fcd5.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `status`*: bool ## ``@brief mycobot_interfaces/srv/GripperStatus_Request.status: bool. @details The``
                  ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                  ## ``preserves the original field position and signedness; invalid bounds fail instead``
                  ## ``of truncating the value. @units Use the units and frame/clock domain of the``
                  ## ``pinned native definition. The codec performs no scaling, frame conversion or``
                  ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                  ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                  ## ``enclosing decode function. @see Ros2Mycobot_interfacesSrvGripperStatus_Request;``
                  ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvGripperStatus_RequestMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_interfaces/srv/GripperStatus_Request``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_interfacesSrvGripperStatus_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvGripperStatus_RequestCodecIdentity* = "UWVMROS1_6c5ae66e66f12834b7d623e07a5b3ef2b8127cd9cd83cb36d6793a68d921fcd5" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_interfaces/srv/GripperStatus_Request.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_6c5ae66e66f12834b7d623e07a5b3ef2b8127cd9cd83cb36d6793a68d921fcd5``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_interfacesSrvGripperStatus_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvGripperStatus_RequestNativeType* = "mycobot_interfaces/srv/GripperStatus_Request" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_interfaces/srv/GripperStatus_Request.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_interfacesSrvGripperStatus_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvGripperStatus_RequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_interfaces/srv/GripperStatus_Request.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_interfacesSrvGripperStatus_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_interfacesSrvGripperStatus_Request*(): Ros2Mycobot_interfacesSrvGripperStatus_Request =
 ## ``@brief Construct the declared defaults of mycobot_interfaces/srv/GripperStatus_Request.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_interfacesSrvGripperStatus_Request; share/platform/ros/nim/API-CONTRACT.md``
  result.`status` = false
proc writeFields*(value: Ros2Mycobot_interfacesSrvGripperStatus_Request; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_interfaces/srv/GripperStatus_Request.``
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
 ## ``@see Ros2Mycobot_interfacesSrvGripperStatus_Request; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`status`)
proc readRos2Mycobot_interfacesSrvGripperStatus_Request*(r: var Reader): Ros2Mycobot_interfacesSrvGripperStatus_Request =
 ## ``@brief Read the ordered canonical fields of mycobot_interfaces/srv/GripperStatus_Request.``
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
 ## ``@see Ros2Mycobot_interfacesSrvGripperStatus_Request; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_interfacesSrvGripperStatus_Request()
  result.`status` = getBool(r)
proc encode*(value: Ros2Mycobot_interfacesSrvGripperStatus_Request): seq[byte] =
 ## ``@brief Encode one complete mycobot_interfaces/srv/GripperStatus_Request value.``
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
 ## ``@see Ros2Mycobot_interfacesSrvGripperStatus_Request; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_interfacesSrvGripperStatus_Request*(b: seq[byte]): Ros2Mycobot_interfacesSrvGripperStatus_Request =
 ## ``@brief Decode exactly one complete mycobot_interfaces/srv/GripperStatus_Request value.``
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
 ## ``@see Ros2Mycobot_interfacesSrvGripperStatus_Request; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos2Mycobot_interfacesSrvGripperStatus_Request(r)
  finish(r)
type Ros2Mycobot_interfacesSrvGripperStatus_Response* = object
 ## ``@brief Complete ROS 2 mycobot_interfaces/srv/GripperStatus_Response value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_530f1e1acaa8cda6b43f8a8c0a38f5376eaebce3e99f7fb194a28143bed2d1ab.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `flag`*: bool ## ``@brief mycobot_interfaces/srv/GripperStatus_Response.flag: bool. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mycobot_interfacesSrvGripperStatus_Response;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvGripperStatus_ResponseMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_interfaces/srv/GripperStatus_Response``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_interfacesSrvGripperStatus_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvGripperStatus_ResponseCodecIdentity* = "UWVMROS1_530f1e1acaa8cda6b43f8a8c0a38f5376eaebce3e99f7fb194a28143bed2d1ab" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_interfaces/srv/GripperStatus_Response.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_530f1e1acaa8cda6b43f8a8c0a38f5376eaebce3e99f7fb194a28143bed2d1ab``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_interfacesSrvGripperStatus_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvGripperStatus_ResponseNativeType* = "mycobot_interfaces/srv/GripperStatus_Response" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_interfaces/srv/GripperStatus_Response.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_interfacesSrvGripperStatus_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvGripperStatus_ResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_interfaces/srv/GripperStatus_Response.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_interfacesSrvGripperStatus_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_interfacesSrvGripperStatus_Response*(): Ros2Mycobot_interfacesSrvGripperStatus_Response =
 ## ``@brief Construct the declared defaults of mycobot_interfaces/srv/GripperStatus_Response.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_interfacesSrvGripperStatus_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`flag` = false
proc writeFields*(value: Ros2Mycobot_interfacesSrvGripperStatus_Response; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_interfaces/srv/GripperStatus_Response.``
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
 ## ``@see Ros2Mycobot_interfacesSrvGripperStatus_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`flag`)
proc readRos2Mycobot_interfacesSrvGripperStatus_Response*(r: var Reader): Ros2Mycobot_interfacesSrvGripperStatus_Response =
 ## ``@brief Read the ordered canonical fields of mycobot_interfaces/srv/GripperStatus_Response.``
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
 ## ``@see Ros2Mycobot_interfacesSrvGripperStatus_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_interfacesSrvGripperStatus_Response()
  result.`flag` = getBool(r)
proc encode*(value: Ros2Mycobot_interfacesSrvGripperStatus_Response): seq[byte] =
 ## ``@brief Encode one complete mycobot_interfaces/srv/GripperStatus_Response value.``
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
 ## ``@see Ros2Mycobot_interfacesSrvGripperStatus_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_interfacesSrvGripperStatus_Response*(b: seq[byte]): Ros2Mycobot_interfacesSrvGripperStatus_Response =
 ## ``@brief Decode exactly one complete mycobot_interfaces/srv/GripperStatus_Response value.``
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
 ## ``@see Ros2Mycobot_interfacesSrvGripperStatus_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos2Mycobot_interfacesSrvGripperStatus_Response(r)
  finish(r)
type Ros2Mycobot_interfacesSrvPumpStatus_Request* = object
 ## ``@brief Complete ROS 2 mycobot_interfaces/srv/PumpStatus_Request value.``
 ## ``@details All 3 declared fields are retained in source order. The canonical representation``
 ## ``occupies 3..3 bytes and is identified by``
 ## ``UWVMROS1_50b7fa285b93dd9e6b3b0eafda0afeb5911ab6e3b79d58f03f1cf1f76e732cd0.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `status`*: bool ## ``@brief mycobot_interfaces/srv/PumpStatus_Request.status: bool. @details The``
                  ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                  ## ``preserves the original field position and signedness; invalid bounds fail instead``
                  ## ``of truncating the value. @units Use the units and frame/clock domain of the``
                  ## ``pinned native definition. The codec performs no scaling, frame conversion or``
                  ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                  ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                  ## ``enclosing decode function. @see Ros2Mycobot_interfacesSrvPumpStatus_Request;``
                  ## ``share/platform/ros/nim/API-CONTRACT.md``
  `pin1`*: int8 ## ``@brief mycobot_interfaces/srv/PumpStatus_Request.pin1: int8. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mycobot_interfacesSrvPumpStatus_Request;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `pin2`*: int8 ## ``@brief mycobot_interfaces/srv/PumpStatus_Request.pin2: int8. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mycobot_interfacesSrvPumpStatus_Request;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvPumpStatus_RequestMaximumWireBytes* = 3 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_interfaces/srv/PumpStatus_Request``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 3 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_interfacesSrvPumpStatus_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvPumpStatus_RequestCodecIdentity* = "UWVMROS1_50b7fa285b93dd9e6b3b0eafda0afeb5911ab6e3b79d58f03f1cf1f76e732cd0" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_interfaces/srv/PumpStatus_Request.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_50b7fa285b93dd9e6b3b0eafda0afeb5911ab6e3b79d58f03f1cf1f76e732cd0``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_interfacesSrvPumpStatus_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvPumpStatus_RequestNativeType* = "mycobot_interfaces/srv/PumpStatus_Request" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_interfaces/srv/PumpStatus_Request.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_interfacesSrvPumpStatus_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvPumpStatus_RequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_interfaces/srv/PumpStatus_Request.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_interfacesSrvPumpStatus_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_interfacesSrvPumpStatus_Request*(): Ros2Mycobot_interfacesSrvPumpStatus_Request =
 ## ``@brief Construct the declared defaults of mycobot_interfaces/srv/PumpStatus_Request.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_interfacesSrvPumpStatus_Request; share/platform/ros/nim/API-CONTRACT.md``
  result.`status` = false
  result.`pin1` = 0
  result.`pin2` = 0
proc writeFields*(value: Ros2Mycobot_interfacesSrvPumpStatus_Request; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_interfaces/srv/PumpStatus_Request.``
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
 ## ``@see Ros2Mycobot_interfacesSrvPumpStatus_Request; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`status`)
  putInteger(w,value.`pin1`)
  putInteger(w,value.`pin2`)
proc readRos2Mycobot_interfacesSrvPumpStatus_Request*(r: var Reader): Ros2Mycobot_interfacesSrvPumpStatus_Request =
 ## ``@brief Read the ordered canonical fields of mycobot_interfaces/srv/PumpStatus_Request.``
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
 ## ``@see Ros2Mycobot_interfacesSrvPumpStatus_Request; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_interfacesSrvPumpStatus_Request()
  result.`status` = getBool(r)
  result.`pin1` = getInteger(r,int8)
  result.`pin2` = getInteger(r,int8)
proc encode*(value: Ros2Mycobot_interfacesSrvPumpStatus_Request): seq[byte] =
 ## ``@brief Encode one complete mycobot_interfaces/srv/PumpStatus_Request value.``
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
 ## ``@see Ros2Mycobot_interfacesSrvPumpStatus_Request; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(3)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_interfacesSrvPumpStatus_Request*(b: seq[byte]): Ros2Mycobot_interfacesSrvPumpStatus_Request =
 ## ``@brief Decode exactly one complete mycobot_interfaces/srv/PumpStatus_Request value.``
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
 ## ``@see Ros2Mycobot_interfacesSrvPumpStatus_Request; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,3)
  result = readRos2Mycobot_interfacesSrvPumpStatus_Request(r)
  finish(r)
type Ros2Mycobot_interfacesSrvPumpStatus_Response* = object
 ## ``@brief Complete ROS 2 mycobot_interfaces/srv/PumpStatus_Response value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_b347313e1d4430f4e78a72fb8c35d53a39d1d391290373f84f1f8b2b44375eb0.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `flag`*: bool ## ``@brief mycobot_interfaces/srv/PumpStatus_Response.flag: bool. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mycobot_interfacesSrvPumpStatus_Response;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvPumpStatus_ResponseMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_interfaces/srv/PumpStatus_Response``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_interfacesSrvPumpStatus_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvPumpStatus_ResponseCodecIdentity* = "UWVMROS1_b347313e1d4430f4e78a72fb8c35d53a39d1d391290373f84f1f8b2b44375eb0" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_interfaces/srv/PumpStatus_Response.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_b347313e1d4430f4e78a72fb8c35d53a39d1d391290373f84f1f8b2b44375eb0``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_interfacesSrvPumpStatus_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvPumpStatus_ResponseNativeType* = "mycobot_interfaces/srv/PumpStatus_Response" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_interfaces/srv/PumpStatus_Response.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_interfacesSrvPumpStatus_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvPumpStatus_ResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_interfaces/srv/PumpStatus_Response.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_interfacesSrvPumpStatus_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_interfacesSrvPumpStatus_Response*(): Ros2Mycobot_interfacesSrvPumpStatus_Response =
 ## ``@brief Construct the declared defaults of mycobot_interfaces/srv/PumpStatus_Response.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_interfacesSrvPumpStatus_Response; share/platform/ros/nim/API-CONTRACT.md``
  result.`flag` = false
proc writeFields*(value: Ros2Mycobot_interfacesSrvPumpStatus_Response; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_interfaces/srv/PumpStatus_Response.``
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
 ## ``@see Ros2Mycobot_interfacesSrvPumpStatus_Response; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`flag`)
proc readRos2Mycobot_interfacesSrvPumpStatus_Response*(r: var Reader): Ros2Mycobot_interfacesSrvPumpStatus_Response =
 ## ``@brief Read the ordered canonical fields of mycobot_interfaces/srv/PumpStatus_Response.``
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
 ## ``@see Ros2Mycobot_interfacesSrvPumpStatus_Response; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_interfacesSrvPumpStatus_Response()
  result.`flag` = getBool(r)
proc encode*(value: Ros2Mycobot_interfacesSrvPumpStatus_Response): seq[byte] =
 ## ``@brief Encode one complete mycobot_interfaces/srv/PumpStatus_Response value.``
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
 ## ``@see Ros2Mycobot_interfacesSrvPumpStatus_Response; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_interfacesSrvPumpStatus_Response*(b: seq[byte]): Ros2Mycobot_interfacesSrvPumpStatus_Response =
 ## ``@brief Decode exactly one complete mycobot_interfaces/srv/PumpStatus_Response value.``
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
 ## ``@see Ros2Mycobot_interfacesSrvPumpStatus_Response; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos2Mycobot_interfacesSrvPumpStatus_Response(r)
  finish(r)
type Ros2Mycobot_interfacesSrvSetAngles_Request* = object
 ## ``@brief Complete ROS 2 mycobot_interfaces/srv/SetAngles_Request value.``
 ## ``@details All 7 declared fields are retained in source order. The canonical representation``
 ## ``occupies 25..25 bytes and is identified by``
 ## ``UWVMROS1_a06efd8b6af878d55c26fda8a7177a0b6c8b687f7e1b9f2e17e2ecd19c440310.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `joint_1`*: float32 ## ``@brief mycobot_interfaces/srv/SetAngles_Request.joint_1: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_interfacesSrvSetAngles_Request;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_2`*: float32 ## ``@brief mycobot_interfaces/srv/SetAngles_Request.joint_2: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_interfacesSrvSetAngles_Request;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_3`*: float32 ## ``@brief mycobot_interfaces/srv/SetAngles_Request.joint_3: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_interfacesSrvSetAngles_Request;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_4`*: float32 ## ``@brief mycobot_interfaces/srv/SetAngles_Request.joint_4: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_interfacesSrvSetAngles_Request;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_5`*: float32 ## ``@brief mycobot_interfaces/srv/SetAngles_Request.joint_5: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_interfacesSrvSetAngles_Request;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_6`*: float32 ## ``@brief mycobot_interfaces/srv/SetAngles_Request.joint_6: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_interfacesSrvSetAngles_Request;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `speed`*: int8 ## ``@brief mycobot_interfaces/srv/SetAngles_Request.speed: int8. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_interfacesSrvSetAngles_Request;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvSetAngles_RequestMaximumWireBytes* = 25 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_interfaces/srv/SetAngles_Request``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 25 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_interfacesSrvSetAngles_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvSetAngles_RequestCodecIdentity* = "UWVMROS1_a06efd8b6af878d55c26fda8a7177a0b6c8b687f7e1b9f2e17e2ecd19c440310" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_interfaces/srv/SetAngles_Request.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_a06efd8b6af878d55c26fda8a7177a0b6c8b687f7e1b9f2e17e2ecd19c440310``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_interfacesSrvSetAngles_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvSetAngles_RequestNativeType* = "mycobot_interfaces/srv/SetAngles_Request" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_interfaces/srv/SetAngles_Request.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_interfacesSrvSetAngles_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvSetAngles_RequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_interfaces/srv/SetAngles_Request.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_interfacesSrvSetAngles_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_interfacesSrvSetAngles_Request*(): Ros2Mycobot_interfacesSrvSetAngles_Request =
 ## ``@brief Construct the declared defaults of mycobot_interfaces/srv/SetAngles_Request.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/nim/API-CONTRACT.md``
  result.`joint_1` = 0
  result.`joint_2` = 0
  result.`joint_3` = 0
  result.`joint_4` = 0
  result.`joint_5` = 0
  result.`joint_6` = 0
  result.`speed` = 0
proc writeFields*(value: Ros2Mycobot_interfacesSrvSetAngles_Request; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_interfaces/srv/SetAngles_Request.``
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
 ## ``@see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`joint_1`)
  putFloat32(w,value.`joint_2`)
  putFloat32(w,value.`joint_3`)
  putFloat32(w,value.`joint_4`)
  putFloat32(w,value.`joint_5`)
  putFloat32(w,value.`joint_6`)
  putInteger(w,value.`speed`)
proc readRos2Mycobot_interfacesSrvSetAngles_Request*(r: var Reader): Ros2Mycobot_interfacesSrvSetAngles_Request =
 ## ``@brief Read the ordered canonical fields of mycobot_interfaces/srv/SetAngles_Request.``
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
 ## ``@see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_interfacesSrvSetAngles_Request()
  result.`joint_1` = getFloat32(r)
  result.`joint_2` = getFloat32(r)
  result.`joint_3` = getFloat32(r)
  result.`joint_4` = getFloat32(r)
  result.`joint_5` = getFloat32(r)
  result.`joint_6` = getFloat32(r)
  result.`speed` = getInteger(r,int8)
proc encode*(value: Ros2Mycobot_interfacesSrvSetAngles_Request): seq[byte] =
 ## ``@brief Encode one complete mycobot_interfaces/srv/SetAngles_Request value.``
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
 ## ``@see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(25)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_interfacesSrvSetAngles_Request*(b: seq[byte]): Ros2Mycobot_interfacesSrvSetAngles_Request =
 ## ``@brief Decode exactly one complete mycobot_interfaces/srv/SetAngles_Request value.``
 ## ``@details Require the complete 25..25-byte canonical representation. Reject truncation,``
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
 ## ``@see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,25)
  result = readRos2Mycobot_interfacesSrvSetAngles_Request(r)
  finish(r)
type Ros2Mycobot_interfacesSrvSetAngles_Response* = object
 ## ``@brief Complete ROS 2 mycobot_interfaces/srv/SetAngles_Response value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_af4daae72e9ec28c8848b76b556c9387e65ba9698d8f0f6e5ba17522472ab665.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `flag`*: bool ## ``@brief mycobot_interfaces/srv/SetAngles_Response.flag: bool. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mycobot_interfacesSrvSetAngles_Response;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvSetAngles_ResponseMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_interfaces/srv/SetAngles_Response``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_interfacesSrvSetAngles_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvSetAngles_ResponseCodecIdentity* = "UWVMROS1_af4daae72e9ec28c8848b76b556c9387e65ba9698d8f0f6e5ba17522472ab665" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_interfaces/srv/SetAngles_Response.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_af4daae72e9ec28c8848b76b556c9387e65ba9698d8f0f6e5ba17522472ab665``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_interfacesSrvSetAngles_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvSetAngles_ResponseNativeType* = "mycobot_interfaces/srv/SetAngles_Response" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_interfaces/srv/SetAngles_Response.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_interfacesSrvSetAngles_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvSetAngles_ResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_interfaces/srv/SetAngles_Response.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_interfacesSrvSetAngles_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_interfacesSrvSetAngles_Response*(): Ros2Mycobot_interfacesSrvSetAngles_Response =
 ## ``@brief Construct the declared defaults of mycobot_interfaces/srv/SetAngles_Response.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_interfacesSrvSetAngles_Response; share/platform/ros/nim/API-CONTRACT.md``
  result.`flag` = false
proc writeFields*(value: Ros2Mycobot_interfacesSrvSetAngles_Response; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_interfaces/srv/SetAngles_Response.``
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
 ## ``@see Ros2Mycobot_interfacesSrvSetAngles_Response; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`flag`)
proc readRos2Mycobot_interfacesSrvSetAngles_Response*(r: var Reader): Ros2Mycobot_interfacesSrvSetAngles_Response =
 ## ``@brief Read the ordered canonical fields of mycobot_interfaces/srv/SetAngles_Response.``
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
 ## ``@see Ros2Mycobot_interfacesSrvSetAngles_Response; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_interfacesSrvSetAngles_Response()
  result.`flag` = getBool(r)
proc encode*(value: Ros2Mycobot_interfacesSrvSetAngles_Response): seq[byte] =
 ## ``@brief Encode one complete mycobot_interfaces/srv/SetAngles_Response value.``
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
 ## ``@see Ros2Mycobot_interfacesSrvSetAngles_Response; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_interfacesSrvSetAngles_Response*(b: seq[byte]): Ros2Mycobot_interfacesSrvSetAngles_Response =
 ## ``@brief Decode exactly one complete mycobot_interfaces/srv/SetAngles_Response value.``
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
 ## ``@see Ros2Mycobot_interfacesSrvSetAngles_Response; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos2Mycobot_interfacesSrvSetAngles_Response(r)
  finish(r)
type Ros2Mycobot_interfacesSrvSetCoords_Request* = object
 ## ``@brief Complete ROS 2 mycobot_interfaces/srv/SetCoords_Request value.``
 ## ``@details All 8 declared fields are retained in source order. The canonical representation``
 ## ``occupies 26..26 bytes and is identified by``
 ## ``UWVMROS1_76a98d5db6f98255046f13855dc7468049894805d83e3d3a7fbdaace40292213.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `x`*: float32 ## ``@brief mycobot_interfaces/srv/SetCoords_Request.x: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mycobot_interfacesSrvSetCoords_Request;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `y`*: float32 ## ``@brief mycobot_interfaces/srv/SetCoords_Request.y: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mycobot_interfacesSrvSetCoords_Request;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `z`*: float32 ## ``@brief mycobot_interfaces/srv/SetCoords_Request.z: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mycobot_interfacesSrvSetCoords_Request;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rx`*: float32 ## ``@brief mycobot_interfaces/srv/SetCoords_Request.rx: float32. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_interfacesSrvSetCoords_Request;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `ry`*: float32 ## ``@brief mycobot_interfaces/srv/SetCoords_Request.ry: float32. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_interfacesSrvSetCoords_Request;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rz`*: float32 ## ``@brief mycobot_interfaces/srv/SetCoords_Request.rz: float32. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_interfacesSrvSetCoords_Request;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `speed`*: int8 ## ``@brief mycobot_interfaces/srv/SetCoords_Request.speed: int8. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_interfacesSrvSetCoords_Request;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `model`*: int8 ## ``@brief mycobot_interfaces/srv/SetCoords_Request.model: int8. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_interfacesSrvSetCoords_Request;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvSetCoords_RequestMaximumWireBytes* = 26 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_interfaces/srv/SetCoords_Request``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 26 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_interfacesSrvSetCoords_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvSetCoords_RequestCodecIdentity* = "UWVMROS1_76a98d5db6f98255046f13855dc7468049894805d83e3d3a7fbdaace40292213" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_interfaces/srv/SetCoords_Request.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_76a98d5db6f98255046f13855dc7468049894805d83e3d3a7fbdaace40292213``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_interfacesSrvSetCoords_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvSetCoords_RequestNativeType* = "mycobot_interfaces/srv/SetCoords_Request" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_interfaces/srv/SetCoords_Request.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_interfacesSrvSetCoords_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvSetCoords_RequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_interfaces/srv/SetCoords_Request.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_interfacesSrvSetCoords_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_interfacesSrvSetCoords_Request*(): Ros2Mycobot_interfacesSrvSetCoords_Request =
 ## ``@brief Construct the declared defaults of mycobot_interfaces/srv/SetCoords_Request.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/nim/API-CONTRACT.md``
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
  result.`rx` = 0
  result.`ry` = 0
  result.`rz` = 0
  result.`speed` = 0
  result.`model` = 0
proc writeFields*(value: Ros2Mycobot_interfacesSrvSetCoords_Request; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_interfaces/srv/SetCoords_Request.``
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
 ## ``@see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`x`)
  putFloat32(w,value.`y`)
  putFloat32(w,value.`z`)
  putFloat32(w,value.`rx`)
  putFloat32(w,value.`ry`)
  putFloat32(w,value.`rz`)
  putInteger(w,value.`speed`)
  putInteger(w,value.`model`)
proc readRos2Mycobot_interfacesSrvSetCoords_Request*(r: var Reader): Ros2Mycobot_interfacesSrvSetCoords_Request =
 ## ``@brief Read the ordered canonical fields of mycobot_interfaces/srv/SetCoords_Request.``
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
 ## ``@see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_interfacesSrvSetCoords_Request()
  result.`x` = getFloat32(r)
  result.`y` = getFloat32(r)
  result.`z` = getFloat32(r)
  result.`rx` = getFloat32(r)
  result.`ry` = getFloat32(r)
  result.`rz` = getFloat32(r)
  result.`speed` = getInteger(r,int8)
  result.`model` = getInteger(r,int8)
proc encode*(value: Ros2Mycobot_interfacesSrvSetCoords_Request): seq[byte] =
 ## ``@brief Encode one complete mycobot_interfaces/srv/SetCoords_Request value.``
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
 ## ``@see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(26)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_interfacesSrvSetCoords_Request*(b: seq[byte]): Ros2Mycobot_interfacesSrvSetCoords_Request =
 ## ``@brief Decode exactly one complete mycobot_interfaces/srv/SetCoords_Request value.``
 ## ``@details Require the complete 26..26-byte canonical representation. Reject truncation,``
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
 ## ``@see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,26)
  result = readRos2Mycobot_interfacesSrvSetCoords_Request(r)
  finish(r)
type Ros2Mycobot_interfacesSrvSetCoords_Response* = object
 ## ``@brief Complete ROS 2 mycobot_interfaces/srv/SetCoords_Response value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_75e3ae0e6db60a275b08e450c420969aa1ee05d0f34864e8fb6535d2d13613b9.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `flag`*: bool ## ``@brief mycobot_interfaces/srv/SetCoords_Response.flag: bool. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mycobot_interfacesSrvSetCoords_Response;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvSetCoords_ResponseMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_interfaces/srv/SetCoords_Response``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_interfacesSrvSetCoords_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvSetCoords_ResponseCodecIdentity* = "UWVMROS1_75e3ae0e6db60a275b08e450c420969aa1ee05d0f34864e8fb6535d2d13613b9" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_interfaces/srv/SetCoords_Response.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_75e3ae0e6db60a275b08e450c420969aa1ee05d0f34864e8fb6535d2d13613b9``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_interfacesSrvSetCoords_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvSetCoords_ResponseNativeType* = "mycobot_interfaces/srv/SetCoords_Response" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_interfaces/srv/SetCoords_Response.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_interfacesSrvSetCoords_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_interfacesSrvSetCoords_ResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_interfaces/srv/SetCoords_Response.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_interfacesSrvSetCoords_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_interfacesSrvSetCoords_Response*(): Ros2Mycobot_interfacesSrvSetCoords_Response =
 ## ``@brief Construct the declared defaults of mycobot_interfaces/srv/SetCoords_Response.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_interfacesSrvSetCoords_Response; share/platform/ros/nim/API-CONTRACT.md``
  result.`flag` = false
proc writeFields*(value: Ros2Mycobot_interfacesSrvSetCoords_Response; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_interfaces/srv/SetCoords_Response.``
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
 ## ``@see Ros2Mycobot_interfacesSrvSetCoords_Response; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`flag`)
proc readRos2Mycobot_interfacesSrvSetCoords_Response*(r: var Reader): Ros2Mycobot_interfacesSrvSetCoords_Response =
 ## ``@brief Read the ordered canonical fields of mycobot_interfaces/srv/SetCoords_Response.``
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
 ## ``@see Ros2Mycobot_interfacesSrvSetCoords_Response; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_interfacesSrvSetCoords_Response()
  result.`flag` = getBool(r)
proc encode*(value: Ros2Mycobot_interfacesSrvSetCoords_Response): seq[byte] =
 ## ``@brief Encode one complete mycobot_interfaces/srv/SetCoords_Response value.``
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
 ## ``@see Ros2Mycobot_interfacesSrvSetCoords_Response; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_interfacesSrvSetCoords_Response*(b: seq[byte]): Ros2Mycobot_interfacesSrvSetCoords_Response =
 ## ``@brief Decode exactly one complete mycobot_interfaces/srv/SetCoords_Response value.``
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
 ## ``@see Ros2Mycobot_interfacesSrvSetCoords_Response; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos2Mycobot_interfacesSrvSetCoords_Response(r)
  finish(r)
type Ros2Mycobot_pro450_interfacesMsgMycobotAngles* = object
 ## ``@brief Complete ROS 2 mycobot_pro450_interfaces/msg/MycobotAngles value.``
 ## ``@details All 6 declared fields are retained in source order. The canonical representation``
 ## ``occupies 24..24 bytes and is identified by``
 ## ``UWVMROS1_2351398be27155ac63b8a3d15ffd0d3088dd7cf284182a9b494791b7780aa6da.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `joint_1`*: float32 ## ``@brief mycobot_pro450_interfaces/msg/MycobotAngles.joint_1: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_pro450_interfacesMsgMycobotAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_2`*: float32 ## ``@brief mycobot_pro450_interfaces/msg/MycobotAngles.joint_2: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_pro450_interfacesMsgMycobotAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_3`*: float32 ## ``@brief mycobot_pro450_interfaces/msg/MycobotAngles.joint_3: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_pro450_interfacesMsgMycobotAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_4`*: float32 ## ``@brief mycobot_pro450_interfaces/msg/MycobotAngles.joint_4: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_pro450_interfacesMsgMycobotAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_5`*: float32 ## ``@brief mycobot_pro450_interfaces/msg/MycobotAngles.joint_5: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_pro450_interfacesMsgMycobotAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_6`*: float32 ## ``@brief mycobot_pro450_interfaces/msg/MycobotAngles.joint_6: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_pro450_interfacesMsgMycobotAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesMsgMycobotAnglesMaximumWireBytes* = 24 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_pro450_interfaces/msg/MycobotAngles``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 24 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_pro450_interfacesMsgMycobotAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesMsgMycobotAnglesCodecIdentity* = "UWVMROS1_2351398be27155ac63b8a3d15ffd0d3088dd7cf284182a9b494791b7780aa6da" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_pro450_interfaces/msg/MycobotAngles.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_2351398be27155ac63b8a3d15ffd0d3088dd7cf284182a9b494791b7780aa6da``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesMsgMycobotAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesMsgMycobotAnglesNativeType* = "mycobot_pro450_interfaces/msg/MycobotAngles" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_pro450_interfaces/msg/MycobotAngles.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_pro450_interfacesMsgMycobotAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesMsgMycobotAnglesNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_pro450_interfaces/msg/MycobotAngles.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesMsgMycobotAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_pro450_interfacesMsgMycobotAngles*(): Ros2Mycobot_pro450_interfacesMsgMycobotAngles =
 ## ``@brief Construct the declared defaults of mycobot_pro450_interfaces/msg/MycobotAngles.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_pro450_interfacesMsgMycobotAngles; share/platform/ros/nim/API-CONTRACT.md``
  result.`joint_1` = 0
  result.`joint_2` = 0
  result.`joint_3` = 0
  result.`joint_4` = 0
  result.`joint_5` = 0
  result.`joint_6` = 0
proc writeFields*(value: Ros2Mycobot_pro450_interfacesMsgMycobotAngles; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_pro450_interfaces/msg/MycobotAngles.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesMsgMycobotAngles; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`joint_1`)
  putFloat32(w,value.`joint_2`)
  putFloat32(w,value.`joint_3`)
  putFloat32(w,value.`joint_4`)
  putFloat32(w,value.`joint_5`)
  putFloat32(w,value.`joint_6`)
proc readRos2Mycobot_pro450_interfacesMsgMycobotAngles*(r: var Reader): Ros2Mycobot_pro450_interfacesMsgMycobotAngles =
 ## ``@brief Read the ordered canonical fields of mycobot_pro450_interfaces/msg/MycobotAngles.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesMsgMycobotAngles; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_pro450_interfacesMsgMycobotAngles()
  result.`joint_1` = getFloat32(r)
  result.`joint_2` = getFloat32(r)
  result.`joint_3` = getFloat32(r)
  result.`joint_4` = getFloat32(r)
  result.`joint_5` = getFloat32(r)
  result.`joint_6` = getFloat32(r)
proc encode*(value: Ros2Mycobot_pro450_interfacesMsgMycobotAngles): seq[byte] =
 ## ``@brief Encode one complete mycobot_pro450_interfaces/msg/MycobotAngles value.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesMsgMycobotAngles; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_pro450_interfacesMsgMycobotAngles*(b: seq[byte]): Ros2Mycobot_pro450_interfacesMsgMycobotAngles =
 ## ``@brief Decode exactly one complete mycobot_pro450_interfaces/msg/MycobotAngles value.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesMsgMycobotAngles; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,24)
  result = readRos2Mycobot_pro450_interfacesMsgMycobotAngles(r)
  finish(r)
type Ros2Mycobot_pro450_interfacesMsgMycobotCoords* = object
 ## ``@brief Complete ROS 2 mycobot_pro450_interfaces/msg/MycobotCoords value.``
 ## ``@details All 6 declared fields are retained in source order. The canonical representation``
 ## ``occupies 24..24 bytes and is identified by``
 ## ``UWVMROS1_b8513545b0975757c6b7f756a5cedfe8aa0c5d28d0e573adfde001b452e923de.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `x`*: float32 ## ``@brief mycobot_pro450_interfaces/msg/MycobotCoords.x: float32. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mycobot_pro450_interfacesMsgMycobotCoords;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `y`*: float32 ## ``@brief mycobot_pro450_interfaces/msg/MycobotCoords.y: float32. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mycobot_pro450_interfacesMsgMycobotCoords;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `z`*: float32 ## ``@brief mycobot_pro450_interfaces/msg/MycobotCoords.z: float32. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mycobot_pro450_interfacesMsgMycobotCoords;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rx`*: float32 ## ``@brief mycobot_pro450_interfaces/msg/MycobotCoords.rx: float32. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_pro450_interfacesMsgMycobotCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `ry`*: float32 ## ``@brief mycobot_pro450_interfaces/msg/MycobotCoords.ry: float32. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_pro450_interfacesMsgMycobotCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rz`*: float32 ## ``@brief mycobot_pro450_interfaces/msg/MycobotCoords.rz: float32. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_pro450_interfacesMsgMycobotCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesMsgMycobotCoordsMaximumWireBytes* = 24 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_pro450_interfaces/msg/MycobotCoords``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 24 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_pro450_interfacesMsgMycobotCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesMsgMycobotCoordsCodecIdentity* = "UWVMROS1_b8513545b0975757c6b7f756a5cedfe8aa0c5d28d0e573adfde001b452e923de" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_pro450_interfaces/msg/MycobotCoords.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_b8513545b0975757c6b7f756a5cedfe8aa0c5d28d0e573adfde001b452e923de``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesMsgMycobotCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesMsgMycobotCoordsNativeType* = "mycobot_pro450_interfaces/msg/MycobotCoords" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_pro450_interfaces/msg/MycobotCoords.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_pro450_interfacesMsgMycobotCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesMsgMycobotCoordsNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_pro450_interfaces/msg/MycobotCoords.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesMsgMycobotCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_pro450_interfacesMsgMycobotCoords*(): Ros2Mycobot_pro450_interfacesMsgMycobotCoords =
 ## ``@brief Construct the declared defaults of mycobot_pro450_interfaces/msg/MycobotCoords.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_pro450_interfacesMsgMycobotCoords; share/platform/ros/nim/API-CONTRACT.md``
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
  result.`rx` = 0
  result.`ry` = 0
  result.`rz` = 0
proc writeFields*(value: Ros2Mycobot_pro450_interfacesMsgMycobotCoords; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_pro450_interfaces/msg/MycobotCoords.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesMsgMycobotCoords; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`x`)
  putFloat32(w,value.`y`)
  putFloat32(w,value.`z`)
  putFloat32(w,value.`rx`)
  putFloat32(w,value.`ry`)
  putFloat32(w,value.`rz`)
proc readRos2Mycobot_pro450_interfacesMsgMycobotCoords*(r: var Reader): Ros2Mycobot_pro450_interfacesMsgMycobotCoords =
 ## ``@brief Read the ordered canonical fields of mycobot_pro450_interfaces/msg/MycobotCoords.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesMsgMycobotCoords; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_pro450_interfacesMsgMycobotCoords()
  result.`x` = getFloat32(r)
  result.`y` = getFloat32(r)
  result.`z` = getFloat32(r)
  result.`rx` = getFloat32(r)
  result.`ry` = getFloat32(r)
  result.`rz` = getFloat32(r)
proc encode*(value: Ros2Mycobot_pro450_interfacesMsgMycobotCoords): seq[byte] =
 ## ``@brief Encode one complete mycobot_pro450_interfaces/msg/MycobotCoords value.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesMsgMycobotCoords; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_pro450_interfacesMsgMycobotCoords*(b: seq[byte]): Ros2Mycobot_pro450_interfacesMsgMycobotCoords =
 ## ``@brief Decode exactly one complete mycobot_pro450_interfaces/msg/MycobotCoords value.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesMsgMycobotCoords; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,24)
  result = readRos2Mycobot_pro450_interfacesMsgMycobotCoords(r)
  finish(r)
type Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus* = object
 ## ``@brief Complete ROS 2 mycobot_pro450_interfaces/msg/MycobotGripperStatus value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_1d097932f2e6b9b4e73ff838b5223b585b230e4edc5c229b310eb00404f6e784.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `status`*: bool ## ``@brief mycobot_pro450_interfaces/msg/MycobotGripperStatus.status: bool. @details``
                  ## ``The generated initializer supplies the declared zero/empty/nested default.``
                  ## ``Encoding preserves the original field position and signedness; invalid bounds``
                  ## ``fail instead of truncating the value. @units Use the units and frame/clock domain``
                  ## ``of the pinned native definition. The codec performs no scaling, frame conversion``
                  ## ``or normalization. @lifetime Retain referenced string/sequence backing storage for``
                  ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                  ## ``enclosing decode function. @see``
                  ## ``Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus;``
                  ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatusMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_pro450_interfaces/msg/MycobotGripperStatus``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatusCodecIdentity* = "UWVMROS1_1d097932f2e6b9b4e73ff838b5223b585b230e4edc5c229b310eb00404f6e784" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_pro450_interfaces/msg/MycobotGripperStatus.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_1d097932f2e6b9b4e73ff838b5223b585b230e4edc5c229b310eb00404f6e784``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatusNativeType* = "mycobot_pro450_interfaces/msg/MycobotGripperStatus" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_pro450_interfaces/msg/MycobotGripperStatus.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatusNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_pro450_interfaces/msg/MycobotGripperStatus.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_pro450_interfacesMsgMycobotGripperStatus*(): Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus =
 ## ``@brief Construct the declared defaults of``
 ## ``mycobot_pro450_interfaces/msg/MycobotGripperStatus.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`status` = false
proc writeFields*(value: Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_pro450_interfaces/msg/MycobotGripperStatus.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`status`)
proc readRos2Mycobot_pro450_interfacesMsgMycobotGripperStatus*(r: var Reader): Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus =
 ## ``@brief Read the ordered canonical fields of``
 ## ``mycobot_pro450_interfaces/msg/MycobotGripperStatus.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_pro450_interfacesMsgMycobotGripperStatus()
  result.`status` = getBool(r)
proc encode*(value: Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus): seq[byte] =
 ## ``@brief Encode one complete mycobot_pro450_interfaces/msg/MycobotGripperStatus value.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_pro450_interfacesMsgMycobotGripperStatus*(b: seq[byte]): Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus =
 ## ``@brief Decode exactly one complete mycobot_pro450_interfaces/msg/MycobotGripperStatus``
 ## ``value.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos2Mycobot_pro450_interfacesMsgMycobotGripperStatus(r)
  finish(r)
type Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles* = object
 ## ``@brief Complete ROS 2 mycobot_pro450_interfaces/msg/MycobotSetAngles value.``
 ## ``@details All 7 declared fields are retained in source order. The canonical representation``
 ## ``occupies 25..25 bytes and is identified by``
 ## ``UWVMROS1_23d208d7fa8f7b7488be7c7db487698db4b227ef65e99c55d996901d27c3e591.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `joint_1`*: float32 ## ``@brief mycobot_pro450_interfaces/msg/MycobotSetAngles.joint_1: float32.``
                      ## ``@details The generated initializer supplies the declared zero/empty/nested``
                      ## ``default. Encoding preserves the original field position and signedness;``
                      ## ``invalid bounds fail instead of truncating the value. @units Use the units and``
                      ## ``frame/clock domain of the pinned native definition. The codec performs no``
                      ## ``scaling, frame conversion or normalization. @lifetime Retain referenced``
                      ## ``string/sequence backing storage for each encoding call. Decoded borrowing and``
                      ## ``allocator ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_2`*: float32 ## ``@brief mycobot_pro450_interfaces/msg/MycobotSetAngles.joint_2: float32.``
                      ## ``@details The generated initializer supplies the declared zero/empty/nested``
                      ## ``default. Encoding preserves the original field position and signedness;``
                      ## ``invalid bounds fail instead of truncating the value. @units Use the units and``
                      ## ``frame/clock domain of the pinned native definition. The codec performs no``
                      ## ``scaling, frame conversion or normalization. @lifetime Retain referenced``
                      ## ``string/sequence backing storage for each encoding call. Decoded borrowing and``
                      ## ``allocator ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_3`*: float32 ## ``@brief mycobot_pro450_interfaces/msg/MycobotSetAngles.joint_3: float32.``
                      ## ``@details The generated initializer supplies the declared zero/empty/nested``
                      ## ``default. Encoding preserves the original field position and signedness;``
                      ## ``invalid bounds fail instead of truncating the value. @units Use the units and``
                      ## ``frame/clock domain of the pinned native definition. The codec performs no``
                      ## ``scaling, frame conversion or normalization. @lifetime Retain referenced``
                      ## ``string/sequence backing storage for each encoding call. Decoded borrowing and``
                      ## ``allocator ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_4`*: float32 ## ``@brief mycobot_pro450_interfaces/msg/MycobotSetAngles.joint_4: float32.``
                      ## ``@details The generated initializer supplies the declared zero/empty/nested``
                      ## ``default. Encoding preserves the original field position and signedness;``
                      ## ``invalid bounds fail instead of truncating the value. @units Use the units and``
                      ## ``frame/clock domain of the pinned native definition. The codec performs no``
                      ## ``scaling, frame conversion or normalization. @lifetime Retain referenced``
                      ## ``string/sequence backing storage for each encoding call. Decoded borrowing and``
                      ## ``allocator ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_5`*: float32 ## ``@brief mycobot_pro450_interfaces/msg/MycobotSetAngles.joint_5: float32.``
                      ## ``@details The generated initializer supplies the declared zero/empty/nested``
                      ## ``default. Encoding preserves the original field position and signedness;``
                      ## ``invalid bounds fail instead of truncating the value. @units Use the units and``
                      ## ``frame/clock domain of the pinned native definition. The codec performs no``
                      ## ``scaling, frame conversion or normalization. @lifetime Retain referenced``
                      ## ``string/sequence backing storage for each encoding call. Decoded borrowing and``
                      ## ``allocator ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_6`*: float32 ## ``@brief mycobot_pro450_interfaces/msg/MycobotSetAngles.joint_6: float32.``
                      ## ``@details The generated initializer supplies the declared zero/empty/nested``
                      ## ``default. Encoding preserves the original field position and signedness;``
                      ## ``invalid bounds fail instead of truncating the value. @units Use the units and``
                      ## ``frame/clock domain of the pinned native definition. The codec performs no``
                      ## ``scaling, frame conversion or normalization. @lifetime Retain referenced``
                      ## ``string/sequence backing storage for each encoding call. Decoded borrowing and``
                      ## ``allocator ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `speed`*: int8 ## ``@brief mycobot_pro450_interfaces/msg/MycobotSetAngles.speed: int8. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesMsgMycobotSetAnglesMaximumWireBytes* = 25 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_pro450_interfaces/msg/MycobotSetAngles``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 25 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesMsgMycobotSetAnglesCodecIdentity* = "UWVMROS1_23d208d7fa8f7b7488be7c7db487698db4b227ef65e99c55d996901d27c3e591" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_pro450_interfaces/msg/MycobotSetAngles.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_23d208d7fa8f7b7488be7c7db487698db4b227ef65e99c55d996901d27c3e591``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesMsgMycobotSetAnglesNativeType* = "mycobot_pro450_interfaces/msg/MycobotSetAngles" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_pro450_interfaces/msg/MycobotSetAngles.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesMsgMycobotSetAnglesNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_pro450_interfaces/msg/MycobotSetAngles.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_pro450_interfacesMsgMycobotSetAngles*(): Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles =
 ## ``@brief Construct the declared defaults of mycobot_pro450_interfaces/msg/MycobotSetAngles.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`joint_1` = 0
  result.`joint_2` = 0
  result.`joint_3` = 0
  result.`joint_4` = 0
  result.`joint_5` = 0
  result.`joint_6` = 0
  result.`speed` = 0
proc writeFields*(value: Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_pro450_interfaces/msg/MycobotSetAngles.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`joint_1`)
  putFloat32(w,value.`joint_2`)
  putFloat32(w,value.`joint_3`)
  putFloat32(w,value.`joint_4`)
  putFloat32(w,value.`joint_5`)
  putFloat32(w,value.`joint_6`)
  putInteger(w,value.`speed`)
proc readRos2Mycobot_pro450_interfacesMsgMycobotSetAngles*(r: var Reader): Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles =
 ## ``@brief Read the ordered canonical fields of mycobot_pro450_interfaces/msg/MycobotSetAngles.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_pro450_interfacesMsgMycobotSetAngles()
  result.`joint_1` = getFloat32(r)
  result.`joint_2` = getFloat32(r)
  result.`joint_3` = getFloat32(r)
  result.`joint_4` = getFloat32(r)
  result.`joint_5` = getFloat32(r)
  result.`joint_6` = getFloat32(r)
  result.`speed` = getInteger(r,int8)
proc encode*(value: Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles): seq[byte] =
 ## ``@brief Encode one complete mycobot_pro450_interfaces/msg/MycobotSetAngles value.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(25)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_pro450_interfacesMsgMycobotSetAngles*(b: seq[byte]): Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles =
 ## ``@brief Decode exactly one complete mycobot_pro450_interfaces/msg/MycobotSetAngles value.``
 ## ``@details Require the complete 25..25-byte canonical representation. Reject truncation,``
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
 ## ``@see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,25)
  result = readRos2Mycobot_pro450_interfacesMsgMycobotSetAngles(r)
  finish(r)
type Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords* = object
 ## ``@brief Complete ROS 2 mycobot_pro450_interfaces/msg/MycobotSetCoords value.``
 ## ``@details All 7 declared fields are retained in source order. The canonical representation``
 ## ``occupies 25..25 bytes and is identified by``
 ## ``UWVMROS1_60f40a2f6a577e5785fd69e0cbe9128b301aeaec6b70fd678c71e7f9a5426cea.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `x`*: float32 ## ``@brief mycobot_pro450_interfaces/msg/MycobotSetCoords.x: float32. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `y`*: float32 ## ``@brief mycobot_pro450_interfaces/msg/MycobotSetCoords.y: float32. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `z`*: float32 ## ``@brief mycobot_pro450_interfaces/msg/MycobotSetCoords.z: float32. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rx`*: float32 ## ``@brief mycobot_pro450_interfaces/msg/MycobotSetCoords.rx: float32. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `ry`*: float32 ## ``@brief mycobot_pro450_interfaces/msg/MycobotSetCoords.ry: float32. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rz`*: float32 ## ``@brief mycobot_pro450_interfaces/msg/MycobotSetCoords.rz: float32. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `speed`*: int8 ## ``@brief mycobot_pro450_interfaces/msg/MycobotSetCoords.speed: int8. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesMsgMycobotSetCoordsMaximumWireBytes* = 25 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_pro450_interfaces/msg/MycobotSetCoords``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 25 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesMsgMycobotSetCoordsCodecIdentity* = "UWVMROS1_60f40a2f6a577e5785fd69e0cbe9128b301aeaec6b70fd678c71e7f9a5426cea" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_pro450_interfaces/msg/MycobotSetCoords.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_60f40a2f6a577e5785fd69e0cbe9128b301aeaec6b70fd678c71e7f9a5426cea``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesMsgMycobotSetCoordsNativeType* = "mycobot_pro450_interfaces/msg/MycobotSetCoords" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_pro450_interfaces/msg/MycobotSetCoords.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesMsgMycobotSetCoordsNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_pro450_interfaces/msg/MycobotSetCoords.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_pro450_interfacesMsgMycobotSetCoords*(): Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords =
 ## ``@brief Construct the declared defaults of mycobot_pro450_interfaces/msg/MycobotSetCoords.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
  result.`rx` = 0
  result.`ry` = 0
  result.`rz` = 0
  result.`speed` = 0
proc writeFields*(value: Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_pro450_interfaces/msg/MycobotSetCoords.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`x`)
  putFloat32(w,value.`y`)
  putFloat32(w,value.`z`)
  putFloat32(w,value.`rx`)
  putFloat32(w,value.`ry`)
  putFloat32(w,value.`rz`)
  putInteger(w,value.`speed`)
proc readRos2Mycobot_pro450_interfacesMsgMycobotSetCoords*(r: var Reader): Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords =
 ## ``@brief Read the ordered canonical fields of mycobot_pro450_interfaces/msg/MycobotSetCoords.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_pro450_interfacesMsgMycobotSetCoords()
  result.`x` = getFloat32(r)
  result.`y` = getFloat32(r)
  result.`z` = getFloat32(r)
  result.`rx` = getFloat32(r)
  result.`ry` = getFloat32(r)
  result.`rz` = getFloat32(r)
  result.`speed` = getInteger(r,int8)
proc encode*(value: Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords): seq[byte] =
 ## ``@brief Encode one complete mycobot_pro450_interfaces/msg/MycobotSetCoords value.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(25)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_pro450_interfacesMsgMycobotSetCoords*(b: seq[byte]): Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords =
 ## ``@brief Decode exactly one complete mycobot_pro450_interfaces/msg/MycobotSetCoords value.``
 ## ``@details Require the complete 25..25-byte canonical representation. Reject truncation,``
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
 ## ``@see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,25)
  result = readRos2Mycobot_pro450_interfacesMsgMycobotSetCoords(r)
  finish(r)
type Ros2Mycobot_pro450_interfacesSrvGetAngles_Request* = object
 ## ``@brief Complete ROS 2 mycobot_pro450_interfaces/srv/GetAngles_Request value.``
 ## ``@details All 0 declared fields are retained in source order. The canonical representation``
 ## ``occupies 0..0 bytes and is identified by``
 ## ``UWVMROS1_d2d8197675b9dadd50ae1a22b165a84e2e76b293b28cc70bec211225c60626c4.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvGetAngles_RequestMaximumWireBytes* = 0 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_pro450_interfaces/srv/GetAngles_Request``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 0 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvGetAngles_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvGetAngles_RequestCodecIdentity* = "UWVMROS1_d2d8197675b9dadd50ae1a22b165a84e2e76b293b28cc70bec211225c60626c4" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_pro450_interfaces/srv/GetAngles_Request.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_d2d8197675b9dadd50ae1a22b165a84e2e76b293b28cc70bec211225c60626c4``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvGetAngles_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvGetAngles_RequestNativeType* = "mycobot_pro450_interfaces/srv/GetAngles_Request" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_pro450_interfaces/srv/GetAngles_Request.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvGetAngles_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvGetAngles_RequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_pro450_interfaces/srv/GetAngles_Request.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvGetAngles_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_pro450_interfacesSrvGetAngles_Request*(): Ros2Mycobot_pro450_interfacesSrvGetAngles_Request =
 ## ``@brief Construct the declared defaults of mycobot_pro450_interfaces/srv/GetAngles_Request.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGetAngles_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  discard
proc writeFields*(value: Ros2Mycobot_pro450_interfacesSrvGetAngles_Request; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_pro450_interfaces/srv/GetAngles_Request.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGetAngles_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  discard
proc readRos2Mycobot_pro450_interfacesSrvGetAngles_Request*(r: var Reader): Ros2Mycobot_pro450_interfacesSrvGetAngles_Request =
 ## ``@brief Read the ordered canonical fields of``
 ## ``mycobot_pro450_interfaces/srv/GetAngles_Request.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGetAngles_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_pro450_interfacesSrvGetAngles_Request()
proc encode*(value: Ros2Mycobot_pro450_interfacesSrvGetAngles_Request): seq[byte] =
 ## ``@brief Encode one complete mycobot_pro450_interfaces/srv/GetAngles_Request value.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGetAngles_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_pro450_interfacesSrvGetAngles_Request*(b: seq[byte]): Ros2Mycobot_pro450_interfacesSrvGetAngles_Request =
 ## ``@brief Decode exactly one complete mycobot_pro450_interfaces/srv/GetAngles_Request value.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGetAngles_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,0)
  result = readRos2Mycobot_pro450_interfacesSrvGetAngles_Request(r)
  finish(r)
type Ros2Mycobot_pro450_interfacesSrvGetAngles_Response* = object
 ## ``@brief Complete ROS 2 mycobot_pro450_interfaces/srv/GetAngles_Response value.``
 ## ``@details All 6 declared fields are retained in source order. The canonical representation``
 ## ``occupies 24..24 bytes and is identified by``
 ## ``UWVMROS1_13056bbe3bdef4feb8488783e1c5cf725d1fb94006f36f2221f61081084227f8.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `joint_1`*: float32 ## ``@brief mycobot_pro450_interfaces/srv/GetAngles_Response.joint_1: float32.``
                      ## ``@details The generated initializer supplies the declared zero/empty/nested``
                      ## ``default. Encoding preserves the original field position and signedness;``
                      ## ``invalid bounds fail instead of truncating the value. @units Use the units and``
                      ## ``frame/clock domain of the pinned native definition. The codec performs no``
                      ## ``scaling, frame conversion or normalization. @lifetime Retain referenced``
                      ## ``string/sequence backing storage for each encoding call. Decoded borrowing and``
                      ## ``allocator ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_pro450_interfacesSrvGetAngles_Response;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_2`*: float32 ## ``@brief mycobot_pro450_interfaces/srv/GetAngles_Response.joint_2: float32.``
                      ## ``@details The generated initializer supplies the declared zero/empty/nested``
                      ## ``default. Encoding preserves the original field position and signedness;``
                      ## ``invalid bounds fail instead of truncating the value. @units Use the units and``
                      ## ``frame/clock domain of the pinned native definition. The codec performs no``
                      ## ``scaling, frame conversion or normalization. @lifetime Retain referenced``
                      ## ``string/sequence backing storage for each encoding call. Decoded borrowing and``
                      ## ``allocator ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_pro450_interfacesSrvGetAngles_Response;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_3`*: float32 ## ``@brief mycobot_pro450_interfaces/srv/GetAngles_Response.joint_3: float32.``
                      ## ``@details The generated initializer supplies the declared zero/empty/nested``
                      ## ``default. Encoding preserves the original field position and signedness;``
                      ## ``invalid bounds fail instead of truncating the value. @units Use the units and``
                      ## ``frame/clock domain of the pinned native definition. The codec performs no``
                      ## ``scaling, frame conversion or normalization. @lifetime Retain referenced``
                      ## ``string/sequence backing storage for each encoding call. Decoded borrowing and``
                      ## ``allocator ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_pro450_interfacesSrvGetAngles_Response;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_4`*: float32 ## ``@brief mycobot_pro450_interfaces/srv/GetAngles_Response.joint_4: float32.``
                      ## ``@details The generated initializer supplies the declared zero/empty/nested``
                      ## ``default. Encoding preserves the original field position and signedness;``
                      ## ``invalid bounds fail instead of truncating the value. @units Use the units and``
                      ## ``frame/clock domain of the pinned native definition. The codec performs no``
                      ## ``scaling, frame conversion or normalization. @lifetime Retain referenced``
                      ## ``string/sequence backing storage for each encoding call. Decoded borrowing and``
                      ## ``allocator ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_pro450_interfacesSrvGetAngles_Response;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_5`*: float32 ## ``@brief mycobot_pro450_interfaces/srv/GetAngles_Response.joint_5: float32.``
                      ## ``@details The generated initializer supplies the declared zero/empty/nested``
                      ## ``default. Encoding preserves the original field position and signedness;``
                      ## ``invalid bounds fail instead of truncating the value. @units Use the units and``
                      ## ``frame/clock domain of the pinned native definition. The codec performs no``
                      ## ``scaling, frame conversion or normalization. @lifetime Retain referenced``
                      ## ``string/sequence backing storage for each encoding call. Decoded borrowing and``
                      ## ``allocator ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_pro450_interfacesSrvGetAngles_Response;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_6`*: float32 ## ``@brief mycobot_pro450_interfaces/srv/GetAngles_Response.joint_6: float32.``
                      ## ``@details The generated initializer supplies the declared zero/empty/nested``
                      ## ``default. Encoding preserves the original field position and signedness;``
                      ## ``invalid bounds fail instead of truncating the value. @units Use the units and``
                      ## ``frame/clock domain of the pinned native definition. The codec performs no``
                      ## ``scaling, frame conversion or normalization. @lifetime Retain referenced``
                      ## ``string/sequence backing storage for each encoding call. Decoded borrowing and``
                      ## ``allocator ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_pro450_interfacesSrvGetAngles_Response;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvGetAngles_ResponseMaximumWireBytes* = 24 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_pro450_interfaces/srv/GetAngles_Response``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 24 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvGetAngles_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvGetAngles_ResponseCodecIdentity* = "UWVMROS1_13056bbe3bdef4feb8488783e1c5cf725d1fb94006f36f2221f61081084227f8" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_pro450_interfaces/srv/GetAngles_Response.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_13056bbe3bdef4feb8488783e1c5cf725d1fb94006f36f2221f61081084227f8``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvGetAngles_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvGetAngles_ResponseNativeType* = "mycobot_pro450_interfaces/srv/GetAngles_Response" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_pro450_interfaces/srv/GetAngles_Response.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvGetAngles_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvGetAngles_ResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_pro450_interfaces/srv/GetAngles_Response.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvGetAngles_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_pro450_interfacesSrvGetAngles_Response*(): Ros2Mycobot_pro450_interfacesSrvGetAngles_Response =
 ## ``@brief Construct the declared defaults of mycobot_pro450_interfaces/srv/GetAngles_Response.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`joint_1` = 0
  result.`joint_2` = 0
  result.`joint_3` = 0
  result.`joint_4` = 0
  result.`joint_5` = 0
  result.`joint_6` = 0
proc writeFields*(value: Ros2Mycobot_pro450_interfacesSrvGetAngles_Response; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_pro450_interfaces/srv/GetAngles_Response.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`joint_1`)
  putFloat32(w,value.`joint_2`)
  putFloat32(w,value.`joint_3`)
  putFloat32(w,value.`joint_4`)
  putFloat32(w,value.`joint_5`)
  putFloat32(w,value.`joint_6`)
proc readRos2Mycobot_pro450_interfacesSrvGetAngles_Response*(r: var Reader): Ros2Mycobot_pro450_interfacesSrvGetAngles_Response =
 ## ``@brief Read the ordered canonical fields of``
 ## ``mycobot_pro450_interfaces/srv/GetAngles_Response.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_pro450_interfacesSrvGetAngles_Response()
  result.`joint_1` = getFloat32(r)
  result.`joint_2` = getFloat32(r)
  result.`joint_3` = getFloat32(r)
  result.`joint_4` = getFloat32(r)
  result.`joint_5` = getFloat32(r)
  result.`joint_6` = getFloat32(r)
proc encode*(value: Ros2Mycobot_pro450_interfacesSrvGetAngles_Response): seq[byte] =
 ## ``@brief Encode one complete mycobot_pro450_interfaces/srv/GetAngles_Response value.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_pro450_interfacesSrvGetAngles_Response*(b: seq[byte]): Ros2Mycobot_pro450_interfacesSrvGetAngles_Response =
 ## ``@brief Decode exactly one complete mycobot_pro450_interfaces/srv/GetAngles_Response value.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,24)
  result = readRos2Mycobot_pro450_interfacesSrvGetAngles_Response(r)
  finish(r)
type Ros2Mycobot_pro450_interfacesSrvGetCoords_Request* = object
 ## ``@brief Complete ROS 2 mycobot_pro450_interfaces/srv/GetCoords_Request value.``
 ## ``@details All 0 declared fields are retained in source order. The canonical representation``
 ## ``occupies 0..0 bytes and is identified by``
 ## ``UWVMROS1_bda408ece90e671ce58ae428f79f01c1429c3b3aa3c1ef2efe9dc045faa9e3c2.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvGetCoords_RequestMaximumWireBytes* = 0 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_pro450_interfaces/srv/GetCoords_Request``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 0 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvGetCoords_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvGetCoords_RequestCodecIdentity* = "UWVMROS1_bda408ece90e671ce58ae428f79f01c1429c3b3aa3c1ef2efe9dc045faa9e3c2" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_pro450_interfaces/srv/GetCoords_Request.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_bda408ece90e671ce58ae428f79f01c1429c3b3aa3c1ef2efe9dc045faa9e3c2``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvGetCoords_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvGetCoords_RequestNativeType* = "mycobot_pro450_interfaces/srv/GetCoords_Request" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_pro450_interfaces/srv/GetCoords_Request.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvGetCoords_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvGetCoords_RequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_pro450_interfaces/srv/GetCoords_Request.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvGetCoords_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_pro450_interfacesSrvGetCoords_Request*(): Ros2Mycobot_pro450_interfacesSrvGetCoords_Request =
 ## ``@brief Construct the declared defaults of mycobot_pro450_interfaces/srv/GetCoords_Request.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGetCoords_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  discard
proc writeFields*(value: Ros2Mycobot_pro450_interfacesSrvGetCoords_Request; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_pro450_interfaces/srv/GetCoords_Request.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGetCoords_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  discard
proc readRos2Mycobot_pro450_interfacesSrvGetCoords_Request*(r: var Reader): Ros2Mycobot_pro450_interfacesSrvGetCoords_Request =
 ## ``@brief Read the ordered canonical fields of``
 ## ``mycobot_pro450_interfaces/srv/GetCoords_Request.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGetCoords_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_pro450_interfacesSrvGetCoords_Request()
proc encode*(value: Ros2Mycobot_pro450_interfacesSrvGetCoords_Request): seq[byte] =
 ## ``@brief Encode one complete mycobot_pro450_interfaces/srv/GetCoords_Request value.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGetCoords_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_pro450_interfacesSrvGetCoords_Request*(b: seq[byte]): Ros2Mycobot_pro450_interfacesSrvGetCoords_Request =
 ## ``@brief Decode exactly one complete mycobot_pro450_interfaces/srv/GetCoords_Request value.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGetCoords_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,0)
  result = readRos2Mycobot_pro450_interfacesSrvGetCoords_Request(r)
  finish(r)
type Ros2Mycobot_pro450_interfacesSrvGetCoords_Response* = object
 ## ``@brief Complete ROS 2 mycobot_pro450_interfaces/srv/GetCoords_Response value.``
 ## ``@details All 6 declared fields are retained in source order. The canonical representation``
 ## ``occupies 24..24 bytes and is identified by``
 ## ``UWVMROS1_01e8a3ef4c048100af32d92cd027769e32eacd82dba36dc3bde30c70cb44afdf.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `x`*: float32 ## ``@brief mycobot_pro450_interfaces/srv/GetCoords_Response.x: float32. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `y`*: float32 ## ``@brief mycobot_pro450_interfaces/srv/GetCoords_Response.y: float32. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `z`*: float32 ## ``@brief mycobot_pro450_interfaces/srv/GetCoords_Response.z: float32. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rx`*: float32 ## ``@brief mycobot_pro450_interfaces/srv/GetCoords_Response.rx: float32. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `ry`*: float32 ## ``@brief mycobot_pro450_interfaces/srv/GetCoords_Response.ry: float32. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rz`*: float32 ## ``@brief mycobot_pro450_interfaces/srv/GetCoords_Response.rz: float32. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvGetCoords_ResponseMaximumWireBytes* = 24 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_pro450_interfaces/srv/GetCoords_Response``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 24 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvGetCoords_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvGetCoords_ResponseCodecIdentity* = "UWVMROS1_01e8a3ef4c048100af32d92cd027769e32eacd82dba36dc3bde30c70cb44afdf" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_pro450_interfaces/srv/GetCoords_Response.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_01e8a3ef4c048100af32d92cd027769e32eacd82dba36dc3bde30c70cb44afdf``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvGetCoords_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvGetCoords_ResponseNativeType* = "mycobot_pro450_interfaces/srv/GetCoords_Response" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_pro450_interfaces/srv/GetCoords_Response.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvGetCoords_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvGetCoords_ResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_pro450_interfaces/srv/GetCoords_Response.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvGetCoords_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_pro450_interfacesSrvGetCoords_Response*(): Ros2Mycobot_pro450_interfacesSrvGetCoords_Response =
 ## ``@brief Construct the declared defaults of mycobot_pro450_interfaces/srv/GetCoords_Response.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
  result.`rx` = 0
  result.`ry` = 0
  result.`rz` = 0
proc writeFields*(value: Ros2Mycobot_pro450_interfacesSrvGetCoords_Response; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_pro450_interfaces/srv/GetCoords_Response.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`x`)
  putFloat32(w,value.`y`)
  putFloat32(w,value.`z`)
  putFloat32(w,value.`rx`)
  putFloat32(w,value.`ry`)
  putFloat32(w,value.`rz`)
proc readRos2Mycobot_pro450_interfacesSrvGetCoords_Response*(r: var Reader): Ros2Mycobot_pro450_interfacesSrvGetCoords_Response =
 ## ``@brief Read the ordered canonical fields of``
 ## ``mycobot_pro450_interfaces/srv/GetCoords_Response.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_pro450_interfacesSrvGetCoords_Response()
  result.`x` = getFloat32(r)
  result.`y` = getFloat32(r)
  result.`z` = getFloat32(r)
  result.`rx` = getFloat32(r)
  result.`ry` = getFloat32(r)
  result.`rz` = getFloat32(r)
proc encode*(value: Ros2Mycobot_pro450_interfacesSrvGetCoords_Response): seq[byte] =
 ## ``@brief Encode one complete mycobot_pro450_interfaces/srv/GetCoords_Response value.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_pro450_interfacesSrvGetCoords_Response*(b: seq[byte]): Ros2Mycobot_pro450_interfacesSrvGetCoords_Response =
 ## ``@brief Decode exactly one complete mycobot_pro450_interfaces/srv/GetCoords_Response value.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,24)
  result = readRos2Mycobot_pro450_interfacesSrvGetCoords_Response(r)
  finish(r)
type Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request* = object
 ## ``@brief Complete ROS 2 mycobot_pro450_interfaces/srv/GetGripperValue_Request value.``
 ## ``@details All 0 declared fields are retained in source order. The canonical representation``
 ## ``occupies 0..0 bytes and is identified by``
 ## ``UWVMROS1_17cb5e3826409b661c2ad4bad8fde2b4c826dde95d8600e1a17bcf4908eca125.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvGetGripperValue_RequestMaximumWireBytes* = 0 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_pro450_interfaces/srv/GetGripperValue_Request``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 0 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvGetGripperValue_RequestCodecIdentity* = "UWVMROS1_17cb5e3826409b661c2ad4bad8fde2b4c826dde95d8600e1a17bcf4908eca125" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_pro450_interfaces/srv/GetGripperValue_Request.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_17cb5e3826409b661c2ad4bad8fde2b4c826dde95d8600e1a17bcf4908eca125``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvGetGripperValue_RequestNativeType* = "mycobot_pro450_interfaces/srv/GetGripperValue_Request" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_pro450_interfaces/srv/GetGripperValue_Request.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvGetGripperValue_RequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_pro450_interfaces/srv/GetGripperValue_Request.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_pro450_interfacesSrvGetGripperValue_Request*(): Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request =
 ## ``@brief Construct the declared defaults of``
 ## ``mycobot_pro450_interfaces/srv/GetGripperValue_Request.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  discard
proc writeFields*(value: Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request; w: var Writer) =
 ## ``@brief Append every canonical field of``
 ## ``mycobot_pro450_interfaces/srv/GetGripperValue_Request.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  discard
proc readRos2Mycobot_pro450_interfacesSrvGetGripperValue_Request*(r: var Reader): Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request =
 ## ``@brief Read the ordered canonical fields of``
 ## ``mycobot_pro450_interfaces/srv/GetGripperValue_Request.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_pro450_interfacesSrvGetGripperValue_Request()
proc encode*(value: Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request): seq[byte] =
 ## ``@brief Encode one complete mycobot_pro450_interfaces/srv/GetGripperValue_Request value.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_pro450_interfacesSrvGetGripperValue_Request*(b: seq[byte]): Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request =
 ## ``@brief Decode exactly one complete mycobot_pro450_interfaces/srv/GetGripperValue_Request``
 ## ``value.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,0)
  result = readRos2Mycobot_pro450_interfacesSrvGetGripperValue_Request(r)
  finish(r)
type Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response* = object
 ## ``@brief Complete ROS 2 mycobot_pro450_interfaces/srv/GetGripperValue_Response value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_6b210e18d0696735196fb2e166b7168165dba6f03b97759a437fc8dc08ab2676.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `gripper_angle`*: int8 ## ``@brief``
                         ## ``mycobot_pro450_interfaces/srv/GetGripperValue_Response.gripper_angle:``
                         ## ``int8. @details The generated initializer supplies the declared``
                         ## ``zero/empty/nested default. Encoding preserves the original field position``
                         ## ``and signedness; invalid bounds fail instead of truncating the value.``
                         ## ``@units Use the units and frame/clock domain of the pinned native``
                         ## ``definition. The codec performs no scaling, frame conversion or``
                         ## ``normalization. @lifetime Retain referenced string/sequence backing storage``
                         ## ``for each encoding call. Decoded borrowing and allocator ownership follow``
                         ## ``the enclosing decode function. @see``
                         ## ``Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response;``
                         ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvGetGripperValue_ResponseMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_pro450_interfaces/srv/GetGripperValue_Response``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvGetGripperValue_ResponseCodecIdentity* = "UWVMROS1_6b210e18d0696735196fb2e166b7168165dba6f03b97759a437fc8dc08ab2676" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_pro450_interfaces/srv/GetGripperValue_Response.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_6b210e18d0696735196fb2e166b7168165dba6f03b97759a437fc8dc08ab2676``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvGetGripperValue_ResponseNativeType* = "mycobot_pro450_interfaces/srv/GetGripperValue_Response" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_pro450_interfaces/srv/GetGripperValue_Response.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvGetGripperValue_ResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_pro450_interfaces/srv/GetGripperValue_Response.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_pro450_interfacesSrvGetGripperValue_Response*(): Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response =
 ## ``@brief Construct the declared defaults of``
 ## ``mycobot_pro450_interfaces/srv/GetGripperValue_Response.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`gripper_angle` = 0
proc writeFields*(value: Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response; w: var Writer) =
 ## ``@brief Append every canonical field of``
 ## ``mycobot_pro450_interfaces/srv/GetGripperValue_Response.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`gripper_angle`)
proc readRos2Mycobot_pro450_interfacesSrvGetGripperValue_Response*(r: var Reader): Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response =
 ## ``@brief Read the ordered canonical fields of``
 ## ``mycobot_pro450_interfaces/srv/GetGripperValue_Response.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_pro450_interfacesSrvGetGripperValue_Response()
  result.`gripper_angle` = getInteger(r,int8)
proc encode*(value: Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response): seq[byte] =
 ## ``@brief Encode one complete mycobot_pro450_interfaces/srv/GetGripperValue_Response value.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_pro450_interfacesSrvGetGripperValue_Response*(b: seq[byte]): Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response =
 ## ``@brief Decode exactly one complete mycobot_pro450_interfaces/srv/GetGripperValue_Response``
 ## ``value.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos2Mycobot_pro450_interfacesSrvGetGripperValue_Response(r)
  finish(r)
type Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request* = object
 ## ``@brief Complete ROS 2 mycobot_pro450_interfaces/srv/GripperStatus_Request value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_edc3352d37effe3923c55a024d6acac85a3cb49350974ea35934efa41555ccac.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `status`*: bool ## ``@brief mycobot_pro450_interfaces/srv/GripperStatus_Request.status: bool. @details``
                  ## ``The generated initializer supplies the declared zero/empty/nested default.``
                  ## ``Encoding preserves the original field position and signedness; invalid bounds``
                  ## ``fail instead of truncating the value. @units Use the units and frame/clock domain``
                  ## ``of the pinned native definition. The codec performs no scaling, frame conversion``
                  ## ``or normalization. @lifetime Retain referenced string/sequence backing storage for``
                  ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                  ## ``enclosing decode function. @see``
                  ## ``Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request;``
                  ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvGripperStatus_RequestMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_pro450_interfaces/srv/GripperStatus_Request``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvGripperStatus_RequestCodecIdentity* = "UWVMROS1_edc3352d37effe3923c55a024d6acac85a3cb49350974ea35934efa41555ccac" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_pro450_interfaces/srv/GripperStatus_Request.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_edc3352d37effe3923c55a024d6acac85a3cb49350974ea35934efa41555ccac``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvGripperStatus_RequestNativeType* = "mycobot_pro450_interfaces/srv/GripperStatus_Request" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_pro450_interfaces/srv/GripperStatus_Request.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvGripperStatus_RequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_pro450_interfaces/srv/GripperStatus_Request.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_pro450_interfacesSrvGripperStatus_Request*(): Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request =
 ## ``@brief Construct the declared defaults of``
 ## ``mycobot_pro450_interfaces/srv/GripperStatus_Request.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`status` = false
proc writeFields*(value: Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_pro450_interfaces/srv/GripperStatus_Request.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`status`)
proc readRos2Mycobot_pro450_interfacesSrvGripperStatus_Request*(r: var Reader): Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request =
 ## ``@brief Read the ordered canonical fields of``
 ## ``mycobot_pro450_interfaces/srv/GripperStatus_Request.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_pro450_interfacesSrvGripperStatus_Request()
  result.`status` = getBool(r)
proc encode*(value: Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request): seq[byte] =
 ## ``@brief Encode one complete mycobot_pro450_interfaces/srv/GripperStatus_Request value.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_pro450_interfacesSrvGripperStatus_Request*(b: seq[byte]): Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request =
 ## ``@brief Decode exactly one complete mycobot_pro450_interfaces/srv/GripperStatus_Request``
 ## ``value.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos2Mycobot_pro450_interfacesSrvGripperStatus_Request(r)
  finish(r)
type Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response* = object
 ## ``@brief Complete ROS 2 mycobot_pro450_interfaces/srv/GripperStatus_Response value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_65166c2943fd319555cc1a2dcdaf4475b1e7779960907fe5ab6d1b5dc5536fc2.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `flag`*: bool ## ``@brief mycobot_pro450_interfaces/srv/GripperStatus_Response.flag: bool. @details``
                ## ``The generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvGripperStatus_ResponseMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_pro450_interfaces/srv/GripperStatus_Response``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvGripperStatus_ResponseCodecIdentity* = "UWVMROS1_65166c2943fd319555cc1a2dcdaf4475b1e7779960907fe5ab6d1b5dc5536fc2" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_pro450_interfaces/srv/GripperStatus_Response.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_65166c2943fd319555cc1a2dcdaf4475b1e7779960907fe5ab6d1b5dc5536fc2``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvGripperStatus_ResponseNativeType* = "mycobot_pro450_interfaces/srv/GripperStatus_Response" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_pro450_interfaces/srv/GripperStatus_Response.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvGripperStatus_ResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_pro450_interfaces/srv/GripperStatus_Response.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_pro450_interfacesSrvGripperStatus_Response*(): Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response =
 ## ``@brief Construct the declared defaults of``
 ## ``mycobot_pro450_interfaces/srv/GripperStatus_Response.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`flag` = false
proc writeFields*(value: Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response; w: var Writer) =
 ## ``@brief Append every canonical field of``
 ## ``mycobot_pro450_interfaces/srv/GripperStatus_Response.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`flag`)
proc readRos2Mycobot_pro450_interfacesSrvGripperStatus_Response*(r: var Reader): Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response =
 ## ``@brief Read the ordered canonical fields of``
 ## ``mycobot_pro450_interfaces/srv/GripperStatus_Response.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_pro450_interfacesSrvGripperStatus_Response()
  result.`flag` = getBool(r)
proc encode*(value: Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response): seq[byte] =
 ## ``@brief Encode one complete mycobot_pro450_interfaces/srv/GripperStatus_Response value.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_pro450_interfacesSrvGripperStatus_Response*(b: seq[byte]): Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response =
 ## ``@brief Decode exactly one complete mycobot_pro450_interfaces/srv/GripperStatus_Response``
 ## ``value.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos2Mycobot_pro450_interfacesSrvGripperStatus_Response(r)
  finish(r)
type Ros2Mycobot_pro450_interfacesSrvSetAngles_Request* = object
 ## ``@brief Complete ROS 2 mycobot_pro450_interfaces/srv/SetAngles_Request value.``
 ## ``@details All 7 declared fields are retained in source order. The canonical representation``
 ## ``occupies 25..25 bytes and is identified by``
 ## ``UWVMROS1_ec2659577304938ca4f78c1b4add50190766d8d1b551397668ef7ad03e2ccb09.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `joint_1`*: float32 ## ``@brief mycobot_pro450_interfaces/srv/SetAngles_Request.joint_1: float32.``
                      ## ``@details The generated initializer supplies the declared zero/empty/nested``
                      ## ``default. Encoding preserves the original field position and signedness;``
                      ## ``invalid bounds fail instead of truncating the value. @units Use the units and``
                      ## ``frame/clock domain of the pinned native definition. The codec performs no``
                      ## ``scaling, frame conversion or normalization. @lifetime Retain referenced``
                      ## ``string/sequence backing storage for each encoding call. Decoded borrowing and``
                      ## ``allocator ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_pro450_interfacesSrvSetAngles_Request;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_2`*: float32 ## ``@brief mycobot_pro450_interfaces/srv/SetAngles_Request.joint_2: float32.``
                      ## ``@details The generated initializer supplies the declared zero/empty/nested``
                      ## ``default. Encoding preserves the original field position and signedness;``
                      ## ``invalid bounds fail instead of truncating the value. @units Use the units and``
                      ## ``frame/clock domain of the pinned native definition. The codec performs no``
                      ## ``scaling, frame conversion or normalization. @lifetime Retain referenced``
                      ## ``string/sequence backing storage for each encoding call. Decoded borrowing and``
                      ## ``allocator ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_pro450_interfacesSrvSetAngles_Request;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_3`*: float32 ## ``@brief mycobot_pro450_interfaces/srv/SetAngles_Request.joint_3: float32.``
                      ## ``@details The generated initializer supplies the declared zero/empty/nested``
                      ## ``default. Encoding preserves the original field position and signedness;``
                      ## ``invalid bounds fail instead of truncating the value. @units Use the units and``
                      ## ``frame/clock domain of the pinned native definition. The codec performs no``
                      ## ``scaling, frame conversion or normalization. @lifetime Retain referenced``
                      ## ``string/sequence backing storage for each encoding call. Decoded borrowing and``
                      ## ``allocator ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_pro450_interfacesSrvSetAngles_Request;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_4`*: float32 ## ``@brief mycobot_pro450_interfaces/srv/SetAngles_Request.joint_4: float32.``
                      ## ``@details The generated initializer supplies the declared zero/empty/nested``
                      ## ``default. Encoding preserves the original field position and signedness;``
                      ## ``invalid bounds fail instead of truncating the value. @units Use the units and``
                      ## ``frame/clock domain of the pinned native definition. The codec performs no``
                      ## ``scaling, frame conversion or normalization. @lifetime Retain referenced``
                      ## ``string/sequence backing storage for each encoding call. Decoded borrowing and``
                      ## ``allocator ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_pro450_interfacesSrvSetAngles_Request;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_5`*: float32 ## ``@brief mycobot_pro450_interfaces/srv/SetAngles_Request.joint_5: float32.``
                      ## ``@details The generated initializer supplies the declared zero/empty/nested``
                      ## ``default. Encoding preserves the original field position and signedness;``
                      ## ``invalid bounds fail instead of truncating the value. @units Use the units and``
                      ## ``frame/clock domain of the pinned native definition. The codec performs no``
                      ## ``scaling, frame conversion or normalization. @lifetime Retain referenced``
                      ## ``string/sequence backing storage for each encoding call. Decoded borrowing and``
                      ## ``allocator ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_pro450_interfacesSrvSetAngles_Request;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_6`*: float32 ## ``@brief mycobot_pro450_interfaces/srv/SetAngles_Request.joint_6: float32.``
                      ## ``@details The generated initializer supplies the declared zero/empty/nested``
                      ## ``default. Encoding preserves the original field position and signedness;``
                      ## ``invalid bounds fail instead of truncating the value. @units Use the units and``
                      ## ``frame/clock domain of the pinned native definition. The codec performs no``
                      ## ``scaling, frame conversion or normalization. @lifetime Retain referenced``
                      ## ``string/sequence backing storage for each encoding call. Decoded borrowing and``
                      ## ``allocator ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mycobot_pro450_interfacesSrvSetAngles_Request;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `speed`*: int8 ## ``@brief mycobot_pro450_interfaces/srv/SetAngles_Request.speed: int8. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvSetAngles_RequestMaximumWireBytes* = 25 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_pro450_interfaces/srv/SetAngles_Request``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 25 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvSetAngles_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvSetAngles_RequestCodecIdentity* = "UWVMROS1_ec2659577304938ca4f78c1b4add50190766d8d1b551397668ef7ad03e2ccb09" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_pro450_interfaces/srv/SetAngles_Request.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_ec2659577304938ca4f78c1b4add50190766d8d1b551397668ef7ad03e2ccb09``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvSetAngles_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvSetAngles_RequestNativeType* = "mycobot_pro450_interfaces/srv/SetAngles_Request" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_pro450_interfaces/srv/SetAngles_Request.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvSetAngles_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvSetAngles_RequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_pro450_interfaces/srv/SetAngles_Request.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvSetAngles_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_pro450_interfacesSrvSetAngles_Request*(): Ros2Mycobot_pro450_interfacesSrvSetAngles_Request =
 ## ``@brief Construct the declared defaults of mycobot_pro450_interfaces/srv/SetAngles_Request.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`joint_1` = 0
  result.`joint_2` = 0
  result.`joint_3` = 0
  result.`joint_4` = 0
  result.`joint_5` = 0
  result.`joint_6` = 0
  result.`speed` = 0
proc writeFields*(value: Ros2Mycobot_pro450_interfacesSrvSetAngles_Request; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_pro450_interfaces/srv/SetAngles_Request.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`joint_1`)
  putFloat32(w,value.`joint_2`)
  putFloat32(w,value.`joint_3`)
  putFloat32(w,value.`joint_4`)
  putFloat32(w,value.`joint_5`)
  putFloat32(w,value.`joint_6`)
  putInteger(w,value.`speed`)
proc readRos2Mycobot_pro450_interfacesSrvSetAngles_Request*(r: var Reader): Ros2Mycobot_pro450_interfacesSrvSetAngles_Request =
 ## ``@brief Read the ordered canonical fields of``
 ## ``mycobot_pro450_interfaces/srv/SetAngles_Request.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_pro450_interfacesSrvSetAngles_Request()
  result.`joint_1` = getFloat32(r)
  result.`joint_2` = getFloat32(r)
  result.`joint_3` = getFloat32(r)
  result.`joint_4` = getFloat32(r)
  result.`joint_5` = getFloat32(r)
  result.`joint_6` = getFloat32(r)
  result.`speed` = getInteger(r,int8)
proc encode*(value: Ros2Mycobot_pro450_interfacesSrvSetAngles_Request): seq[byte] =
 ## ``@brief Encode one complete mycobot_pro450_interfaces/srv/SetAngles_Request value.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(25)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_pro450_interfacesSrvSetAngles_Request*(b: seq[byte]): Ros2Mycobot_pro450_interfacesSrvSetAngles_Request =
 ## ``@brief Decode exactly one complete mycobot_pro450_interfaces/srv/SetAngles_Request value.``
 ## ``@details Require the complete 25..25-byte canonical representation. Reject truncation,``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,25)
  result = readRos2Mycobot_pro450_interfacesSrvSetAngles_Request(r)
  finish(r)
type Ros2Mycobot_pro450_interfacesSrvSetAngles_Response* = object
 ## ``@brief Complete ROS 2 mycobot_pro450_interfaces/srv/SetAngles_Response value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_28dc59c06324913c1ccbe286ca05b9f47585653a8f086fc5d99a01f6e9ee08b4.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `flag`*: bool ## ``@brief mycobot_pro450_interfaces/srv/SetAngles_Response.flag: bool. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Response;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvSetAngles_ResponseMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_pro450_interfaces/srv/SetAngles_Response``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvSetAngles_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvSetAngles_ResponseCodecIdentity* = "UWVMROS1_28dc59c06324913c1ccbe286ca05b9f47585653a8f086fc5d99a01f6e9ee08b4" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_pro450_interfaces/srv/SetAngles_Response.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_28dc59c06324913c1ccbe286ca05b9f47585653a8f086fc5d99a01f6e9ee08b4``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvSetAngles_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvSetAngles_ResponseNativeType* = "mycobot_pro450_interfaces/srv/SetAngles_Response" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_pro450_interfaces/srv/SetAngles_Response.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvSetAngles_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvSetAngles_ResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_pro450_interfaces/srv/SetAngles_Response.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvSetAngles_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_pro450_interfacesSrvSetAngles_Response*(): Ros2Mycobot_pro450_interfacesSrvSetAngles_Response =
 ## ``@brief Construct the declared defaults of mycobot_pro450_interfaces/srv/SetAngles_Response.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_pro450_interfacesSrvSetAngles_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`flag` = false
proc writeFields*(value: Ros2Mycobot_pro450_interfacesSrvSetAngles_Response; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_pro450_interfaces/srv/SetAngles_Response.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvSetAngles_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`flag`)
proc readRos2Mycobot_pro450_interfacesSrvSetAngles_Response*(r: var Reader): Ros2Mycobot_pro450_interfacesSrvSetAngles_Response =
 ## ``@brief Read the ordered canonical fields of``
 ## ``mycobot_pro450_interfaces/srv/SetAngles_Response.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvSetAngles_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_pro450_interfacesSrvSetAngles_Response()
  result.`flag` = getBool(r)
proc encode*(value: Ros2Mycobot_pro450_interfacesSrvSetAngles_Response): seq[byte] =
 ## ``@brief Encode one complete mycobot_pro450_interfaces/srv/SetAngles_Response value.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvSetAngles_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_pro450_interfacesSrvSetAngles_Response*(b: seq[byte]): Ros2Mycobot_pro450_interfacesSrvSetAngles_Response =
 ## ``@brief Decode exactly one complete mycobot_pro450_interfaces/srv/SetAngles_Response value.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvSetAngles_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos2Mycobot_pro450_interfacesSrvSetAngles_Response(r)
  finish(r)
type Ros2Mycobot_pro450_interfacesSrvSetCoords_Request* = object
 ## ``@brief Complete ROS 2 mycobot_pro450_interfaces/srv/SetCoords_Request value.``
 ## ``@details All 7 declared fields are retained in source order. The canonical representation``
 ## ``occupies 25..25 bytes and is identified by``
 ## ``UWVMROS1_e0c550200472f77aa582a46a5149c05c95648615a306f254599f820992890c81.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `x`*: float32 ## ``@brief mycobot_pro450_interfaces/srv/SetCoords_Request.x: float32. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `y`*: float32 ## ``@brief mycobot_pro450_interfaces/srv/SetCoords_Request.y: float32. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `z`*: float32 ## ``@brief mycobot_pro450_interfaces/srv/SetCoords_Request.z: float32. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rx`*: float32 ## ``@brief mycobot_pro450_interfaces/srv/SetCoords_Request.rx: float32. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `ry`*: float32 ## ``@brief mycobot_pro450_interfaces/srv/SetCoords_Request.ry: float32. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rz`*: float32 ## ``@brief mycobot_pro450_interfaces/srv/SetCoords_Request.rz: float32. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `speed`*: int8 ## ``@brief mycobot_pro450_interfaces/srv/SetCoords_Request.speed: int8. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvSetCoords_RequestMaximumWireBytes* = 25 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_pro450_interfaces/srv/SetCoords_Request``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 25 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvSetCoords_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvSetCoords_RequestCodecIdentity* = "UWVMROS1_e0c550200472f77aa582a46a5149c05c95648615a306f254599f820992890c81" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_pro450_interfaces/srv/SetCoords_Request.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_e0c550200472f77aa582a46a5149c05c95648615a306f254599f820992890c81``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvSetCoords_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvSetCoords_RequestNativeType* = "mycobot_pro450_interfaces/srv/SetCoords_Request" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_pro450_interfaces/srv/SetCoords_Request.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvSetCoords_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvSetCoords_RequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_pro450_interfaces/srv/SetCoords_Request.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvSetCoords_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_pro450_interfacesSrvSetCoords_Request*(): Ros2Mycobot_pro450_interfacesSrvSetCoords_Request =
 ## ``@brief Construct the declared defaults of mycobot_pro450_interfaces/srv/SetCoords_Request.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
  result.`rx` = 0
  result.`ry` = 0
  result.`rz` = 0
  result.`speed` = 0
proc writeFields*(value: Ros2Mycobot_pro450_interfacesSrvSetCoords_Request; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_pro450_interfaces/srv/SetCoords_Request.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`x`)
  putFloat32(w,value.`y`)
  putFloat32(w,value.`z`)
  putFloat32(w,value.`rx`)
  putFloat32(w,value.`ry`)
  putFloat32(w,value.`rz`)
  putInteger(w,value.`speed`)
proc readRos2Mycobot_pro450_interfacesSrvSetCoords_Request*(r: var Reader): Ros2Mycobot_pro450_interfacesSrvSetCoords_Request =
 ## ``@brief Read the ordered canonical fields of``
 ## ``mycobot_pro450_interfaces/srv/SetCoords_Request.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_pro450_interfacesSrvSetCoords_Request()
  result.`x` = getFloat32(r)
  result.`y` = getFloat32(r)
  result.`z` = getFloat32(r)
  result.`rx` = getFloat32(r)
  result.`ry` = getFloat32(r)
  result.`rz` = getFloat32(r)
  result.`speed` = getInteger(r,int8)
proc encode*(value: Ros2Mycobot_pro450_interfacesSrvSetCoords_Request): seq[byte] =
 ## ``@brief Encode one complete mycobot_pro450_interfaces/srv/SetCoords_Request value.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(25)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_pro450_interfacesSrvSetCoords_Request*(b: seq[byte]): Ros2Mycobot_pro450_interfacesSrvSetCoords_Request =
 ## ``@brief Decode exactly one complete mycobot_pro450_interfaces/srv/SetCoords_Request value.``
 ## ``@details Require the complete 25..25-byte canonical representation. Reject truncation,``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,25)
  result = readRos2Mycobot_pro450_interfacesSrvSetCoords_Request(r)
  finish(r)
type Ros2Mycobot_pro450_interfacesSrvSetCoords_Response* = object
 ## ``@brief Complete ROS 2 mycobot_pro450_interfaces/srv/SetCoords_Response value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_9a5ee934233519095e1b28568490f8d958c319e2544976fae0b7de53a54a3f51.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `flag`*: bool ## ``@brief mycobot_pro450_interfaces/srv/SetCoords_Response.flag: bool. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Response;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvSetCoords_ResponseMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_pro450_interfaces/srv/SetCoords_Response``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvSetCoords_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvSetCoords_ResponseCodecIdentity* = "UWVMROS1_9a5ee934233519095e1b28568490f8d958c319e2544976fae0b7de53a54a3f51" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_pro450_interfaces/srv/SetCoords_Response.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_9a5ee934233519095e1b28568490f8d958c319e2544976fae0b7de53a54a3f51``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvSetCoords_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvSetCoords_ResponseNativeType* = "mycobot_pro450_interfaces/srv/SetCoords_Response" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_pro450_interfaces/srv/SetCoords_Response.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvSetCoords_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mycobot_pro450_interfacesSrvSetCoords_ResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_pro450_interfaces/srv/SetCoords_Response.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mycobot_pro450_interfacesSrvSetCoords_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mycobot_pro450_interfacesSrvSetCoords_Response*(): Ros2Mycobot_pro450_interfacesSrvSetCoords_Response =
 ## ``@brief Construct the declared defaults of mycobot_pro450_interfaces/srv/SetCoords_Response.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mycobot_pro450_interfacesSrvSetCoords_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`flag` = false
proc writeFields*(value: Ros2Mycobot_pro450_interfacesSrvSetCoords_Response; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_pro450_interfaces/srv/SetCoords_Response.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvSetCoords_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`flag`)
proc readRos2Mycobot_pro450_interfacesSrvSetCoords_Response*(r: var Reader): Ros2Mycobot_pro450_interfacesSrvSetCoords_Response =
 ## ``@brief Read the ordered canonical fields of``
 ## ``mycobot_pro450_interfaces/srv/SetCoords_Response.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvSetCoords_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mycobot_pro450_interfacesSrvSetCoords_Response()
  result.`flag` = getBool(r)
proc encode*(value: Ros2Mycobot_pro450_interfacesSrvSetCoords_Response): seq[byte] =
 ## ``@brief Encode one complete mycobot_pro450_interfaces/srv/SetCoords_Response value.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvSetCoords_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mycobot_pro450_interfacesSrvSetCoords_Response*(b: seq[byte]): Ros2Mycobot_pro450_interfacesSrvSetCoords_Response =
 ## ``@brief Decode exactly one complete mycobot_pro450_interfaces/srv/SetCoords_Response value.``
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
 ## ``@see Ros2Mycobot_pro450_interfacesSrvSetCoords_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos2Mycobot_pro450_interfacesSrvSetCoords_Response(r)
  finish(r)
type Ros2Mypalletizer_interfacesMsgMypalAngles* = object
 ## ``@brief Complete ROS 2 mypalletizer_interfaces/msg/MypalAngles value.``
 ## ``@details All 4 declared fields are retained in source order. The canonical representation``
 ## ``occupies 16..16 bytes and is identified by``
 ## ``UWVMROS1_0a2dc324515448310b0f026fb26c6c5c6da452e5e7067096e315abe3ab86a35d.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `joint_1`*: float32 ## ``@brief mypalletizer_interfaces/msg/MypalAngles.joint_1: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mypalletizer_interfacesMsgMypalAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_2`*: float32 ## ``@brief mypalletizer_interfaces/msg/MypalAngles.joint_2: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mypalletizer_interfacesMsgMypalAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_3`*: float32 ## ``@brief mypalletizer_interfaces/msg/MypalAngles.joint_3: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mypalletizer_interfacesMsgMypalAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_4`*: float32 ## ``@brief mypalletizer_interfaces/msg/MypalAngles.joint_4: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mypalletizer_interfacesMsgMypalAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesMsgMypalAnglesMaximumWireBytes* = 16 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_interfaces/msg/MypalAngles``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 16 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mypalletizer_interfacesMsgMypalAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesMsgMypalAnglesCodecIdentity* = "UWVMROS1_0a2dc324515448310b0f026fb26c6c5c6da452e5e7067096e315abe3ab86a35d" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_interfaces/msg/MypalAngles.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_0a2dc324515448310b0f026fb26c6c5c6da452e5e7067096e315abe3ab86a35d``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mypalletizer_interfacesMsgMypalAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesMsgMypalAnglesNativeType* = "mypalletizer_interfaces/msg/MypalAngles" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_interfaces/msg/MypalAngles.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mypalletizer_interfacesMsgMypalAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesMsgMypalAnglesNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_interfaces/msg/MypalAngles.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mypalletizer_interfacesMsgMypalAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mypalletizer_interfacesMsgMypalAngles*(): Ros2Mypalletizer_interfacesMsgMypalAngles =
 ## ``@brief Construct the declared defaults of mypalletizer_interfaces/msg/MypalAngles.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mypalletizer_interfacesMsgMypalAngles; share/platform/ros/nim/API-CONTRACT.md``
  result.`joint_1` = 0
  result.`joint_2` = 0
  result.`joint_3` = 0
  result.`joint_4` = 0
proc writeFields*(value: Ros2Mypalletizer_interfacesMsgMypalAngles; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_interfaces/msg/MypalAngles.``
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
 ## ``@see Ros2Mypalletizer_interfacesMsgMypalAngles; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`joint_1`)
  putFloat32(w,value.`joint_2`)
  putFloat32(w,value.`joint_3`)
  putFloat32(w,value.`joint_4`)
proc readRos2Mypalletizer_interfacesMsgMypalAngles*(r: var Reader): Ros2Mypalletizer_interfacesMsgMypalAngles =
 ## ``@brief Read the ordered canonical fields of mypalletizer_interfaces/msg/MypalAngles.``
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
 ## ``@see Ros2Mypalletizer_interfacesMsgMypalAngles; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mypalletizer_interfacesMsgMypalAngles()
  result.`joint_1` = getFloat32(r)
  result.`joint_2` = getFloat32(r)
  result.`joint_3` = getFloat32(r)
  result.`joint_4` = getFloat32(r)
proc encode*(value: Ros2Mypalletizer_interfacesMsgMypalAngles): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_interfaces/msg/MypalAngles value.``
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
 ## ``@see Ros2Mypalletizer_interfacesMsgMypalAngles; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(16)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mypalletizer_interfacesMsgMypalAngles*(b: seq[byte]): Ros2Mypalletizer_interfacesMsgMypalAngles =
 ## ``@brief Decode exactly one complete mypalletizer_interfaces/msg/MypalAngles value.``
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
 ## ``@see Ros2Mypalletizer_interfacesMsgMypalAngles; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,16)
  result = readRos2Mypalletizer_interfacesMsgMypalAngles(r)
  finish(r)
type Ros2Mypalletizer_interfacesMsgMypalCoords* = object
 ## ``@brief Complete ROS 2 mypalletizer_interfaces/msg/MypalCoords value.``
 ## ``@details All 4 declared fields are retained in source order. The canonical representation``
 ## ``occupies 16..16 bytes and is identified by``
 ## ``UWVMROS1_839491548a07528380403fa31c89889ce82f28b2f82e6fd9474835659714b4f7.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `x`*: float32 ## ``@brief mypalletizer_interfaces/msg/MypalCoords.x: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mypalletizer_interfacesMsgMypalCoords;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `y`*: float32 ## ``@brief mypalletizer_interfaces/msg/MypalCoords.y: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mypalletizer_interfacesMsgMypalCoords;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `z`*: float32 ## ``@brief mypalletizer_interfaces/msg/MypalCoords.z: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros2Mypalletizer_interfacesMsgMypalCoords;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rx`*: float32 ## ``@brief mypalletizer_interfaces/msg/MypalCoords.rx: float32. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mypalletizer_interfacesMsgMypalCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesMsgMypalCoordsMaximumWireBytes* = 16 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_interfaces/msg/MypalCoords``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 16 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mypalletizer_interfacesMsgMypalCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesMsgMypalCoordsCodecIdentity* = "UWVMROS1_839491548a07528380403fa31c89889ce82f28b2f82e6fd9474835659714b4f7" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_interfaces/msg/MypalCoords.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_839491548a07528380403fa31c89889ce82f28b2f82e6fd9474835659714b4f7``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mypalletizer_interfacesMsgMypalCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesMsgMypalCoordsNativeType* = "mypalletizer_interfaces/msg/MypalCoords" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_interfaces/msg/MypalCoords.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mypalletizer_interfacesMsgMypalCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesMsgMypalCoordsNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_interfaces/msg/MypalCoords.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mypalletizer_interfacesMsgMypalCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mypalletizer_interfacesMsgMypalCoords*(): Ros2Mypalletizer_interfacesMsgMypalCoords =
 ## ``@brief Construct the declared defaults of mypalletizer_interfaces/msg/MypalCoords.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mypalletizer_interfacesMsgMypalCoords; share/platform/ros/nim/API-CONTRACT.md``
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
  result.`rx` = 0
proc writeFields*(value: Ros2Mypalletizer_interfacesMsgMypalCoords; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_interfaces/msg/MypalCoords.``
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
 ## ``@see Ros2Mypalletizer_interfacesMsgMypalCoords; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`x`)
  putFloat32(w,value.`y`)
  putFloat32(w,value.`z`)
  putFloat32(w,value.`rx`)
proc readRos2Mypalletizer_interfacesMsgMypalCoords*(r: var Reader): Ros2Mypalletizer_interfacesMsgMypalCoords =
 ## ``@brief Read the ordered canonical fields of mypalletizer_interfaces/msg/MypalCoords.``
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
 ## ``@see Ros2Mypalletizer_interfacesMsgMypalCoords; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mypalletizer_interfacesMsgMypalCoords()
  result.`x` = getFloat32(r)
  result.`y` = getFloat32(r)
  result.`z` = getFloat32(r)
  result.`rx` = getFloat32(r)
proc encode*(value: Ros2Mypalletizer_interfacesMsgMypalCoords): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_interfaces/msg/MypalCoords value.``
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
 ## ``@see Ros2Mypalletizer_interfacesMsgMypalCoords; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(16)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mypalletizer_interfacesMsgMypalCoords*(b: seq[byte]): Ros2Mypalletizer_interfacesMsgMypalCoords =
 ## ``@brief Decode exactly one complete mypalletizer_interfaces/msg/MypalCoords value.``
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
 ## ``@see Ros2Mypalletizer_interfacesMsgMypalCoords; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,16)
  result = readRos2Mypalletizer_interfacesMsgMypalCoords(r)
  finish(r)
type Ros2Mypalletizer_interfacesMsgMypalGripperStatus* = object
 ## ``@brief Complete ROS 2 mypalletizer_interfaces/msg/MypalGripperStatus value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_f6e4ad6193272d6401bbbfcc20c0f38b6a147a81d9de1ad956d7c154f29daeb0.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `status`*: bool ## ``@brief mypalletizer_interfaces/msg/MypalGripperStatus.status: bool. @details The``
                  ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                  ## ``preserves the original field position and signedness; invalid bounds fail instead``
                  ## ``of truncating the value. @units Use the units and frame/clock domain of the``
                  ## ``pinned native definition. The codec performs no scaling, frame conversion or``
                  ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                  ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                  ## ``enclosing decode function. @see Ros2Mypalletizer_interfacesMsgMypalGripperStatus;``
                  ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesMsgMypalGripperStatusMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_interfaces/msg/MypalGripperStatus``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mypalletizer_interfacesMsgMypalGripperStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesMsgMypalGripperStatusCodecIdentity* = "UWVMROS1_f6e4ad6193272d6401bbbfcc20c0f38b6a147a81d9de1ad956d7c154f29daeb0" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_interfaces/msg/MypalGripperStatus.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_f6e4ad6193272d6401bbbfcc20c0f38b6a147a81d9de1ad956d7c154f29daeb0``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mypalletizer_interfacesMsgMypalGripperStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesMsgMypalGripperStatusNativeType* = "mypalletizer_interfaces/msg/MypalGripperStatus" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_interfaces/msg/MypalGripperStatus.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mypalletizer_interfacesMsgMypalGripperStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesMsgMypalGripperStatusNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_interfaces/msg/MypalGripperStatus.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mypalletizer_interfacesMsgMypalGripperStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mypalletizer_interfacesMsgMypalGripperStatus*(): Ros2Mypalletizer_interfacesMsgMypalGripperStatus =
 ## ``@brief Construct the declared defaults of mypalletizer_interfaces/msg/MypalGripperStatus.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mypalletizer_interfacesMsgMypalGripperStatus;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`status` = false
proc writeFields*(value: Ros2Mypalletizer_interfacesMsgMypalGripperStatus; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_interfaces/msg/MypalGripperStatus.``
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
 ## ``@see Ros2Mypalletizer_interfacesMsgMypalGripperStatus;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`status`)
proc readRos2Mypalletizer_interfacesMsgMypalGripperStatus*(r: var Reader): Ros2Mypalletizer_interfacesMsgMypalGripperStatus =
 ## ``@brief Read the ordered canonical fields of mypalletizer_interfaces/msg/MypalGripperStatus.``
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
 ## ``@see Ros2Mypalletizer_interfacesMsgMypalGripperStatus;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mypalletizer_interfacesMsgMypalGripperStatus()
  result.`status` = getBool(r)
proc encode*(value: Ros2Mypalletizer_interfacesMsgMypalGripperStatus): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_interfaces/msg/MypalGripperStatus value.``
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
 ## ``@see Ros2Mypalletizer_interfacesMsgMypalGripperStatus;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mypalletizer_interfacesMsgMypalGripperStatus*(b: seq[byte]): Ros2Mypalletizer_interfacesMsgMypalGripperStatus =
 ## ``@brief Decode exactly one complete mypalletizer_interfaces/msg/MypalGripperStatus value.``
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
 ## ``@see Ros2Mypalletizer_interfacesMsgMypalGripperStatus;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos2Mypalletizer_interfacesMsgMypalGripperStatus(r)
  finish(r)
type Ros2Mypalletizer_interfacesMsgMypalPumpStatus* = object
 ## ``@brief Complete ROS 2 mypalletizer_interfaces/msg/MypalPumpStatus value.``
 ## ``@details All 3 declared fields are retained in source order. The canonical representation``
 ## ``occupies 3..3 bytes and is identified by``
 ## ``UWVMROS1_008dfd13cad42029330909fb7dc68392ba7f6678ad1baa14a41aad1e759f523c.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `status`*: bool ## ``@brief mypalletizer_interfaces/msg/MypalPumpStatus.status: bool. @details The``
                  ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                  ## ``preserves the original field position and signedness; invalid bounds fail instead``
                  ## ``of truncating the value. @units Use the units and frame/clock domain of the``
                  ## ``pinned native definition. The codec performs no scaling, frame conversion or``
                  ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                  ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                  ## ``enclosing decode function. @see Ros2Mypalletizer_interfacesMsgMypalPumpStatus;``
                  ## ``share/platform/ros/nim/API-CONTRACT.md``
  `pin1`*: int8 ## ``@brief mypalletizer_interfaces/msg/MypalPumpStatus.pin1: int8. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mypalletizer_interfacesMsgMypalPumpStatus;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `pin2`*: int8 ## ``@brief mypalletizer_interfaces/msg/MypalPumpStatus.pin2: int8. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mypalletizer_interfacesMsgMypalPumpStatus;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesMsgMypalPumpStatusMaximumWireBytes* = 3 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_interfaces/msg/MypalPumpStatus``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 3 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mypalletizer_interfacesMsgMypalPumpStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesMsgMypalPumpStatusCodecIdentity* = "UWVMROS1_008dfd13cad42029330909fb7dc68392ba7f6678ad1baa14a41aad1e759f523c" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_interfaces/msg/MypalPumpStatus.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_008dfd13cad42029330909fb7dc68392ba7f6678ad1baa14a41aad1e759f523c``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mypalletizer_interfacesMsgMypalPumpStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesMsgMypalPumpStatusNativeType* = "mypalletizer_interfaces/msg/MypalPumpStatus" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_interfaces/msg/MypalPumpStatus.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mypalletizer_interfacesMsgMypalPumpStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesMsgMypalPumpStatusNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_interfaces/msg/MypalPumpStatus.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mypalletizer_interfacesMsgMypalPumpStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mypalletizer_interfacesMsgMypalPumpStatus*(): Ros2Mypalletizer_interfacesMsgMypalPumpStatus =
 ## ``@brief Construct the declared defaults of mypalletizer_interfaces/msg/MypalPumpStatus.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mypalletizer_interfacesMsgMypalPumpStatus; share/platform/ros/nim/API-CONTRACT.md``
  result.`status` = false
  result.`pin1` = 0
  result.`pin2` = 0
proc writeFields*(value: Ros2Mypalletizer_interfacesMsgMypalPumpStatus; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_interfaces/msg/MypalPumpStatus.``
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
 ## ``@see Ros2Mypalletizer_interfacesMsgMypalPumpStatus; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`status`)
  putInteger(w,value.`pin1`)
  putInteger(w,value.`pin2`)
proc readRos2Mypalletizer_interfacesMsgMypalPumpStatus*(r: var Reader): Ros2Mypalletizer_interfacesMsgMypalPumpStatus =
 ## ``@brief Read the ordered canonical fields of mypalletizer_interfaces/msg/MypalPumpStatus.``
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
 ## ``@see Ros2Mypalletizer_interfacesMsgMypalPumpStatus; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mypalletizer_interfacesMsgMypalPumpStatus()
  result.`status` = getBool(r)
  result.`pin1` = getInteger(r,int8)
  result.`pin2` = getInteger(r,int8)
proc encode*(value: Ros2Mypalletizer_interfacesMsgMypalPumpStatus): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_interfaces/msg/MypalPumpStatus value.``
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
 ## ``@see Ros2Mypalletizer_interfacesMsgMypalPumpStatus; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(3)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mypalletizer_interfacesMsgMypalPumpStatus*(b: seq[byte]): Ros2Mypalletizer_interfacesMsgMypalPumpStatus =
 ## ``@brief Decode exactly one complete mypalletizer_interfaces/msg/MypalPumpStatus value.``
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
 ## ``@see Ros2Mypalletizer_interfacesMsgMypalPumpStatus; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,3)
  result = readRos2Mypalletizer_interfacesMsgMypalPumpStatus(r)
  finish(r)
type Ros2Mypalletizer_interfacesMsgMypalSetAngles* = object
 ## ``@brief Complete ROS 2 mypalletizer_interfaces/msg/MypalSetAngles value.``
 ## ``@details All 5 declared fields are retained in source order. The canonical representation``
 ## ``occupies 17..17 bytes and is identified by``
 ## ``UWVMROS1_b9fdd6ac956fdeb4934ff41982e616f7c0c45b11169b6d60ba74fbcc61458bb5.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `joint_1`*: float32 ## ``@brief mypalletizer_interfaces/msg/MypalSetAngles.joint_1: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mypalletizer_interfacesMsgMypalSetAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_2`*: float32 ## ``@brief mypalletizer_interfaces/msg/MypalSetAngles.joint_2: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mypalletizer_interfacesMsgMypalSetAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_3`*: float32 ## ``@brief mypalletizer_interfaces/msg/MypalSetAngles.joint_3: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mypalletizer_interfacesMsgMypalSetAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_4`*: float32 ## ``@brief mypalletizer_interfaces/msg/MypalSetAngles.joint_4: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mypalletizer_interfacesMsgMypalSetAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `speed`*: int8 ## ``@brief mypalletizer_interfaces/msg/MypalSetAngles.speed: int8. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mypalletizer_interfacesMsgMypalSetAngles;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesMsgMypalSetAnglesMaximumWireBytes* = 17 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_interfaces/msg/MypalSetAngles``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 17 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mypalletizer_interfacesMsgMypalSetAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesMsgMypalSetAnglesCodecIdentity* = "UWVMROS1_b9fdd6ac956fdeb4934ff41982e616f7c0c45b11169b6d60ba74fbcc61458bb5" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_interfaces/msg/MypalSetAngles.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_b9fdd6ac956fdeb4934ff41982e616f7c0c45b11169b6d60ba74fbcc61458bb5``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mypalletizer_interfacesMsgMypalSetAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesMsgMypalSetAnglesNativeType* = "mypalletizer_interfaces/msg/MypalSetAngles" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_interfaces/msg/MypalSetAngles.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mypalletizer_interfacesMsgMypalSetAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesMsgMypalSetAnglesNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_interfaces/msg/MypalSetAngles.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mypalletizer_interfacesMsgMypalSetAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mypalletizer_interfacesMsgMypalSetAngles*(): Ros2Mypalletizer_interfacesMsgMypalSetAngles =
 ## ``@brief Construct the declared defaults of mypalletizer_interfaces/msg/MypalSetAngles.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mypalletizer_interfacesMsgMypalSetAngles; share/platform/ros/nim/API-CONTRACT.md``
  result.`joint_1` = 0
  result.`joint_2` = 0
  result.`joint_3` = 0
  result.`joint_4` = 0
  result.`speed` = 0
proc writeFields*(value: Ros2Mypalletizer_interfacesMsgMypalSetAngles; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_interfaces/msg/MypalSetAngles.``
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
 ## ``@see Ros2Mypalletizer_interfacesMsgMypalSetAngles; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`joint_1`)
  putFloat32(w,value.`joint_2`)
  putFloat32(w,value.`joint_3`)
  putFloat32(w,value.`joint_4`)
  putInteger(w,value.`speed`)
proc readRos2Mypalletizer_interfacesMsgMypalSetAngles*(r: var Reader): Ros2Mypalletizer_interfacesMsgMypalSetAngles =
 ## ``@brief Read the ordered canonical fields of mypalletizer_interfaces/msg/MypalSetAngles.``
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
 ## ``@see Ros2Mypalletizer_interfacesMsgMypalSetAngles; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mypalletizer_interfacesMsgMypalSetAngles()
  result.`joint_1` = getFloat32(r)
  result.`joint_2` = getFloat32(r)
  result.`joint_3` = getFloat32(r)
  result.`joint_4` = getFloat32(r)
  result.`speed` = getInteger(r,int8)
proc encode*(value: Ros2Mypalletizer_interfacesMsgMypalSetAngles): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_interfaces/msg/MypalSetAngles value.``
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
 ## ``@see Ros2Mypalletizer_interfacesMsgMypalSetAngles; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(17)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mypalletizer_interfacesMsgMypalSetAngles*(b: seq[byte]): Ros2Mypalletizer_interfacesMsgMypalSetAngles =
 ## ``@brief Decode exactly one complete mypalletizer_interfaces/msg/MypalSetAngles value.``
 ## ``@details Require the complete 17..17-byte canonical representation. Reject truncation,``
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
 ## ``@see Ros2Mypalletizer_interfacesMsgMypalSetAngles; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,17)
  result = readRos2Mypalletizer_interfacesMsgMypalSetAngles(r)
  finish(r)
type Ros2Mypalletizer_interfacesMsgMypalSetCoords* = object
 ## ``@brief Complete ROS 2 mypalletizer_interfaces/msg/MypalSetCoords value.``
 ## ``@details All 5 declared fields are retained in source order. The canonical representation``
 ## ``occupies 17..17 bytes and is identified by``
 ## ``UWVMROS1_0c1b65f543cdd239a5a56a7839ac607c5310cd4145ef6a6da5639a9af8ba4c79.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `x`*: float32 ## ``@brief mypalletizer_interfaces/msg/MypalSetCoords.x: float32. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mypalletizer_interfacesMsgMypalSetCoords;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `y`*: float32 ## ``@brief mypalletizer_interfaces/msg/MypalSetCoords.y: float32. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mypalletizer_interfacesMsgMypalSetCoords;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `z`*: float32 ## ``@brief mypalletizer_interfaces/msg/MypalSetCoords.z: float32. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mypalletizer_interfacesMsgMypalSetCoords;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rx`*: float32 ## ``@brief mypalletizer_interfaces/msg/MypalSetCoords.rx: float32. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mypalletizer_interfacesMsgMypalSetCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `speed`*: int8 ## ``@brief mypalletizer_interfaces/msg/MypalSetCoords.speed: int8. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mypalletizer_interfacesMsgMypalSetCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesMsgMypalSetCoordsMaximumWireBytes* = 17 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_interfaces/msg/MypalSetCoords``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 17 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mypalletizer_interfacesMsgMypalSetCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesMsgMypalSetCoordsCodecIdentity* = "UWVMROS1_0c1b65f543cdd239a5a56a7839ac607c5310cd4145ef6a6da5639a9af8ba4c79" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_interfaces/msg/MypalSetCoords.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_0c1b65f543cdd239a5a56a7839ac607c5310cd4145ef6a6da5639a9af8ba4c79``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mypalletizer_interfacesMsgMypalSetCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesMsgMypalSetCoordsNativeType* = "mypalletizer_interfaces/msg/MypalSetCoords" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_interfaces/msg/MypalSetCoords.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mypalletizer_interfacesMsgMypalSetCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesMsgMypalSetCoordsNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_interfaces/msg/MypalSetCoords.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mypalletizer_interfacesMsgMypalSetCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mypalletizer_interfacesMsgMypalSetCoords*(): Ros2Mypalletizer_interfacesMsgMypalSetCoords =
 ## ``@brief Construct the declared defaults of mypalletizer_interfaces/msg/MypalSetCoords.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mypalletizer_interfacesMsgMypalSetCoords; share/platform/ros/nim/API-CONTRACT.md``
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
  result.`rx` = 0
  result.`speed` = 0
proc writeFields*(value: Ros2Mypalletizer_interfacesMsgMypalSetCoords; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_interfaces/msg/MypalSetCoords.``
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
 ## ``@see Ros2Mypalletizer_interfacesMsgMypalSetCoords; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`x`)
  putFloat32(w,value.`y`)
  putFloat32(w,value.`z`)
  putFloat32(w,value.`rx`)
  putInteger(w,value.`speed`)
proc readRos2Mypalletizer_interfacesMsgMypalSetCoords*(r: var Reader): Ros2Mypalletizer_interfacesMsgMypalSetCoords =
 ## ``@brief Read the ordered canonical fields of mypalletizer_interfaces/msg/MypalSetCoords.``
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
 ## ``@see Ros2Mypalletizer_interfacesMsgMypalSetCoords; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mypalletizer_interfacesMsgMypalSetCoords()
  result.`x` = getFloat32(r)
  result.`y` = getFloat32(r)
  result.`z` = getFloat32(r)
  result.`rx` = getFloat32(r)
  result.`speed` = getInteger(r,int8)
proc encode*(value: Ros2Mypalletizer_interfacesMsgMypalSetCoords): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_interfaces/msg/MypalSetCoords value.``
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
 ## ``@see Ros2Mypalletizer_interfacesMsgMypalSetCoords; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(17)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mypalletizer_interfacesMsgMypalSetCoords*(b: seq[byte]): Ros2Mypalletizer_interfacesMsgMypalSetCoords =
 ## ``@brief Decode exactly one complete mypalletizer_interfaces/msg/MypalSetCoords value.``
 ## ``@details Require the complete 17..17-byte canonical representation. Reject truncation,``
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
 ## ``@see Ros2Mypalletizer_interfacesMsgMypalSetCoords; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,17)
  result = readRos2Mypalletizer_interfacesMsgMypalSetCoords(r)
  finish(r)
type Ros2Mypalletizer_interfacesSrvGetAngles_Request* = object
 ## ``@brief Complete ROS 2 mypalletizer_interfaces/srv/GetAngles_Request value.``
 ## ``@details All 0 declared fields are retained in source order. The canonical representation``
 ## ``occupies 0..0 bytes and is identified by``
 ## ``UWVMROS1_c8124a1063d47b24dae2e279f51d4e48ebf9936a5e305b81b53387a4be344f78.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvGetAngles_RequestMaximumWireBytes* = 0 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_interfaces/srv/GetAngles_Request``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 0 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mypalletizer_interfacesSrvGetAngles_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvGetAngles_RequestCodecIdentity* = "UWVMROS1_c8124a1063d47b24dae2e279f51d4e48ebf9936a5e305b81b53387a4be344f78" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_interfaces/srv/GetAngles_Request.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_c8124a1063d47b24dae2e279f51d4e48ebf9936a5e305b81b53387a4be344f78``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mypalletizer_interfacesSrvGetAngles_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvGetAngles_RequestNativeType* = "mypalletizer_interfaces/srv/GetAngles_Request" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_interfaces/srv/GetAngles_Request.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mypalletizer_interfacesSrvGetAngles_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvGetAngles_RequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_interfaces/srv/GetAngles_Request.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mypalletizer_interfacesSrvGetAngles_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mypalletizer_interfacesSrvGetAngles_Request*(): Ros2Mypalletizer_interfacesSrvGetAngles_Request =
 ## ``@brief Construct the declared defaults of mypalletizer_interfaces/srv/GetAngles_Request.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mypalletizer_interfacesSrvGetAngles_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  discard
proc writeFields*(value: Ros2Mypalletizer_interfacesSrvGetAngles_Request; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_interfaces/srv/GetAngles_Request.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvGetAngles_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  discard
proc readRos2Mypalletizer_interfacesSrvGetAngles_Request*(r: var Reader): Ros2Mypalletizer_interfacesSrvGetAngles_Request =
 ## ``@brief Read the ordered canonical fields of mypalletizer_interfaces/srv/GetAngles_Request.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvGetAngles_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mypalletizer_interfacesSrvGetAngles_Request()
proc encode*(value: Ros2Mypalletizer_interfacesSrvGetAngles_Request): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_interfaces/srv/GetAngles_Request value.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvGetAngles_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mypalletizer_interfacesSrvGetAngles_Request*(b: seq[byte]): Ros2Mypalletizer_interfacesSrvGetAngles_Request =
 ## ``@brief Decode exactly one complete mypalletizer_interfaces/srv/GetAngles_Request value.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvGetAngles_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,0)
  result = readRos2Mypalletizer_interfacesSrvGetAngles_Request(r)
  finish(r)
type Ros2Mypalletizer_interfacesSrvGetAngles_Response* = object
 ## ``@brief Complete ROS 2 mypalletizer_interfaces/srv/GetAngles_Response value.``
 ## ``@details All 4 declared fields are retained in source order. The canonical representation``
 ## ``occupies 16..16 bytes and is identified by``
 ## ``UWVMROS1_33812a320c14891a5bc76a86ccbb0a5507cfbcc3706e01bc304263edabc6f75d.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `joint_1`*: float32 ## ``@brief mypalletizer_interfaces/srv/GetAngles_Response.joint_1: float32.``
                      ## ``@details The generated initializer supplies the declared zero/empty/nested``
                      ## ``default. Encoding preserves the original field position and signedness;``
                      ## ``invalid bounds fail instead of truncating the value. @units Use the units and``
                      ## ``frame/clock domain of the pinned native definition. The codec performs no``
                      ## ``scaling, frame conversion or normalization. @lifetime Retain referenced``
                      ## ``string/sequence backing storage for each encoding call. Decoded borrowing and``
                      ## ``allocator ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mypalletizer_interfacesSrvGetAngles_Response;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_2`*: float32 ## ``@brief mypalletizer_interfaces/srv/GetAngles_Response.joint_2: float32.``
                      ## ``@details The generated initializer supplies the declared zero/empty/nested``
                      ## ``default. Encoding preserves the original field position and signedness;``
                      ## ``invalid bounds fail instead of truncating the value. @units Use the units and``
                      ## ``frame/clock domain of the pinned native definition. The codec performs no``
                      ## ``scaling, frame conversion or normalization. @lifetime Retain referenced``
                      ## ``string/sequence backing storage for each encoding call. Decoded borrowing and``
                      ## ``allocator ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mypalletizer_interfacesSrvGetAngles_Response;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_3`*: float32 ## ``@brief mypalletizer_interfaces/srv/GetAngles_Response.joint_3: float32.``
                      ## ``@details The generated initializer supplies the declared zero/empty/nested``
                      ## ``default. Encoding preserves the original field position and signedness;``
                      ## ``invalid bounds fail instead of truncating the value. @units Use the units and``
                      ## ``frame/clock domain of the pinned native definition. The codec performs no``
                      ## ``scaling, frame conversion or normalization. @lifetime Retain referenced``
                      ## ``string/sequence backing storage for each encoding call. Decoded borrowing and``
                      ## ``allocator ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mypalletizer_interfacesSrvGetAngles_Response;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_4`*: float32 ## ``@brief mypalletizer_interfaces/srv/GetAngles_Response.joint_4: float32.``
                      ## ``@details The generated initializer supplies the declared zero/empty/nested``
                      ## ``default. Encoding preserves the original field position and signedness;``
                      ## ``invalid bounds fail instead of truncating the value. @units Use the units and``
                      ## ``frame/clock domain of the pinned native definition. The codec performs no``
                      ## ``scaling, frame conversion or normalization. @lifetime Retain referenced``
                      ## ``string/sequence backing storage for each encoding call. Decoded borrowing and``
                      ## ``allocator ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mypalletizer_interfacesSrvGetAngles_Response;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvGetAngles_ResponseMaximumWireBytes* = 16 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_interfaces/srv/GetAngles_Response``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 16 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mypalletizer_interfacesSrvGetAngles_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvGetAngles_ResponseCodecIdentity* = "UWVMROS1_33812a320c14891a5bc76a86ccbb0a5507cfbcc3706e01bc304263edabc6f75d" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_interfaces/srv/GetAngles_Response.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_33812a320c14891a5bc76a86ccbb0a5507cfbcc3706e01bc304263edabc6f75d``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mypalletizer_interfacesSrvGetAngles_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvGetAngles_ResponseNativeType* = "mypalletizer_interfaces/srv/GetAngles_Response" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_interfaces/srv/GetAngles_Response.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mypalletizer_interfacesSrvGetAngles_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvGetAngles_ResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_interfaces/srv/GetAngles_Response.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mypalletizer_interfacesSrvGetAngles_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mypalletizer_interfacesSrvGetAngles_Response*(): Ros2Mypalletizer_interfacesSrvGetAngles_Response =
 ## ``@brief Construct the declared defaults of mypalletizer_interfaces/srv/GetAngles_Response.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mypalletizer_interfacesSrvGetAngles_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`joint_1` = 0
  result.`joint_2` = 0
  result.`joint_3` = 0
  result.`joint_4` = 0
proc writeFields*(value: Ros2Mypalletizer_interfacesSrvGetAngles_Response; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_interfaces/srv/GetAngles_Response.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvGetAngles_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`joint_1`)
  putFloat32(w,value.`joint_2`)
  putFloat32(w,value.`joint_3`)
  putFloat32(w,value.`joint_4`)
proc readRos2Mypalletizer_interfacesSrvGetAngles_Response*(r: var Reader): Ros2Mypalletizer_interfacesSrvGetAngles_Response =
 ## ``@brief Read the ordered canonical fields of mypalletizer_interfaces/srv/GetAngles_Response.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvGetAngles_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mypalletizer_interfacesSrvGetAngles_Response()
  result.`joint_1` = getFloat32(r)
  result.`joint_2` = getFloat32(r)
  result.`joint_3` = getFloat32(r)
  result.`joint_4` = getFloat32(r)
proc encode*(value: Ros2Mypalletizer_interfacesSrvGetAngles_Response): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_interfaces/srv/GetAngles_Response value.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvGetAngles_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(16)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mypalletizer_interfacesSrvGetAngles_Response*(b: seq[byte]): Ros2Mypalletizer_interfacesSrvGetAngles_Response =
 ## ``@brief Decode exactly one complete mypalletizer_interfaces/srv/GetAngles_Response value.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvGetAngles_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,16)
  result = readRos2Mypalletizer_interfacesSrvGetAngles_Response(r)
  finish(r)
type Ros2Mypalletizer_interfacesSrvGetCoords_Request* = object
 ## ``@brief Complete ROS 2 mypalletizer_interfaces/srv/GetCoords_Request value.``
 ## ``@details All 0 declared fields are retained in source order. The canonical representation``
 ## ``occupies 0..0 bytes and is identified by``
 ## ``UWVMROS1_b3db3a0e7d2aed097027798a897caf833f9cc1b8bb027f98c0db016968fa4440.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvGetCoords_RequestMaximumWireBytes* = 0 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_interfaces/srv/GetCoords_Request``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 0 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mypalletizer_interfacesSrvGetCoords_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvGetCoords_RequestCodecIdentity* = "UWVMROS1_b3db3a0e7d2aed097027798a897caf833f9cc1b8bb027f98c0db016968fa4440" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_interfaces/srv/GetCoords_Request.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_b3db3a0e7d2aed097027798a897caf833f9cc1b8bb027f98c0db016968fa4440``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mypalletizer_interfacesSrvGetCoords_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvGetCoords_RequestNativeType* = "mypalletizer_interfaces/srv/GetCoords_Request" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_interfaces/srv/GetCoords_Request.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mypalletizer_interfacesSrvGetCoords_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvGetCoords_RequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_interfaces/srv/GetCoords_Request.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mypalletizer_interfacesSrvGetCoords_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mypalletizer_interfacesSrvGetCoords_Request*(): Ros2Mypalletizer_interfacesSrvGetCoords_Request =
 ## ``@brief Construct the declared defaults of mypalletizer_interfaces/srv/GetCoords_Request.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mypalletizer_interfacesSrvGetCoords_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  discard
proc writeFields*(value: Ros2Mypalletizer_interfacesSrvGetCoords_Request; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_interfaces/srv/GetCoords_Request.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvGetCoords_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  discard
proc readRos2Mypalletizer_interfacesSrvGetCoords_Request*(r: var Reader): Ros2Mypalletizer_interfacesSrvGetCoords_Request =
 ## ``@brief Read the ordered canonical fields of mypalletizer_interfaces/srv/GetCoords_Request.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvGetCoords_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mypalletizer_interfacesSrvGetCoords_Request()
proc encode*(value: Ros2Mypalletizer_interfacesSrvGetCoords_Request): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_interfaces/srv/GetCoords_Request value.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvGetCoords_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mypalletizer_interfacesSrvGetCoords_Request*(b: seq[byte]): Ros2Mypalletizer_interfacesSrvGetCoords_Request =
 ## ``@brief Decode exactly one complete mypalletizer_interfaces/srv/GetCoords_Request value.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvGetCoords_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,0)
  result = readRos2Mypalletizer_interfacesSrvGetCoords_Request(r)
  finish(r)
type Ros2Mypalletizer_interfacesSrvGetCoords_Response* = object
 ## ``@brief Complete ROS 2 mypalletizer_interfaces/srv/GetCoords_Response value.``
 ## ``@details All 4 declared fields are retained in source order. The canonical representation``
 ## ``occupies 16..16 bytes and is identified by``
 ## ``UWVMROS1_9d237cfa03c4b3c17d99fe0a9c08d1cafa3e8d0e404191e2169eea8683c54c84.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `x`*: float32 ## ``@brief mypalletizer_interfaces/srv/GetCoords_Response.x: float32. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mypalletizer_interfacesSrvGetCoords_Response;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `y`*: float32 ## ``@brief mypalletizer_interfaces/srv/GetCoords_Response.y: float32. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mypalletizer_interfacesSrvGetCoords_Response;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `z`*: float32 ## ``@brief mypalletizer_interfaces/srv/GetCoords_Response.z: float32. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mypalletizer_interfacesSrvGetCoords_Response;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rx`*: float32 ## ``@brief mypalletizer_interfaces/srv/GetCoords_Response.rx: float32. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mypalletizer_interfacesSrvGetCoords_Response;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvGetCoords_ResponseMaximumWireBytes* = 16 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_interfaces/srv/GetCoords_Response``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 16 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mypalletizer_interfacesSrvGetCoords_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvGetCoords_ResponseCodecIdentity* = "UWVMROS1_9d237cfa03c4b3c17d99fe0a9c08d1cafa3e8d0e404191e2169eea8683c54c84" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_interfaces/srv/GetCoords_Response.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_9d237cfa03c4b3c17d99fe0a9c08d1cafa3e8d0e404191e2169eea8683c54c84``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mypalletizer_interfacesSrvGetCoords_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvGetCoords_ResponseNativeType* = "mypalletizer_interfaces/srv/GetCoords_Response" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_interfaces/srv/GetCoords_Response.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mypalletizer_interfacesSrvGetCoords_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvGetCoords_ResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_interfaces/srv/GetCoords_Response.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mypalletizer_interfacesSrvGetCoords_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mypalletizer_interfacesSrvGetCoords_Response*(): Ros2Mypalletizer_interfacesSrvGetCoords_Response =
 ## ``@brief Construct the declared defaults of mypalletizer_interfaces/srv/GetCoords_Response.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mypalletizer_interfacesSrvGetCoords_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
  result.`rx` = 0
proc writeFields*(value: Ros2Mypalletizer_interfacesSrvGetCoords_Response; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_interfaces/srv/GetCoords_Response.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvGetCoords_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`x`)
  putFloat32(w,value.`y`)
  putFloat32(w,value.`z`)
  putFloat32(w,value.`rx`)
proc readRos2Mypalletizer_interfacesSrvGetCoords_Response*(r: var Reader): Ros2Mypalletizer_interfacesSrvGetCoords_Response =
 ## ``@brief Read the ordered canonical fields of mypalletizer_interfaces/srv/GetCoords_Response.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvGetCoords_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mypalletizer_interfacesSrvGetCoords_Response()
  result.`x` = getFloat32(r)
  result.`y` = getFloat32(r)
  result.`z` = getFloat32(r)
  result.`rx` = getFloat32(r)
proc encode*(value: Ros2Mypalletizer_interfacesSrvGetCoords_Response): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_interfaces/srv/GetCoords_Response value.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvGetCoords_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(16)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mypalletizer_interfacesSrvGetCoords_Response*(b: seq[byte]): Ros2Mypalletizer_interfacesSrvGetCoords_Response =
 ## ``@brief Decode exactly one complete mypalletizer_interfaces/srv/GetCoords_Response value.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvGetCoords_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,16)
  result = readRos2Mypalletizer_interfacesSrvGetCoords_Response(r)
  finish(r)
type Ros2Mypalletizer_interfacesSrvGripperStatus_Request* = object
 ## ``@brief Complete ROS 2 mypalletizer_interfaces/srv/GripperStatus_Request value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_b6d4c5991599ec4ac56e5f65dacd5a1ab89f073e9f07dc2b03692f4289fdcc9d.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `status`*: bool ## ``@brief mypalletizer_interfaces/srv/GripperStatus_Request.status: bool. @details``
                  ## ``The generated initializer supplies the declared zero/empty/nested default.``
                  ## ``Encoding preserves the original field position and signedness; invalid bounds``
                  ## ``fail instead of truncating the value. @units Use the units and frame/clock domain``
                  ## ``of the pinned native definition. The codec performs no scaling, frame conversion``
                  ## ``or normalization. @lifetime Retain referenced string/sequence backing storage for``
                  ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                  ## ``enclosing decode function. @see``
                  ## ``Ros2Mypalletizer_interfacesSrvGripperStatus_Request;``
                  ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvGripperStatus_RequestMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_interfaces/srv/GripperStatus_Request``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mypalletizer_interfacesSrvGripperStatus_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvGripperStatus_RequestCodecIdentity* = "UWVMROS1_b6d4c5991599ec4ac56e5f65dacd5a1ab89f073e9f07dc2b03692f4289fdcc9d" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_interfaces/srv/GripperStatus_Request.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_b6d4c5991599ec4ac56e5f65dacd5a1ab89f073e9f07dc2b03692f4289fdcc9d``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mypalletizer_interfacesSrvGripperStatus_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvGripperStatus_RequestNativeType* = "mypalletizer_interfaces/srv/GripperStatus_Request" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_interfaces/srv/GripperStatus_Request.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mypalletizer_interfacesSrvGripperStatus_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvGripperStatus_RequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_interfaces/srv/GripperStatus_Request.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mypalletizer_interfacesSrvGripperStatus_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mypalletizer_interfacesSrvGripperStatus_Request*(): Ros2Mypalletizer_interfacesSrvGripperStatus_Request =
 ## ``@brief Construct the declared defaults of``
 ## ``mypalletizer_interfaces/srv/GripperStatus_Request.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mypalletizer_interfacesSrvGripperStatus_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`status` = false
proc writeFields*(value: Ros2Mypalletizer_interfacesSrvGripperStatus_Request; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_interfaces/srv/GripperStatus_Request.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvGripperStatus_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`status`)
proc readRos2Mypalletizer_interfacesSrvGripperStatus_Request*(r: var Reader): Ros2Mypalletizer_interfacesSrvGripperStatus_Request =
 ## ``@brief Read the ordered canonical fields of``
 ## ``mypalletizer_interfaces/srv/GripperStatus_Request.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvGripperStatus_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mypalletizer_interfacesSrvGripperStatus_Request()
  result.`status` = getBool(r)
proc encode*(value: Ros2Mypalletizer_interfacesSrvGripperStatus_Request): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_interfaces/srv/GripperStatus_Request value.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvGripperStatus_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mypalletizer_interfacesSrvGripperStatus_Request*(b: seq[byte]): Ros2Mypalletizer_interfacesSrvGripperStatus_Request =
 ## ``@brief Decode exactly one complete mypalletizer_interfaces/srv/GripperStatus_Request value.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvGripperStatus_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos2Mypalletizer_interfacesSrvGripperStatus_Request(r)
  finish(r)
type Ros2Mypalletizer_interfacesSrvGripperStatus_Response* = object
 ## ``@brief Complete ROS 2 mypalletizer_interfaces/srv/GripperStatus_Response value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_bd0c427dc564ff7201019c6d33c7d0c743a65d263c67eb420b5e653d48e4daf4.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `flag`*: bool ## ``@brief mypalletizer_interfaces/srv/GripperStatus_Response.flag: bool. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mypalletizer_interfacesSrvGripperStatus_Response;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvGripperStatus_ResponseMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_interfaces/srv/GripperStatus_Response``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mypalletizer_interfacesSrvGripperStatus_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvGripperStatus_ResponseCodecIdentity* = "UWVMROS1_bd0c427dc564ff7201019c6d33c7d0c743a65d263c67eb420b5e653d48e4daf4" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_interfaces/srv/GripperStatus_Response.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_bd0c427dc564ff7201019c6d33c7d0c743a65d263c67eb420b5e653d48e4daf4``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mypalletizer_interfacesSrvGripperStatus_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvGripperStatus_ResponseNativeType* = "mypalletizer_interfaces/srv/GripperStatus_Response" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_interfaces/srv/GripperStatus_Response.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mypalletizer_interfacesSrvGripperStatus_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvGripperStatus_ResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_interfaces/srv/GripperStatus_Response.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mypalletizer_interfacesSrvGripperStatus_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mypalletizer_interfacesSrvGripperStatus_Response*(): Ros2Mypalletizer_interfacesSrvGripperStatus_Response =
 ## ``@brief Construct the declared defaults of``
 ## ``mypalletizer_interfaces/srv/GripperStatus_Response.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mypalletizer_interfacesSrvGripperStatus_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`flag` = false
proc writeFields*(value: Ros2Mypalletizer_interfacesSrvGripperStatus_Response; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_interfaces/srv/GripperStatus_Response.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvGripperStatus_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`flag`)
proc readRos2Mypalletizer_interfacesSrvGripperStatus_Response*(r: var Reader): Ros2Mypalletizer_interfacesSrvGripperStatus_Response =
 ## ``@brief Read the ordered canonical fields of``
 ## ``mypalletizer_interfaces/srv/GripperStatus_Response.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvGripperStatus_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mypalletizer_interfacesSrvGripperStatus_Response()
  result.`flag` = getBool(r)
proc encode*(value: Ros2Mypalletizer_interfacesSrvGripperStatus_Response): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_interfaces/srv/GripperStatus_Response value.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvGripperStatus_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mypalletizer_interfacesSrvGripperStatus_Response*(b: seq[byte]): Ros2Mypalletizer_interfacesSrvGripperStatus_Response =
 ## ``@brief Decode exactly one complete mypalletizer_interfaces/srv/GripperStatus_Response``
 ## ``value.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvGripperStatus_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos2Mypalletizer_interfacesSrvGripperStatus_Response(r)
  finish(r)
type Ros2Mypalletizer_interfacesSrvPumpStatus_Request* = object
 ## ``@brief Complete ROS 2 mypalletizer_interfaces/srv/PumpStatus_Request value.``
 ## ``@details All 3 declared fields are retained in source order. The canonical representation``
 ## ``occupies 3..3 bytes and is identified by``
 ## ``UWVMROS1_6b14af554cb5c65c9411b2c6a76d49cb7cbe06dedcd26d47804d00d12ccf2e2f.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `status`*: bool ## ``@brief mypalletizer_interfaces/srv/PumpStatus_Request.status: bool. @details The``
                  ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                  ## ``preserves the original field position and signedness; invalid bounds fail instead``
                  ## ``of truncating the value. @units Use the units and frame/clock domain of the``
                  ## ``pinned native definition. The codec performs no scaling, frame conversion or``
                  ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                  ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                  ## ``enclosing decode function. @see Ros2Mypalletizer_interfacesSrvPumpStatus_Request;``
                  ## ``share/platform/ros/nim/API-CONTRACT.md``
  `pin1`*: int8 ## ``@brief mypalletizer_interfaces/srv/PumpStatus_Request.pin1: int8. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mypalletizer_interfacesSrvPumpStatus_Request;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `pin2`*: int8 ## ``@brief mypalletizer_interfaces/srv/PumpStatus_Request.pin2: int8. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mypalletizer_interfacesSrvPumpStatus_Request;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvPumpStatus_RequestMaximumWireBytes* = 3 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_interfaces/srv/PumpStatus_Request``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 3 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mypalletizer_interfacesSrvPumpStatus_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvPumpStatus_RequestCodecIdentity* = "UWVMROS1_6b14af554cb5c65c9411b2c6a76d49cb7cbe06dedcd26d47804d00d12ccf2e2f" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_interfaces/srv/PumpStatus_Request.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_6b14af554cb5c65c9411b2c6a76d49cb7cbe06dedcd26d47804d00d12ccf2e2f``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mypalletizer_interfacesSrvPumpStatus_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvPumpStatus_RequestNativeType* = "mypalletizer_interfaces/srv/PumpStatus_Request" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_interfaces/srv/PumpStatus_Request.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mypalletizer_interfacesSrvPumpStatus_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvPumpStatus_RequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_interfaces/srv/PumpStatus_Request.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mypalletizer_interfacesSrvPumpStatus_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mypalletizer_interfacesSrvPumpStatus_Request*(): Ros2Mypalletizer_interfacesSrvPumpStatus_Request =
 ## ``@brief Construct the declared defaults of mypalletizer_interfaces/srv/PumpStatus_Request.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mypalletizer_interfacesSrvPumpStatus_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`status` = false
  result.`pin1` = 0
  result.`pin2` = 0
proc writeFields*(value: Ros2Mypalletizer_interfacesSrvPumpStatus_Request; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_interfaces/srv/PumpStatus_Request.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvPumpStatus_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`status`)
  putInteger(w,value.`pin1`)
  putInteger(w,value.`pin2`)
proc readRos2Mypalletizer_interfacesSrvPumpStatus_Request*(r: var Reader): Ros2Mypalletizer_interfacesSrvPumpStatus_Request =
 ## ``@brief Read the ordered canonical fields of mypalletizer_interfaces/srv/PumpStatus_Request.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvPumpStatus_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mypalletizer_interfacesSrvPumpStatus_Request()
  result.`status` = getBool(r)
  result.`pin1` = getInteger(r,int8)
  result.`pin2` = getInteger(r,int8)
proc encode*(value: Ros2Mypalletizer_interfacesSrvPumpStatus_Request): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_interfaces/srv/PumpStatus_Request value.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvPumpStatus_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(3)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mypalletizer_interfacesSrvPumpStatus_Request*(b: seq[byte]): Ros2Mypalletizer_interfacesSrvPumpStatus_Request =
 ## ``@brief Decode exactly one complete mypalletizer_interfaces/srv/PumpStatus_Request value.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvPumpStatus_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,3)
  result = readRos2Mypalletizer_interfacesSrvPumpStatus_Request(r)
  finish(r)
type Ros2Mypalletizer_interfacesSrvPumpStatus_Response* = object
 ## ``@brief Complete ROS 2 mypalletizer_interfaces/srv/PumpStatus_Response value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_187a703ce648bc82a276961d82ed8abd5365d8db7af3bb211e590620e1bb2b45.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `flag`*: bool ## ``@brief mypalletizer_interfaces/srv/PumpStatus_Response.flag: bool. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mypalletizer_interfacesSrvPumpStatus_Response;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvPumpStatus_ResponseMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_interfaces/srv/PumpStatus_Response``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mypalletizer_interfacesSrvPumpStatus_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvPumpStatus_ResponseCodecIdentity* = "UWVMROS1_187a703ce648bc82a276961d82ed8abd5365d8db7af3bb211e590620e1bb2b45" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_interfaces/srv/PumpStatus_Response.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_187a703ce648bc82a276961d82ed8abd5365d8db7af3bb211e590620e1bb2b45``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mypalletizer_interfacesSrvPumpStatus_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvPumpStatus_ResponseNativeType* = "mypalletizer_interfaces/srv/PumpStatus_Response" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_interfaces/srv/PumpStatus_Response.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mypalletizer_interfacesSrvPumpStatus_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvPumpStatus_ResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_interfaces/srv/PumpStatus_Response.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mypalletizer_interfacesSrvPumpStatus_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mypalletizer_interfacesSrvPumpStatus_Response*(): Ros2Mypalletizer_interfacesSrvPumpStatus_Response =
 ## ``@brief Construct the declared defaults of mypalletizer_interfaces/srv/PumpStatus_Response.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mypalletizer_interfacesSrvPumpStatus_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`flag` = false
proc writeFields*(value: Ros2Mypalletizer_interfacesSrvPumpStatus_Response; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_interfaces/srv/PumpStatus_Response.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvPumpStatus_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`flag`)
proc readRos2Mypalletizer_interfacesSrvPumpStatus_Response*(r: var Reader): Ros2Mypalletizer_interfacesSrvPumpStatus_Response =
 ## ``@brief Read the ordered canonical fields of``
 ## ``mypalletizer_interfaces/srv/PumpStatus_Response.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvPumpStatus_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mypalletizer_interfacesSrvPumpStatus_Response()
  result.`flag` = getBool(r)
proc encode*(value: Ros2Mypalletizer_interfacesSrvPumpStatus_Response): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_interfaces/srv/PumpStatus_Response value.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvPumpStatus_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mypalletizer_interfacesSrvPumpStatus_Response*(b: seq[byte]): Ros2Mypalletizer_interfacesSrvPumpStatus_Response =
 ## ``@brief Decode exactly one complete mypalletizer_interfaces/srv/PumpStatus_Response value.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvPumpStatus_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos2Mypalletizer_interfacesSrvPumpStatus_Response(r)
  finish(r)
type Ros2Mypalletizer_interfacesSrvSetAngles_Request* = object
 ## ``@brief Complete ROS 2 mypalletizer_interfaces/srv/SetAngles_Request value.``
 ## ``@details All 5 declared fields are retained in source order. The canonical representation``
 ## ``occupies 17..17 bytes and is identified by``
 ## ``UWVMROS1_3997bb19c183b59fbca1675695ea5ee548a247a34f9682dae3fb68fdf1a155ec.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `joint_1`*: float32 ## ``@brief mypalletizer_interfaces/srv/SetAngles_Request.joint_1: float32.``
                      ## ``@details The generated initializer supplies the declared zero/empty/nested``
                      ## ``default. Encoding preserves the original field position and signedness;``
                      ## ``invalid bounds fail instead of truncating the value. @units Use the units and``
                      ## ``frame/clock domain of the pinned native definition. The codec performs no``
                      ## ``scaling, frame conversion or normalization. @lifetime Retain referenced``
                      ## ``string/sequence backing storage for each encoding call. Decoded borrowing and``
                      ## ``allocator ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mypalletizer_interfacesSrvSetAngles_Request;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_2`*: float32 ## ``@brief mypalletizer_interfaces/srv/SetAngles_Request.joint_2: float32.``
                      ## ``@details The generated initializer supplies the declared zero/empty/nested``
                      ## ``default. Encoding preserves the original field position and signedness;``
                      ## ``invalid bounds fail instead of truncating the value. @units Use the units and``
                      ## ``frame/clock domain of the pinned native definition. The codec performs no``
                      ## ``scaling, frame conversion or normalization. @lifetime Retain referenced``
                      ## ``string/sequence backing storage for each encoding call. Decoded borrowing and``
                      ## ``allocator ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mypalletizer_interfacesSrvSetAngles_Request;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_3`*: float32 ## ``@brief mypalletizer_interfaces/srv/SetAngles_Request.joint_3: float32.``
                      ## ``@details The generated initializer supplies the declared zero/empty/nested``
                      ## ``default. Encoding preserves the original field position and signedness;``
                      ## ``invalid bounds fail instead of truncating the value. @units Use the units and``
                      ## ``frame/clock domain of the pinned native definition. The codec performs no``
                      ## ``scaling, frame conversion or normalization. @lifetime Retain referenced``
                      ## ``string/sequence backing storage for each encoding call. Decoded borrowing and``
                      ## ``allocator ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mypalletizer_interfacesSrvSetAngles_Request;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_4`*: float32 ## ``@brief mypalletizer_interfaces/srv/SetAngles_Request.joint_4: float32.``
                      ## ``@details The generated initializer supplies the declared zero/empty/nested``
                      ## ``default. Encoding preserves the original field position and signedness;``
                      ## ``invalid bounds fail instead of truncating the value. @units Use the units and``
                      ## ``frame/clock domain of the pinned native definition. The codec performs no``
                      ## ``scaling, frame conversion or normalization. @lifetime Retain referenced``
                      ## ``string/sequence backing storage for each encoding call. Decoded borrowing and``
                      ## ``allocator ownership follow the enclosing decode function. @see``
                      ## ``Ros2Mypalletizer_interfacesSrvSetAngles_Request;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `speed`*: int8 ## ``@brief mypalletizer_interfaces/srv/SetAngles_Request.speed: int8. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mypalletizer_interfacesSrvSetAngles_Request;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvSetAngles_RequestMaximumWireBytes* = 17 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_interfaces/srv/SetAngles_Request``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 17 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mypalletizer_interfacesSrvSetAngles_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvSetAngles_RequestCodecIdentity* = "UWVMROS1_3997bb19c183b59fbca1675695ea5ee548a247a34f9682dae3fb68fdf1a155ec" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_interfaces/srv/SetAngles_Request.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_3997bb19c183b59fbca1675695ea5ee548a247a34f9682dae3fb68fdf1a155ec``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mypalletizer_interfacesSrvSetAngles_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvSetAngles_RequestNativeType* = "mypalletizer_interfaces/srv/SetAngles_Request" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_interfaces/srv/SetAngles_Request.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mypalletizer_interfacesSrvSetAngles_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvSetAngles_RequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_interfaces/srv/SetAngles_Request.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mypalletizer_interfacesSrvSetAngles_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mypalletizer_interfacesSrvSetAngles_Request*(): Ros2Mypalletizer_interfacesSrvSetAngles_Request =
 ## ``@brief Construct the declared defaults of mypalletizer_interfaces/srv/SetAngles_Request.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mypalletizer_interfacesSrvSetAngles_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`joint_1` = 0
  result.`joint_2` = 0
  result.`joint_3` = 0
  result.`joint_4` = 0
  result.`speed` = 0
proc writeFields*(value: Ros2Mypalletizer_interfacesSrvSetAngles_Request; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_interfaces/srv/SetAngles_Request.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvSetAngles_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`joint_1`)
  putFloat32(w,value.`joint_2`)
  putFloat32(w,value.`joint_3`)
  putFloat32(w,value.`joint_4`)
  putInteger(w,value.`speed`)
proc readRos2Mypalletizer_interfacesSrvSetAngles_Request*(r: var Reader): Ros2Mypalletizer_interfacesSrvSetAngles_Request =
 ## ``@brief Read the ordered canonical fields of mypalletizer_interfaces/srv/SetAngles_Request.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvSetAngles_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mypalletizer_interfacesSrvSetAngles_Request()
  result.`joint_1` = getFloat32(r)
  result.`joint_2` = getFloat32(r)
  result.`joint_3` = getFloat32(r)
  result.`joint_4` = getFloat32(r)
  result.`speed` = getInteger(r,int8)
proc encode*(value: Ros2Mypalletizer_interfacesSrvSetAngles_Request): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_interfaces/srv/SetAngles_Request value.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvSetAngles_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(17)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mypalletizer_interfacesSrvSetAngles_Request*(b: seq[byte]): Ros2Mypalletizer_interfacesSrvSetAngles_Request =
 ## ``@brief Decode exactly one complete mypalletizer_interfaces/srv/SetAngles_Request value.``
 ## ``@details Require the complete 17..17-byte canonical representation. Reject truncation,``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvSetAngles_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,17)
  result = readRos2Mypalletizer_interfacesSrvSetAngles_Request(r)
  finish(r)
type Ros2Mypalletizer_interfacesSrvSetAngles_Response* = object
 ## ``@brief Complete ROS 2 mypalletizer_interfaces/srv/SetAngles_Response value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_a7952f549b35aa140adac4f18bbe8538c0f6230aa884459091cd74720ab757c9.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `flag`*: bool ## ``@brief mypalletizer_interfaces/srv/SetAngles_Response.flag: bool. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mypalletizer_interfacesSrvSetAngles_Response;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvSetAngles_ResponseMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_interfaces/srv/SetAngles_Response``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mypalletizer_interfacesSrvSetAngles_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvSetAngles_ResponseCodecIdentity* = "UWVMROS1_a7952f549b35aa140adac4f18bbe8538c0f6230aa884459091cd74720ab757c9" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_interfaces/srv/SetAngles_Response.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_a7952f549b35aa140adac4f18bbe8538c0f6230aa884459091cd74720ab757c9``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mypalletizer_interfacesSrvSetAngles_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvSetAngles_ResponseNativeType* = "mypalletizer_interfaces/srv/SetAngles_Response" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_interfaces/srv/SetAngles_Response.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mypalletizer_interfacesSrvSetAngles_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvSetAngles_ResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_interfaces/srv/SetAngles_Response.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mypalletizer_interfacesSrvSetAngles_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mypalletizer_interfacesSrvSetAngles_Response*(): Ros2Mypalletizer_interfacesSrvSetAngles_Response =
 ## ``@brief Construct the declared defaults of mypalletizer_interfaces/srv/SetAngles_Response.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mypalletizer_interfacesSrvSetAngles_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`flag` = false
proc writeFields*(value: Ros2Mypalletizer_interfacesSrvSetAngles_Response; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_interfaces/srv/SetAngles_Response.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvSetAngles_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`flag`)
proc readRos2Mypalletizer_interfacesSrvSetAngles_Response*(r: var Reader): Ros2Mypalletizer_interfacesSrvSetAngles_Response =
 ## ``@brief Read the ordered canonical fields of mypalletizer_interfaces/srv/SetAngles_Response.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvSetAngles_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mypalletizer_interfacesSrvSetAngles_Response()
  result.`flag` = getBool(r)
proc encode*(value: Ros2Mypalletizer_interfacesSrvSetAngles_Response): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_interfaces/srv/SetAngles_Response value.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvSetAngles_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mypalletizer_interfacesSrvSetAngles_Response*(b: seq[byte]): Ros2Mypalletizer_interfacesSrvSetAngles_Response =
 ## ``@brief Decode exactly one complete mypalletizer_interfaces/srv/SetAngles_Response value.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvSetAngles_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos2Mypalletizer_interfacesSrvSetAngles_Response(r)
  finish(r)
type Ros2Mypalletizer_interfacesSrvSetCoords_Request* = object
 ## ``@brief Complete ROS 2 mypalletizer_interfaces/srv/SetCoords_Request value.``
 ## ``@details All 5 declared fields are retained in source order. The canonical representation``
 ## ``occupies 17..17 bytes and is identified by``
 ## ``UWVMROS1_c72f4f1cb71f1ad1076bcc89499abbcfc5eab173fadd19c9a266baf1c32d1541.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `x`*: float32 ## ``@brief mypalletizer_interfaces/srv/SetCoords_Request.x: float32. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mypalletizer_interfacesSrvSetCoords_Request;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `y`*: float32 ## ``@brief mypalletizer_interfaces/srv/SetCoords_Request.y: float32. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mypalletizer_interfacesSrvSetCoords_Request;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `z`*: float32 ## ``@brief mypalletizer_interfaces/srv/SetCoords_Request.z: float32. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mypalletizer_interfacesSrvSetCoords_Request;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rx`*: float32 ## ``@brief mypalletizer_interfaces/srv/SetCoords_Request.rx: float32. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mypalletizer_interfacesSrvSetCoords_Request;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `speed`*: int8 ## ``@brief mypalletizer_interfaces/srv/SetCoords_Request.speed: int8. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros2Mypalletizer_interfacesSrvSetCoords_Request;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvSetCoords_RequestMaximumWireBytes* = 17 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_interfaces/srv/SetCoords_Request``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 17 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mypalletizer_interfacesSrvSetCoords_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvSetCoords_RequestCodecIdentity* = "UWVMROS1_c72f4f1cb71f1ad1076bcc89499abbcfc5eab173fadd19c9a266baf1c32d1541" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_interfaces/srv/SetCoords_Request.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_c72f4f1cb71f1ad1076bcc89499abbcfc5eab173fadd19c9a266baf1c32d1541``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mypalletizer_interfacesSrvSetCoords_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvSetCoords_RequestNativeType* = "mypalletizer_interfaces/srv/SetCoords_Request" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_interfaces/srv/SetCoords_Request.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mypalletizer_interfacesSrvSetCoords_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvSetCoords_RequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_interfaces/srv/SetCoords_Request.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mypalletizer_interfacesSrvSetCoords_Request;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mypalletizer_interfacesSrvSetCoords_Request*(): Ros2Mypalletizer_interfacesSrvSetCoords_Request =
 ## ``@brief Construct the declared defaults of mypalletizer_interfaces/srv/SetCoords_Request.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mypalletizer_interfacesSrvSetCoords_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
  result.`rx` = 0
  result.`speed` = 0
proc writeFields*(value: Ros2Mypalletizer_interfacesSrvSetCoords_Request; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_interfaces/srv/SetCoords_Request.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvSetCoords_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`x`)
  putFloat32(w,value.`y`)
  putFloat32(w,value.`z`)
  putFloat32(w,value.`rx`)
  putInteger(w,value.`speed`)
proc readRos2Mypalletizer_interfacesSrvSetCoords_Request*(r: var Reader): Ros2Mypalletizer_interfacesSrvSetCoords_Request =
 ## ``@brief Read the ordered canonical fields of mypalletizer_interfaces/srv/SetCoords_Request.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvSetCoords_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mypalletizer_interfacesSrvSetCoords_Request()
  result.`x` = getFloat32(r)
  result.`y` = getFloat32(r)
  result.`z` = getFloat32(r)
  result.`rx` = getFloat32(r)
  result.`speed` = getInteger(r,int8)
proc encode*(value: Ros2Mypalletizer_interfacesSrvSetCoords_Request): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_interfaces/srv/SetCoords_Request value.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvSetCoords_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(17)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mypalletizer_interfacesSrvSetCoords_Request*(b: seq[byte]): Ros2Mypalletizer_interfacesSrvSetCoords_Request =
 ## ``@brief Decode exactly one complete mypalletizer_interfaces/srv/SetCoords_Request value.``
 ## ``@details Require the complete 17..17-byte canonical representation. Reject truncation,``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvSetCoords_Request;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,17)
  result = readRos2Mypalletizer_interfacesSrvSetCoords_Request(r)
  finish(r)
type Ros2Mypalletizer_interfacesSrvSetCoords_Response* = object
 ## ``@brief Complete ROS 2 mypalletizer_interfaces/srv/SetCoords_Response value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_0cedaf9087ba0ae3726b9dd0d304665a226fc6df2ee068f6ac2b1c12ce88cb5b.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `flag`*: bool ## ``@brief mypalletizer_interfaces/srv/SetCoords_Response.flag: bool. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros2Mypalletizer_interfacesSrvSetCoords_Response;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvSetCoords_ResponseMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_interfaces/srv/SetCoords_Response``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros2Mypalletizer_interfacesSrvSetCoords_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvSetCoords_ResponseCodecIdentity* = "UWVMROS1_0cedaf9087ba0ae3726b9dd0d304665a226fc6df2ee068f6ac2b1c12ce88cb5b" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_interfaces/srv/SetCoords_Response.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_0cedaf9087ba0ae3726b9dd0d304665a226fc6df2ee068f6ac2b1c12ce88cb5b``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros2Mypalletizer_interfacesSrvSetCoords_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvSetCoords_ResponseNativeType* = "mypalletizer_interfaces/srv/SetCoords_Response" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_interfaces/srv/SetCoords_Response.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros2Mypalletizer_interfacesSrvSetCoords_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros2Mypalletizer_interfacesSrvSetCoords_ResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_interfaces/srv/SetCoords_Response.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros2Mypalletizer_interfacesSrvSetCoords_Response;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos2Mypalletizer_interfacesSrvSetCoords_Response*(): Ros2Mypalletizer_interfacesSrvSetCoords_Response =
 ## ``@brief Construct the declared defaults of mypalletizer_interfaces/srv/SetCoords_Response.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros2Mypalletizer_interfacesSrvSetCoords_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`flag` = false
proc writeFields*(value: Ros2Mypalletizer_interfacesSrvSetCoords_Response; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_interfaces/srv/SetCoords_Response.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvSetCoords_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`flag`)
proc readRos2Mypalletizer_interfacesSrvSetCoords_Response*(r: var Reader): Ros2Mypalletizer_interfacesSrvSetCoords_Response =
 ## ``@brief Read the ordered canonical fields of mypalletizer_interfaces/srv/SetCoords_Response.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvSetCoords_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Mypalletizer_interfacesSrvSetCoords_Response()
  result.`flag` = getBool(r)
proc encode*(value: Ros2Mypalletizer_interfacesSrvSetCoords_Response): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_interfaces/srv/SetCoords_Response value.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvSetCoords_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Mypalletizer_interfacesSrvSetCoords_Response*(b: seq[byte]): Ros2Mypalletizer_interfacesSrvSetCoords_Response =
 ## ``@brief Decode exactly one complete mypalletizer_interfaces/srv/SetCoords_Response value.``
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
 ## ``@see Ros2Mypalletizer_interfacesSrvSetCoords_Response;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos2Mypalletizer_interfacesSrvSetCoords_Response(r)
  finish(r)
