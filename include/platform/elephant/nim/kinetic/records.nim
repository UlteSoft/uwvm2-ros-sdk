## @file records.nim
## @brief Preserve the complete original elephant/kinetic canonical value domain.
## @details The selected domain contains 36 complete record/components and 116 original fields. Declared
## scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
## Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
## create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
## does not qualify a frontend, target ABI or native ROS transport.
## @see The platform's localized language guide and complete API-CATALOG.md.
# Generated complete canonical values; no I/O or implicit capabilities.
import roswasm
import roswasm/wire
type Ros1Mycobot_communicationMycobotAngles* = object
 ## ``@brief Complete ROS 1 mycobot_communication/MycobotAngles value.``
 ## ``@details All 6 declared fields are retained in source order. The canonical representation``
 ## ``occupies 24..24 bytes and is identified by``
 ## ``UWVMROS1_4cbda93a13d78e9c592327caa737dfecf33adf6db898015afd56ecf7732f9aa6.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `joint_1`*: float32 ## ``@brief mycobot_communication/MycobotAngles.joint_1: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mycobot_communicationMycobotAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_2`*: float32 ## ``@brief mycobot_communication/MycobotAngles.joint_2: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mycobot_communicationMycobotAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_3`*: float32 ## ``@brief mycobot_communication/MycobotAngles.joint_3: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mycobot_communicationMycobotAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_4`*: float32 ## ``@brief mycobot_communication/MycobotAngles.joint_4: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mycobot_communicationMycobotAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_5`*: float32 ## ``@brief mycobot_communication/MycobotAngles.joint_5: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mycobot_communicationMycobotAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_6`*: float32 ## ``@brief mycobot_communication/MycobotAngles.joint_6: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mycobot_communicationMycobotAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationMycobotAnglesMaximumWireBytes* = 24 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_communication/MycobotAngles``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 24 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mycobot_communicationMycobotAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationMycobotAnglesCodecIdentity* = "UWVMROS1_4cbda93a13d78e9c592327caa737dfecf33adf6db898015afd56ecf7732f9aa6" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_communication/MycobotAngles.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_4cbda93a13d78e9c592327caa737dfecf33adf6db898015afd56ecf7732f9aa6``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mycobot_communicationMycobotAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationMycobotAnglesNativeType* = "mycobot_communication/MycobotAngles" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_communication/MycobotAngles.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mycobot_communicationMycobotAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationMycobotAnglesNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_communication/MycobotAngles.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mycobot_communicationMycobotAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mycobot_communicationMycobotAngles*(): Ros1Mycobot_communicationMycobotAngles =
 ## ``@brief Construct the declared defaults of mycobot_communication/MycobotAngles.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/nim/API-CONTRACT.md``
  result.`joint_1` = 0
  result.`joint_2` = 0
  result.`joint_3` = 0
  result.`joint_4` = 0
  result.`joint_5` = 0
  result.`joint_6` = 0
proc writeFields*(value: Ros1Mycobot_communicationMycobotAngles; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_communication/MycobotAngles.``
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
 ## ``@see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`joint_1`)
  putFloat32(w,value.`joint_2`)
  putFloat32(w,value.`joint_3`)
  putFloat32(w,value.`joint_4`)
  putFloat32(w,value.`joint_5`)
  putFloat32(w,value.`joint_6`)
proc readRos1Mycobot_communicationMycobotAngles*(r: var Reader): Ros1Mycobot_communicationMycobotAngles =
 ## ``@brief Read the ordered canonical fields of mycobot_communication/MycobotAngles.``
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
 ## ``@see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mycobot_communicationMycobotAngles()
  result.`joint_1` = getFloat32(r)
  result.`joint_2` = getFloat32(r)
  result.`joint_3` = getFloat32(r)
  result.`joint_4` = getFloat32(r)
  result.`joint_5` = getFloat32(r)
  result.`joint_6` = getFloat32(r)
proc encode*(value: Ros1Mycobot_communicationMycobotAngles): seq[byte] =
 ## ``@brief Encode one complete mycobot_communication/MycobotAngles value.``
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
 ## ``@see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mycobot_communicationMycobotAngles*(b: seq[byte]): Ros1Mycobot_communicationMycobotAngles =
 ## ``@brief Decode exactly one complete mycobot_communication/MycobotAngles value.``
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
 ## ``@see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,24)
  result = readRos1Mycobot_communicationMycobotAngles(r)
  finish(r)
type Ros1Mycobot_communicationMycobotCoords* = object
 ## ``@brief Complete ROS 1 mycobot_communication/MycobotCoords value.``
 ## ``@details All 6 declared fields are retained in source order. The canonical representation``
 ## ``occupies 24..24 bytes and is identified by``
 ## ``UWVMROS1_1da0d6342a1f4079244a65ad413d4559047d33b049ce9da04f8ab0bd226410a2.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `x`*: float32 ## ``@brief mycobot_communication/MycobotCoords.x: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/nim/API-CONTRACT.md``
  `y`*: float32 ## ``@brief mycobot_communication/MycobotCoords.y: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/nim/API-CONTRACT.md``
  `z`*: float32 ## ``@brief mycobot_communication/MycobotCoords.z: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/nim/API-CONTRACT.md``
  `rx`*: float32 ## ``@brief mycobot_communication/MycobotCoords.rx: float32. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros1Mycobot_communicationMycobotCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `ry`*: float32 ## ``@brief mycobot_communication/MycobotCoords.ry: float32. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros1Mycobot_communicationMycobotCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rz`*: float32 ## ``@brief mycobot_communication/MycobotCoords.rz: float32. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros1Mycobot_communicationMycobotCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationMycobotCoordsMaximumWireBytes* = 24 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_communication/MycobotCoords``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 24 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mycobot_communicationMycobotCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationMycobotCoordsCodecIdentity* = "UWVMROS1_1da0d6342a1f4079244a65ad413d4559047d33b049ce9da04f8ab0bd226410a2" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_communication/MycobotCoords.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_1da0d6342a1f4079244a65ad413d4559047d33b049ce9da04f8ab0bd226410a2``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mycobot_communicationMycobotCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationMycobotCoordsNativeType* = "mycobot_communication/MycobotCoords" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_communication/MycobotCoords.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mycobot_communicationMycobotCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationMycobotCoordsNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_communication/MycobotCoords.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mycobot_communicationMycobotCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mycobot_communicationMycobotCoords*(): Ros1Mycobot_communicationMycobotCoords =
 ## ``@brief Construct the declared defaults of mycobot_communication/MycobotCoords.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/nim/API-CONTRACT.md``
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
  result.`rx` = 0
  result.`ry` = 0
  result.`rz` = 0
proc writeFields*(value: Ros1Mycobot_communicationMycobotCoords; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_communication/MycobotCoords.``
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
 ## ``@see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`x`)
  putFloat32(w,value.`y`)
  putFloat32(w,value.`z`)
  putFloat32(w,value.`rx`)
  putFloat32(w,value.`ry`)
  putFloat32(w,value.`rz`)
proc readRos1Mycobot_communicationMycobotCoords*(r: var Reader): Ros1Mycobot_communicationMycobotCoords =
 ## ``@brief Read the ordered canonical fields of mycobot_communication/MycobotCoords.``
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
 ## ``@see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mycobot_communicationMycobotCoords()
  result.`x` = getFloat32(r)
  result.`y` = getFloat32(r)
  result.`z` = getFloat32(r)
  result.`rx` = getFloat32(r)
  result.`ry` = getFloat32(r)
  result.`rz` = getFloat32(r)
proc encode*(value: Ros1Mycobot_communicationMycobotCoords): seq[byte] =
 ## ``@brief Encode one complete mycobot_communication/MycobotCoords value.``
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
 ## ``@see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mycobot_communicationMycobotCoords*(b: seq[byte]): Ros1Mycobot_communicationMycobotCoords =
 ## ``@brief Decode exactly one complete mycobot_communication/MycobotCoords value.``
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
 ## ``@see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,24)
  result = readRos1Mycobot_communicationMycobotCoords(r)
  finish(r)
type Ros1Mycobot_communicationMycobotGripperStatus* = object
 ## ``@brief Complete ROS 1 mycobot_communication/MycobotGripperStatus value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_65edcc278c4e21355c62408ff310598b3dbdf03ed426e3da0f2ee0bc6910e649.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `Status`*: bool ## ``@brief mycobot_communication/MycobotGripperStatus.Status: bool. @details The``
                  ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                  ## ``preserves the original field position and signedness; invalid bounds fail instead``
                  ## ``of truncating the value. @units Use the units and frame/clock domain of the``
                  ## ``pinned native definition. The codec performs no scaling, frame conversion or``
                  ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                  ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                  ## ``enclosing decode function. @see Ros1Mycobot_communicationMycobotGripperStatus;``
                  ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationMycobotGripperStatusMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_communication/MycobotGripperStatus``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mycobot_communicationMycobotGripperStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationMycobotGripperStatusCodecIdentity* = "UWVMROS1_65edcc278c4e21355c62408ff310598b3dbdf03ed426e3da0f2ee0bc6910e649" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_communication/MycobotGripperStatus.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_65edcc278c4e21355c62408ff310598b3dbdf03ed426e3da0f2ee0bc6910e649``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mycobot_communicationMycobotGripperStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationMycobotGripperStatusNativeType* = "mycobot_communication/MycobotGripperStatus" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_communication/MycobotGripperStatus.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mycobot_communicationMycobotGripperStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationMycobotGripperStatusNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_communication/MycobotGripperStatus.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mycobot_communicationMycobotGripperStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mycobot_communicationMycobotGripperStatus*(): Ros1Mycobot_communicationMycobotGripperStatus =
 ## ``@brief Construct the declared defaults of mycobot_communication/MycobotGripperStatus.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/nim/API-CONTRACT.md``
  result.`Status` = false
proc writeFields*(value: Ros1Mycobot_communicationMycobotGripperStatus; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_communication/MycobotGripperStatus.``
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
 ## ``@see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`Status`)
proc readRos1Mycobot_communicationMycobotGripperStatus*(r: var Reader): Ros1Mycobot_communicationMycobotGripperStatus =
 ## ``@brief Read the ordered canonical fields of mycobot_communication/MycobotGripperStatus.``
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
 ## ``@see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mycobot_communicationMycobotGripperStatus()
  result.`Status` = getBool(r)
proc encode*(value: Ros1Mycobot_communicationMycobotGripperStatus): seq[byte] =
 ## ``@brief Encode one complete mycobot_communication/MycobotGripperStatus value.``
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
 ## ``@see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mycobot_communicationMycobotGripperStatus*(b: seq[byte]): Ros1Mycobot_communicationMycobotGripperStatus =
 ## ``@brief Decode exactly one complete mycobot_communication/MycobotGripperStatus value.``
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
 ## ``@see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos1Mycobot_communicationMycobotGripperStatus(r)
  finish(r)
type Ros1Mycobot_communicationMycobotPumpStatus* = object
 ## ``@brief Complete ROS 1 mycobot_communication/MycobotPumpStatus value.``
 ## ``@details All 3 declared fields are retained in source order. The canonical representation``
 ## ``occupies 3..3 bytes and is identified by``
 ## ``UWVMROS1_0c0cb3c0fe97b9f9c65769a09f505ff6c27a60723598d656cd5f16255f36bfbd.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `Status`*: bool ## ``@brief mycobot_communication/MycobotPumpStatus.Status: bool. @details The``
                  ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                  ## ``preserves the original field position and signedness; invalid bounds fail instead``
                  ## ``of truncating the value. @units Use the units and frame/clock domain of the``
                  ## ``pinned native definition. The codec performs no scaling, frame conversion or``
                  ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                  ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                  ## ``enclosing decode function. @see Ros1Mycobot_communicationMycobotPumpStatus;``
                  ## ``share/platform/ros/nim/API-CONTRACT.md``
  `Pin1`*: int8 ## ``@brief mycobot_communication/MycobotPumpStatus.Pin1: int8. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros1Mycobot_communicationMycobotPumpStatus;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `Pin2`*: int8 ## ``@brief mycobot_communication/MycobotPumpStatus.Pin2: int8. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros1Mycobot_communicationMycobotPumpStatus;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationMycobotPumpStatusMaximumWireBytes* = 3 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_communication/MycobotPumpStatus``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 3 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mycobot_communicationMycobotPumpStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationMycobotPumpStatusCodecIdentity* = "UWVMROS1_0c0cb3c0fe97b9f9c65769a09f505ff6c27a60723598d656cd5f16255f36bfbd" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_communication/MycobotPumpStatus.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_0c0cb3c0fe97b9f9c65769a09f505ff6c27a60723598d656cd5f16255f36bfbd``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mycobot_communicationMycobotPumpStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationMycobotPumpStatusNativeType* = "mycobot_communication/MycobotPumpStatus" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_communication/MycobotPumpStatus.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mycobot_communicationMycobotPumpStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationMycobotPumpStatusNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_communication/MycobotPumpStatus.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mycobot_communicationMycobotPumpStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mycobot_communicationMycobotPumpStatus*(): Ros1Mycobot_communicationMycobotPumpStatus =
 ## ``@brief Construct the declared defaults of mycobot_communication/MycobotPumpStatus.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/nim/API-CONTRACT.md``
  result.`Status` = false
  result.`Pin1` = 0
  result.`Pin2` = 0
proc writeFields*(value: Ros1Mycobot_communicationMycobotPumpStatus; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_communication/MycobotPumpStatus.``
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
 ## ``@see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`Status`)
  putInteger(w,value.`Pin1`)
  putInteger(w,value.`Pin2`)
proc readRos1Mycobot_communicationMycobotPumpStatus*(r: var Reader): Ros1Mycobot_communicationMycobotPumpStatus =
 ## ``@brief Read the ordered canonical fields of mycobot_communication/MycobotPumpStatus.``
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
 ## ``@see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mycobot_communicationMycobotPumpStatus()
  result.`Status` = getBool(r)
  result.`Pin1` = getInteger(r,int8)
  result.`Pin2` = getInteger(r,int8)
proc encode*(value: Ros1Mycobot_communicationMycobotPumpStatus): seq[byte] =
 ## ``@brief Encode one complete mycobot_communication/MycobotPumpStatus value.``
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
 ## ``@see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(3)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mycobot_communicationMycobotPumpStatus*(b: seq[byte]): Ros1Mycobot_communicationMycobotPumpStatus =
 ## ``@brief Decode exactly one complete mycobot_communication/MycobotPumpStatus value.``
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
 ## ``@see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,3)
  result = readRos1Mycobot_communicationMycobotPumpStatus(r)
  finish(r)
type Ros1Mycobot_communicationMycobotSetAngles* = object
 ## ``@brief Complete ROS 1 mycobot_communication/MycobotSetAngles value.``
 ## ``@details All 7 declared fields are retained in source order. The canonical representation``
 ## ``occupies 25..25 bytes and is identified by``
 ## ``UWVMROS1_0844a6cf5033b27ad5062741c939a7cfff63edeba34f7e56c8178e1fab85b334.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `joint_1`*: float32 ## ``@brief mycobot_communication/MycobotSetAngles.joint_1: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mycobot_communicationMycobotSetAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_2`*: float32 ## ``@brief mycobot_communication/MycobotSetAngles.joint_2: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mycobot_communicationMycobotSetAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_3`*: float32 ## ``@brief mycobot_communication/MycobotSetAngles.joint_3: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mycobot_communicationMycobotSetAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_4`*: float32 ## ``@brief mycobot_communication/MycobotSetAngles.joint_4: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mycobot_communicationMycobotSetAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_5`*: float32 ## ``@brief mycobot_communication/MycobotSetAngles.joint_5: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mycobot_communicationMycobotSetAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_6`*: float32 ## ``@brief mycobot_communication/MycobotSetAngles.joint_6: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mycobot_communicationMycobotSetAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `speed`*: int8 ## ``@brief mycobot_communication/MycobotSetAngles.speed: int8. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros1Mycobot_communicationMycobotSetAngles;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationMycobotSetAnglesMaximumWireBytes* = 25 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_communication/MycobotSetAngles``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 25 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mycobot_communicationMycobotSetAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationMycobotSetAnglesCodecIdentity* = "UWVMROS1_0844a6cf5033b27ad5062741c939a7cfff63edeba34f7e56c8178e1fab85b334" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_communication/MycobotSetAngles.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_0844a6cf5033b27ad5062741c939a7cfff63edeba34f7e56c8178e1fab85b334``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mycobot_communicationMycobotSetAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationMycobotSetAnglesNativeType* = "mycobot_communication/MycobotSetAngles" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_communication/MycobotSetAngles.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mycobot_communicationMycobotSetAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationMycobotSetAnglesNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_communication/MycobotSetAngles.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mycobot_communicationMycobotSetAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mycobot_communicationMycobotSetAngles*(): Ros1Mycobot_communicationMycobotSetAngles =
 ## ``@brief Construct the declared defaults of mycobot_communication/MycobotSetAngles.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/nim/API-CONTRACT.md``
  result.`joint_1` = 0
  result.`joint_2` = 0
  result.`joint_3` = 0
  result.`joint_4` = 0
  result.`joint_5` = 0
  result.`joint_6` = 0
  result.`speed` = 0
proc writeFields*(value: Ros1Mycobot_communicationMycobotSetAngles; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_communication/MycobotSetAngles.``
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
 ## ``@see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`joint_1`)
  putFloat32(w,value.`joint_2`)
  putFloat32(w,value.`joint_3`)
  putFloat32(w,value.`joint_4`)
  putFloat32(w,value.`joint_5`)
  putFloat32(w,value.`joint_6`)
  putInteger(w,value.`speed`)
proc readRos1Mycobot_communicationMycobotSetAngles*(r: var Reader): Ros1Mycobot_communicationMycobotSetAngles =
 ## ``@brief Read the ordered canonical fields of mycobot_communication/MycobotSetAngles.``
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
 ## ``@see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mycobot_communicationMycobotSetAngles()
  result.`joint_1` = getFloat32(r)
  result.`joint_2` = getFloat32(r)
  result.`joint_3` = getFloat32(r)
  result.`joint_4` = getFloat32(r)
  result.`joint_5` = getFloat32(r)
  result.`joint_6` = getFloat32(r)
  result.`speed` = getInteger(r,int8)
proc encode*(value: Ros1Mycobot_communicationMycobotSetAngles): seq[byte] =
 ## ``@brief Encode one complete mycobot_communication/MycobotSetAngles value.``
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
 ## ``@see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(25)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mycobot_communicationMycobotSetAngles*(b: seq[byte]): Ros1Mycobot_communicationMycobotSetAngles =
 ## ``@brief Decode exactly one complete mycobot_communication/MycobotSetAngles value.``
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
 ## ``@see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,25)
  result = readRos1Mycobot_communicationMycobotSetAngles(r)
  finish(r)
type Ros1Mycobot_communicationMycobotSetCoords* = object
 ## ``@brief Complete ROS 1 mycobot_communication/MycobotSetCoords value.``
 ## ``@details All 8 declared fields are retained in source order. The canonical representation``
 ## ``occupies 26..26 bytes and is identified by``
 ## ``UWVMROS1_39376ad94c0c9b213703a373b6a3b12fd0dad0ec20ff312143d30099842747a9.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `x`*: float32 ## ``@brief mycobot_communication/MycobotSetCoords.x: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros1Mycobot_communicationMycobotSetCoords;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `y`*: float32 ## ``@brief mycobot_communication/MycobotSetCoords.y: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros1Mycobot_communicationMycobotSetCoords;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `z`*: float32 ## ``@brief mycobot_communication/MycobotSetCoords.z: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros1Mycobot_communicationMycobotSetCoords;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rx`*: float32 ## ``@brief mycobot_communication/MycobotSetCoords.rx: float32. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros1Mycobot_communicationMycobotSetCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `ry`*: float32 ## ``@brief mycobot_communication/MycobotSetCoords.ry: float32. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros1Mycobot_communicationMycobotSetCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rz`*: float32 ## ``@brief mycobot_communication/MycobotSetCoords.rz: float32. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros1Mycobot_communicationMycobotSetCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `speed`*: int8 ## ``@brief mycobot_communication/MycobotSetCoords.speed: int8. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros1Mycobot_communicationMycobotSetCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `model`*: int8 ## ``@brief mycobot_communication/MycobotSetCoords.model: int8. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros1Mycobot_communicationMycobotSetCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationMycobotSetCoordsMaximumWireBytes* = 26 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_communication/MycobotSetCoords``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 26 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mycobot_communicationMycobotSetCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationMycobotSetCoordsCodecIdentity* = "UWVMROS1_39376ad94c0c9b213703a373b6a3b12fd0dad0ec20ff312143d30099842747a9" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_communication/MycobotSetCoords.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_39376ad94c0c9b213703a373b6a3b12fd0dad0ec20ff312143d30099842747a9``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mycobot_communicationMycobotSetCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationMycobotSetCoordsNativeType* = "mycobot_communication/MycobotSetCoords" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_communication/MycobotSetCoords.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mycobot_communicationMycobotSetCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationMycobotSetCoordsNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_communication/MycobotSetCoords.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mycobot_communicationMycobotSetCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mycobot_communicationMycobotSetCoords*(): Ros1Mycobot_communicationMycobotSetCoords =
 ## ``@brief Construct the declared defaults of mycobot_communication/MycobotSetCoords.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/nim/API-CONTRACT.md``
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
  result.`rx` = 0
  result.`ry` = 0
  result.`rz` = 0
  result.`speed` = 0
  result.`model` = 0
proc writeFields*(value: Ros1Mycobot_communicationMycobotSetCoords; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_communication/MycobotSetCoords.``
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
 ## ``@see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`x`)
  putFloat32(w,value.`y`)
  putFloat32(w,value.`z`)
  putFloat32(w,value.`rx`)
  putFloat32(w,value.`ry`)
  putFloat32(w,value.`rz`)
  putInteger(w,value.`speed`)
  putInteger(w,value.`model`)
proc readRos1Mycobot_communicationMycobotSetCoords*(r: var Reader): Ros1Mycobot_communicationMycobotSetCoords =
 ## ``@brief Read the ordered canonical fields of mycobot_communication/MycobotSetCoords.``
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
 ## ``@see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mycobot_communicationMycobotSetCoords()
  result.`x` = getFloat32(r)
  result.`y` = getFloat32(r)
  result.`z` = getFloat32(r)
  result.`rx` = getFloat32(r)
  result.`ry` = getFloat32(r)
  result.`rz` = getFloat32(r)
  result.`speed` = getInteger(r,int8)
  result.`model` = getInteger(r,int8)
proc encode*(value: Ros1Mycobot_communicationMycobotSetCoords): seq[byte] =
 ## ``@brief Encode one complete mycobot_communication/MycobotSetCoords value.``
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
 ## ``@see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(26)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mycobot_communicationMycobotSetCoords*(b: seq[byte]): Ros1Mycobot_communicationMycobotSetCoords =
 ## ``@brief Decode exactly one complete mycobot_communication/MycobotSetCoords value.``
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
 ## ``@see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,26)
  result = readRos1Mycobot_communicationMycobotSetCoords(r)
  finish(r)
type Ros1Mycobot_communicationGetAnglesRequest* = object
 ## ``@brief Complete ROS 1 mycobot_communication/GetAnglesRequest value.``
 ## ``@details All 0 declared fields are retained in source order. The canonical representation``
 ## ``occupies 0..0 bytes and is identified by``
 ## ``UWVMROS1_8915949f81b788e5797f3bc4935e33e9e9eae82c5db3a1211129e7ef03cd2c54.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationGetAnglesRequestMaximumWireBytes* = 0 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_communication/GetAnglesRequest``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 0 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mycobot_communicationGetAnglesRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationGetAnglesRequestCodecIdentity* = "UWVMROS1_8915949f81b788e5797f3bc4935e33e9e9eae82c5db3a1211129e7ef03cd2c54" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_communication/GetAnglesRequest.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_8915949f81b788e5797f3bc4935e33e9e9eae82c5db3a1211129e7ef03cd2c54``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mycobot_communicationGetAnglesRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationGetAnglesRequestNativeType* = "mycobot_communication/GetAnglesRequest" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_communication/GetAnglesRequest.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mycobot_communicationGetAnglesRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationGetAnglesRequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_communication/GetAnglesRequest.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mycobot_communicationGetAnglesRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mycobot_communicationGetAnglesRequest*(): Ros1Mycobot_communicationGetAnglesRequest =
 ## ``@brief Construct the declared defaults of mycobot_communication/GetAnglesRequest.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc writeFields*(value: Ros1Mycobot_communicationGetAnglesRequest; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_communication/GetAnglesRequest.``
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
 ## ``@see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc readRos1Mycobot_communicationGetAnglesRequest*(r: var Reader): Ros1Mycobot_communicationGetAnglesRequest =
 ## ``@brief Read the ordered canonical fields of mycobot_communication/GetAnglesRequest.``
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
 ## ``@see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mycobot_communicationGetAnglesRequest()
proc encode*(value: Ros1Mycobot_communicationGetAnglesRequest): seq[byte] =
 ## ``@brief Encode one complete mycobot_communication/GetAnglesRequest value.``
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
 ## ``@see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mycobot_communicationGetAnglesRequest*(b: seq[byte]): Ros1Mycobot_communicationGetAnglesRequest =
 ## ``@brief Decode exactly one complete mycobot_communication/GetAnglesRequest value.``
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
 ## ``@see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,0)
  result = readRos1Mycobot_communicationGetAnglesRequest(r)
  finish(r)
type Ros1Mycobot_communicationGetAnglesResponse* = object
 ## ``@brief Complete ROS 1 mycobot_communication/GetAnglesResponse value.``
 ## ``@details All 6 declared fields are retained in source order. The canonical representation``
 ## ``occupies 24..24 bytes and is identified by``
 ## ``UWVMROS1_482e6b845d6913ab7ea12580a395caf0a9815b56f985eb3a0553263fb7fd4ff3.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `joint_1`*: float32 ## ``@brief mycobot_communication/GetAnglesResponse.joint_1: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mycobot_communicationGetAnglesResponse;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_2`*: float32 ## ``@brief mycobot_communication/GetAnglesResponse.joint_2: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mycobot_communicationGetAnglesResponse;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_3`*: float32 ## ``@brief mycobot_communication/GetAnglesResponse.joint_3: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mycobot_communicationGetAnglesResponse;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_4`*: float32 ## ``@brief mycobot_communication/GetAnglesResponse.joint_4: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mycobot_communicationGetAnglesResponse;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_5`*: float32 ## ``@brief mycobot_communication/GetAnglesResponse.joint_5: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mycobot_communicationGetAnglesResponse;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_6`*: float32 ## ``@brief mycobot_communication/GetAnglesResponse.joint_6: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mycobot_communicationGetAnglesResponse;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationGetAnglesResponseMaximumWireBytes* = 24 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_communication/GetAnglesResponse``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 24 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mycobot_communicationGetAnglesResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationGetAnglesResponseCodecIdentity* = "UWVMROS1_482e6b845d6913ab7ea12580a395caf0a9815b56f985eb3a0553263fb7fd4ff3" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_communication/GetAnglesResponse.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_482e6b845d6913ab7ea12580a395caf0a9815b56f985eb3a0553263fb7fd4ff3``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mycobot_communicationGetAnglesResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationGetAnglesResponseNativeType* = "mycobot_communication/GetAnglesResponse" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_communication/GetAnglesResponse.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mycobot_communicationGetAnglesResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationGetAnglesResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_communication/GetAnglesResponse.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mycobot_communicationGetAnglesResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mycobot_communicationGetAnglesResponse*(): Ros1Mycobot_communicationGetAnglesResponse =
 ## ``@brief Construct the declared defaults of mycobot_communication/GetAnglesResponse.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`joint_1` = 0
  result.`joint_2` = 0
  result.`joint_3` = 0
  result.`joint_4` = 0
  result.`joint_5` = 0
  result.`joint_6` = 0
proc writeFields*(value: Ros1Mycobot_communicationGetAnglesResponse; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_communication/GetAnglesResponse.``
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
 ## ``@see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`joint_1`)
  putFloat32(w,value.`joint_2`)
  putFloat32(w,value.`joint_3`)
  putFloat32(w,value.`joint_4`)
  putFloat32(w,value.`joint_5`)
  putFloat32(w,value.`joint_6`)
proc readRos1Mycobot_communicationGetAnglesResponse*(r: var Reader): Ros1Mycobot_communicationGetAnglesResponse =
 ## ``@brief Read the ordered canonical fields of mycobot_communication/GetAnglesResponse.``
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
 ## ``@see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mycobot_communicationGetAnglesResponse()
  result.`joint_1` = getFloat32(r)
  result.`joint_2` = getFloat32(r)
  result.`joint_3` = getFloat32(r)
  result.`joint_4` = getFloat32(r)
  result.`joint_5` = getFloat32(r)
  result.`joint_6` = getFloat32(r)
proc encode*(value: Ros1Mycobot_communicationGetAnglesResponse): seq[byte] =
 ## ``@brief Encode one complete mycobot_communication/GetAnglesResponse value.``
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
 ## ``@see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mycobot_communicationGetAnglesResponse*(b: seq[byte]): Ros1Mycobot_communicationGetAnglesResponse =
 ## ``@brief Decode exactly one complete mycobot_communication/GetAnglesResponse value.``
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
 ## ``@see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,24)
  result = readRos1Mycobot_communicationGetAnglesResponse(r)
  finish(r)
type Ros1Mycobot_communicationGetCoordsRequest* = object
 ## ``@brief Complete ROS 1 mycobot_communication/GetCoordsRequest value.``
 ## ``@details All 0 declared fields are retained in source order. The canonical representation``
 ## ``occupies 0..0 bytes and is identified by``
 ## ``UWVMROS1_54acc83a24f2f62d8ba9c14b1cea1703cb6097360720550cc438671282d45876.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationGetCoordsRequestMaximumWireBytes* = 0 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_communication/GetCoordsRequest``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 0 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mycobot_communicationGetCoordsRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationGetCoordsRequestCodecIdentity* = "UWVMROS1_54acc83a24f2f62d8ba9c14b1cea1703cb6097360720550cc438671282d45876" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_communication/GetCoordsRequest.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_54acc83a24f2f62d8ba9c14b1cea1703cb6097360720550cc438671282d45876``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mycobot_communicationGetCoordsRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationGetCoordsRequestNativeType* = "mycobot_communication/GetCoordsRequest" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_communication/GetCoordsRequest.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mycobot_communicationGetCoordsRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationGetCoordsRequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_communication/GetCoordsRequest.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mycobot_communicationGetCoordsRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mycobot_communicationGetCoordsRequest*(): Ros1Mycobot_communicationGetCoordsRequest =
 ## ``@brief Construct the declared defaults of mycobot_communication/GetCoordsRequest.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc writeFields*(value: Ros1Mycobot_communicationGetCoordsRequest; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_communication/GetCoordsRequest.``
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
 ## ``@see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc readRos1Mycobot_communicationGetCoordsRequest*(r: var Reader): Ros1Mycobot_communicationGetCoordsRequest =
 ## ``@brief Read the ordered canonical fields of mycobot_communication/GetCoordsRequest.``
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
 ## ``@see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mycobot_communicationGetCoordsRequest()
proc encode*(value: Ros1Mycobot_communicationGetCoordsRequest): seq[byte] =
 ## ``@brief Encode one complete mycobot_communication/GetCoordsRequest value.``
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
 ## ``@see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mycobot_communicationGetCoordsRequest*(b: seq[byte]): Ros1Mycobot_communicationGetCoordsRequest =
 ## ``@brief Decode exactly one complete mycobot_communication/GetCoordsRequest value.``
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
 ## ``@see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,0)
  result = readRos1Mycobot_communicationGetCoordsRequest(r)
  finish(r)
type Ros1Mycobot_communicationGetCoordsResponse* = object
 ## ``@brief Complete ROS 1 mycobot_communication/GetCoordsResponse value.``
 ## ``@details All 6 declared fields are retained in source order. The canonical representation``
 ## ``occupies 24..24 bytes and is identified by``
 ## ``UWVMROS1_275b9bec563bb8578112b3680400523000a08a8e194044164e5334336b73d107.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `x`*: float32 ## ``@brief mycobot_communication/GetCoordsResponse.x: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros1Mycobot_communicationGetCoordsResponse;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `y`*: float32 ## ``@brief mycobot_communication/GetCoordsResponse.y: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros1Mycobot_communicationGetCoordsResponse;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `z`*: float32 ## ``@brief mycobot_communication/GetCoordsResponse.z: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros1Mycobot_communicationGetCoordsResponse;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rx`*: float32 ## ``@brief mycobot_communication/GetCoordsResponse.rx: float32. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros1Mycobot_communicationGetCoordsResponse;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `ry`*: float32 ## ``@brief mycobot_communication/GetCoordsResponse.ry: float32. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros1Mycobot_communicationGetCoordsResponse;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rz`*: float32 ## ``@brief mycobot_communication/GetCoordsResponse.rz: float32. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros1Mycobot_communicationGetCoordsResponse;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationGetCoordsResponseMaximumWireBytes* = 24 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_communication/GetCoordsResponse``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 24 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mycobot_communicationGetCoordsResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationGetCoordsResponseCodecIdentity* = "UWVMROS1_275b9bec563bb8578112b3680400523000a08a8e194044164e5334336b73d107" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_communication/GetCoordsResponse.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_275b9bec563bb8578112b3680400523000a08a8e194044164e5334336b73d107``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mycobot_communicationGetCoordsResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationGetCoordsResponseNativeType* = "mycobot_communication/GetCoordsResponse" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_communication/GetCoordsResponse.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mycobot_communicationGetCoordsResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationGetCoordsResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_communication/GetCoordsResponse.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mycobot_communicationGetCoordsResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mycobot_communicationGetCoordsResponse*(): Ros1Mycobot_communicationGetCoordsResponse =
 ## ``@brief Construct the declared defaults of mycobot_communication/GetCoordsResponse.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
  result.`rx` = 0
  result.`ry` = 0
  result.`rz` = 0
proc writeFields*(value: Ros1Mycobot_communicationGetCoordsResponse; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_communication/GetCoordsResponse.``
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
 ## ``@see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`x`)
  putFloat32(w,value.`y`)
  putFloat32(w,value.`z`)
  putFloat32(w,value.`rx`)
  putFloat32(w,value.`ry`)
  putFloat32(w,value.`rz`)
proc readRos1Mycobot_communicationGetCoordsResponse*(r: var Reader): Ros1Mycobot_communicationGetCoordsResponse =
 ## ``@brief Read the ordered canonical fields of mycobot_communication/GetCoordsResponse.``
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
 ## ``@see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mycobot_communicationGetCoordsResponse()
  result.`x` = getFloat32(r)
  result.`y` = getFloat32(r)
  result.`z` = getFloat32(r)
  result.`rx` = getFloat32(r)
  result.`ry` = getFloat32(r)
  result.`rz` = getFloat32(r)
proc encode*(value: Ros1Mycobot_communicationGetCoordsResponse): seq[byte] =
 ## ``@brief Encode one complete mycobot_communication/GetCoordsResponse value.``
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
 ## ``@see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mycobot_communicationGetCoordsResponse*(b: seq[byte]): Ros1Mycobot_communicationGetCoordsResponse =
 ## ``@brief Decode exactly one complete mycobot_communication/GetCoordsResponse value.``
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
 ## ``@see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,24)
  result = readRos1Mycobot_communicationGetCoordsResponse(r)
  finish(r)
type Ros1Mycobot_communicationGripperStatusRequest* = object
 ## ``@brief Complete ROS 1 mycobot_communication/GripperStatusRequest value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_d2c94d1906d311981c72642d82bbea634cfed4eac8c0aef41219bf4f382d4585.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `Status`*: bool ## ``@brief mycobot_communication/GripperStatusRequest.Status: bool. @details The``
                  ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                  ## ``preserves the original field position and signedness; invalid bounds fail instead``
                  ## ``of truncating the value. @units Use the units and frame/clock domain of the``
                  ## ``pinned native definition. The codec performs no scaling, frame conversion or``
                  ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                  ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                  ## ``enclosing decode function. @see Ros1Mycobot_communicationGripperStatusRequest;``
                  ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationGripperStatusRequestMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_communication/GripperStatusRequest``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mycobot_communicationGripperStatusRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationGripperStatusRequestCodecIdentity* = "UWVMROS1_d2c94d1906d311981c72642d82bbea634cfed4eac8c0aef41219bf4f382d4585" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_communication/GripperStatusRequest.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_d2c94d1906d311981c72642d82bbea634cfed4eac8c0aef41219bf4f382d4585``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mycobot_communicationGripperStatusRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationGripperStatusRequestNativeType* = "mycobot_communication/GripperStatusRequest" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_communication/GripperStatusRequest.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mycobot_communicationGripperStatusRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationGripperStatusRequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_communication/GripperStatusRequest.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mycobot_communicationGripperStatusRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mycobot_communicationGripperStatusRequest*(): Ros1Mycobot_communicationGripperStatusRequest =
 ## ``@brief Construct the declared defaults of mycobot_communication/GripperStatusRequest.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/nim/API-CONTRACT.md``
  result.`Status` = false
proc writeFields*(value: Ros1Mycobot_communicationGripperStatusRequest; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_communication/GripperStatusRequest.``
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
 ## ``@see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`Status`)
proc readRos1Mycobot_communicationGripperStatusRequest*(r: var Reader): Ros1Mycobot_communicationGripperStatusRequest =
 ## ``@brief Read the ordered canonical fields of mycobot_communication/GripperStatusRequest.``
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
 ## ``@see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mycobot_communicationGripperStatusRequest()
  result.`Status` = getBool(r)
proc encode*(value: Ros1Mycobot_communicationGripperStatusRequest): seq[byte] =
 ## ``@brief Encode one complete mycobot_communication/GripperStatusRequest value.``
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
 ## ``@see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mycobot_communicationGripperStatusRequest*(b: seq[byte]): Ros1Mycobot_communicationGripperStatusRequest =
 ## ``@brief Decode exactly one complete mycobot_communication/GripperStatusRequest value.``
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
 ## ``@see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos1Mycobot_communicationGripperStatusRequest(r)
  finish(r)
type Ros1Mycobot_communicationGripperStatusResponse* = object
 ## ``@brief Complete ROS 1 mycobot_communication/GripperStatusResponse value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_3a75c0d75882836971ed4c51e50c7b88778fcfeadf9b30df211d5055eb767664.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `Flag`*: bool ## ``@brief mycobot_communication/GripperStatusResponse.Flag: bool. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros1Mycobot_communicationGripperStatusResponse;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationGripperStatusResponseMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_communication/GripperStatusResponse``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mycobot_communicationGripperStatusResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationGripperStatusResponseCodecIdentity* = "UWVMROS1_3a75c0d75882836971ed4c51e50c7b88778fcfeadf9b30df211d5055eb767664" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_communication/GripperStatusResponse.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_3a75c0d75882836971ed4c51e50c7b88778fcfeadf9b30df211d5055eb767664``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mycobot_communicationGripperStatusResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationGripperStatusResponseNativeType* = "mycobot_communication/GripperStatusResponse" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_communication/GripperStatusResponse.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mycobot_communicationGripperStatusResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationGripperStatusResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_communication/GripperStatusResponse.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mycobot_communicationGripperStatusResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mycobot_communicationGripperStatusResponse*(): Ros1Mycobot_communicationGripperStatusResponse =
 ## ``@brief Construct the declared defaults of mycobot_communication/GripperStatusResponse.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`Flag` = false
proc writeFields*(value: Ros1Mycobot_communicationGripperStatusResponse; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_communication/GripperStatusResponse.``
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
 ## ``@see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`Flag`)
proc readRos1Mycobot_communicationGripperStatusResponse*(r: var Reader): Ros1Mycobot_communicationGripperStatusResponse =
 ## ``@brief Read the ordered canonical fields of mycobot_communication/GripperStatusResponse.``
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
 ## ``@see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mycobot_communicationGripperStatusResponse()
  result.`Flag` = getBool(r)
proc encode*(value: Ros1Mycobot_communicationGripperStatusResponse): seq[byte] =
 ## ``@brief Encode one complete mycobot_communication/GripperStatusResponse value.``
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
 ## ``@see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mycobot_communicationGripperStatusResponse*(b: seq[byte]): Ros1Mycobot_communicationGripperStatusResponse =
 ## ``@brief Decode exactly one complete mycobot_communication/GripperStatusResponse value.``
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
 ## ``@see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos1Mycobot_communicationGripperStatusResponse(r)
  finish(r)
type Ros1Mycobot_communicationPumpStatusRequest* = object
 ## ``@brief Complete ROS 1 mycobot_communication/PumpStatusRequest value.``
 ## ``@details All 3 declared fields are retained in source order. The canonical representation``
 ## ``occupies 3..3 bytes and is identified by``
 ## ``UWVMROS1_561f4bb1f74832111672bbfed1ef1266a91914fb1034437199f730f55324c65c.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `Status`*: bool ## ``@brief mycobot_communication/PumpStatusRequest.Status: bool. @details The``
                  ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                  ## ``preserves the original field position and signedness; invalid bounds fail instead``
                  ## ``of truncating the value. @units Use the units and frame/clock domain of the``
                  ## ``pinned native definition. The codec performs no scaling, frame conversion or``
                  ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                  ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                  ## ``enclosing decode function. @see Ros1Mycobot_communicationPumpStatusRequest;``
                  ## ``share/platform/ros/nim/API-CONTRACT.md``
  `Pin1`*: int8 ## ``@brief mycobot_communication/PumpStatusRequest.Pin1: int8. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros1Mycobot_communicationPumpStatusRequest;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `Pin2`*: int8 ## ``@brief mycobot_communication/PumpStatusRequest.Pin2: int8. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros1Mycobot_communicationPumpStatusRequest;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationPumpStatusRequestMaximumWireBytes* = 3 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_communication/PumpStatusRequest``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 3 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mycobot_communicationPumpStatusRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationPumpStatusRequestCodecIdentity* = "UWVMROS1_561f4bb1f74832111672bbfed1ef1266a91914fb1034437199f730f55324c65c" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_communication/PumpStatusRequest.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_561f4bb1f74832111672bbfed1ef1266a91914fb1034437199f730f55324c65c``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mycobot_communicationPumpStatusRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationPumpStatusRequestNativeType* = "mycobot_communication/PumpStatusRequest" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_communication/PumpStatusRequest.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mycobot_communicationPumpStatusRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationPumpStatusRequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_communication/PumpStatusRequest.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mycobot_communicationPumpStatusRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mycobot_communicationPumpStatusRequest*(): Ros1Mycobot_communicationPumpStatusRequest =
 ## ``@brief Construct the declared defaults of mycobot_communication/PumpStatusRequest.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/nim/API-CONTRACT.md``
  result.`Status` = false
  result.`Pin1` = 0
  result.`Pin2` = 0
proc writeFields*(value: Ros1Mycobot_communicationPumpStatusRequest; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_communication/PumpStatusRequest.``
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
 ## ``@see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`Status`)
  putInteger(w,value.`Pin1`)
  putInteger(w,value.`Pin2`)
proc readRos1Mycobot_communicationPumpStatusRequest*(r: var Reader): Ros1Mycobot_communicationPumpStatusRequest =
 ## ``@brief Read the ordered canonical fields of mycobot_communication/PumpStatusRequest.``
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
 ## ``@see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mycobot_communicationPumpStatusRequest()
  result.`Status` = getBool(r)
  result.`Pin1` = getInteger(r,int8)
  result.`Pin2` = getInteger(r,int8)
proc encode*(value: Ros1Mycobot_communicationPumpStatusRequest): seq[byte] =
 ## ``@brief Encode one complete mycobot_communication/PumpStatusRequest value.``
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
 ## ``@see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(3)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mycobot_communicationPumpStatusRequest*(b: seq[byte]): Ros1Mycobot_communicationPumpStatusRequest =
 ## ``@brief Decode exactly one complete mycobot_communication/PumpStatusRequest value.``
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
 ## ``@see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,3)
  result = readRos1Mycobot_communicationPumpStatusRequest(r)
  finish(r)
type Ros1Mycobot_communicationPumpStatusResponse* = object
 ## ``@brief Complete ROS 1 mycobot_communication/PumpStatusResponse value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_b5a1672fe12d2e2131034bb6da8751130b64ef6d48ea48ac0a046c506da452dd.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `Flag`*: bool ## ``@brief mycobot_communication/PumpStatusResponse.Flag: bool. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros1Mycobot_communicationPumpStatusResponse;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationPumpStatusResponseMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_communication/PumpStatusResponse``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mycobot_communicationPumpStatusResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationPumpStatusResponseCodecIdentity* = "UWVMROS1_b5a1672fe12d2e2131034bb6da8751130b64ef6d48ea48ac0a046c506da452dd" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_communication/PumpStatusResponse.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_b5a1672fe12d2e2131034bb6da8751130b64ef6d48ea48ac0a046c506da452dd``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mycobot_communicationPumpStatusResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationPumpStatusResponseNativeType* = "mycobot_communication/PumpStatusResponse" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_communication/PumpStatusResponse.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mycobot_communicationPumpStatusResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationPumpStatusResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_communication/PumpStatusResponse.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mycobot_communicationPumpStatusResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mycobot_communicationPumpStatusResponse*(): Ros1Mycobot_communicationPumpStatusResponse =
 ## ``@brief Construct the declared defaults of mycobot_communication/PumpStatusResponse.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`Flag` = false
proc writeFields*(value: Ros1Mycobot_communicationPumpStatusResponse; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_communication/PumpStatusResponse.``
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
 ## ``@see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`Flag`)
proc readRos1Mycobot_communicationPumpStatusResponse*(r: var Reader): Ros1Mycobot_communicationPumpStatusResponse =
 ## ``@brief Read the ordered canonical fields of mycobot_communication/PumpStatusResponse.``
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
 ## ``@see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mycobot_communicationPumpStatusResponse()
  result.`Flag` = getBool(r)
proc encode*(value: Ros1Mycobot_communicationPumpStatusResponse): seq[byte] =
 ## ``@brief Encode one complete mycobot_communication/PumpStatusResponse value.``
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
 ## ``@see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mycobot_communicationPumpStatusResponse*(b: seq[byte]): Ros1Mycobot_communicationPumpStatusResponse =
 ## ``@brief Decode exactly one complete mycobot_communication/PumpStatusResponse value.``
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
 ## ``@see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos1Mycobot_communicationPumpStatusResponse(r)
  finish(r)
type Ros1Mycobot_communicationSetAnglesRequest* = object
 ## ``@brief Complete ROS 1 mycobot_communication/SetAnglesRequest value.``
 ## ``@details All 7 declared fields are retained in source order. The canonical representation``
 ## ``occupies 25..25 bytes and is identified by``
 ## ``UWVMROS1_10bcf04e47b743a985ffefc61dff4522f3718d2ac7170960c8ae6857aaa11cbd.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `joint_1`*: float32 ## ``@brief mycobot_communication/SetAnglesRequest.joint_1: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mycobot_communicationSetAnglesRequest;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_2`*: float32 ## ``@brief mycobot_communication/SetAnglesRequest.joint_2: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mycobot_communicationSetAnglesRequest;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_3`*: float32 ## ``@brief mycobot_communication/SetAnglesRequest.joint_3: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mycobot_communicationSetAnglesRequest;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_4`*: float32 ## ``@brief mycobot_communication/SetAnglesRequest.joint_4: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mycobot_communicationSetAnglesRequest;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_5`*: float32 ## ``@brief mycobot_communication/SetAnglesRequest.joint_5: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mycobot_communicationSetAnglesRequest;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_6`*: float32 ## ``@brief mycobot_communication/SetAnglesRequest.joint_6: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mycobot_communicationSetAnglesRequest;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `speed`*: int8 ## ``@brief mycobot_communication/SetAnglesRequest.speed: int8. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros1Mycobot_communicationSetAnglesRequest;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationSetAnglesRequestMaximumWireBytes* = 25 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_communication/SetAnglesRequest``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 25 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mycobot_communicationSetAnglesRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationSetAnglesRequestCodecIdentity* = "UWVMROS1_10bcf04e47b743a985ffefc61dff4522f3718d2ac7170960c8ae6857aaa11cbd" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_communication/SetAnglesRequest.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_10bcf04e47b743a985ffefc61dff4522f3718d2ac7170960c8ae6857aaa11cbd``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mycobot_communicationSetAnglesRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationSetAnglesRequestNativeType* = "mycobot_communication/SetAnglesRequest" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_communication/SetAnglesRequest.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mycobot_communicationSetAnglesRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationSetAnglesRequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_communication/SetAnglesRequest.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mycobot_communicationSetAnglesRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mycobot_communicationSetAnglesRequest*(): Ros1Mycobot_communicationSetAnglesRequest =
 ## ``@brief Construct the declared defaults of mycobot_communication/SetAnglesRequest.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/nim/API-CONTRACT.md``
  result.`joint_1` = 0
  result.`joint_2` = 0
  result.`joint_3` = 0
  result.`joint_4` = 0
  result.`joint_5` = 0
  result.`joint_6` = 0
  result.`speed` = 0
proc writeFields*(value: Ros1Mycobot_communicationSetAnglesRequest; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_communication/SetAnglesRequest.``
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
 ## ``@see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`joint_1`)
  putFloat32(w,value.`joint_2`)
  putFloat32(w,value.`joint_3`)
  putFloat32(w,value.`joint_4`)
  putFloat32(w,value.`joint_5`)
  putFloat32(w,value.`joint_6`)
  putInteger(w,value.`speed`)
proc readRos1Mycobot_communicationSetAnglesRequest*(r: var Reader): Ros1Mycobot_communicationSetAnglesRequest =
 ## ``@brief Read the ordered canonical fields of mycobot_communication/SetAnglesRequest.``
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
 ## ``@see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mycobot_communicationSetAnglesRequest()
  result.`joint_1` = getFloat32(r)
  result.`joint_2` = getFloat32(r)
  result.`joint_3` = getFloat32(r)
  result.`joint_4` = getFloat32(r)
  result.`joint_5` = getFloat32(r)
  result.`joint_6` = getFloat32(r)
  result.`speed` = getInteger(r,int8)
proc encode*(value: Ros1Mycobot_communicationSetAnglesRequest): seq[byte] =
 ## ``@brief Encode one complete mycobot_communication/SetAnglesRequest value.``
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
 ## ``@see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(25)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mycobot_communicationSetAnglesRequest*(b: seq[byte]): Ros1Mycobot_communicationSetAnglesRequest =
 ## ``@brief Decode exactly one complete mycobot_communication/SetAnglesRequest value.``
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
 ## ``@see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,25)
  result = readRos1Mycobot_communicationSetAnglesRequest(r)
  finish(r)
type Ros1Mycobot_communicationSetAnglesResponse* = object
 ## ``@brief Complete ROS 1 mycobot_communication/SetAnglesResponse value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_d407051eb285975d89ad71f39aede021fb564aecca0e0744126c9a599fe396b2.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `Flag`*: bool ## ``@brief mycobot_communication/SetAnglesResponse.Flag: bool. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros1Mycobot_communicationSetAnglesResponse;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationSetAnglesResponseMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_communication/SetAnglesResponse``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mycobot_communicationSetAnglesResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationSetAnglesResponseCodecIdentity* = "UWVMROS1_d407051eb285975d89ad71f39aede021fb564aecca0e0744126c9a599fe396b2" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_communication/SetAnglesResponse.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_d407051eb285975d89ad71f39aede021fb564aecca0e0744126c9a599fe396b2``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mycobot_communicationSetAnglesResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationSetAnglesResponseNativeType* = "mycobot_communication/SetAnglesResponse" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_communication/SetAnglesResponse.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mycobot_communicationSetAnglesResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationSetAnglesResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_communication/SetAnglesResponse.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mycobot_communicationSetAnglesResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mycobot_communicationSetAnglesResponse*(): Ros1Mycobot_communicationSetAnglesResponse =
 ## ``@brief Construct the declared defaults of mycobot_communication/SetAnglesResponse.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`Flag` = false
proc writeFields*(value: Ros1Mycobot_communicationSetAnglesResponse; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_communication/SetAnglesResponse.``
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
 ## ``@see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`Flag`)
proc readRos1Mycobot_communicationSetAnglesResponse*(r: var Reader): Ros1Mycobot_communicationSetAnglesResponse =
 ## ``@brief Read the ordered canonical fields of mycobot_communication/SetAnglesResponse.``
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
 ## ``@see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mycobot_communicationSetAnglesResponse()
  result.`Flag` = getBool(r)
proc encode*(value: Ros1Mycobot_communicationSetAnglesResponse): seq[byte] =
 ## ``@brief Encode one complete mycobot_communication/SetAnglesResponse value.``
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
 ## ``@see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mycobot_communicationSetAnglesResponse*(b: seq[byte]): Ros1Mycobot_communicationSetAnglesResponse =
 ## ``@brief Decode exactly one complete mycobot_communication/SetAnglesResponse value.``
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
 ## ``@see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos1Mycobot_communicationSetAnglesResponse(r)
  finish(r)
type Ros1Mycobot_communicationSetCoordsRequest* = object
 ## ``@brief Complete ROS 1 mycobot_communication/SetCoordsRequest value.``
 ## ``@details All 8 declared fields are retained in source order. The canonical representation``
 ## ``occupies 26..26 bytes and is identified by``
 ## ``UWVMROS1_7a59a4e31eca60caea9f82142225c890a136c60a9e4c821e9463e89139945f7a.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `x`*: float32 ## ``@brief mycobot_communication/SetCoordsRequest.x: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros1Mycobot_communicationSetCoordsRequest;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `y`*: float32 ## ``@brief mycobot_communication/SetCoordsRequest.y: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros1Mycobot_communicationSetCoordsRequest;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `z`*: float32 ## ``@brief mycobot_communication/SetCoordsRequest.z: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros1Mycobot_communicationSetCoordsRequest;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rx`*: float32 ## ``@brief mycobot_communication/SetCoordsRequest.rx: float32. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros1Mycobot_communicationSetCoordsRequest;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `ry`*: float32 ## ``@brief mycobot_communication/SetCoordsRequest.ry: float32. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros1Mycobot_communicationSetCoordsRequest;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rz`*: float32 ## ``@brief mycobot_communication/SetCoordsRequest.rz: float32. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros1Mycobot_communicationSetCoordsRequest;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `speed`*: int8 ## ``@brief mycobot_communication/SetCoordsRequest.speed: int8. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros1Mycobot_communicationSetCoordsRequest;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `model`*: int8 ## ``@brief mycobot_communication/SetCoordsRequest.model: int8. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros1Mycobot_communicationSetCoordsRequest;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationSetCoordsRequestMaximumWireBytes* = 26 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_communication/SetCoordsRequest``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 26 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mycobot_communicationSetCoordsRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationSetCoordsRequestCodecIdentity* = "UWVMROS1_7a59a4e31eca60caea9f82142225c890a136c60a9e4c821e9463e89139945f7a" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_communication/SetCoordsRequest.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_7a59a4e31eca60caea9f82142225c890a136c60a9e4c821e9463e89139945f7a``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mycobot_communicationSetCoordsRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationSetCoordsRequestNativeType* = "mycobot_communication/SetCoordsRequest" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_communication/SetCoordsRequest.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mycobot_communicationSetCoordsRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationSetCoordsRequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_communication/SetCoordsRequest.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mycobot_communicationSetCoordsRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mycobot_communicationSetCoordsRequest*(): Ros1Mycobot_communicationSetCoordsRequest =
 ## ``@brief Construct the declared defaults of mycobot_communication/SetCoordsRequest.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/nim/API-CONTRACT.md``
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
  result.`rx` = 0
  result.`ry` = 0
  result.`rz` = 0
  result.`speed` = 0
  result.`model` = 0
proc writeFields*(value: Ros1Mycobot_communicationSetCoordsRequest; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_communication/SetCoordsRequest.``
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
 ## ``@see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`x`)
  putFloat32(w,value.`y`)
  putFloat32(w,value.`z`)
  putFloat32(w,value.`rx`)
  putFloat32(w,value.`ry`)
  putFloat32(w,value.`rz`)
  putInteger(w,value.`speed`)
  putInteger(w,value.`model`)
proc readRos1Mycobot_communicationSetCoordsRequest*(r: var Reader): Ros1Mycobot_communicationSetCoordsRequest =
 ## ``@brief Read the ordered canonical fields of mycobot_communication/SetCoordsRequest.``
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
 ## ``@see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mycobot_communicationSetCoordsRequest()
  result.`x` = getFloat32(r)
  result.`y` = getFloat32(r)
  result.`z` = getFloat32(r)
  result.`rx` = getFloat32(r)
  result.`ry` = getFloat32(r)
  result.`rz` = getFloat32(r)
  result.`speed` = getInteger(r,int8)
  result.`model` = getInteger(r,int8)
proc encode*(value: Ros1Mycobot_communicationSetCoordsRequest): seq[byte] =
 ## ``@brief Encode one complete mycobot_communication/SetCoordsRequest value.``
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
 ## ``@see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(26)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mycobot_communicationSetCoordsRequest*(b: seq[byte]): Ros1Mycobot_communicationSetCoordsRequest =
 ## ``@brief Decode exactly one complete mycobot_communication/SetCoordsRequest value.``
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
 ## ``@see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,26)
  result = readRos1Mycobot_communicationSetCoordsRequest(r)
  finish(r)
type Ros1Mycobot_communicationSetCoordsResponse* = object
 ## ``@brief Complete ROS 1 mycobot_communication/SetCoordsResponse value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_1a936a95cb1bfd0a9158342618c40c587af58388abf3b679eb4bad2518aec6af.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `Flag`*: bool ## ``@brief mycobot_communication/SetCoordsResponse.Flag: bool. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros1Mycobot_communicationSetCoordsResponse;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationSetCoordsResponseMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mycobot_communication/SetCoordsResponse``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mycobot_communicationSetCoordsResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationSetCoordsResponseCodecIdentity* = "UWVMROS1_1a936a95cb1bfd0a9158342618c40c587af58388abf3b679eb4bad2518aec6af" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mycobot_communication/SetCoordsResponse.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_1a936a95cb1bfd0a9158342618c40c587af58388abf3b679eb4bad2518aec6af``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mycobot_communicationSetCoordsResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationSetCoordsResponseNativeType* = "mycobot_communication/SetCoordsResponse" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mycobot_communication/SetCoordsResponse.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mycobot_communicationSetCoordsResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mycobot_communicationSetCoordsResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mycobot_communication/SetCoordsResponse.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mycobot_communicationSetCoordsResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mycobot_communicationSetCoordsResponse*(): Ros1Mycobot_communicationSetCoordsResponse =
 ## ``@brief Construct the declared defaults of mycobot_communication/SetCoordsResponse.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`Flag` = false
proc writeFields*(value: Ros1Mycobot_communicationSetCoordsResponse; w: var Writer) =
 ## ``@brief Append every canonical field of mycobot_communication/SetCoordsResponse.``
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
 ## ``@see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`Flag`)
proc readRos1Mycobot_communicationSetCoordsResponse*(r: var Reader): Ros1Mycobot_communicationSetCoordsResponse =
 ## ``@brief Read the ordered canonical fields of mycobot_communication/SetCoordsResponse.``
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
 ## ``@see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mycobot_communicationSetCoordsResponse()
  result.`Flag` = getBool(r)
proc encode*(value: Ros1Mycobot_communicationSetCoordsResponse): seq[byte] =
 ## ``@brief Encode one complete mycobot_communication/SetCoordsResponse value.``
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
 ## ``@see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mycobot_communicationSetCoordsResponse*(b: seq[byte]): Ros1Mycobot_communicationSetCoordsResponse =
 ## ``@brief Decode exactly one complete mycobot_communication/SetCoordsResponse value.``
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
 ## ``@see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos1Mycobot_communicationSetCoordsResponse(r)
  finish(r)
type Ros1Mypalletizer_communicationMypalAngles* = object
 ## ``@brief Complete ROS 1 mypalletizer_communication/MypalAngles value.``
 ## ``@details All 4 declared fields are retained in source order. The canonical representation``
 ## ``occupies 16..16 bytes and is identified by``
 ## ``UWVMROS1_1d45a33e05e948c1b58988c84afe359138c896119f82da0d737377f0272892d9.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `joint_1`*: float32 ## ``@brief mypalletizer_communication/MypalAngles.joint_1: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mypalletizer_communicationMypalAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_2`*: float32 ## ``@brief mypalletizer_communication/MypalAngles.joint_2: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mypalletizer_communicationMypalAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_3`*: float32 ## ``@brief mypalletizer_communication/MypalAngles.joint_3: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mypalletizer_communicationMypalAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_4`*: float32 ## ``@brief mypalletizer_communication/MypalAngles.joint_4: float32. @details The``
                      ## ``generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mypalletizer_communicationMypalAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationMypalAnglesMaximumWireBytes* = 16 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_communication/MypalAngles``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 16 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mypalletizer_communicationMypalAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationMypalAnglesCodecIdentity* = "UWVMROS1_1d45a33e05e948c1b58988c84afe359138c896119f82da0d737377f0272892d9" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_communication/MypalAngles.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_1d45a33e05e948c1b58988c84afe359138c896119f82da0d737377f0272892d9``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mypalletizer_communicationMypalAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationMypalAnglesNativeType* = "mypalletizer_communication/MypalAngles" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_communication/MypalAngles.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mypalletizer_communicationMypalAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationMypalAnglesNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_communication/MypalAngles.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mypalletizer_communicationMypalAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mypalletizer_communicationMypalAngles*(): Ros1Mypalletizer_communicationMypalAngles =
 ## ``@brief Construct the declared defaults of mypalletizer_communication/MypalAngles.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/nim/API-CONTRACT.md``
  result.`joint_1` = 0
  result.`joint_2` = 0
  result.`joint_3` = 0
  result.`joint_4` = 0
proc writeFields*(value: Ros1Mypalletizer_communicationMypalAngles; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_communication/MypalAngles.``
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
 ## ``@see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`joint_1`)
  putFloat32(w,value.`joint_2`)
  putFloat32(w,value.`joint_3`)
  putFloat32(w,value.`joint_4`)
proc readRos1Mypalletizer_communicationMypalAngles*(r: var Reader): Ros1Mypalletizer_communicationMypalAngles =
 ## ``@brief Read the ordered canonical fields of mypalletizer_communication/MypalAngles.``
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
 ## ``@see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mypalletizer_communicationMypalAngles()
  result.`joint_1` = getFloat32(r)
  result.`joint_2` = getFloat32(r)
  result.`joint_3` = getFloat32(r)
  result.`joint_4` = getFloat32(r)
proc encode*(value: Ros1Mypalletizer_communicationMypalAngles): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_communication/MypalAngles value.``
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
 ## ``@see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(16)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mypalletizer_communicationMypalAngles*(b: seq[byte]): Ros1Mypalletizer_communicationMypalAngles =
 ## ``@brief Decode exactly one complete mypalletizer_communication/MypalAngles value.``
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
 ## ``@see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,16)
  result = readRos1Mypalletizer_communicationMypalAngles(r)
  finish(r)
type Ros1Mypalletizer_communicationMypalCoords* = object
 ## ``@brief Complete ROS 1 mypalletizer_communication/MypalCoords value.``
 ## ``@details All 4 declared fields are retained in source order. The canonical representation``
 ## ``occupies 16..16 bytes and is identified by``
 ## ``UWVMROS1_c542d1a1a71224901044bc38ca2934021d811417c7c6937ca194995f67e59b80.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `x`*: float32 ## ``@brief mypalletizer_communication/MypalCoords.x: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros1Mypalletizer_communicationMypalCoords;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `y`*: float32 ## ``@brief mypalletizer_communication/MypalCoords.y: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros1Mypalletizer_communicationMypalCoords;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `z`*: float32 ## ``@brief mypalletizer_communication/MypalCoords.z: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros1Mypalletizer_communicationMypalCoords;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rx`*: float32 ## ``@brief mypalletizer_communication/MypalCoords.rx: float32. @details The generated``
                 ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves``
                 ## ``the original field position and signedness; invalid bounds fail instead of``
                 ## ``truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros1Mypalletizer_communicationMypalCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationMypalCoordsMaximumWireBytes* = 16 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_communication/MypalCoords``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 16 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mypalletizer_communicationMypalCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationMypalCoordsCodecIdentity* = "UWVMROS1_c542d1a1a71224901044bc38ca2934021d811417c7c6937ca194995f67e59b80" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_communication/MypalCoords.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_c542d1a1a71224901044bc38ca2934021d811417c7c6937ca194995f67e59b80``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mypalletizer_communicationMypalCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationMypalCoordsNativeType* = "mypalletizer_communication/MypalCoords" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_communication/MypalCoords.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mypalletizer_communicationMypalCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationMypalCoordsNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_communication/MypalCoords.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mypalletizer_communicationMypalCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mypalletizer_communicationMypalCoords*(): Ros1Mypalletizer_communicationMypalCoords =
 ## ``@brief Construct the declared defaults of mypalletizer_communication/MypalCoords.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/nim/API-CONTRACT.md``
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
  result.`rx` = 0
proc writeFields*(value: Ros1Mypalletizer_communicationMypalCoords; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_communication/MypalCoords.``
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
 ## ``@see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`x`)
  putFloat32(w,value.`y`)
  putFloat32(w,value.`z`)
  putFloat32(w,value.`rx`)
proc readRos1Mypalletizer_communicationMypalCoords*(r: var Reader): Ros1Mypalletizer_communicationMypalCoords =
 ## ``@brief Read the ordered canonical fields of mypalletizer_communication/MypalCoords.``
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
 ## ``@see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mypalletizer_communicationMypalCoords()
  result.`x` = getFloat32(r)
  result.`y` = getFloat32(r)
  result.`z` = getFloat32(r)
  result.`rx` = getFloat32(r)
proc encode*(value: Ros1Mypalletizer_communicationMypalCoords): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_communication/MypalCoords value.``
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
 ## ``@see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(16)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mypalletizer_communicationMypalCoords*(b: seq[byte]): Ros1Mypalletizer_communicationMypalCoords =
 ## ``@brief Decode exactly one complete mypalletizer_communication/MypalCoords value.``
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
 ## ``@see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,16)
  result = readRos1Mypalletizer_communicationMypalCoords(r)
  finish(r)
type Ros1Mypalletizer_communicationMypalGripperStatus* = object
 ## ``@brief Complete ROS 1 mypalletizer_communication/MypalGripperStatus value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_e37f608d4499ab2ed49618fc244831d274fadb23bd408d42619e3f8409ad2ee6.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `Status`*: bool ## ``@brief mypalletizer_communication/MypalGripperStatus.Status: bool. @details The``
                  ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                  ## ``preserves the original field position and signedness; invalid bounds fail instead``
                  ## ``of truncating the value. @units Use the units and frame/clock domain of the``
                  ## ``pinned native definition. The codec performs no scaling, frame conversion or``
                  ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                  ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                  ## ``enclosing decode function. @see Ros1Mypalletizer_communicationMypalGripperStatus;``
                  ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationMypalGripperStatusMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_communication/MypalGripperStatus``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mypalletizer_communicationMypalGripperStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationMypalGripperStatusCodecIdentity* = "UWVMROS1_e37f608d4499ab2ed49618fc244831d274fadb23bd408d42619e3f8409ad2ee6" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_communication/MypalGripperStatus.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_e37f608d4499ab2ed49618fc244831d274fadb23bd408d42619e3f8409ad2ee6``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mypalletizer_communicationMypalGripperStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationMypalGripperStatusNativeType* = "mypalletizer_communication/MypalGripperStatus" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_communication/MypalGripperStatus.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mypalletizer_communicationMypalGripperStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationMypalGripperStatusNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_communication/MypalGripperStatus.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mypalletizer_communicationMypalGripperStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mypalletizer_communicationMypalGripperStatus*(): Ros1Mypalletizer_communicationMypalGripperStatus =
 ## ``@brief Construct the declared defaults of mypalletizer_communication/MypalGripperStatus.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mypalletizer_communicationMypalGripperStatus;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`Status` = false
proc writeFields*(value: Ros1Mypalletizer_communicationMypalGripperStatus; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_communication/MypalGripperStatus.``
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
 ## ``@see Ros1Mypalletizer_communicationMypalGripperStatus;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`Status`)
proc readRos1Mypalletizer_communicationMypalGripperStatus*(r: var Reader): Ros1Mypalletizer_communicationMypalGripperStatus =
 ## ``@brief Read the ordered canonical fields of mypalletizer_communication/MypalGripperStatus.``
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
 ## ``@see Ros1Mypalletizer_communicationMypalGripperStatus;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mypalletizer_communicationMypalGripperStatus()
  result.`Status` = getBool(r)
proc encode*(value: Ros1Mypalletizer_communicationMypalGripperStatus): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_communication/MypalGripperStatus value.``
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
 ## ``@see Ros1Mypalletizer_communicationMypalGripperStatus;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mypalletizer_communicationMypalGripperStatus*(b: seq[byte]): Ros1Mypalletizer_communicationMypalGripperStatus =
 ## ``@brief Decode exactly one complete mypalletizer_communication/MypalGripperStatus value.``
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
 ## ``@see Ros1Mypalletizer_communicationMypalGripperStatus;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos1Mypalletizer_communicationMypalGripperStatus(r)
  finish(r)
type Ros1Mypalletizer_communicationMypalPumpStatus* = object
 ## ``@brief Complete ROS 1 mypalletizer_communication/MypalPumpStatus value.``
 ## ``@details All 3 declared fields are retained in source order. The canonical representation``
 ## ``occupies 3..3 bytes and is identified by``
 ## ``UWVMROS1_cdf79e610b5d49b7f73857e02c64688a71517f2fe8e3a96739b16a53ad4d0ebc.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `Status`*: bool ## ``@brief mypalletizer_communication/MypalPumpStatus.Status: bool. @details The``
                  ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                  ## ``preserves the original field position and signedness; invalid bounds fail instead``
                  ## ``of truncating the value. @units Use the units and frame/clock domain of the``
                  ## ``pinned native definition. The codec performs no scaling, frame conversion or``
                  ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                  ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                  ## ``enclosing decode function. @see Ros1Mypalletizer_communicationMypalPumpStatus;``
                  ## ``share/platform/ros/nim/API-CONTRACT.md``
  `Pin1`*: int8 ## ``@brief mypalletizer_communication/MypalPumpStatus.Pin1: int8. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros1Mypalletizer_communicationMypalPumpStatus;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `Pin2`*: int8 ## ``@brief mypalletizer_communication/MypalPumpStatus.Pin2: int8. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros1Mypalletizer_communicationMypalPumpStatus;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationMypalPumpStatusMaximumWireBytes* = 3 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_communication/MypalPumpStatus``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 3 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mypalletizer_communicationMypalPumpStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationMypalPumpStatusCodecIdentity* = "UWVMROS1_cdf79e610b5d49b7f73857e02c64688a71517f2fe8e3a96739b16a53ad4d0ebc" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_communication/MypalPumpStatus.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_cdf79e610b5d49b7f73857e02c64688a71517f2fe8e3a96739b16a53ad4d0ebc``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mypalletizer_communicationMypalPumpStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationMypalPumpStatusNativeType* = "mypalletizer_communication/MypalPumpStatus" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_communication/MypalPumpStatus.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mypalletizer_communicationMypalPumpStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationMypalPumpStatusNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_communication/MypalPumpStatus.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mypalletizer_communicationMypalPumpStatus;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mypalletizer_communicationMypalPumpStatus*(): Ros1Mypalletizer_communicationMypalPumpStatus =
 ## ``@brief Construct the declared defaults of mypalletizer_communication/MypalPumpStatus.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/nim/API-CONTRACT.md``
  result.`Status` = false
  result.`Pin1` = 0
  result.`Pin2` = 0
proc writeFields*(value: Ros1Mypalletizer_communicationMypalPumpStatus; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_communication/MypalPumpStatus.``
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
 ## ``@see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`Status`)
  putInteger(w,value.`Pin1`)
  putInteger(w,value.`Pin2`)
proc readRos1Mypalletizer_communicationMypalPumpStatus*(r: var Reader): Ros1Mypalletizer_communicationMypalPumpStatus =
 ## ``@brief Read the ordered canonical fields of mypalletizer_communication/MypalPumpStatus.``
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
 ## ``@see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mypalletizer_communicationMypalPumpStatus()
  result.`Status` = getBool(r)
  result.`Pin1` = getInteger(r,int8)
  result.`Pin2` = getInteger(r,int8)
proc encode*(value: Ros1Mypalletizer_communicationMypalPumpStatus): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_communication/MypalPumpStatus value.``
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
 ## ``@see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(3)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mypalletizer_communicationMypalPumpStatus*(b: seq[byte]): Ros1Mypalletizer_communicationMypalPumpStatus =
 ## ``@brief Decode exactly one complete mypalletizer_communication/MypalPumpStatus value.``
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
 ## ``@see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,3)
  result = readRos1Mypalletizer_communicationMypalPumpStatus(r)
  finish(r)
type Ros1Mypalletizer_communicationMypalSetAngles* = object
 ## ``@brief Complete ROS 1 mypalletizer_communication/MypalSetAngles value.``
 ## ``@details All 5 declared fields are retained in source order. The canonical representation``
 ## ``occupies 17..17 bytes and is identified by``
 ## ``UWVMROS1_8d11ba2c705bd577a329a01d039b831162742efe790c93b6c2c2631699d04f98.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `joint_1`*: float32 ## ``@brief mypalletizer_communication/MypalSetAngles.joint_1: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mypalletizer_communicationMypalSetAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_2`*: float32 ## ``@brief mypalletizer_communication/MypalSetAngles.joint_2: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mypalletizer_communicationMypalSetAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_3`*: float32 ## ``@brief mypalletizer_communication/MypalSetAngles.joint_3: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mypalletizer_communicationMypalSetAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_4`*: float32 ## ``@brief mypalletizer_communication/MypalSetAngles.joint_4: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mypalletizer_communicationMypalSetAngles;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `speed`*: int8 ## ``@brief mypalletizer_communication/MypalSetAngles.speed: int8. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros1Mypalletizer_communicationMypalSetAngles;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationMypalSetAnglesMaximumWireBytes* = 17 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_communication/MypalSetAngles``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 17 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mypalletizer_communicationMypalSetAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationMypalSetAnglesCodecIdentity* = "UWVMROS1_8d11ba2c705bd577a329a01d039b831162742efe790c93b6c2c2631699d04f98" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_communication/MypalSetAngles.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_8d11ba2c705bd577a329a01d039b831162742efe790c93b6c2c2631699d04f98``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mypalletizer_communicationMypalSetAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationMypalSetAnglesNativeType* = "mypalletizer_communication/MypalSetAngles" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_communication/MypalSetAngles.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mypalletizer_communicationMypalSetAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationMypalSetAnglesNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_communication/MypalSetAngles.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mypalletizer_communicationMypalSetAngles;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mypalletizer_communicationMypalSetAngles*(): Ros1Mypalletizer_communicationMypalSetAngles =
 ## ``@brief Construct the declared defaults of mypalletizer_communication/MypalSetAngles.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/nim/API-CONTRACT.md``
  result.`joint_1` = 0
  result.`joint_2` = 0
  result.`joint_3` = 0
  result.`joint_4` = 0
  result.`speed` = 0
proc writeFields*(value: Ros1Mypalletizer_communicationMypalSetAngles; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_communication/MypalSetAngles.``
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
 ## ``@see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`joint_1`)
  putFloat32(w,value.`joint_2`)
  putFloat32(w,value.`joint_3`)
  putFloat32(w,value.`joint_4`)
  putInteger(w,value.`speed`)
proc readRos1Mypalletizer_communicationMypalSetAngles*(r: var Reader): Ros1Mypalletizer_communicationMypalSetAngles =
 ## ``@brief Read the ordered canonical fields of mypalletizer_communication/MypalSetAngles.``
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
 ## ``@see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mypalletizer_communicationMypalSetAngles()
  result.`joint_1` = getFloat32(r)
  result.`joint_2` = getFloat32(r)
  result.`joint_3` = getFloat32(r)
  result.`joint_4` = getFloat32(r)
  result.`speed` = getInteger(r,int8)
proc encode*(value: Ros1Mypalletizer_communicationMypalSetAngles): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_communication/MypalSetAngles value.``
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
 ## ``@see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(17)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mypalletizer_communicationMypalSetAngles*(b: seq[byte]): Ros1Mypalletizer_communicationMypalSetAngles =
 ## ``@brief Decode exactly one complete mypalletizer_communication/MypalSetAngles value.``
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
 ## ``@see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,17)
  result = readRos1Mypalletizer_communicationMypalSetAngles(r)
  finish(r)
type Ros1Mypalletizer_communicationMypalSetCoords* = object
 ## ``@brief Complete ROS 1 mypalletizer_communication/MypalSetCoords value.``
 ## ``@details All 6 declared fields are retained in source order. The canonical representation``
 ## ``occupies 18..18 bytes and is identified by``
 ## ``UWVMROS1_51a2d485c8d2252f184eb27724e88c1ae06002d54454bd8ebf31962a79f7c448.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `x`*: float32 ## ``@brief mypalletizer_communication/MypalSetCoords.x: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros1Mypalletizer_communicationMypalSetCoords;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `y`*: float32 ## ``@brief mypalletizer_communication/MypalSetCoords.y: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros1Mypalletizer_communicationMypalSetCoords;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `z`*: float32 ## ``@brief mypalletizer_communication/MypalSetCoords.z: float32. @details The generated``
                ## ``initializer supplies the declared zero/empty/nested default. Encoding preserves the``
                ## ``original field position and signedness; invalid bounds fail instead of truncating``
                ## ``the value. @units Use the units and frame/clock domain of the pinned native``
                ## ``definition. The codec performs no scaling, frame conversion or normalization.``
                ## ``@lifetime Retain referenced string/sequence backing storage for each encoding call.``
                ## ``Decoded borrowing and allocator ownership follow the enclosing decode function.``
                ## ``@see Ros1Mypalletizer_communicationMypalSetCoords;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rx`*: float32 ## ``@brief mypalletizer_communication/MypalSetCoords.rx: float32. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros1Mypalletizer_communicationMypalSetCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `speed`*: int8 ## ``@brief mypalletizer_communication/MypalSetCoords.speed: int8. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros1Mypalletizer_communicationMypalSetCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `model`*: int8 ## ``@brief mypalletizer_communication/MypalSetCoords.model: int8. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros1Mypalletizer_communicationMypalSetCoords;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationMypalSetCoordsMaximumWireBytes* = 18 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_communication/MypalSetCoords``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 18 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mypalletizer_communicationMypalSetCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationMypalSetCoordsCodecIdentity* = "UWVMROS1_51a2d485c8d2252f184eb27724e88c1ae06002d54454bd8ebf31962a79f7c448" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_communication/MypalSetCoords.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_51a2d485c8d2252f184eb27724e88c1ae06002d54454bd8ebf31962a79f7c448``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mypalletizer_communicationMypalSetCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationMypalSetCoordsNativeType* = "mypalletizer_communication/MypalSetCoords" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_communication/MypalSetCoords.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mypalletizer_communicationMypalSetCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationMypalSetCoordsNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_communication/MypalSetCoords.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mypalletizer_communicationMypalSetCoords;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mypalletizer_communicationMypalSetCoords*(): Ros1Mypalletizer_communicationMypalSetCoords =
 ## ``@brief Construct the declared defaults of mypalletizer_communication/MypalSetCoords.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/nim/API-CONTRACT.md``
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
  result.`rx` = 0
  result.`speed` = 0
  result.`model` = 0
proc writeFields*(value: Ros1Mypalletizer_communicationMypalSetCoords; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_communication/MypalSetCoords.``
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
 ## ``@see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`x`)
  putFloat32(w,value.`y`)
  putFloat32(w,value.`z`)
  putFloat32(w,value.`rx`)
  putInteger(w,value.`speed`)
  putInteger(w,value.`model`)
proc readRos1Mypalletizer_communicationMypalSetCoords*(r: var Reader): Ros1Mypalletizer_communicationMypalSetCoords =
 ## ``@brief Read the ordered canonical fields of mypalletizer_communication/MypalSetCoords.``
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
 ## ``@see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mypalletizer_communicationMypalSetCoords()
  result.`x` = getFloat32(r)
  result.`y` = getFloat32(r)
  result.`z` = getFloat32(r)
  result.`rx` = getFloat32(r)
  result.`speed` = getInteger(r,int8)
  result.`model` = getInteger(r,int8)
proc encode*(value: Ros1Mypalletizer_communicationMypalSetCoords): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_communication/MypalSetCoords value.``
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
 ## ``@see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(18)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mypalletizer_communicationMypalSetCoords*(b: seq[byte]): Ros1Mypalletizer_communicationMypalSetCoords =
 ## ``@brief Decode exactly one complete mypalletizer_communication/MypalSetCoords value.``
 ## ``@details Require the complete 18..18-byte canonical representation. Reject truncation,``
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
 ## ``@see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,18)
  result = readRos1Mypalletizer_communicationMypalSetCoords(r)
  finish(r)
type Ros1Mypalletizer_communicationGetAnglesRequest* = object
 ## ``@brief Complete ROS 1 mypalletizer_communication/GetAnglesRequest value.``
 ## ``@details All 0 declared fields are retained in source order. The canonical representation``
 ## ``occupies 0..0 bytes and is identified by``
 ## ``UWVMROS1_d0412d8ccc8f724f2a0660d20e24a39f6445f0cb433e775058b6b092fde65de8.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationGetAnglesRequestMaximumWireBytes* = 0 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_communication/GetAnglesRequest``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 0 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mypalletizer_communicationGetAnglesRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationGetAnglesRequestCodecIdentity* = "UWVMROS1_d0412d8ccc8f724f2a0660d20e24a39f6445f0cb433e775058b6b092fde65de8" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_communication/GetAnglesRequest.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_d0412d8ccc8f724f2a0660d20e24a39f6445f0cb433e775058b6b092fde65de8``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mypalletizer_communicationGetAnglesRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationGetAnglesRequestNativeType* = "mypalletizer_communication/GetAnglesRequest" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_communication/GetAnglesRequest.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mypalletizer_communicationGetAnglesRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationGetAnglesRequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_communication/GetAnglesRequest.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mypalletizer_communicationGetAnglesRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mypalletizer_communicationGetAnglesRequest*(): Ros1Mypalletizer_communicationGetAnglesRequest =
 ## ``@brief Construct the declared defaults of mypalletizer_communication/GetAnglesRequest.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc writeFields*(value: Ros1Mypalletizer_communicationGetAnglesRequest; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_communication/GetAnglesRequest.``
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
 ## ``@see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc readRos1Mypalletizer_communicationGetAnglesRequest*(r: var Reader): Ros1Mypalletizer_communicationGetAnglesRequest =
 ## ``@brief Read the ordered canonical fields of mypalletizer_communication/GetAnglesRequest.``
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
 ## ``@see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mypalletizer_communicationGetAnglesRequest()
proc encode*(value: Ros1Mypalletizer_communicationGetAnglesRequest): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_communication/GetAnglesRequest value.``
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
 ## ``@see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mypalletizer_communicationGetAnglesRequest*(b: seq[byte]): Ros1Mypalletizer_communicationGetAnglesRequest =
 ## ``@brief Decode exactly one complete mypalletizer_communication/GetAnglesRequest value.``
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
 ## ``@see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,0)
  result = readRos1Mypalletizer_communicationGetAnglesRequest(r)
  finish(r)
type Ros1Mypalletizer_communicationGetAnglesResponse* = object
 ## ``@brief Complete ROS 1 mypalletizer_communication/GetAnglesResponse value.``
 ## ``@details All 4 declared fields are retained in source order. The canonical representation``
 ## ``occupies 16..16 bytes and is identified by``
 ## ``UWVMROS1_cb5a18aec2420c030d8193eb40d25691a2491b98606a7722156984e82f77f745.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `joint_1`*: float32 ## ``@brief mypalletizer_communication/GetAnglesResponse.joint_1: float32.``
                      ## ``@details The generated initializer supplies the declared zero/empty/nested``
                      ## ``default. Encoding preserves the original field position and signedness;``
                      ## ``invalid bounds fail instead of truncating the value. @units Use the units and``
                      ## ``frame/clock domain of the pinned native definition. The codec performs no``
                      ## ``scaling, frame conversion or normalization. @lifetime Retain referenced``
                      ## ``string/sequence backing storage for each encoding call. Decoded borrowing and``
                      ## ``allocator ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mypalletizer_communicationGetAnglesResponse;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_2`*: float32 ## ``@brief mypalletizer_communication/GetAnglesResponse.joint_2: float32.``
                      ## ``@details The generated initializer supplies the declared zero/empty/nested``
                      ## ``default. Encoding preserves the original field position and signedness;``
                      ## ``invalid bounds fail instead of truncating the value. @units Use the units and``
                      ## ``frame/clock domain of the pinned native definition. The codec performs no``
                      ## ``scaling, frame conversion or normalization. @lifetime Retain referenced``
                      ## ``string/sequence backing storage for each encoding call. Decoded borrowing and``
                      ## ``allocator ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mypalletizer_communicationGetAnglesResponse;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_3`*: float32 ## ``@brief mypalletizer_communication/GetAnglesResponse.joint_3: float32.``
                      ## ``@details The generated initializer supplies the declared zero/empty/nested``
                      ## ``default. Encoding preserves the original field position and signedness;``
                      ## ``invalid bounds fail instead of truncating the value. @units Use the units and``
                      ## ``frame/clock domain of the pinned native definition. The codec performs no``
                      ## ``scaling, frame conversion or normalization. @lifetime Retain referenced``
                      ## ``string/sequence backing storage for each encoding call. Decoded borrowing and``
                      ## ``allocator ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mypalletizer_communicationGetAnglesResponse;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_4`*: float32 ## ``@brief mypalletizer_communication/GetAnglesResponse.joint_4: float32.``
                      ## ``@details The generated initializer supplies the declared zero/empty/nested``
                      ## ``default. Encoding preserves the original field position and signedness;``
                      ## ``invalid bounds fail instead of truncating the value. @units Use the units and``
                      ## ``frame/clock domain of the pinned native definition. The codec performs no``
                      ## ``scaling, frame conversion or normalization. @lifetime Retain referenced``
                      ## ``string/sequence backing storage for each encoding call. Decoded borrowing and``
                      ## ``allocator ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mypalletizer_communicationGetAnglesResponse;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationGetAnglesResponseMaximumWireBytes* = 16 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_communication/GetAnglesResponse``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 16 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mypalletizer_communicationGetAnglesResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationGetAnglesResponseCodecIdentity* = "UWVMROS1_cb5a18aec2420c030d8193eb40d25691a2491b98606a7722156984e82f77f745" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_communication/GetAnglesResponse.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_cb5a18aec2420c030d8193eb40d25691a2491b98606a7722156984e82f77f745``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mypalletizer_communicationGetAnglesResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationGetAnglesResponseNativeType* = "mypalletizer_communication/GetAnglesResponse" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_communication/GetAnglesResponse.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mypalletizer_communicationGetAnglesResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationGetAnglesResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_communication/GetAnglesResponse.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mypalletizer_communicationGetAnglesResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mypalletizer_communicationGetAnglesResponse*(): Ros1Mypalletizer_communicationGetAnglesResponse =
 ## ``@brief Construct the declared defaults of mypalletizer_communication/GetAnglesResponse.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mypalletizer_communicationGetAnglesResponse;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`joint_1` = 0
  result.`joint_2` = 0
  result.`joint_3` = 0
  result.`joint_4` = 0
proc writeFields*(value: Ros1Mypalletizer_communicationGetAnglesResponse; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_communication/GetAnglesResponse.``
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
 ## ``@see Ros1Mypalletizer_communicationGetAnglesResponse;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`joint_1`)
  putFloat32(w,value.`joint_2`)
  putFloat32(w,value.`joint_3`)
  putFloat32(w,value.`joint_4`)
proc readRos1Mypalletizer_communicationGetAnglesResponse*(r: var Reader): Ros1Mypalletizer_communicationGetAnglesResponse =
 ## ``@brief Read the ordered canonical fields of mypalletizer_communication/GetAnglesResponse.``
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
 ## ``@see Ros1Mypalletizer_communicationGetAnglesResponse;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mypalletizer_communicationGetAnglesResponse()
  result.`joint_1` = getFloat32(r)
  result.`joint_2` = getFloat32(r)
  result.`joint_3` = getFloat32(r)
  result.`joint_4` = getFloat32(r)
proc encode*(value: Ros1Mypalletizer_communicationGetAnglesResponse): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_communication/GetAnglesResponse value.``
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
 ## ``@see Ros1Mypalletizer_communicationGetAnglesResponse;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(16)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mypalletizer_communicationGetAnglesResponse*(b: seq[byte]): Ros1Mypalletizer_communicationGetAnglesResponse =
 ## ``@brief Decode exactly one complete mypalletizer_communication/GetAnglesResponse value.``
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
 ## ``@see Ros1Mypalletizer_communicationGetAnglesResponse;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,16)
  result = readRos1Mypalletizer_communicationGetAnglesResponse(r)
  finish(r)
type Ros1Mypalletizer_communicationGetCoordsRequest* = object
 ## ``@brief Complete ROS 1 mypalletizer_communication/GetCoordsRequest value.``
 ## ``@details All 0 declared fields are retained in source order. The canonical representation``
 ## ``occupies 0..0 bytes and is identified by``
 ## ``UWVMROS1_47d45419f14ce576d9e8c2bb288c7b67bb161115e7b99a2c4752d09cbb8087b8.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationGetCoordsRequestMaximumWireBytes* = 0 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_communication/GetCoordsRequest``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 0 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mypalletizer_communicationGetCoordsRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationGetCoordsRequestCodecIdentity* = "UWVMROS1_47d45419f14ce576d9e8c2bb288c7b67bb161115e7b99a2c4752d09cbb8087b8" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_communication/GetCoordsRequest.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_47d45419f14ce576d9e8c2bb288c7b67bb161115e7b99a2c4752d09cbb8087b8``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mypalletizer_communicationGetCoordsRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationGetCoordsRequestNativeType* = "mypalletizer_communication/GetCoordsRequest" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_communication/GetCoordsRequest.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mypalletizer_communicationGetCoordsRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationGetCoordsRequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_communication/GetCoordsRequest.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mypalletizer_communicationGetCoordsRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mypalletizer_communicationGetCoordsRequest*(): Ros1Mypalletizer_communicationGetCoordsRequest =
 ## ``@brief Construct the declared defaults of mypalletizer_communication/GetCoordsRequest.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc writeFields*(value: Ros1Mypalletizer_communicationGetCoordsRequest; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_communication/GetCoordsRequest.``
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
 ## ``@see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc readRos1Mypalletizer_communicationGetCoordsRequest*(r: var Reader): Ros1Mypalletizer_communicationGetCoordsRequest =
 ## ``@brief Read the ordered canonical fields of mypalletizer_communication/GetCoordsRequest.``
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
 ## ``@see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mypalletizer_communicationGetCoordsRequest()
proc encode*(value: Ros1Mypalletizer_communicationGetCoordsRequest): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_communication/GetCoordsRequest value.``
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
 ## ``@see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mypalletizer_communicationGetCoordsRequest*(b: seq[byte]): Ros1Mypalletizer_communicationGetCoordsRequest =
 ## ``@brief Decode exactly one complete mypalletizer_communication/GetCoordsRequest value.``
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
 ## ``@see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,0)
  result = readRos1Mypalletizer_communicationGetCoordsRequest(r)
  finish(r)
type Ros1Mypalletizer_communicationGetCoordsResponse* = object
 ## ``@brief Complete ROS 1 mypalletizer_communication/GetCoordsResponse value.``
 ## ``@details All 4 declared fields are retained in source order. The canonical representation``
 ## ``occupies 16..16 bytes and is identified by``
 ## ``UWVMROS1_7fdad367484b5f89c812c2513e99373844dcd160a115e326fb1c597f221b53fb.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `x`*: float32 ## ``@brief mypalletizer_communication/GetCoordsResponse.x: float32. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros1Mypalletizer_communicationGetCoordsResponse;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `y`*: float32 ## ``@brief mypalletizer_communication/GetCoordsResponse.y: float32. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros1Mypalletizer_communicationGetCoordsResponse;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `z`*: float32 ## ``@brief mypalletizer_communication/GetCoordsResponse.z: float32. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros1Mypalletizer_communicationGetCoordsResponse;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rx`*: float32 ## ``@brief mypalletizer_communication/GetCoordsResponse.rx: float32. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros1Mypalletizer_communicationGetCoordsResponse;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationGetCoordsResponseMaximumWireBytes* = 16 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_communication/GetCoordsResponse``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 16 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mypalletizer_communicationGetCoordsResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationGetCoordsResponseCodecIdentity* = "UWVMROS1_7fdad367484b5f89c812c2513e99373844dcd160a115e326fb1c597f221b53fb" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_communication/GetCoordsResponse.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_7fdad367484b5f89c812c2513e99373844dcd160a115e326fb1c597f221b53fb``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mypalletizer_communicationGetCoordsResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationGetCoordsResponseNativeType* = "mypalletizer_communication/GetCoordsResponse" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_communication/GetCoordsResponse.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mypalletizer_communicationGetCoordsResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationGetCoordsResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_communication/GetCoordsResponse.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mypalletizer_communicationGetCoordsResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mypalletizer_communicationGetCoordsResponse*(): Ros1Mypalletizer_communicationGetCoordsResponse =
 ## ``@brief Construct the declared defaults of mypalletizer_communication/GetCoordsResponse.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mypalletizer_communicationGetCoordsResponse;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
  result.`rx` = 0
proc writeFields*(value: Ros1Mypalletizer_communicationGetCoordsResponse; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_communication/GetCoordsResponse.``
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
 ## ``@see Ros1Mypalletizer_communicationGetCoordsResponse;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`x`)
  putFloat32(w,value.`y`)
  putFloat32(w,value.`z`)
  putFloat32(w,value.`rx`)
proc readRos1Mypalletizer_communicationGetCoordsResponse*(r: var Reader): Ros1Mypalletizer_communicationGetCoordsResponse =
 ## ``@brief Read the ordered canonical fields of mypalletizer_communication/GetCoordsResponse.``
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
 ## ``@see Ros1Mypalletizer_communicationGetCoordsResponse;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mypalletizer_communicationGetCoordsResponse()
  result.`x` = getFloat32(r)
  result.`y` = getFloat32(r)
  result.`z` = getFloat32(r)
  result.`rx` = getFloat32(r)
proc encode*(value: Ros1Mypalletizer_communicationGetCoordsResponse): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_communication/GetCoordsResponse value.``
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
 ## ``@see Ros1Mypalletizer_communicationGetCoordsResponse;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(16)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mypalletizer_communicationGetCoordsResponse*(b: seq[byte]): Ros1Mypalletizer_communicationGetCoordsResponse =
 ## ``@brief Decode exactly one complete mypalletizer_communication/GetCoordsResponse value.``
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
 ## ``@see Ros1Mypalletizer_communicationGetCoordsResponse;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,16)
  result = readRos1Mypalletizer_communicationGetCoordsResponse(r)
  finish(r)
type Ros1Mypalletizer_communicationGripperStatusRequest* = object
 ## ``@brief Complete ROS 1 mypalletizer_communication/GripperStatusRequest value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_48d661f8fd6adfcf1703123464fcfb9351f8f831c0779ffad103a63bcf7ea709.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `Status`*: bool ## ``@brief mypalletizer_communication/GripperStatusRequest.Status: bool. @details The``
                  ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                  ## ``preserves the original field position and signedness; invalid bounds fail instead``
                  ## ``of truncating the value. @units Use the units and frame/clock domain of the``
                  ## ``pinned native definition. The codec performs no scaling, frame conversion or``
                  ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                  ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                  ## ``enclosing decode function. @see``
                  ## ``Ros1Mypalletizer_communicationGripperStatusRequest;``
                  ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationGripperStatusRequestMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_communication/GripperStatusRequest``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mypalletizer_communicationGripperStatusRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationGripperStatusRequestCodecIdentity* = "UWVMROS1_48d661f8fd6adfcf1703123464fcfb9351f8f831c0779ffad103a63bcf7ea709" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_communication/GripperStatusRequest.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_48d661f8fd6adfcf1703123464fcfb9351f8f831c0779ffad103a63bcf7ea709``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mypalletizer_communicationGripperStatusRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationGripperStatusRequestNativeType* = "mypalletizer_communication/GripperStatusRequest" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_communication/GripperStatusRequest.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mypalletizer_communicationGripperStatusRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationGripperStatusRequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_communication/GripperStatusRequest.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mypalletizer_communicationGripperStatusRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mypalletizer_communicationGripperStatusRequest*(): Ros1Mypalletizer_communicationGripperStatusRequest =
 ## ``@brief Construct the declared defaults of mypalletizer_communication/GripperStatusRequest.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mypalletizer_communicationGripperStatusRequest;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`Status` = false
proc writeFields*(value: Ros1Mypalletizer_communicationGripperStatusRequest; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_communication/GripperStatusRequest.``
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
 ## ``@see Ros1Mypalletizer_communicationGripperStatusRequest;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`Status`)
proc readRos1Mypalletizer_communicationGripperStatusRequest*(r: var Reader): Ros1Mypalletizer_communicationGripperStatusRequest =
 ## ``@brief Read the ordered canonical fields of``
 ## ``mypalletizer_communication/GripperStatusRequest.``
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
 ## ``@see Ros1Mypalletizer_communicationGripperStatusRequest;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mypalletizer_communicationGripperStatusRequest()
  result.`Status` = getBool(r)
proc encode*(value: Ros1Mypalletizer_communicationGripperStatusRequest): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_communication/GripperStatusRequest value.``
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
 ## ``@see Ros1Mypalletizer_communicationGripperStatusRequest;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mypalletizer_communicationGripperStatusRequest*(b: seq[byte]): Ros1Mypalletizer_communicationGripperStatusRequest =
 ## ``@brief Decode exactly one complete mypalletizer_communication/GripperStatusRequest value.``
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
 ## ``@see Ros1Mypalletizer_communicationGripperStatusRequest;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos1Mypalletizer_communicationGripperStatusRequest(r)
  finish(r)
type Ros1Mypalletizer_communicationGripperStatusResponse* = object
 ## ``@brief Complete ROS 1 mypalletizer_communication/GripperStatusResponse value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_00ab8ceb190b588a9420c2e044da64857cfdb76e709e40e57835ab5732074e2b.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `Flag`*: bool ## ``@brief mypalletizer_communication/GripperStatusResponse.Flag: bool. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros1Mypalletizer_communicationGripperStatusResponse;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationGripperStatusResponseMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_communication/GripperStatusResponse``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mypalletizer_communicationGripperStatusResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationGripperStatusResponseCodecIdentity* = "UWVMROS1_00ab8ceb190b588a9420c2e044da64857cfdb76e709e40e57835ab5732074e2b" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_communication/GripperStatusResponse.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_00ab8ceb190b588a9420c2e044da64857cfdb76e709e40e57835ab5732074e2b``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mypalletizer_communicationGripperStatusResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationGripperStatusResponseNativeType* = "mypalletizer_communication/GripperStatusResponse" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_communication/GripperStatusResponse.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mypalletizer_communicationGripperStatusResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationGripperStatusResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_communication/GripperStatusResponse.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mypalletizer_communicationGripperStatusResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mypalletizer_communicationGripperStatusResponse*(): Ros1Mypalletizer_communicationGripperStatusResponse =
 ## ``@brief Construct the declared defaults of mypalletizer_communication/GripperStatusResponse.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mypalletizer_communicationGripperStatusResponse;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`Flag` = false
proc writeFields*(value: Ros1Mypalletizer_communicationGripperStatusResponse; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_communication/GripperStatusResponse.``
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
 ## ``@see Ros1Mypalletizer_communicationGripperStatusResponse;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`Flag`)
proc readRos1Mypalletizer_communicationGripperStatusResponse*(r: var Reader): Ros1Mypalletizer_communicationGripperStatusResponse =
 ## ``@brief Read the ordered canonical fields of``
 ## ``mypalletizer_communication/GripperStatusResponse.``
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
 ## ``@see Ros1Mypalletizer_communicationGripperStatusResponse;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mypalletizer_communicationGripperStatusResponse()
  result.`Flag` = getBool(r)
proc encode*(value: Ros1Mypalletizer_communicationGripperStatusResponse): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_communication/GripperStatusResponse value.``
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
 ## ``@see Ros1Mypalletizer_communicationGripperStatusResponse;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mypalletizer_communicationGripperStatusResponse*(b: seq[byte]): Ros1Mypalletizer_communicationGripperStatusResponse =
 ## ``@brief Decode exactly one complete mypalletizer_communication/GripperStatusResponse value.``
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
 ## ``@see Ros1Mypalletizer_communicationGripperStatusResponse;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos1Mypalletizer_communicationGripperStatusResponse(r)
  finish(r)
type Ros1Mypalletizer_communicationPumpStatusRequest* = object
 ## ``@brief Complete ROS 1 mypalletizer_communication/PumpStatusRequest value.``
 ## ``@details All 3 declared fields are retained in source order. The canonical representation``
 ## ``occupies 3..3 bytes and is identified by``
 ## ``UWVMROS1_6dd70636864c4450a066c1d75e67643331fac4c3e1625bce1b94c85ce7a35636.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `Status`*: bool ## ``@brief mypalletizer_communication/PumpStatusRequest.Status: bool. @details The``
                  ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                  ## ``preserves the original field position and signedness; invalid bounds fail instead``
                  ## ``of truncating the value. @units Use the units and frame/clock domain of the``
                  ## ``pinned native definition. The codec performs no scaling, frame conversion or``
                  ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                  ## ``each encoding call. Decoded borrowing and allocator ownership follow the``
                  ## ``enclosing decode function. @see Ros1Mypalletizer_communicationPumpStatusRequest;``
                  ## ``share/platform/ros/nim/API-CONTRACT.md``
  `Pin1`*: int8 ## ``@brief mypalletizer_communication/PumpStatusRequest.Pin1: int8. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros1Mypalletizer_communicationPumpStatusRequest;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `Pin2`*: int8 ## ``@brief mypalletizer_communication/PumpStatusRequest.Pin2: int8. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros1Mypalletizer_communicationPumpStatusRequest;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationPumpStatusRequestMaximumWireBytes* = 3 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_communication/PumpStatusRequest``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 3 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mypalletizer_communicationPumpStatusRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationPumpStatusRequestCodecIdentity* = "UWVMROS1_6dd70636864c4450a066c1d75e67643331fac4c3e1625bce1b94c85ce7a35636" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_communication/PumpStatusRequest.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_6dd70636864c4450a066c1d75e67643331fac4c3e1625bce1b94c85ce7a35636``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mypalletizer_communicationPumpStatusRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationPumpStatusRequestNativeType* = "mypalletizer_communication/PumpStatusRequest" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_communication/PumpStatusRequest.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mypalletizer_communicationPumpStatusRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationPumpStatusRequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_communication/PumpStatusRequest.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mypalletizer_communicationPumpStatusRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mypalletizer_communicationPumpStatusRequest*(): Ros1Mypalletizer_communicationPumpStatusRequest =
 ## ``@brief Construct the declared defaults of mypalletizer_communication/PumpStatusRequest.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mypalletizer_communicationPumpStatusRequest;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`Status` = false
  result.`Pin1` = 0
  result.`Pin2` = 0
proc writeFields*(value: Ros1Mypalletizer_communicationPumpStatusRequest; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_communication/PumpStatusRequest.``
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
 ## ``@see Ros1Mypalletizer_communicationPumpStatusRequest;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`Status`)
  putInteger(w,value.`Pin1`)
  putInteger(w,value.`Pin2`)
proc readRos1Mypalletizer_communicationPumpStatusRequest*(r: var Reader): Ros1Mypalletizer_communicationPumpStatusRequest =
 ## ``@brief Read the ordered canonical fields of mypalletizer_communication/PumpStatusRequest.``
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
 ## ``@see Ros1Mypalletizer_communicationPumpStatusRequest;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mypalletizer_communicationPumpStatusRequest()
  result.`Status` = getBool(r)
  result.`Pin1` = getInteger(r,int8)
  result.`Pin2` = getInteger(r,int8)
proc encode*(value: Ros1Mypalletizer_communicationPumpStatusRequest): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_communication/PumpStatusRequest value.``
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
 ## ``@see Ros1Mypalletizer_communicationPumpStatusRequest;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(3)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mypalletizer_communicationPumpStatusRequest*(b: seq[byte]): Ros1Mypalletizer_communicationPumpStatusRequest =
 ## ``@brief Decode exactly one complete mypalletizer_communication/PumpStatusRequest value.``
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
 ## ``@see Ros1Mypalletizer_communicationPumpStatusRequest;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,3)
  result = readRos1Mypalletizer_communicationPumpStatusRequest(r)
  finish(r)
type Ros1Mypalletizer_communicationPumpStatusResponse* = object
 ## ``@brief Complete ROS 1 mypalletizer_communication/PumpStatusResponse value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_c2503f89c84c49db8dab2ac9f847ba9d09434d366fd8916a7d5f30ea161bb4c5.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `Flag`*: bool ## ``@brief mypalletizer_communication/PumpStatusResponse.Flag: bool. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros1Mypalletizer_communicationPumpStatusResponse;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationPumpStatusResponseMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_communication/PumpStatusResponse``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mypalletizer_communicationPumpStatusResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationPumpStatusResponseCodecIdentity* = "UWVMROS1_c2503f89c84c49db8dab2ac9f847ba9d09434d366fd8916a7d5f30ea161bb4c5" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_communication/PumpStatusResponse.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_c2503f89c84c49db8dab2ac9f847ba9d09434d366fd8916a7d5f30ea161bb4c5``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mypalletizer_communicationPumpStatusResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationPumpStatusResponseNativeType* = "mypalletizer_communication/PumpStatusResponse" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_communication/PumpStatusResponse.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mypalletizer_communicationPumpStatusResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationPumpStatusResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_communication/PumpStatusResponse.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mypalletizer_communicationPumpStatusResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mypalletizer_communicationPumpStatusResponse*(): Ros1Mypalletizer_communicationPumpStatusResponse =
 ## ``@brief Construct the declared defaults of mypalletizer_communication/PumpStatusResponse.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mypalletizer_communicationPumpStatusResponse;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`Flag` = false
proc writeFields*(value: Ros1Mypalletizer_communicationPumpStatusResponse; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_communication/PumpStatusResponse.``
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
 ## ``@see Ros1Mypalletizer_communicationPumpStatusResponse;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`Flag`)
proc readRos1Mypalletizer_communicationPumpStatusResponse*(r: var Reader): Ros1Mypalletizer_communicationPumpStatusResponse =
 ## ``@brief Read the ordered canonical fields of mypalletizer_communication/PumpStatusResponse.``
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
 ## ``@see Ros1Mypalletizer_communicationPumpStatusResponse;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mypalletizer_communicationPumpStatusResponse()
  result.`Flag` = getBool(r)
proc encode*(value: Ros1Mypalletizer_communicationPumpStatusResponse): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_communication/PumpStatusResponse value.``
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
 ## ``@see Ros1Mypalletizer_communicationPumpStatusResponse;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mypalletizer_communicationPumpStatusResponse*(b: seq[byte]): Ros1Mypalletizer_communicationPumpStatusResponse =
 ## ``@brief Decode exactly one complete mypalletizer_communication/PumpStatusResponse value.``
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
 ## ``@see Ros1Mypalletizer_communicationPumpStatusResponse;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos1Mypalletizer_communicationPumpStatusResponse(r)
  finish(r)
type Ros1Mypalletizer_communicationSetAnglesRequest* = object
 ## ``@brief Complete ROS 1 mypalletizer_communication/SetAnglesRequest value.``
 ## ``@details All 5 declared fields are retained in source order. The canonical representation``
 ## ``occupies 17..17 bytes and is identified by``
 ## ``UWVMROS1_32072510c6deddb3f372b5f300068ea457916a4e0397b30951e421a1da641d5d.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `joint_1`*: float32 ## ``@brief mypalletizer_communication/SetAnglesRequest.joint_1: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mypalletizer_communicationSetAnglesRequest;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_2`*: float32 ## ``@brief mypalletizer_communication/SetAnglesRequest.joint_2: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mypalletizer_communicationSetAnglesRequest;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_3`*: float32 ## ``@brief mypalletizer_communication/SetAnglesRequest.joint_3: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mypalletizer_communicationSetAnglesRequest;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `joint_4`*: float32 ## ``@brief mypalletizer_communication/SetAnglesRequest.joint_4: float32. @details``
                      ## ``The generated initializer supplies the declared zero/empty/nested default.``
                      ## ``Encoding preserves the original field position and signedness; invalid bounds``
                      ## ``fail instead of truncating the value. @units Use the units and frame/clock``
                      ## ``domain of the pinned native definition. The codec performs no scaling, frame``
                      ## ``conversion or normalization. @lifetime Retain referenced string/sequence``
                      ## ``backing storage for each encoding call. Decoded borrowing and allocator``
                      ## ``ownership follow the enclosing decode function. @see``
                      ## ``Ros1Mypalletizer_communicationSetAnglesRequest;``
                      ## ``share/platform/ros/nim/API-CONTRACT.md``
  `speed`*: int8 ## ``@brief mypalletizer_communication/SetAnglesRequest.speed: int8. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros1Mypalletizer_communicationSetAnglesRequest;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationSetAnglesRequestMaximumWireBytes* = 17 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_communication/SetAnglesRequest``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 17 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mypalletizer_communicationSetAnglesRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationSetAnglesRequestCodecIdentity* = "UWVMROS1_32072510c6deddb3f372b5f300068ea457916a4e0397b30951e421a1da641d5d" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_communication/SetAnglesRequest.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_32072510c6deddb3f372b5f300068ea457916a4e0397b30951e421a1da641d5d``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mypalletizer_communicationSetAnglesRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationSetAnglesRequestNativeType* = "mypalletizer_communication/SetAnglesRequest" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_communication/SetAnglesRequest.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mypalletizer_communicationSetAnglesRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationSetAnglesRequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_communication/SetAnglesRequest.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mypalletizer_communicationSetAnglesRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mypalletizer_communicationSetAnglesRequest*(): Ros1Mypalletizer_communicationSetAnglesRequest =
 ## ``@brief Construct the declared defaults of mypalletizer_communication/SetAnglesRequest.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/nim/API-CONTRACT.md``
  result.`joint_1` = 0
  result.`joint_2` = 0
  result.`joint_3` = 0
  result.`joint_4` = 0
  result.`speed` = 0
proc writeFields*(value: Ros1Mypalletizer_communicationSetAnglesRequest; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_communication/SetAnglesRequest.``
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
 ## ``@see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`joint_1`)
  putFloat32(w,value.`joint_2`)
  putFloat32(w,value.`joint_3`)
  putFloat32(w,value.`joint_4`)
  putInteger(w,value.`speed`)
proc readRos1Mypalletizer_communicationSetAnglesRequest*(r: var Reader): Ros1Mypalletizer_communicationSetAnglesRequest =
 ## ``@brief Read the ordered canonical fields of mypalletizer_communication/SetAnglesRequest.``
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
 ## ``@see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mypalletizer_communicationSetAnglesRequest()
  result.`joint_1` = getFloat32(r)
  result.`joint_2` = getFloat32(r)
  result.`joint_3` = getFloat32(r)
  result.`joint_4` = getFloat32(r)
  result.`speed` = getInteger(r,int8)
proc encode*(value: Ros1Mypalletizer_communicationSetAnglesRequest): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_communication/SetAnglesRequest value.``
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
 ## ``@see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(17)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mypalletizer_communicationSetAnglesRequest*(b: seq[byte]): Ros1Mypalletizer_communicationSetAnglesRequest =
 ## ``@brief Decode exactly one complete mypalletizer_communication/SetAnglesRequest value.``
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
 ## ``@see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,17)
  result = readRos1Mypalletizer_communicationSetAnglesRequest(r)
  finish(r)
type Ros1Mypalletizer_communicationSetAnglesResponse* = object
 ## ``@brief Complete ROS 1 mypalletizer_communication/SetAnglesResponse value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_1472b47adc3171a9f1938e52bc937af6dd6bb720d33e163b70ae066a89a3211c.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `Flag`*: bool ## ``@brief mypalletizer_communication/SetAnglesResponse.Flag: bool. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros1Mypalletizer_communicationSetAnglesResponse;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationSetAnglesResponseMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_communication/SetAnglesResponse``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mypalletizer_communicationSetAnglesResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationSetAnglesResponseCodecIdentity* = "UWVMROS1_1472b47adc3171a9f1938e52bc937af6dd6bb720d33e163b70ae066a89a3211c" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_communication/SetAnglesResponse.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_1472b47adc3171a9f1938e52bc937af6dd6bb720d33e163b70ae066a89a3211c``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mypalletizer_communicationSetAnglesResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationSetAnglesResponseNativeType* = "mypalletizer_communication/SetAnglesResponse" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_communication/SetAnglesResponse.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mypalletizer_communicationSetAnglesResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationSetAnglesResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_communication/SetAnglesResponse.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mypalletizer_communicationSetAnglesResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mypalletizer_communicationSetAnglesResponse*(): Ros1Mypalletizer_communicationSetAnglesResponse =
 ## ``@brief Construct the declared defaults of mypalletizer_communication/SetAnglesResponse.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mypalletizer_communicationSetAnglesResponse;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`Flag` = false
proc writeFields*(value: Ros1Mypalletizer_communicationSetAnglesResponse; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_communication/SetAnglesResponse.``
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
 ## ``@see Ros1Mypalletizer_communicationSetAnglesResponse;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`Flag`)
proc readRos1Mypalletizer_communicationSetAnglesResponse*(r: var Reader): Ros1Mypalletizer_communicationSetAnglesResponse =
 ## ``@brief Read the ordered canonical fields of mypalletizer_communication/SetAnglesResponse.``
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
 ## ``@see Ros1Mypalletizer_communicationSetAnglesResponse;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mypalletizer_communicationSetAnglesResponse()
  result.`Flag` = getBool(r)
proc encode*(value: Ros1Mypalletizer_communicationSetAnglesResponse): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_communication/SetAnglesResponse value.``
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
 ## ``@see Ros1Mypalletizer_communicationSetAnglesResponse;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mypalletizer_communicationSetAnglesResponse*(b: seq[byte]): Ros1Mypalletizer_communicationSetAnglesResponse =
 ## ``@brief Decode exactly one complete mypalletizer_communication/SetAnglesResponse value.``
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
 ## ``@see Ros1Mypalletizer_communicationSetAnglesResponse;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos1Mypalletizer_communicationSetAnglesResponse(r)
  finish(r)
type Ros1Mypalletizer_communicationSetCoordsRequest* = object
 ## ``@brief Complete ROS 1 mypalletizer_communication/SetCoordsRequest value.``
 ## ``@details All 6 declared fields are retained in source order. The canonical representation``
 ## ``occupies 18..18 bytes and is identified by``
 ## ``UWVMROS1_2d608cac1a7129ca5cd68ff52170ed40258cb6d199f4842a268a1d7570f9bda1.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `x`*: float32 ## ``@brief mypalletizer_communication/SetCoordsRequest.x: float32. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros1Mypalletizer_communicationSetCoordsRequest;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `y`*: float32 ## ``@brief mypalletizer_communication/SetCoordsRequest.y: float32. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros1Mypalletizer_communicationSetCoordsRequest;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `z`*: float32 ## ``@brief mypalletizer_communication/SetCoordsRequest.z: float32. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros1Mypalletizer_communicationSetCoordsRequest;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
  `rx`*: float32 ## ``@brief mypalletizer_communication/SetCoordsRequest.rx: float32. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros1Mypalletizer_communicationSetCoordsRequest;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `speed`*: int8 ## ``@brief mypalletizer_communication/SetCoordsRequest.speed: int8. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros1Mypalletizer_communicationSetCoordsRequest;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
  `model`*: int8 ## ``@brief mypalletizer_communication/SetCoordsRequest.model: int8. @details The``
                 ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                 ## ``preserves the original field position and signedness; invalid bounds fail instead``
                 ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                 ## ``native definition. The codec performs no scaling, frame conversion or``
                 ## ``normalization. @lifetime Retain referenced string/sequence backing storage for``
                 ## ``each encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                 ## ``decode function. @see Ros1Mypalletizer_communicationSetCoordsRequest;``
                 ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationSetCoordsRequestMaximumWireBytes* = 18 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_communication/SetCoordsRequest``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 18 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mypalletizer_communicationSetCoordsRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationSetCoordsRequestCodecIdentity* = "UWVMROS1_2d608cac1a7129ca5cd68ff52170ed40258cb6d199f4842a268a1d7570f9bda1" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_communication/SetCoordsRequest.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_2d608cac1a7129ca5cd68ff52170ed40258cb6d199f4842a268a1d7570f9bda1``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mypalletizer_communicationSetCoordsRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationSetCoordsRequestNativeType* = "mypalletizer_communication/SetCoordsRequest" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_communication/SetCoordsRequest.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mypalletizer_communicationSetCoordsRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationSetCoordsRequestNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_communication/SetCoordsRequest.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mypalletizer_communicationSetCoordsRequest;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mypalletizer_communicationSetCoordsRequest*(): Ros1Mypalletizer_communicationSetCoordsRequest =
 ## ``@brief Construct the declared defaults of mypalletizer_communication/SetCoordsRequest.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/nim/API-CONTRACT.md``
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
  result.`rx` = 0
  result.`speed` = 0
  result.`model` = 0
proc writeFields*(value: Ros1Mypalletizer_communicationSetCoordsRequest; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_communication/SetCoordsRequest.``
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
 ## ``@see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`x`)
  putFloat32(w,value.`y`)
  putFloat32(w,value.`z`)
  putFloat32(w,value.`rx`)
  putInteger(w,value.`speed`)
  putInteger(w,value.`model`)
proc readRos1Mypalletizer_communicationSetCoordsRequest*(r: var Reader): Ros1Mypalletizer_communicationSetCoordsRequest =
 ## ``@brief Read the ordered canonical fields of mypalletizer_communication/SetCoordsRequest.``
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
 ## ``@see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mypalletizer_communicationSetCoordsRequest()
  result.`x` = getFloat32(r)
  result.`y` = getFloat32(r)
  result.`z` = getFloat32(r)
  result.`rx` = getFloat32(r)
  result.`speed` = getInteger(r,int8)
  result.`model` = getInteger(r,int8)
proc encode*(value: Ros1Mypalletizer_communicationSetCoordsRequest): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_communication/SetCoordsRequest value.``
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
 ## ``@see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(18)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mypalletizer_communicationSetCoordsRequest*(b: seq[byte]): Ros1Mypalletizer_communicationSetCoordsRequest =
 ## ``@brief Decode exactly one complete mypalletizer_communication/SetCoordsRequest value.``
 ## ``@details Require the complete 18..18-byte canonical representation. Reject truncation,``
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
 ## ``@see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,18)
  result = readRos1Mypalletizer_communicationSetCoordsRequest(r)
  finish(r)
type Ros1Mypalletizer_communicationSetCoordsResponse* = object
 ## ``@brief Complete ROS 1 mypalletizer_communication/SetCoordsResponse value.``
 ## ``@details All 1 declared fields are retained in source order. The canonical representation``
 ## ``occupies 1..1 bytes and is identified by``
 ## ``UWVMROS1_86900f8772e9609e1d2b882b6ab613ce9609be6c589e5b9574a57b8749231308.``
 ## ``@native No native identity is established by this source record.``
 ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
 ## ``creates no publisher, subscriber, service or Action owner.``
 ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
 ## ``callback; mutable readers/writers must not be shared during a call.``
 ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
 ## ``grant.``
 ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
 ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `Flag`*: bool ## ``@brief mypalletizer_communication/SetCoordsResponse.Flag: bool. @details The``
                ## ``generated initializer supplies the declared zero/empty/nested default. Encoding``
                ## ``preserves the original field position and signedness; invalid bounds fail instead``
                ## ``of truncating the value. @units Use the units and frame/clock domain of the pinned``
                ## ``native definition. The codec performs no scaling, frame conversion or``
                ## ``normalization. @lifetime Retain referenced string/sequence backing storage for each``
                ## ``encoding call. Decoded borrowing and allocator ownership follow the enclosing``
                ## ``decode function. @see Ros1Mypalletizer_communicationSetCoordsResponse;``
                ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationSetCoordsResponseMaximumWireBytes* = 1 ## ``@brief Maximum canonical extent``
    ## ``of``
    ## ``mypalletizer_communication/SetCoordsResponse``
    ## ``in bytes. @details The inclusive``
    ## ``bound is 1 bytes for this``
    ## ``selected profile; it is not a``
    ## ``native sizeof or a queue``
    ## ``reservation. @see``
    ## ``Ros1Mypalletizer_communicationSetCoordsResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationSetCoordsResponseCodecIdentity* = "UWVMROS1_86900f8772e9609e1d2b882b6ab613ce9609be6c589e5b9574a57b8749231308" ## ``@brief Canonical codec identity``
    ## ``of``
    ## ``mypalletizer_communication/SetCoordsResponse.``
    ## ``@details Exact identity``
    ## ``UWVMROS1_86900f8772e9609e1d2b882b6ab613ce9609be6c589e5b9574a57b8749231308``
    ## ``binds field order, shape and``
    ## ``bounds. It does not replace the``
    ## ``native type identity. @see``
    ## ``Ros1Mypalletizer_communicationSetCoordsResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationSetCoordsResponseNativeType* = "mypalletizer_communication/SetCoordsResponse" ## ``@brief Original ROS type name``
    ## ``for``
    ## ``mypalletizer_communication/SetCoordsResponse.``
    ## ``@details This exact name is``
    ## ``descriptive and cannot select a``
    ## ``different alias, endpoint or``
    ## ``resource. @see``
    ## ``Ros1Mypalletizer_communicationSetCoordsResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
const Ros1Mypalletizer_communicationSetCoordsResponseNativeIdentity* = "" ## ``@brief Selected original native``
    ## ``identity for``
    ## ``mypalletizer_communication/SetCoordsResponse.``
    ## ``@details Absent: this source``
    ## ``profile establishes no native``
    ## ``identity. @see``
    ## ``Ros1Mypalletizer_communicationSetCoordsResponse;``
    ## ``share/platform/ros/nim/API-CONTRACT.md``
proc initRos1Mypalletizer_communicationSetCoordsResponse*(): Ros1Mypalletizer_communicationSetCoordsResponse =
 ## ``@brief Construct the declared defaults of mypalletizer_communication/SetCoordsResponse.``
 ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
 ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
 ## ``default.``
 ## ``@return A fresh ordinary value with all generated defaults.``
 ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
 ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
 ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
 ## ``independently.``
 ## ``@see Ros1Mypalletizer_communicationSetCoordsResponse;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`Flag` = false
proc writeFields*(value: Ros1Mypalletizer_communicationSetCoordsResponse; w: var Writer) =
 ## ``@brief Append every canonical field of mypalletizer_communication/SetCoordsResponse.``
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
 ## ``@see Ros1Mypalletizer_communicationSetCoordsResponse;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`Flag`)
proc readRos1Mypalletizer_communicationSetCoordsResponse*(r: var Reader): Ros1Mypalletizer_communicationSetCoordsResponse =
 ## ``@brief Read the ordered canonical fields of mypalletizer_communication/SetCoordsResponse.``
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
 ## ``@see Ros1Mypalletizer_communicationSetCoordsResponse;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos1Mypalletizer_communicationSetCoordsResponse()
  result.`Flag` = getBool(r)
proc encode*(value: Ros1Mypalletizer_communicationSetCoordsResponse): seq[byte] =
 ## ``@brief Encode one complete mypalletizer_communication/SetCoordsResponse value.``
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
 ## ``@see Ros1Mypalletizer_communicationSetCoordsResponse;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Mypalletizer_communicationSetCoordsResponse*(b: seq[byte]): Ros1Mypalletizer_communicationSetCoordsResponse =
 ## ``@brief Decode exactly one complete mypalletizer_communication/SetCoordsResponse value.``
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
 ## ``@see Ros1Mypalletizer_communicationSetCoordsResponse;``
 ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos1Mypalletizer_communicationSetCoordsResponse(r)
  finish(r)
