## @file records.nim
## @brief Complete owned original clearpath ROS 2 native records and codecs.
## @details Generated from the admitted source-pinned catalog; no ROS authority is created.
import native/nim/wire

## @brief Complete clearpath_motor_msgs/action/LynxCalibrate_Goal value.
## @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal* = object
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_motor_msgsActionLynxCalibrate_Goal*(): Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsActionLynxCalibrate_GoalMinimumWireBytes* = 0
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsActionLynxCalibrate_GoalMaximumWireBytes* = 0
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_motor_msgsActionLynxCalibrate_GoalCodecIdentity* = "UWVMROS1_61b01a6234b41f96464de9449b3e8d1b955decf6afa12aa3ba94062c98cec681"
## @brief Encode every field of complete clearpath_motor_msgs/action/LynxCalibrate_Goal.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 0, written)
## @brief Decode every field of complete clearpath_motor_msgs/action/LynxCalibrate_Goal.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_motor_msgsActionLynxCalibrate_Goal*(bytes: openArray[byte]; value: var Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal): uint32 =
  wire.decode(bytes, 0, 0, value)

## @brief Complete clearpath_motor_msgs/action/LynxCalibrate_Result value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 4..12 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_motor_msgsActionLynxCalibrate_Result* = object
    ## @brief Original clearpath_motor_msgs/action/LynxCalibrate_Result.offset field.
    ## @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
    ## or copying it creates no native ROS owner.
    field_offset*: NativeSequence[float32, 2]
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_motor_msgsActionLynxCalibrate_Result*(): Ros2Clearpath_motor_msgsActionLynxCalibrate_Result =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsActionLynxCalibrate_ResultMinimumWireBytes* = 4
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsActionLynxCalibrate_ResultMaximumWireBytes* = 12
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_motor_msgsActionLynxCalibrate_ResultCodecIdentity* = "UWVMROS1_686450363b8b15eba1e9e9e9ff05c9aacfb95bb0d113eaa7c443e4c70d55d41f"
## @brief Encode every field of complete clearpath_motor_msgs/action/LynxCalibrate_Result.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_motor_msgsActionLynxCalibrate_Result; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 12, written)
## @brief Decode every field of complete clearpath_motor_msgs/action/LynxCalibrate_Result.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_motor_msgsActionLynxCalibrate_Result*(bytes: openArray[byte]; value: var Ros2Clearpath_motor_msgsActionLynxCalibrate_Result): uint32 =
  wire.decode(bytes, 4, 12, value)

## @brief Complete clearpath_motor_msgs/action/LynxCalibrate_Feedback value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 4..8 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback* = object
    ## @brief Original clearpath_motor_msgs/action/LynxCalibrate_Feedback.iteration field.
    ## @details Original type uint16. Shape sequence; bound/count 2 elements. Preserve declared
    ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
    ## or copying it creates no native ROS owner.
    field_iteration*: NativeSequence[uint16, 2]
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_motor_msgsActionLynxCalibrate_Feedback*(): Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsActionLynxCalibrate_FeedbackMinimumWireBytes* = 4
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsActionLynxCalibrate_FeedbackMaximumWireBytes* = 8
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_motor_msgsActionLynxCalibrate_FeedbackCodecIdentity* = "UWVMROS1_ebe7badd3f72982079911d8aa72c4ddd27ff0a12d2f948e5970649317a592b53"
## @brief Encode every field of complete clearpath_motor_msgs/action/LynxCalibrate_Feedback.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 8, written)
## @brief Decode every field of complete clearpath_motor_msgs/action/LynxCalibrate_Feedback.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_motor_msgsActionLynxCalibrate_Feedback*(bytes: openArray[byte]; value: var Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback): uint32 =
  wire.decode(bytes, 4, 8, value)

## @brief Complete clearpath_motor_msgs/action/LynxUpdate_Goal value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 4..260 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_motor_msgsActionLynxUpdate_Goal* = object
    ## @brief Original clearpath_motor_msgs/action/LynxUpdate_Goal.file field.
    ## @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_file*: NativeText[256, false]
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_motor_msgsActionLynxUpdate_Goal*(): Ros2Clearpath_motor_msgsActionLynxUpdate_Goal =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsActionLynxUpdate_GoalMinimumWireBytes* = 4
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsActionLynxUpdate_GoalMaximumWireBytes* = 260
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_motor_msgsActionLynxUpdate_GoalCodecIdentity* = "UWVMROS1_f0362f8a90391e8ffda2e8f3b798769b644091058361882c4e9457196f007565"
## @brief Encode every field of complete clearpath_motor_msgs/action/LynxUpdate_Goal.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_motor_msgsActionLynxUpdate_Goal; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 260, written)
## @brief Decode every field of complete clearpath_motor_msgs/action/LynxUpdate_Goal.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_motor_msgsActionLynxUpdate_Goal*(bytes: openArray[byte]; value: var Ros2Clearpath_motor_msgsActionLynxUpdate_Goal): uint32 =
  wire.decode(bytes, 4, 260, value)

## @brief Complete clearpath_motor_msgs/action/LynxUpdate_Result value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 4..6 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_motor_msgsActionLynxUpdate_Result* = object
    ## @brief Original clearpath_motor_msgs/action/LynxUpdate_Result.success field.
    ## @details Original type bool. Shape sequence; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_success*: NativeSequence[bool, 2]
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_motor_msgsActionLynxUpdate_Result*(): Ros2Clearpath_motor_msgsActionLynxUpdate_Result =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsActionLynxUpdate_ResultMinimumWireBytes* = 4
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsActionLynxUpdate_ResultMaximumWireBytes* = 6
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_motor_msgsActionLynxUpdate_ResultCodecIdentity* = "UWVMROS1_126fe871dbcb036e485d20e8ccdc8e9fb7be01757f539bfba895aabf44d341d8"
## @brief Encode every field of complete clearpath_motor_msgs/action/LynxUpdate_Result.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_motor_msgsActionLynxUpdate_Result; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 6, written)
## @brief Decode every field of complete clearpath_motor_msgs/action/LynxUpdate_Result.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_motor_msgsActionLynxUpdate_Result*(bytes: openArray[byte]; value: var Ros2Clearpath_motor_msgsActionLynxUpdate_Result): uint32 =
  wire.decode(bytes, 4, 6, value)

## @brief Complete clearpath_motor_msgs/action/LynxUpdate_Feedback value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 4..12 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback* = object
    ## @brief Original clearpath_motor_msgs/action/LynxUpdate_Feedback.progress field.
    ## @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
    ## or copying it creates no native ROS owner.
    field_progress*: NativeSequence[float32, 2]
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_motor_msgsActionLynxUpdate_Feedback*(): Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsActionLynxUpdate_FeedbackMinimumWireBytes* = 4
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsActionLynxUpdate_FeedbackMaximumWireBytes* = 12
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_motor_msgsActionLynxUpdate_FeedbackCodecIdentity* = "UWVMROS1_2179ec9dee627234a1a31e9681ff214cc45ca837349cd8e407e019a354121b19"
## @brief Encode every field of complete clearpath_motor_msgs/action/LynxUpdate_Feedback.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 12, written)
## @brief Decode every field of complete clearpath_motor_msgs/action/LynxUpdate_Feedback.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_motor_msgsActionLynxUpdate_Feedback*(bytes: openArray[byte]; value: var Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback): uint32 =
  wire.decode(bytes, 4, 12, value)

## @brief Complete builtin_interfaces/msg/Duration value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Builtin_interfacesMsgDuration* = object
    ## @brief Original builtin_interfaces/msg/Duration.sec field.
    ## @details Original type int32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_sec*: int32
    ## @brief Original builtin_interfaces/msg/Duration.nanosec field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_nanosec*: uint32
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Builtin_interfacesMsgDuration*(): Ros2Builtin_interfacesMsgDuration =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Builtin_interfacesMsgDurationMinimumWireBytes* = 8
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Builtin_interfacesMsgDurationMaximumWireBytes* = 8
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Builtin_interfacesMsgDurationCodecIdentity* = "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4"
## @brief Validate every original complete-value semantic constraint.
## @details Retain normalized time and all six optional JointState array pairs without altering any
## field.
## @param value Complete immutable owned record.
## @return Zero or canonical error 22.
proc validate*(value: Ros2Builtin_interfacesMsgDuration): uint32 =
  if value.field_nanosec >= 1000000000: return 22'u32
  0'u32
## @brief Encode every field of complete builtin_interfaces/msg/Duration.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Builtin_interfacesMsgDuration; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 8, written)
## @brief Decode every field of complete builtin_interfaces/msg/Duration.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Builtin_interfacesMsgDuration*(bytes: openArray[byte]; value: var Ros2Builtin_interfacesMsgDuration): uint32 =
  wire.decode(bytes, 8, 8, value)

## @brief Complete builtin_interfaces/msg/Time value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Builtin_interfacesMsgTime* = object
    ## @brief Original builtin_interfaces/msg/Time.sec field.
    ## @details Original type int32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_sec*: int32
    ## @brief Original builtin_interfaces/msg/Time.nanosec field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_nanosec*: uint32
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Builtin_interfacesMsgTime*(): Ros2Builtin_interfacesMsgTime =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Builtin_interfacesMsgTimeMinimumWireBytes* = 8
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Builtin_interfacesMsgTimeMaximumWireBytes* = 8
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Builtin_interfacesMsgTimeCodecIdentity* = "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7"
## @brief Validate every original complete-value semantic constraint.
## @details Retain normalized time and all six optional JointState array pairs without altering any
## field.
## @param value Complete immutable owned record.
## @return Zero or canonical error 22.
proc validate*(value: Ros2Builtin_interfacesMsgTime): uint32 =
  if value.field_nanosec >= 1000000000: return 22'u32
  0'u32
## @brief Encode every field of complete builtin_interfaces/msg/Time.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Builtin_interfacesMsgTime; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 8, written)
## @brief Decode every field of complete builtin_interfaces/msg/Time.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Builtin_interfacesMsgTime*(bytes: openArray[byte]; value: var Ros2Builtin_interfacesMsgTime): uint32 =
  wire.decode(bytes, 8, 8, value)

## @brief Complete clearpath_control_msgs/msg/DeviceInfo value.
## @details Retain all 7 original fields and 0 constants. Canonical extent 28..1820 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_control_msgsMsgDeviceInfo* = object
    ## @brief Original clearpath_control_msgs/msg/DeviceInfo.device_id field.
    ## @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_device_id*: NativeText[256, false]
    ## @brief Original clearpath_control_msgs/msg/DeviceInfo.device_class field.
    ## @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_device_class*: NativeText[256, false]
    ## @brief Original clearpath_control_msgs/msg/DeviceInfo.model field.
    ## @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_model*: NativeText[256, false]
    ## @brief Original clearpath_control_msgs/msg/DeviceInfo.manufacturer field.
    ## @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_manufacturer*: NativeText[256, false]
    ## @brief Original clearpath_control_msgs/msg/DeviceInfo.firmware_version field.
    ## @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_firmware_version*: NativeText[256, false]
    ## @brief Original clearpath_control_msgs/msg/DeviceInfo.hardware_version field.
    ## @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_hardware_version*: NativeText[256, false]
    ## @brief Original clearpath_control_msgs/msg/DeviceInfo.serial_number field.
    ## @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_serial_number*: NativeText[256, false]
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_control_msgsMsgDeviceInfo*(): Ros2Clearpath_control_msgsMsgDeviceInfo =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_control_msgsMsgDeviceInfoMinimumWireBytes* = 28
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_control_msgsMsgDeviceInfoMaximumWireBytes* = 1820
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_control_msgsMsgDeviceInfoCodecIdentity* = "UWVMROS1_9111f5d4b5324c36eb85f01e6fdbc3c589479ff5b64a8fa7b9d467aa14675c3e"
## @brief Encode every field of complete clearpath_control_msgs/msg/DeviceInfo.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_control_msgsMsgDeviceInfo; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1820, written)
## @brief Decode every field of complete clearpath_control_msgs/msg/DeviceInfo.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_control_msgsMsgDeviceInfo*(bytes: openArray[byte]; value: var Ros2Clearpath_control_msgsMsgDeviceInfo): uint32 =
  wire.decode(bytes, 28, 1820, value)

## @brief Complete clearpath_control_msgs/msg/StreamControl value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 5..261 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_control_msgsMsgStreamControl* = object
    ## @brief Original clearpath_control_msgs/msg/StreamControl.stream field.
    ## @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_stream*: NativeText[256, false]
    ## @brief Original clearpath_control_msgs/msg/StreamControl.enabled field.
    ## @details Original type bool. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_enabled*: bool
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_control_msgsMsgStreamControl*(): Ros2Clearpath_control_msgsMsgStreamControl =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_control_msgsMsgStreamControlMinimumWireBytes* = 5
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_control_msgsMsgStreamControlMaximumWireBytes* = 261
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_control_msgsMsgStreamControlCodecIdentity* = "UWVMROS1_26208e266c9185bfb0e715407ab0fe313f2d47e6bc9f54594a102c3a09d34734"
## @brief Encode every field of complete clearpath_control_msgs/msg/StreamControl.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_control_msgsMsgStreamControl; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 261, written)
## @brief Decode every field of complete clearpath_control_msgs/msg/StreamControl.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_control_msgsMsgStreamControl*(bytes: openArray[byte]; value: var Ros2Clearpath_control_msgsMsgStreamControl): uint32 =
  wire.decode(bytes, 5, 261, value)

## @brief Complete clearpath_motor_msgs/msg/LynxDebug value.
## @details Retain all 6 original fields and 33 constants. Canonical extent 19..291 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_motor_msgsMsgLynxDebug* = object
    ## @brief Original clearpath_motor_msgs/msg/LynxDebug.can_id field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_can_id*: uint8
    ## @brief Original clearpath_motor_msgs/msg/LynxDebug.joint_name field.
    ## @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_joint_name*: NativeText[256, false]
    ## @brief Original clearpath_motor_msgs/msg/LynxDebug.fault_frequency field.
    ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_fault_frequency*: uint16
    ## @brief Original clearpath_motor_msgs/msg/LynxDebug.accumulator_flags field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_accumulator_flags*: uint32
    ## @brief Original clearpath_motor_msgs/msg/LynxDebug.accumulators field.
    ## @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
    ## or copying it creates no native ROS owner.
    field_accumulators*: NativeSequence[float32, 2]
    ## @brief Original clearpath_motor_msgs/msg/LynxDebug.currents field.
    ## @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
    ## or copying it creates no native ROS owner.
    field_currents*: NativeSequence[float32, 2]
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_motor_msgsMsgLynxDebug*(): Ros2Clearpath_motor_msgsMsgLynxDebug =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsMsgLynxDebugMinimumWireBytes* = 19
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsMsgLynxDebugMaximumWireBytes* = 291
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_motor_msgsMsgLynxDebugCodecIdentity* = "UWVMROS1_0341ae040f1e8a1f980bde84498c4a4f8b9c55c3806839a73727c1579ab4416e"
## @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_ABOVE_RATED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_ABOVE_RATED*: uint8 = 0'u8
## @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_1 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_1*: uint8 = 1'u8
## @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_2 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_2*: uint8 = 2'u8
## @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_3 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_3*: uint8 = 3'u8
## @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_4 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_4*: uint8 = 4'u8
## @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_5 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_5*: uint8 = 5'u8
## @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_6 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_6*: uint8 = 6'u8
## @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_7 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_7*: uint8 = 7'u8
## @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_8 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_8*: uint8 = 8'u8
## @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_9 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_9*: uint8 = 9'u8
## @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_0 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_0*: uint8 = 10'u8
## @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_1 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_1*: uint8 = 11'u8
## @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_2 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_2*: uint8 = 12'u8
## @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_3 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_3*: uint8 = 13'u8
## @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_4 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_4*: uint8 = 14'u8
## @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_5 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_5*: uint8 = 15'u8
## @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_6 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_6*: uint8 = 16'u8
## @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_7 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_7*: uint8 = 17'u8
## @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_8 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_8*: uint8 = 18'u8
## @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_9 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_9*: uint8 = 19'u8
## @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_3_0 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_3_0*: uint8 = 20'u8
## @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_ABOVE_RATED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_ABOVE_RATED*: uint8 = 0'u8
## @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_CONTINUOUS_1_1 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_CONTINUOUS_1_1*: uint8 = 1'u8
## @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_CONTINUOUS_1_5 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_CONTINUOUS_1_5*: uint8 = 2'u8
## @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_CONTINUOUS_2_0 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_CONTINUOUS_2_0*: uint8 = 3'u8
## @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_CONTINUOUS_2_5 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_CONTINUOUS_2_5*: uint8 = 4'u8
## @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_CONTINUOUS_3_0 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_CONTINUOUS_3_0*: uint8 = 5'u8
## @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_ID_FB constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxDebug_CURRENT_ID_FB*: uint8 = 0'u8
## @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_ID_FF constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxDebug_CURRENT_ID_FF*: uint8 = 1'u8
## @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_ID_REF constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxDebug_CURRENT_ID_REF*: uint8 = 2'u8
## @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_IQ_FB constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxDebug_CURRENT_IQ_FB*: uint8 = 3'u8
## @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_IQ_FF constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxDebug_CURRENT_IQ_FF*: uint8 = 4'u8
## @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_IQ_REF constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxDebug_CURRENT_IQ_REF*: uint8 = 5'u8
## @brief Encode every field of complete clearpath_motor_msgs/msg/LynxDebug.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_motor_msgsMsgLynxDebug; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 291, written)
## @brief Decode every field of complete clearpath_motor_msgs/msg/LynxDebug.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_motor_msgsMsgLynxDebug*(bytes: openArray[byte]; value: var Ros2Clearpath_motor_msgsMsgLynxDebug): uint32 =
  wire.decode(bytes, 19, 291, value)

## @brief Complete clearpath_motor_msgs/msg/LynxFeedback value.
## @details Retain all 6 original fields and 0 constants. Canonical extent 21..277 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_motor_msgsMsgLynxFeedback* = object
    ## @brief Original clearpath_motor_msgs/msg/LynxFeedback.can_id field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_can_id*: uint8
    ## @brief Original clearpath_motor_msgs/msg/LynxFeedback.joint_name field.
    ## @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_joint_name*: NativeText[256, false]
    ## @brief Original clearpath_motor_msgs/msg/LynxFeedback.current field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_current*: float32
    ## @brief Original clearpath_motor_msgs/msg/LynxFeedback.voltage field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_voltage*: float32
    ## @brief Original clearpath_motor_msgs/msg/LynxFeedback.velocity field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_velocity*: float32
    ## @brief Original clearpath_motor_msgs/msg/LynxFeedback.travel field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_travel*: float32
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_motor_msgsMsgLynxFeedback*(): Ros2Clearpath_motor_msgsMsgLynxFeedback =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsMsgLynxFeedbackMinimumWireBytes* = 21
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsMsgLynxFeedbackMaximumWireBytes* = 277
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_motor_msgsMsgLynxFeedbackCodecIdentity* = "UWVMROS1_5d92c7085019ebf00ba93788b5b2f4055ad40b2c6714575a66fb75cf314429eb"
## @brief Encode every field of complete clearpath_motor_msgs/msg/LynxFeedback.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_motor_msgsMsgLynxFeedback; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 277, written)
## @brief Decode every field of complete clearpath_motor_msgs/msg/LynxFeedback.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_motor_msgsMsgLynxFeedback*(bytes: openArray[byte]; value: var Ros2Clearpath_motor_msgsMsgLynxFeedback): uint32 =
  wire.decode(bytes, 21, 277, value)

## @brief Complete clearpath_motor_msgs/msg/LynxMotorProtection value.
## @details Retain all 3 original fields and 4 constants. Canonical extent 6..262 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_motor_msgsMsgLynxMotorProtection* = object
    ## @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.can_id field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_can_id*: uint8
    ## @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.joint_name field.
    ## @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_joint_name*: NativeText[256, false]
    ## @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.state field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_state*: uint8
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_motor_msgsMsgLynxMotorProtection*(): Ros2Clearpath_motor_msgsMsgLynxMotorProtection =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsMsgLynxMotorProtectionMinimumWireBytes* = 6
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsMsgLynxMotorProtectionMaximumWireBytes* = 262
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_motor_msgsMsgLynxMotorProtectionCodecIdentity* = "UWVMROS1_f824abfa97f6f24934e04094d66170167f19a14fb933f325cbef4ed6fca16630"
## @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.NORMAL constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxMotorProtection_NORMAL*: uint8 = 0'u8
## @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.THROTTLED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxMotorProtection_THROTTLED*: uint8 = 1'u8
## @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.OVERHEATED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxMotorProtection_OVERHEATED*: uint8 = 2'u8
## @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.ERROR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxMotorProtection_ERROR*: uint8 = 3'u8
## @brief Encode every field of complete clearpath_motor_msgs/msg/LynxMotorProtection.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_motor_msgsMsgLynxMotorProtection; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 262, written)
## @brief Decode every field of complete clearpath_motor_msgs/msg/LynxMotorProtection.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_motor_msgsMsgLynxMotorProtection*(bytes: openArray[byte]; value: var Ros2Clearpath_motor_msgsMsgLynxMotorProtection): uint32 =
  wire.decode(bytes, 6, 262, value)

## @brief Complete std_msgs/msg/Header value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 12..140 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Std_msgsMsgHeader* = object
    ## @brief Original std_msgs/msg/Header.stamp field.
    ## @details Original type builtin_interfaces/msg/Time. Preserve declared units, frame,
    ## signedness and field order. Backing storage belongs to this value; constructing or copying it
    ## creates no native ROS owner.
    field_stamp*: Ros2Builtin_interfacesMsgTime
    ## @brief Original std_msgs/msg/Header.frame_id field.
    ## @details Original type string. String bound 128 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_frame_id*: NativeText[128, false]
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Std_msgsMsgHeader*(): Ros2Std_msgsMsgHeader =
    result.field_stamp = initRos2Builtin_interfacesMsgTime()
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Std_msgsMsgHeaderMinimumWireBytes* = 12
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Std_msgsMsgHeaderMaximumWireBytes* = 140
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Std_msgsMsgHeaderCodecIdentity* = "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96"
## @brief Encode every field of complete std_msgs/msg/Header.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Std_msgsMsgHeader; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 140, written)
## @brief Decode every field of complete std_msgs/msg/Header.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Std_msgsMsgHeader*(bytes: openArray[byte]; value: var Ros2Std_msgsMsgHeader): uint32 =
  wire.decode(bytes, 12, 140, value)

## @brief Complete clearpath_motor_msgs/msg/LynxMultiDebug value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 16..1308 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_motor_msgsMsgLynxMultiDebug* = object
    ## @brief Original clearpath_motor_msgs/msg/LynxMultiDebug.header field.
    ## @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    ## field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_header*: Ros2Std_msgsMsgHeader
    ## @brief Original clearpath_motor_msgs/msg/LynxMultiDebug.drivers field.
    ## @details Original type clearpath_motor_msgs/msg/LynxDebug. Shape sequence; bound/count 4
    ## elements. Preserve declared units, frame, signedness and field order. Backing storage belongs
    ## to this value; constructing or copying it creates no native ROS owner.
    field_drivers*: NativeSequence[Ros2Clearpath_motor_msgsMsgLynxDebug, 4]
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_motor_msgsMsgLynxMultiDebug*(): Ros2Clearpath_motor_msgsMsgLynxMultiDebug =
    result.field_header = initRos2Std_msgsMsgHeader()
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsMsgLynxMultiDebugMinimumWireBytes* = 16
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsMsgLynxMultiDebugMaximumWireBytes* = 1308
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_motor_msgsMsgLynxMultiDebugCodecIdentity* = "UWVMROS1_056abd2153e7f1a6df223bf5daba581e6c218bb7ef365444fc5c3171dfc62e95"
## @brief Encode every field of complete clearpath_motor_msgs/msg/LynxMultiDebug.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_motor_msgsMsgLynxMultiDebug; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1308, written)
## @brief Decode every field of complete clearpath_motor_msgs/msg/LynxMultiDebug.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_motor_msgsMsgLynxMultiDebug*(bytes: openArray[byte]; value: var Ros2Clearpath_motor_msgsMsgLynxMultiDebug): uint32 =
  wire.decode(bytes, 16, 1308, value)

## @brief Complete clearpath_motor_msgs/msg/LynxMultiFeedback value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 16..1252 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_motor_msgsMsgLynxMultiFeedback* = object
    ## @brief Original clearpath_motor_msgs/msg/LynxMultiFeedback.header field.
    ## @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    ## field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_header*: Ros2Std_msgsMsgHeader
    ## @brief Original clearpath_motor_msgs/msg/LynxMultiFeedback.drivers field.
    ## @details Original type clearpath_motor_msgs/msg/LynxFeedback. Shape sequence; bound/count 4
    ## elements. Preserve declared units, frame, signedness and field order. Backing storage belongs
    ## to this value; constructing or copying it creates no native ROS owner.
    field_drivers*: NativeSequence[Ros2Clearpath_motor_msgsMsgLynxFeedback, 4]
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_motor_msgsMsgLynxMultiFeedback*(): Ros2Clearpath_motor_msgsMsgLynxMultiFeedback =
    result.field_header = initRos2Std_msgsMsgHeader()
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsMsgLynxMultiFeedbackMinimumWireBytes* = 16
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsMsgLynxMultiFeedbackMaximumWireBytes* = 1252
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_motor_msgsMsgLynxMultiFeedbackCodecIdentity* = "UWVMROS1_2c83cade6bec4d766fd2cff97338642b3d2065d41e9968ccf5054c6f231242c7"
## @brief Encode every field of complete clearpath_motor_msgs/msg/LynxMultiFeedback.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_motor_msgsMsgLynxMultiFeedback; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1252, written)
## @brief Decode every field of complete clearpath_motor_msgs/msg/LynxMultiFeedback.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_motor_msgsMsgLynxMultiFeedback*(bytes: openArray[byte]; value: var Ros2Clearpath_motor_msgsMsgLynxMultiFeedback): uint32 =
  wire.decode(bytes, 16, 1252, value)

## @brief Complete clearpath_motor_msgs/msg/LynxStatus value.
## @details Retain all 10 original fields and 27 constants. Canonical extent 34..546 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_motor_msgsMsgLynxStatus* = object
    ## @brief Original clearpath_motor_msgs/msg/LynxStatus.can_id field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_can_id*: uint8
    ## @brief Original clearpath_motor_msgs/msg/LynxStatus.joint_name field.
    ## @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_joint_name*: NativeText[256, false]
    ## @brief Original clearpath_motor_msgs/msg/LynxStatus.firmware_version field.
    ## @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_firmware_version*: NativeText[256, false]
    ## @brief Original clearpath_motor_msgs/msg/LynxStatus.motor_temperature field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_motor_temperature*: float32
    ## @brief Original clearpath_motor_msgs/msg/LynxStatus.mcu_temperature field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_mcu_temperature*: float32
    ## @brief Original clearpath_motor_msgs/msg/LynxStatus.pcb_temperature field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_pcb_temperature*: float32
    ## @brief Original clearpath_motor_msgs/msg/LynxStatus.stopped field.
    ## @details Original type bool. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_stopped*: bool
    ## @brief Original clearpath_motor_msgs/msg/LynxStatus.status_flags field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_status_flags*: uint32
    ## @brief Original clearpath_motor_msgs/msg/LynxStatus.warning_flags field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_warning_flags*: uint32
    ## @brief Original clearpath_motor_msgs/msg/LynxStatus.error_flags field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_error_flags*: uint32
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_motor_msgsMsgLynxStatus*(): Ros2Clearpath_motor_msgsMsgLynxStatus =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsMsgLynxStatusMinimumWireBytes* = 34
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsMsgLynxStatusMaximumWireBytes* = 546
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_motor_msgsMsgLynxStatusCodecIdentity* = "UWVMROS1_b68a7ab9bc5312c59d2ef86e49313468b631e8cacdf52468374b67f4eced5c6d"
## @brief Original clearpath_motor_msgs/msg/LynxStatus.STATUS_FLAG_ADC_CALIBRATED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxStatus_STATUS_FLAG_ADC_CALIBRATED*: uint8 = 0'u8
## @brief Original clearpath_motor_msgs/msg/LynxStatus.STATUS_FLAG_FOC_ENABLED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxStatus_STATUS_FLAG_FOC_ENABLED*: uint8 = 1'u8
## @brief Original clearpath_motor_msgs/msg/LynxStatus.STATUS_FLAG_CALIBRATION_REQUESTED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxStatus_STATUS_FLAG_CALIBRATION_REQUESTED*: uint8 = 2'u8
## @brief Original clearpath_motor_msgs/msg/LynxStatus.STATUS_FLAG_CALIBRATION_CANCELLED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxStatus_STATUS_FLAG_CALIBRATION_CANCELLED*: uint8 = 3'u8
## @brief Original clearpath_motor_msgs/msg/LynxStatus.STATUS_FLAG_ESTOPPED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxStatus_STATUS_FLAG_ESTOPPED*: uint8 = 4'u8
## @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_MOTOR_THERMISTOR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_MOTOR_THERMISTOR*: uint8 = 0'u8
## @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_PCB_THERMISTOR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_PCB_THERMISTOR*: uint8 = 1'u8
## @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_PHASE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_PHASE*: uint8 = 2'u8
## @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_PHASE_A constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_PHASE_A*: uint8 = 3'u8
## @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_PHASE_B constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_PHASE_B*: uint8 = 4'u8
## @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_PHASE_C constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_PHASE_C*: uint8 = 5'u8
## @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_ENCODER_INDEX constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_ENCODER_INDEX*: uint8 = 6'u8
## @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_ENCODER_OUTPUT_A constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_ENCODER_OUTPUT_A*: uint8 = 7'u8
## @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_ENCODER_OUTPUT_B constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_ENCODER_OUTPUT_B*: uint8 = 8'u8
## @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_NOT_CALIBRATED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_NOT_CALIBRATED*: uint8 = 0'u8
## @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_MOTOR_FAULT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_MOTOR_FAULT*: uint8 = 1'u8
## @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_MOTOR_STALLING constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_MOTOR_STALLING*: uint8 = 2'u8
## @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_MOTOR_THERMISTOR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_MOTOR_THERMISTOR*: uint8 = 3'u8
## @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_PCB_THERMISTOR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_PCB_THERMISTOR*: uint8 = 4'u8
## @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_PHASE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_PHASE*: uint8 = 5'u8
## @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_PHASE_A constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_PHASE_A*: uint8 = 6'u8
## @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_PHASE_B constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_PHASE_B*: uint8 = 7'u8
## @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_PHASE_C constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_PHASE_C*: uint8 = 8'u8
## @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_ENCODER_POWER constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_ENCODER_POWER*: uint8 = 9'u8
## @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_ENCODER_INDEX constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_ENCODER_INDEX*: uint8 = 10'u8
## @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_ENCODER_OUTPUT_A constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_ENCODER_OUTPUT_A*: uint8 = 11'u8
## @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_ENCODER_OUTPUT_B constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_ENCODER_OUTPUT_B*: uint8 = 12'u8
## @brief Encode every field of complete clearpath_motor_msgs/msg/LynxStatus.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_motor_msgsMsgLynxStatus; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 546, written)
## @brief Decode every field of complete clearpath_motor_msgs/msg/LynxStatus.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_motor_msgsMsgLynxStatus*(bytes: openArray[byte]; value: var Ros2Clearpath_motor_msgsMsgLynxStatus): uint32 =
  wire.decode(bytes, 34, 546, value)

## @brief Complete clearpath_motor_msgs/msg/LynxMultiStatus value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 16..2328 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_motor_msgsMsgLynxMultiStatus* = object
    ## @brief Original clearpath_motor_msgs/msg/LynxMultiStatus.header field.
    ## @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    ## field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_header*: Ros2Std_msgsMsgHeader
    ## @brief Original clearpath_motor_msgs/msg/LynxMultiStatus.drivers field.
    ## @details Original type clearpath_motor_msgs/msg/LynxStatus. Shape sequence; bound/count 4
    ## elements. Preserve declared units, frame, signedness and field order. Backing storage belongs
    ## to this value; constructing or copying it creates no native ROS owner.
    field_drivers*: NativeSequence[Ros2Clearpath_motor_msgsMsgLynxStatus, 4]
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_motor_msgsMsgLynxMultiStatus*(): Ros2Clearpath_motor_msgsMsgLynxMultiStatus =
    result.field_header = initRos2Std_msgsMsgHeader()
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsMsgLynxMultiStatusMinimumWireBytes* = 16
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsMsgLynxMultiStatusMaximumWireBytes* = 2328
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_motor_msgsMsgLynxMultiStatusCodecIdentity* = "UWVMROS1_595cd0847b4332e14cc067b916166e9a6e1d1e12a7a68cdb7e1cd414a9ea9ce1"
## @brief Encode every field of complete clearpath_motor_msgs/msg/LynxMultiStatus.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_motor_msgsMsgLynxMultiStatus; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 2328, written)
## @brief Decode every field of complete clearpath_motor_msgs/msg/LynxMultiStatus.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_motor_msgsMsgLynxMultiStatus*(bytes: openArray[byte]; value: var Ros2Clearpath_motor_msgsMsgLynxMultiStatus): uint32 =
  wire.decode(bytes, 16, 2328, value)

## @brief Complete clearpath_motor_msgs/msg/LynxSystemProtection value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 17..669 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_motor_msgsMsgLynxSystemProtection* = object
    ## @brief Original clearpath_motor_msgs/msg/LynxSystemProtection.header field.
    ## @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    ## field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_header*: Ros2Std_msgsMsgHeader
    ## @brief Original clearpath_motor_msgs/msg/LynxSystemProtection.system_state field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_system_state*: uint8
    ## @brief Original clearpath_motor_msgs/msg/LynxSystemProtection.motor_states field.
    ## @details Original type clearpath_motor_msgs/msg/LynxMotorProtection. Shape sequence;
    ## bound/count 2 elements. Preserve declared units, frame, signedness and field order. Backing
    ## storage belongs to this value; constructing or copying it creates no native ROS owner.
    field_motor_states*: NativeSequence[Ros2Clearpath_motor_msgsMsgLynxMotorProtection, 2]
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_motor_msgsMsgLynxSystemProtection*(): Ros2Clearpath_motor_msgsMsgLynxSystemProtection =
    result.field_header = initRos2Std_msgsMsgHeader()
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsMsgLynxSystemProtectionMinimumWireBytes* = 17
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsMsgLynxSystemProtectionMaximumWireBytes* = 669
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_motor_msgsMsgLynxSystemProtectionCodecIdentity* = "UWVMROS1_4d662de03c34bb633a122399be1a1aaea6187550c83231bf6d8a06b95fa82d9f"
## @brief Encode every field of complete clearpath_motor_msgs/msg/LynxSystemProtection.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_motor_msgsMsgLynxSystemProtection; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 669, written)
## @brief Decode every field of complete clearpath_motor_msgs/msg/LynxSystemProtection.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_motor_msgsMsgLynxSystemProtection*(bytes: openArray[byte]; value: var Ros2Clearpath_motor_msgsMsgLynxSystemProtection): uint32 =
  wire.decode(bytes, 17, 669, value)

## @brief Complete clearpath_motor_msgs/msg/PumaFeedback value.
## @details Retain all 7 original fields and 0 constants. Canonical extent 37..293 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_motor_msgsMsgPumaFeedback* = object
    ## @brief Original clearpath_motor_msgs/msg/PumaFeedback.device_number field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_device_number*: uint8
    ## @brief Original clearpath_motor_msgs/msg/PumaFeedback.device_name field.
    ## @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_device_name*: NativeText[256, false]
    ## @brief Original clearpath_motor_msgs/msg/PumaFeedback.duty_cycle field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_duty_cycle*: float32
    ## @brief Original clearpath_motor_msgs/msg/PumaFeedback.current field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_current*: float32
    ## @brief Original clearpath_motor_msgs/msg/PumaFeedback.travel field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_travel*: float64
    ## @brief Original clearpath_motor_msgs/msg/PumaFeedback.speed field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_speed*: float64
    ## @brief Original clearpath_motor_msgs/msg/PumaFeedback.setpoint field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_setpoint*: float64
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_motor_msgsMsgPumaFeedback*(): Ros2Clearpath_motor_msgsMsgPumaFeedback =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsMsgPumaFeedbackMinimumWireBytes* = 37
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsMsgPumaFeedbackMaximumWireBytes* = 293
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_motor_msgsMsgPumaFeedbackCodecIdentity* = "UWVMROS1_c020162b07a55ac5f41df6021c0d3053d7302863f4e544a738b6cc5bc4dc9659"
## @brief Encode every field of complete clearpath_motor_msgs/msg/PumaFeedback.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_motor_msgsMsgPumaFeedback; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 293, written)
## @brief Decode every field of complete clearpath_motor_msgs/msg/PumaFeedback.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_motor_msgsMsgPumaFeedback*(bytes: openArray[byte]; value: var Ros2Clearpath_motor_msgsMsgPumaFeedback): uint32 =
  wire.decode(bytes, 37, 293, value)

## @brief Complete clearpath_motor_msgs/msg/PumaMultiFeedback value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 16..1316 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_motor_msgsMsgPumaMultiFeedback* = object
    ## @brief Original clearpath_motor_msgs/msg/PumaMultiFeedback.header field.
    ## @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    ## field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_header*: Ros2Std_msgsMsgHeader
    ## @brief Original clearpath_motor_msgs/msg/PumaMultiFeedback.drivers_feedback field.
    ## @details Original type clearpath_motor_msgs/msg/PumaFeedback. Shape sequence; bound/count 4
    ## elements. Preserve declared units, frame, signedness and field order. Backing storage belongs
    ## to this value; constructing or copying it creates no native ROS owner.
    field_drivers_feedback*: NativeSequence[Ros2Clearpath_motor_msgsMsgPumaFeedback, 4]
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_motor_msgsMsgPumaMultiFeedback*(): Ros2Clearpath_motor_msgsMsgPumaMultiFeedback =
    result.field_header = initRos2Std_msgsMsgHeader()
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsMsgPumaMultiFeedbackMinimumWireBytes* = 16
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsMsgPumaMultiFeedbackMaximumWireBytes* = 1316
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_motor_msgsMsgPumaMultiFeedbackCodecIdentity* = "UWVMROS1_638309564580ad23d585799dcd46156e1e4261ebf9febfbb91754c250907c947"
## @brief Encode every field of complete clearpath_motor_msgs/msg/PumaMultiFeedback.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_motor_msgsMsgPumaMultiFeedback; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1316, written)
## @brief Decode every field of complete clearpath_motor_msgs/msg/PumaMultiFeedback.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_motor_msgsMsgPumaMultiFeedback*(bytes: openArray[byte]; value: var Ros2Clearpath_motor_msgsMsgPumaMultiFeedback): uint32 =
  wire.decode(bytes, 16, 1316, value)

## @brief Complete clearpath_motor_msgs/msg/PumaStatus value.
## @details Retain all 8 original fields and 9 constants. Canonical extent 23..279 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_motor_msgsMsgPumaStatus* = object
    ## @brief Original clearpath_motor_msgs/msg/PumaStatus.device_number field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_device_number*: uint8
    ## @brief Original clearpath_motor_msgs/msg/PumaStatus.device_name field.
    ## @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_device_name*: NativeText[256, false]
    ## @brief Original clearpath_motor_msgs/msg/PumaStatus.bus_voltage field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_bus_voltage*: float32
    ## @brief Original clearpath_motor_msgs/msg/PumaStatus.temperature field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_temperature*: float32
    ## @brief Original clearpath_motor_msgs/msg/PumaStatus.output_voltage field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_output_voltage*: float32
    ## @brief Original clearpath_motor_msgs/msg/PumaStatus.analog_input field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_analog_input*: float32
    ## @brief Original clearpath_motor_msgs/msg/PumaStatus.mode field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_mode*: uint8
    ## @brief Original clearpath_motor_msgs/msg/PumaStatus.fault field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_fault*: uint8
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_motor_msgsMsgPumaStatus*(): Ros2Clearpath_motor_msgsMsgPumaStatus =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsMsgPumaStatusMinimumWireBytes* = 23
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsMsgPumaStatusMaximumWireBytes* = 279
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_motor_msgsMsgPumaStatusCodecIdentity* = "UWVMROS1_a027229db2c8500f707d97064548b27e77e24ae4840ad9722d2dc74726099da8"
## @brief Original clearpath_motor_msgs/msg/PumaStatus.MODE_VOLTAGE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgPumaStatus_MODE_VOLTAGE*: uint8 = 0'u8
## @brief Original clearpath_motor_msgs/msg/PumaStatus.MODE_CURRENT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgPumaStatus_MODE_CURRENT*: uint8 = 1'u8
## @brief Original clearpath_motor_msgs/msg/PumaStatus.MODE_SPEED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgPumaStatus_MODE_SPEED*: uint8 = 2'u8
## @brief Original clearpath_motor_msgs/msg/PumaStatus.MODE_POSITION constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgPumaStatus_MODE_POSITION*: uint8 = 3'u8
## @brief Original clearpath_motor_msgs/msg/PumaStatus.MODE_VCOMP constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgPumaStatus_MODE_VCOMP*: uint8 = 4'u8
## @brief Original clearpath_motor_msgs/msg/PumaStatus.FAULT_CURRENT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgPumaStatus_FAULT_CURRENT*: uint8 = 1'u8
## @brief Original clearpath_motor_msgs/msg/PumaStatus.FAULT_TEMPERATURE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgPumaStatus_FAULT_TEMPERATURE*: uint8 = 2'u8
## @brief Original clearpath_motor_msgs/msg/PumaStatus.FAULT_BUS_VOLTAGE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgPumaStatus_FAULT_BUS_VOLTAGE*: uint8 = 4'u8
## @brief Original clearpath_motor_msgs/msg/PumaStatus.FAULT_BRIDGE_DRIVER constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_motor_msgsMsgPumaStatus_FAULT_BRIDGE_DRIVER*: uint8 = 8'u8
## @brief Encode every field of complete clearpath_motor_msgs/msg/PumaStatus.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_motor_msgsMsgPumaStatus; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 279, written)
## @brief Decode every field of complete clearpath_motor_msgs/msg/PumaStatus.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_motor_msgsMsgPumaStatus*(bytes: openArray[byte]; value: var Ros2Clearpath_motor_msgsMsgPumaStatus): uint32 =
  wire.decode(bytes, 23, 279, value)

## @brief Complete clearpath_motor_msgs/msg/PumaMultiStatus value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 16..1260 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_motor_msgsMsgPumaMultiStatus* = object
    ## @brief Original clearpath_motor_msgs/msg/PumaMultiStatus.header field.
    ## @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    ## field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_header*: Ros2Std_msgsMsgHeader
    ## @brief Original clearpath_motor_msgs/msg/PumaMultiStatus.drivers field.
    ## @details Original type clearpath_motor_msgs/msg/PumaStatus. Shape sequence; bound/count 4
    ## elements. Preserve declared units, frame, signedness and field order. Backing storage belongs
    ## to this value; constructing or copying it creates no native ROS owner.
    field_drivers*: NativeSequence[Ros2Clearpath_motor_msgsMsgPumaStatus, 4]
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_motor_msgsMsgPumaMultiStatus*(): Ros2Clearpath_motor_msgsMsgPumaMultiStatus =
    result.field_header = initRos2Std_msgsMsgHeader()
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsMsgPumaMultiStatusMinimumWireBytes* = 16
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_motor_msgsMsgPumaMultiStatusMaximumWireBytes* = 1260
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_motor_msgsMsgPumaMultiStatusCodecIdentity* = "UWVMROS1_30a0210fea4fffe07371c898c365ef9696501a7541935dd80770671a7163c8f2"
## @brief Encode every field of complete clearpath_motor_msgs/msg/PumaMultiStatus.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_motor_msgsMsgPumaMultiStatus; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1260, written)
## @brief Decode every field of complete clearpath_motor_msgs/msg/PumaMultiStatus.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_motor_msgsMsgPumaMultiStatus*(bytes: openArray[byte]; value: var Ros2Clearpath_motor_msgsMsgPumaMultiStatus): uint32 =
  wire.decode(bytes, 16, 1260, value)

## @brief Complete clearpath_platform_msgs/msg/DisplayStatus value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 8..106 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_platform_msgsMsgDisplayStatus* = object
    ## @brief Original clearpath_platform_msgs/msg/DisplayStatus.string1 field.
    ## @details Original type string. String bound 49 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_string1*: NativeText[49, false]
    ## @brief Original clearpath_platform_msgs/msg/DisplayStatus.string2 field.
    ## @details Original type string. String bound 49 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_string2*: NativeText[49, false]
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_platform_msgsMsgDisplayStatus*(): Ros2Clearpath_platform_msgsMsgDisplayStatus =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsMsgDisplayStatusMinimumWireBytes* = 8
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsMsgDisplayStatusMaximumWireBytes* = 106
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_platform_msgsMsgDisplayStatusCodecIdentity* = "UWVMROS1_e4585117414581491304a26d528b44c770799f622c3f1cde037078f5cb2462c2"
## @brief Encode every field of complete clearpath_platform_msgs/msg/DisplayStatus.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_platform_msgsMsgDisplayStatus; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 106, written)
## @brief Decode every field of complete clearpath_platform_msgs/msg/DisplayStatus.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_platform_msgsMsgDisplayStatus*(bytes: openArray[byte]; value: var Ros2Clearpath_platform_msgsMsgDisplayStatus): uint32 =
  wire.decode(bytes, 8, 106, value)

## @brief Complete clearpath_platform_msgs/msg/Drive value.
## @details Retain all 2 original fields and 5 constants. Canonical extent 9..9 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_platform_msgsMsgDrive* = object
    ## @brief Original clearpath_platform_msgs/msg/Drive.mode field.
    ## @details Original type int8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_mode*: int8
    ## @brief Original clearpath_platform_msgs/msg/Drive.drivers field.
    ## @details Original type float32. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_drivers*: array[2, float32]
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_platform_msgsMsgDrive*(): Ros2Clearpath_platform_msgsMsgDrive =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsMsgDriveMinimumWireBytes* = 9
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsMsgDriveMaximumWireBytes* = 9
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_platform_msgsMsgDriveCodecIdentity* = "UWVMROS1_be8664128ff89a066550f1a2496c30396f39bafd1d96483c545048a328138785"
## @brief Original clearpath_platform_msgs/msg/Drive.MODE_VELOCITY constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgDrive_MODE_VELOCITY*: int8 = 0'i8
## @brief Original clearpath_platform_msgs/msg/Drive.MODE_PWM constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgDrive_MODE_PWM*: int8 = 1'i8
## @brief Original clearpath_platform_msgs/msg/Drive.MODE_NONE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgDrive_MODE_NONE*: int8 = -1'i8
## @brief Original clearpath_platform_msgs/msg/Drive.LEFT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgDrive_LEFT*: int8 = 0'i8
## @brief Original clearpath_platform_msgs/msg/Drive.RIGHT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgDrive_RIGHT*: int8 = 1'i8
## @brief Encode every field of complete clearpath_platform_msgs/msg/Drive.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_platform_msgsMsgDrive; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 9, written)
## @brief Decode every field of complete clearpath_platform_msgs/msg/Drive.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_platform_msgsMsgDrive*(bytes: openArray[byte]; value: var Ros2Clearpath_platform_msgsMsgDrive): uint32 =
  wire.decode(bytes, 9, 9, value)

## @brief Complete clearpath_platform_msgs/msg/DriveFeedback value.
## @details Retain all 7 original fields and 0 constants. Canonical extent 25..25 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_platform_msgsMsgDriveFeedback* = object
    ## @brief Original clearpath_platform_msgs/msg/DriveFeedback.current field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_current*: float32
    ## @brief Original clearpath_platform_msgs/msg/DriveFeedback.duty_cycle field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_duty_cycle*: float32
    ## @brief Original clearpath_platform_msgs/msg/DriveFeedback.bridge_temperature field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_bridge_temperature*: float32
    ## @brief Original clearpath_platform_msgs/msg/DriveFeedback.motor_temperature field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_motor_temperature*: float32
    ## @brief Original clearpath_platform_msgs/msg/DriveFeedback.measured_velocity field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_measured_velocity*: float32
    ## @brief Original clearpath_platform_msgs/msg/DriveFeedback.measured_travel field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_measured_travel*: float32
    ## @brief Original clearpath_platform_msgs/msg/DriveFeedback.driver_fault field.
    ## @details Original type bool. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_driver_fault*: bool
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_platform_msgsMsgDriveFeedback*(): Ros2Clearpath_platform_msgsMsgDriveFeedback =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsMsgDriveFeedbackMinimumWireBytes* = 25
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsMsgDriveFeedbackMaximumWireBytes* = 25
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_platform_msgsMsgDriveFeedbackCodecIdentity* = "UWVMROS1_008f51d4c8341723ffec72651f93c00db0f9feceb037ee7b6b460ffcafd3f287"
## @brief Encode every field of complete clearpath_platform_msgs/msg/DriveFeedback.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_platform_msgsMsgDriveFeedback; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 25, written)
## @brief Decode every field of complete clearpath_platform_msgs/msg/DriveFeedback.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_platform_msgsMsgDriveFeedback*(bytes: openArray[byte]; value: var Ros2Clearpath_platform_msgsMsgDriveFeedback): uint32 =
  wire.decode(bytes, 25, 25, value)

## @brief Complete clearpath_platform_msgs/msg/Fans value.
## @details Retain all 1 original fields and 17 constants. Canonical extent 4..6 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_platform_msgsMsgFans* = object
    ## @brief Original clearpath_platform_msgs/msg/Fans.fans field.
    ## @details Original type uint8. Shape sequence; bound/count 2 elements. Preserve declared
    ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
    ## or copying it creates no native ROS owner.
    field_fans*: NativeSequence[uint8, 2]
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_platform_msgsMsgFans*(): Ros2Clearpath_platform_msgsMsgFans =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsMsgFansMinimumWireBytes* = 4
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsMsgFansMaximumWireBytes* = 6
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_platform_msgsMsgFansCodecIdentity* = "UWVMROS1_a7d96f2242d992baf96f31bd8f93088547f92c72912c241c2d237f7714800cc8"
## @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN1 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgFans_CC01_FAN1*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN2 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgFans_CC01_FAN2*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN3 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgFans_CC01_FAN3*: uint8 = 2'u8
## @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN4 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgFans_CC01_FAN4*: uint8 = 3'u8
## @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN5 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgFans_CC01_FAN5*: uint8 = 4'u8
## @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN6 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgFans_CC01_FAN6*: uint8 = 5'u8
## @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN7 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgFans_CC01_FAN7*: uint8 = 6'u8
## @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN8 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgFans_CC01_FAN8*: uint8 = 7'u8
## @brief Original clearpath_platform_msgs/msg/Fans.R100_EQUIPMENT_BAY_INTAKE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgFans_R100_EQUIPMENT_BAY_INTAKE*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/Fans.R100_EQUIPMENT_BAY_EXHAUST constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgFans_R100_EQUIPMENT_BAY_EXHAUST*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/Fans.R100_CHARGER_BAY_INTAKE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgFans_R100_CHARGER_BAY_INTAKE*: uint8 = 2'u8
## @brief Original clearpath_platform_msgs/msg/Fans.R100_CHARGER_BAY_EXHAUST constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgFans_R100_CHARGER_BAY_EXHAUST*: uint8 = 3'u8
## @brief Original clearpath_platform_msgs/msg/Fans.R100_USER_BAY_INTAKE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgFans_R100_USER_BAY_INTAKE*: uint8 = 4'u8
## @brief Original clearpath_platform_msgs/msg/Fans.R100_USER_BAY_EXHAUST constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgFans_R100_USER_BAY_EXHAUST*: uint8 = 5'u8
## @brief Original clearpath_platform_msgs/msg/Fans.FAN_OFF constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgFans_FAN_OFF*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/Fans.FAN_ON_HIGH constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgFans_FAN_ON_HIGH*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/Fans.FAN_ON_LOW constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgFans_FAN_ON_LOW*: uint8 = 2'u8
## @brief Encode every field of complete clearpath_platform_msgs/msg/Fans.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_platform_msgsMsgFans; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 6, written)
## @brief Decode every field of complete clearpath_platform_msgs/msg/Fans.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_platform_msgsMsgFans*(bytes: openArray[byte]; value: var Ros2Clearpath_platform_msgsMsgFans): uint32 =
  wire.decode(bytes, 4, 6, value)

## @brief Complete clearpath_platform_msgs/msg/Feedback value.
## @details Retain all 4 original fields and 0 constants. Canonical extent 64..192 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_platform_msgsMsgFeedback* = object
    ## @brief Original clearpath_platform_msgs/msg/Feedback.header field.
    ## @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    ## field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_header*: Ros2Std_msgsMsgHeader
    ## @brief Original clearpath_platform_msgs/msg/Feedback.drivers field.
    ## @details Original type clearpath_platform_msgs/msg/DriveFeedback. Shape array; bound/count 2
    ## elements. Preserve declared units, frame, signedness and field order. Backing storage belongs
    ## to this value; constructing or copying it creates no native ROS owner.
    field_drivers*: array[2, Ros2Clearpath_platform_msgsMsgDriveFeedback]
    ## @brief Original clearpath_platform_msgs/msg/Feedback.commanded_mode field.
    ## @details Original type int8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_commanded_mode*: int8
    ## @brief Original clearpath_platform_msgs/msg/Feedback.actual_mode field.
    ## @details Original type int8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_actual_mode*: int8
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_platform_msgsMsgFeedback*(): Ros2Clearpath_platform_msgsMsgFeedback =
    result.field_header = initRos2Std_msgsMsgHeader()
    for index in 0 ..< 2:
        result.field_drivers[index] = initRos2Clearpath_platform_msgsMsgDriveFeedback()
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsMsgFeedbackMinimumWireBytes* = 64
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsMsgFeedbackMaximumWireBytes* = 192
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_platform_msgsMsgFeedbackCodecIdentity* = "UWVMROS1_15fdfd2e12df38bab09bf083beb61ce23d3c1082e794c34d51eec4c473e29442"
## @brief Encode every field of complete clearpath_platform_msgs/msg/Feedback.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_platform_msgsMsgFeedback; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 192, written)
## @brief Decode every field of complete clearpath_platform_msgs/msg/Feedback.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_platform_msgsMsgFeedback*(bytes: openArray[byte]; value: var Ros2Clearpath_platform_msgsMsgFeedback): uint32 =
  wire.decode(bytes, 64, 192, value)

## @brief Complete clearpath_platform_msgs/msg/RGB value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 3..3 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_platform_msgsMsgRGB* = object
    ## @brief Original clearpath_platform_msgs/msg/RGB.red field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_red*: uint8
    ## @brief Original clearpath_platform_msgs/msg/RGB.green field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_green*: uint8
    ## @brief Original clearpath_platform_msgs/msg/RGB.blue field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_blue*: uint8
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_platform_msgsMsgRGB*(): Ros2Clearpath_platform_msgsMsgRGB =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsMsgRGBMinimumWireBytes* = 3
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsMsgRGBMaximumWireBytes* = 3
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_platform_msgsMsgRGBCodecIdentity* = "UWVMROS1_42db8731293054ef44002afc54c16dac45544354932d5353cf749fb376cef1a1"
## @brief Encode every field of complete clearpath_platform_msgs/msg/RGB.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_platform_msgsMsgRGB; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 3, written)
## @brief Decode every field of complete clearpath_platform_msgs/msg/RGB.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_platform_msgsMsgRGB*(bytes: openArray[byte]; value: var Ros2Clearpath_platform_msgsMsgRGB): uint32 =
  wire.decode(bytes, 3, 3, value)

## @brief Complete clearpath_platform_msgs/msg/Lights value.
## @details Retain all 1 original fields and 24 constants. Canonical extent 4..10 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_platform_msgsMsgLights* = object
    ## @brief Original clearpath_platform_msgs/msg/Lights.lights field.
    ## @details Original type clearpath_platform_msgs/msg/RGB. Shape sequence; bound/count 2
    ## elements. Preserve declared units, frame, signedness and field order. Backing storage belongs
    ## to this value; constructing or copying it creates no native ROS owner.
    field_lights*: NativeSequence[Ros2Clearpath_platform_msgsMsgRGB, 2]
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_platform_msgsMsgLights*(): Ros2Clearpath_platform_msgsMsgLights =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsMsgLightsMinimumWireBytes* = 4
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsMsgLightsMaximumWireBytes* = 10
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_platform_msgsMsgLightsCodecIdentity* = "UWVMROS1_3f975a3ec1fca4f8add9523d4f9f99963be520c0e2982e644551b71cbd4b8a27"
## @brief Original clearpath_platform_msgs/msg/Lights.D100_LIGHTS_REAR_LEFT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgLights_D100_LIGHTS_REAR_LEFT*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/Lights.D100_LIGHTS_FRONT_LEFT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgLights_D100_LIGHTS_FRONT_LEFT*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/Lights.D100_LIGHTS_FRONT_RIGHT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgLights_D100_LIGHTS_FRONT_RIGHT*: uint8 = 2'u8
## @brief Original clearpath_platform_msgs/msg/Lights.D100_LIGHTS_REAR_RIGHT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgLights_D100_LIGHTS_REAR_RIGHT*: uint8 = 3'u8
## @brief Original clearpath_platform_msgs/msg/Lights.D150_LIGHTS_REAR_LEFT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgLights_D150_LIGHTS_REAR_LEFT*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/Lights.D150_LIGHTS_FRONT_LEFT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgLights_D150_LIGHTS_FRONT_LEFT*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/Lights.D150_LIGHTS_FRONT_RIGHT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgLights_D150_LIGHTS_FRONT_RIGHT*: uint8 = 2'u8
## @brief Original clearpath_platform_msgs/msg/Lights.D150_LIGHTS_REAR_RIGHT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgLights_D150_LIGHTS_REAR_RIGHT*: uint8 = 3'u8
## @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_FRONT_PORT_UPPER constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgLights_R100_LIGHTS_FRONT_PORT_UPPER*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_FRONT_PORT_LOWER constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgLights_R100_LIGHTS_FRONT_PORT_LOWER*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_FRONT_STARBOARD_UPPER constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgLights_R100_LIGHTS_FRONT_STARBOARD_UPPER*: uint8 = 2'u8
## @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_FRONT_STARBOARD_LOWER constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgLights_R100_LIGHTS_FRONT_STARBOARD_LOWER*: uint8 = 3'u8
## @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_REAR_PORT_UPPER constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgLights_R100_LIGHTS_REAR_PORT_UPPER*: uint8 = 4'u8
## @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_REAR_PORT_LOWER constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgLights_R100_LIGHTS_REAR_PORT_LOWER*: uint8 = 5'u8
## @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_REAR_STARBOARD_UPPER constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgLights_R100_LIGHTS_REAR_STARBOARD_UPPER*: uint8 = 6'u8
## @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_REAR_STARBOARD_LOWER constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgLights_R100_LIGHTS_REAR_STARBOARD_LOWER*: uint8 = 7'u8
## @brief Original clearpath_platform_msgs/msg/Lights.W200_LIGHTS_FRONT_LEFT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgLights_W200_LIGHTS_FRONT_LEFT*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/Lights.W200_LIGHTS_FRONT_RIGHT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgLights_W200_LIGHTS_FRONT_RIGHT*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/Lights.W200_LIGHTS_REAR_LEFT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgLights_W200_LIGHTS_REAR_LEFT*: uint8 = 2'u8
## @brief Original clearpath_platform_msgs/msg/Lights.W200_LIGHTS_REAR_RIGHT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgLights_W200_LIGHTS_REAR_RIGHT*: uint8 = 3'u8
## @brief Original clearpath_platform_msgs/msg/Lights.A300_LIGHTS_FRONT_RIGHT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgLights_A300_LIGHTS_FRONT_RIGHT*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/Lights.A300_LIGHTS_FRONT_LEFT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgLights_A300_LIGHTS_FRONT_LEFT*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/Lights.A300_LIGHTS_REAR_LEFT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgLights_A300_LIGHTS_REAR_LEFT*: uint8 = 2'u8
## @brief Original clearpath_platform_msgs/msg/Lights.A300_LIGHTS_REAR_RIGHT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgLights_A300_LIGHTS_REAR_RIGHT*: uint8 = 3'u8
## @brief Encode every field of complete clearpath_platform_msgs/msg/Lights.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_platform_msgsMsgLights; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 10, written)
## @brief Decode every field of complete clearpath_platform_msgs/msg/Lights.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_platform_msgsMsgLights*(bytes: openArray[byte]; value: var Ros2Clearpath_platform_msgsMsgLights): uint32 =
  wire.decode(bytes, 4, 10, value)

## @brief Complete clearpath_platform_msgs/msg/PinoutCommand value.
## @details Retain all 2 original fields and 14 constants. Canonical extent 8..18 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_platform_msgsMsgPinoutCommand* = object
    ## @brief Original clearpath_platform_msgs/msg/PinoutCommand.rails field.
    ## @details Original type bool. Shape sequence; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_rails*: NativeSequence[bool, 2]
    ## @brief Original clearpath_platform_msgs/msg/PinoutCommand.outputs field.
    ## @details Original type uint32. Shape sequence; bound/count 2 elements. Preserve declared
    ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
    ## or copying it creates no native ROS owner.
    field_outputs*: NativeSequence[uint32, 2]
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_platform_msgsMsgPinoutCommand*(): Ros2Clearpath_platform_msgsMsgPinoutCommand =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsMsgPinoutCommandMinimumWireBytes* = 8
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsMsgPinoutCommandMaximumWireBytes* = 18
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_platform_msgsMsgPinoutCommandCodecIdentity* = "UWVMROS1_b26c2baf1e64cefa889c4ac6bd6b7f4647d9247eca0626b83cd726547a4e80ff"
## @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_USER_PWR_CTRL constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutCommand_CC01_USER_PWR_CTRL*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/PinoutCommand.D100_AUX_OUT1 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutCommand_D100_AUX_OUT1*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/PinoutCommand.D100_AUX_OUT2 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutCommand_D100_AUX_OUT2*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/PinoutCommand.D100_AUX_OUT3 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutCommand_D100_AUX_OUT3*: uint8 = 2'u8
## @brief Original clearpath_platform_msgs/msg/PinoutCommand.D150_AUX_OUT1 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutCommand_D150_AUX_OUT1*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/PinoutCommand.D150_AUX_OUT2 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutCommand_D150_AUX_OUT2*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/PinoutCommand.D150_AUX_OUT3 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutCommand_D150_AUX_OUT3*: uint8 = 2'u8
## @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_AUX_OUT1 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutCommand_CC01_AUX_OUT1*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_AUX_OUT2 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutCommand_CC01_AUX_OUT2*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_AUX_OUT3 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutCommand_CC01_AUX_OUT3*: uint8 = 2'u8
## @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_GPO0 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutCommand_CC01_GPO0*: uint8 = 3'u8
## @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_GPO1 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutCommand_CC01_GPO1*: uint8 = 4'u8
## @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_GPO2 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutCommand_CC01_GPO2*: uint8 = 5'u8
## @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_GPO3 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutCommand_CC01_GPO3*: uint8 = 6'u8
## @brief Encode every field of complete clearpath_platform_msgs/msg/PinoutCommand.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_platform_msgsMsgPinoutCommand; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 18, written)
## @brief Decode every field of complete clearpath_platform_msgs/msg/PinoutCommand.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_platform_msgsMsgPinoutCommand*(bytes: openArray[byte]; value: var Ros2Clearpath_platform_msgsMsgPinoutCommand): uint32 =
  wire.decode(bytes, 8, 18, value)

## @brief Complete clearpath_platform_msgs/msg/PinoutState value.
## @details Retain all 5 original fields and 27 constants. Canonical extent 28..170 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_platform_msgsMsgPinoutState* = object
    ## @brief Original clearpath_platform_msgs/msg/PinoutState.header field.
    ## @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    ## field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_header*: Ros2Std_msgsMsgHeader
    ## @brief Original clearpath_platform_msgs/msg/PinoutState.rails field.
    ## @details Original type bool. Shape sequence; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_rails*: NativeSequence[bool, 2]
    ## @brief Original clearpath_platform_msgs/msg/PinoutState.inputs field.
    ## @details Original type bool. Shape sequence; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_inputs*: NativeSequence[bool, 2]
    ## @brief Original clearpath_platform_msgs/msg/PinoutState.outputs field.
    ## @details Original type bool. Shape sequence; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_outputs*: NativeSequence[bool, 2]
    ## @brief Original clearpath_platform_msgs/msg/PinoutState.output_periods field.
    ## @details Original type uint32. Shape sequence; bound/count 2 elements. Preserve declared
    ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
    ## or copying it creates no native ROS owner.
    field_output_periods*: NativeSequence[uint32, 2]
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_platform_msgsMsgPinoutState*(): Ros2Clearpath_platform_msgsMsgPinoutState =
    result.field_header = initRos2Std_msgsMsgHeader()
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsMsgPinoutStateMinimumWireBytes* = 28
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsMsgPinoutStateMaximumWireBytes* = 170
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_platform_msgsMsgPinoutStateCodecIdentity* = "UWVMROS1_a936c6d91440709d50fa9b0be8fb567a9ce793e84f57e5379f6a160c8cbf73e7"
## @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_USER_PWR_CTRL constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutState_CC01_USER_PWR_CTRL*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_IN1 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutState_D100_AUX_IN1*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_IN2 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutState_D100_AUX_IN2*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_IN3 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutState_D100_AUX_IN3*: uint8 = 2'u8
## @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_IN1 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutState_D150_AUX_IN1*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_IN2 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutState_D150_AUX_IN2*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_IN3 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutState_D150_AUX_IN3*: uint8 = 2'u8
## @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_IN1 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutState_CC01_AUX_IN1*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_IN2 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutState_CC01_AUX_IN2*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_IN3 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutState_CC01_AUX_IN3*: uint8 = 2'u8
## @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPI0 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutState_CC01_GPI0*: uint8 = 3'u8
## @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPI1 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutState_CC01_GPI1*: uint8 = 4'u8
## @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPI2 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutState_CC01_GPI2*: uint8 = 5'u8
## @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPI3 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutState_CC01_GPI3*: uint8 = 6'u8
## @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_OUT1 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutState_D100_AUX_OUT1*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_OUT2 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutState_D100_AUX_OUT2*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_OUT3 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutState_D100_AUX_OUT3*: uint8 = 2'u8
## @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_OUT1 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutState_D150_AUX_OUT1*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_OUT2 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutState_D150_AUX_OUT2*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_OUT3 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutState_D150_AUX_OUT3*: uint8 = 2'u8
## @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_OUT1 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutState_CC01_AUX_OUT1*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_OUT2 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutState_CC01_AUX_OUT2*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_OUT3 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutState_CC01_AUX_OUT3*: uint8 = 2'u8
## @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPO0 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutState_CC01_GPO0*: uint8 = 3'u8
## @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPO1 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutState_CC01_GPO1*: uint8 = 4'u8
## @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPO2 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutState_CC01_GPO2*: uint8 = 5'u8
## @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPO3 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPinoutState_CC01_GPO3*: uint8 = 6'u8
## @brief Encode every field of complete clearpath_platform_msgs/msg/PinoutState.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_platform_msgsMsgPinoutState; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 170, written)
## @brief Decode every field of complete clearpath_platform_msgs/msg/PinoutState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_platform_msgsMsgPinoutState*(bytes: openArray[byte]; value: var Ros2Clearpath_platform_msgsMsgPinoutState): uint32 =
  wire.decode(bytes, 28, 170, value)

## @brief Complete clearpath_platform_msgs/msg/Power value.
## @details Retain all 8 original fields and 68 constants. Canonical extent 25..169 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_platform_msgsMsgPower* = object
    ## @brief Original clearpath_platform_msgs/msg/Power.header field.
    ## @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    ## field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_header*: Ros2Std_msgsMsgHeader
    ## @brief Original clearpath_platform_msgs/msg/Power.shore_power_connected field.
    ## @details Original type int8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_shore_power_connected*: int8
    ## @brief Original clearpath_platform_msgs/msg/Power.battery_connected field.
    ## @details Original type int8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_battery_connected*: int8
    ## @brief Original clearpath_platform_msgs/msg/Power.power_12v_user_nominal field.
    ## @details Original type int8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_power_12v_user_nominal*: int8
    ## @brief Original clearpath_platform_msgs/msg/Power.charger_connected field.
    ## @details Original type int8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_charger_connected*: int8
    ## @brief Original clearpath_platform_msgs/msg/Power.charging_complete field.
    ## @details Original type int8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_charging_complete*: int8
    ## @brief Original clearpath_platform_msgs/msg/Power.measured_voltages field.
    ## @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
    ## or copying it creates no native ROS owner.
    field_measured_voltages*: NativeSequence[float32, 2]
    ## @brief Original clearpath_platform_msgs/msg/Power.measured_currents field.
    ## @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
    ## or copying it creates no native ROS owner.
    field_measured_currents*: NativeSequence[float32, 2]
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_platform_msgsMsgPower*(): Ros2Clearpath_platform_msgsMsgPower =
    result.field_header = initRos2Std_msgsMsgHeader()
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsMsgPowerMinimumWireBytes* = 25
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsMsgPowerMaximumWireBytes* = 169
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_platform_msgsMsgPowerCodecIdentity* = "UWVMROS1_3fc241d6b81da2f80bfce22933b81786b5e582715dc66cd238fa40b239e7aecc"
## @brief Original clearpath_platform_msgs/msg/Power.NOT_APPLICABLE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_NOT_APPLICABLE*: int8 = -1'i8
## @brief Original clearpath_platform_msgs/msg/Power.J100_MEASURED_BATTERY constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_J100_MEASURED_BATTERY*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/Power.J100_MEASURED_5V constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_J100_MEASURED_5V*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/Power.J100_MEASURED_12V constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_J100_MEASURED_12V*: uint8 = 2'u8
## @brief Original clearpath_platform_msgs/msg/Power.D100_MEASURED_BATTERY constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_D100_MEASURED_BATTERY*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/Power.D100_MEASURED_5V constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_D100_MEASURED_5V*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/Power.D100_MEASURED_12V constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_D100_MEASURED_12V*: uint8 = 2'u8
## @brief Original clearpath_platform_msgs/msg/Power.D150_MEASURED_BATTERY constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_D150_MEASURED_BATTERY*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/Power.D150_MEASURED_5V constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_D150_MEASURED_5V*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/Power.D150_MEASURED_12V constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_D150_MEASURED_12V*: uint8 = 2'u8
## @brief Original clearpath_platform_msgs/msg/Power.W200_MEASURED_BATTERY constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_W200_MEASURED_BATTERY*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/Power.W200_MEASURED_12V constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_W200_MEASURED_12V*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/Power.W200_MEASURED_24V constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_W200_MEASURED_24V*: uint8 = 2'u8
## @brief Original clearpath_platform_msgs/msg/Power.W200_MEASURED_48V constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_W200_MEASURED_48V*: uint8 = 3'u8
## @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_BATTERY constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_R100_MEASURED_BATTERY*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_5V constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_R100_MEASURED_5V*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_12V constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_R100_MEASURED_12V*: uint8 = 2'u8
## @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_INVERTER constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_R100_MEASURED_INVERTER*: uint8 = 3'u8
## @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_FRONT_AXLE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_R100_MEASURED_FRONT_AXLE*: uint8 = 4'u8
## @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_REAR_AXLE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_R100_MEASURED_REAR_AXLE*: uint8 = 5'u8
## @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_LIGHT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_R100_MEASURED_LIGHT*: uint8 = 6'u8
## @brief Original clearpath_platform_msgs/msg/Power.A200_BATTERY_VOLTAGE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_A200_BATTERY_VOLTAGE*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/Power.A200_LEFT_DRIVER_VOLTAGE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_A200_LEFT_DRIVER_VOLTAGE*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/Power.A200_RIGHT_DRIVER_VOLTAGE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_A200_RIGHT_DRIVER_VOLTAGE*: uint8 = 2'u8
## @brief Original clearpath_platform_msgs/msg/Power.A200_VOLTAGES_SIZE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_A200_VOLTAGES_SIZE*: uint8 = 3'u8
## @brief Original clearpath_platform_msgs/msg/Power.CC01_BATTERY_VOLTAGE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_CC01_BATTERY_VOLTAGE*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/Power.CC01_USER_BATTERY_VOLTAGE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_CC01_USER_BATTERY_VOLTAGE*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/Power.CC01_USER_24V_VOLTAGE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_CC01_USER_24V_VOLTAGE*: uint8 = 2'u8
## @brief Original clearpath_platform_msgs/msg/Power.CC01_USER_12VB_VOLTAGE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_CC01_USER_12VB_VOLTAGE*: uint8 = 3'u8
## @brief Original clearpath_platform_msgs/msg/Power.CC01_SYSTEM_12V_VOLTAGE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_CC01_SYSTEM_12V_VOLTAGE*: uint8 = 4'u8
## @brief Original clearpath_platform_msgs/msg/Power.CC01_EXPANSION_VOLTAGE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_CC01_EXPANSION_VOLTAGE*: uint8 = 5'u8
## @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_24V_AUX_VOLTAGE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_24V_AUX_VOLTAGE*: uint8 = 6'u8
## @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_12V_AUX_VOLTAGE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_12V_AUX_VOLTAGE*: uint8 = 7'u8
## @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_12VA_VOLTAGE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_USER_12VA_VOLTAGE*: uint8 = 8'u8
## @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_LYNX1_VOLTAGE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_LYNX1_VOLTAGE*: uint8 = 9'u8
## @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_LYNX2_VOLTAGE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_LYNX2_VOLTAGE*: uint8 = 10'u8
## @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_LYNX3_VOLTAGE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_LYNX3_VOLTAGE*: uint8 = 11'u8
## @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_LYNX4_VOLTAGE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_LYNX4_VOLTAGE*: uint8 = 12'u8
## @brief Original clearpath_platform_msgs/msg/Power.J100_TOTAL_CURRENT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_J100_TOTAL_CURRENT*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/Power.J100_COMPUTER_CURRENT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_J100_COMPUTER_CURRENT*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/Power.J100_DRIVE_CURRENT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_J100_DRIVE_CURRENT*: uint8 = 2'u8
## @brief Original clearpath_platform_msgs/msg/Power.J100_USER_CURRENT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_J100_USER_CURRENT*: uint8 = 3'u8
## @brief Original clearpath_platform_msgs/msg/Power.D100_TOTAL_CURRENT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_D100_TOTAL_CURRENT*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/Power.D100_COMPUTER_CURRENT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_D100_COMPUTER_CURRENT*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/Power.D150_TOTAL_CURRENT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_D150_TOTAL_CURRENT*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/Power.D150_COMPUTER_CURRENT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_D150_COMPUTER_CURRENT*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/Power.W200_TOTAL_CURRENT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_W200_TOTAL_CURRENT*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/Power.W200_COMPUTER_CURRENT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_W200_COMPUTER_CURRENT*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/Power.W200_12V_CURRENT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_W200_12V_CURRENT*: uint8 = 2'u8
## @brief Original clearpath_platform_msgs/msg/Power.W200_24V_CURRENT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_W200_24V_CURRENT*: uint8 = 3'u8
## @brief Original clearpath_platform_msgs/msg/Power.R100_TOTAL_CURRENT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_R100_TOTAL_CURRENT*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/Power.A200_MCU_AND_USER_PORT_CURRENT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_A200_MCU_AND_USER_PORT_CURRENT*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/Power.A200_LEFT_DRIVER_CURRENT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_A200_LEFT_DRIVER_CURRENT*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/Power.A200_RIGHT_DRIVER_CURRENT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_A200_RIGHT_DRIVER_CURRENT*: uint8 = 2'u8
## @brief Original clearpath_platform_msgs/msg/Power.A200_CURRENTS_SIZE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_A200_CURRENTS_SIZE*: uint8 = 3'u8
## @brief Original clearpath_platform_msgs/msg/Power.CC01_BATTERY_PACK_CURRENT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_CC01_BATTERY_PACK_CURRENT*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/Power.CC01_USER_BATTERY_CURRENT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_CC01_USER_BATTERY_CURRENT*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/Power.CC01_AUX_HES_CURRENT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_CC01_AUX_HES_CURRENT*: uint8 = 2'u8
## @brief Original clearpath_platform_msgs/msg/Power.CC01_SYSTEM_12V_CURRENT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_CC01_SYSTEM_12V_CURRENT*: uint8 = 3'u8
## @brief Original clearpath_platform_msgs/msg/Power.CC01_24V_AUX_CURRENT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_CC01_24V_AUX_CURRENT*: uint8 = 4'u8
## @brief Original clearpath_platform_msgs/msg/Power.CC01_12V_AUX_CURRENT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_CC01_12V_AUX_CURRENT*: uint8 = 5'u8
## @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_24V_CURRENT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_USER_24V_CURRENT*: uint8 = 6'u8
## @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_12VA_CURRENT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_USER_12VA_CURRENT*: uint8 = 7'u8
## @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_12VB_CURRENT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_USER_12VB_CURRENT*: uint8 = 8'u8
## @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_LYNX1_CURRENT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_USER_LYNX1_CURRENT*: uint8 = 9'u8
## @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_LYNX2_CURRENT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_USER_LYNX2_CURRENT*: uint8 = 10'u8
## @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_LYNX3_CURRENT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_USER_LYNX3_CURRENT*: uint8 = 11'u8
## @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_LYNX4_CURRENT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_USER_LYNX4_CURRENT*: uint8 = 12'u8
## @brief Encode every field of complete clearpath_platform_msgs/msg/Power.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_platform_msgsMsgPower; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 169, written)
## @brief Decode every field of complete clearpath_platform_msgs/msg/Power.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_platform_msgsMsgPower*(bytes: openArray[byte]; value: var Ros2Clearpath_platform_msgsMsgPower): uint32 =
  wire.decode(bytes, 25, 169, value)

## @brief Complete clearpath_platform_msgs/msg/Status value.
## @details Retain all 5 original fields and 0 constants. Canonical extent 36..676 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_platform_msgsMsgStatus* = object
    ## @brief Original clearpath_platform_msgs/msg/Status.header field.
    ## @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    ## field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_header*: Ros2Std_msgsMsgHeader
    ## @brief Original clearpath_platform_msgs/msg/Status.hardware_id field.
    ## @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_hardware_id*: NativeText[256, false]
    ## @brief Original clearpath_platform_msgs/msg/Status.firmware_version field.
    ## @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_firmware_version*: NativeText[256, false]
    ## @brief Original clearpath_platform_msgs/msg/Status.mcu_uptime field.
    ## @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
    ## signedness and field order. Backing storage belongs to this value; constructing or copying it
    ## creates no native ROS owner.
    field_mcu_uptime*: Ros2Builtin_interfacesMsgDuration
    ## @brief Original clearpath_platform_msgs/msg/Status.connection_uptime field.
    ## @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
    ## signedness and field order. Backing storage belongs to this value; constructing or copying it
    ## creates no native ROS owner.
    field_connection_uptime*: Ros2Builtin_interfacesMsgDuration
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_platform_msgsMsgStatus*(): Ros2Clearpath_platform_msgsMsgStatus =
    result.field_header = initRos2Std_msgsMsgHeader()
    result.field_mcu_uptime = initRos2Builtin_interfacesMsgDuration()
    result.field_connection_uptime = initRos2Builtin_interfacesMsgDuration()
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsMsgStatusMinimumWireBytes* = 36
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsMsgStatusMaximumWireBytes* = 676
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_platform_msgsMsgStatusCodecIdentity* = "UWVMROS1_1bd99cc11ea9efcb51eeba8fc1d599960c16e958a8adf33a56d47fe27be87782"
## @brief Encode every field of complete clearpath_platform_msgs/msg/Status.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_platform_msgsMsgStatus; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 676, written)
## @brief Decode every field of complete clearpath_platform_msgs/msg/Status.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_platform_msgsMsgStatus*(bytes: openArray[byte]; value: var Ros2Clearpath_platform_msgsMsgStatus): uint32 =
  wire.decode(bytes, 36, 676, value)

## @brief Complete clearpath_platform_msgs/msg/StopStatus value.
## @details Retain all 4 original fields and 0 constants. Canonical extent 15..143 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_platform_msgsMsgStopStatus* = object
    ## @brief Original clearpath_platform_msgs/msg/StopStatus.header field.
    ## @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    ## field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_header*: Ros2Std_msgsMsgHeader
    ## @brief Original clearpath_platform_msgs/msg/StopStatus.stop_power_status field.
    ## @details Original type bool. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_stop_power_status*: bool
    ## @brief Original clearpath_platform_msgs/msg/StopStatus.external_stop_present field.
    ## @details Original type bool. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_external_stop_present*: bool
    ## @brief Original clearpath_platform_msgs/msg/StopStatus.needs_reset field.
    ## @details Original type bool. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_needs_reset*: bool
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_platform_msgsMsgStopStatus*(): Ros2Clearpath_platform_msgsMsgStopStatus =
    result.field_header = initRos2Std_msgsMsgHeader()
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsMsgStopStatusMinimumWireBytes* = 15
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsMsgStopStatusMaximumWireBytes* = 143
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_platform_msgsMsgStopStatusCodecIdentity* = "UWVMROS1_101f96c8d48e7a945a2f94108e7b48393fc9d4bd75507dd709b95180ff4794d2"
## @brief Encode every field of complete clearpath_platform_msgs/msg/StopStatus.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_platform_msgsMsgStopStatus; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 143, written)
## @brief Decode every field of complete clearpath_platform_msgs/msg/StopStatus.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_platform_msgsMsgStopStatus*(bytes: openArray[byte]; value: var Ros2Clearpath_platform_msgsMsgStopStatus): uint32 =
  wire.decode(bytes, 15, 143, value)

## @brief Complete clearpath_platform_msgs/msg/Temperature value.
## @details Retain all 2 original fields and 28 constants. Canonical extent 16..152 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_platform_msgsMsgTemperature* = object
    ## @brief Original clearpath_platform_msgs/msg/Temperature.header field.
    ## @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    ## field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_header*: Ros2Std_msgsMsgHeader
    ## @brief Original clearpath_platform_msgs/msg/Temperature.temperatures field.
    ## @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
    ## or copying it creates no native ROS owner.
    field_temperatures*: NativeSequence[float32, 2]
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_platform_msgsMsgTemperature*(): Ros2Clearpath_platform_msgsMsgTemperature =
    result.field_header = initRos2Std_msgsMsgHeader()
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsMsgTemperatureMinimumWireBytes* = 16
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsMsgTemperatureMaximumWireBytes* = 152
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_platform_msgsMsgTemperatureCodecIdentity* = "UWVMROS1_b4ae4d6ace9045ce96b0931f08d3b2c7ec358ab9c6da7022afd9ea489f9b0466"
## @brief Original clearpath_platform_msgs/msg/Temperature.J100_MCU constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgTemperature_J100_MCU*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/Temperature.J100_PCB constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgTemperature_J100_PCB*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/Temperature.D100_MCU constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgTemperature_D100_MCU*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/Temperature.D100_PCB constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgTemperature_D100_PCB*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/Temperature.D150_MCU constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgTemperature_D150_MCU*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/Temperature.D150_PCB constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgTemperature_D150_PCB*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/Temperature.W200_MCU constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgTemperature_W200_MCU*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/Temperature.R100_MCU constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgTemperature_R100_MCU*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/Temperature.R100_PCB constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgTemperature_R100_PCB*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/Temperature.CC01_MCU constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgTemperature_CC01_MCU*: uint8 = 0'u8
## @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN1 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgTemperature_CC01_FAN1*: uint8 = 1'u8
## @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN2 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgTemperature_CC01_FAN2*: uint8 = 2'u8
## @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN3 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgTemperature_CC01_FAN3*: uint8 = 3'u8
## @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN4 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgTemperature_CC01_FAN4*: uint8 = 4'u8
## @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN5 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgTemperature_CC01_FAN5*: uint8 = 5'u8
## @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN6 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgTemperature_CC01_FAN6*: uint8 = 6'u8
## @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN7 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgTemperature_CC01_FAN7*: uint8 = 7'u8
## @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN8 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgTemperature_CC01_FAN8*: uint8 = 8'u8
## @brief Original clearpath_platform_msgs/msg/Temperature.CC01_5V_INDUCTOR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgTemperature_CC01_5V_INDUCTOR*: uint8 = 9'u8
## @brief Original clearpath_platform_msgs/msg/Temperature.CC01_MAIN_GND_LUG constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgTemperature_CC01_MAIN_GND_LUG*: uint8 = 10'u8
## @brief Original clearpath_platform_msgs/msg/Temperature.CC01_24V_DCDC constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgTemperature_CC01_24V_DCDC*: uint8 = 11'u8
## @brief Original clearpath_platform_msgs/msg/Temperature.CC01_12V_DCDC constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgTemperature_CC01_12V_DCDC*: uint8 = 12'u8
## @brief Original clearpath_platform_msgs/msg/Temperature.CC01_EXT_1 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgTemperature_CC01_EXT_1*: uint8 = 13'u8
## @brief Original clearpath_platform_msgs/msg/Temperature.CC01_EXT_2 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgTemperature_CC01_EXT_2*: uint8 = 14'u8
## @brief Original clearpath_platform_msgs/msg/Temperature.CC01_EXT_3 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgTemperature_CC01_EXT_3*: uint8 = 15'u8
## @brief Original clearpath_platform_msgs/msg/Temperature.CC01_EXT_4 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgTemperature_CC01_EXT_4*: uint8 = 16'u8
## @brief Original clearpath_platform_msgs/msg/Temperature.CC01_BREAKOUT_1 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgTemperature_CC01_BREAKOUT_1*: uint8 = 17'u8
## @brief Original clearpath_platform_msgs/msg/Temperature.CC01_BREAKOUT_2 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Clearpath_platform_msgsMsgTemperature_CC01_BREAKOUT_2*: uint8 = 18'u8
## @brief Encode every field of complete clearpath_platform_msgs/msg/Temperature.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_platform_msgsMsgTemperature; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 152, written)
## @brief Decode every field of complete clearpath_platform_msgs/msg/Temperature.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_platform_msgsMsgTemperature*(bytes: openArray[byte]; value: var Ros2Clearpath_platform_msgsMsgTemperature): uint32 =
  wire.decode(bytes, 16, 152, value)

## @brief Complete clearpath_control_msgs/srv/PowerControl_Request value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 1..1 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_control_msgsSrvPowerControl_Request* = object
    ## @brief Original clearpath_control_msgs/srv/PowerControl_Request.power_on field.
    ## @details Original type bool. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_power_on*: bool
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_control_msgsSrvPowerControl_Request*(): Ros2Clearpath_control_msgsSrvPowerControl_Request =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_control_msgsSrvPowerControl_RequestMinimumWireBytes* = 1
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_control_msgsSrvPowerControl_RequestMaximumWireBytes* = 1
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_control_msgsSrvPowerControl_RequestCodecIdentity* = "UWVMROS1_1ad49d42d8895b3bd219799ab9cc080cf09d23aa4bca4c1172d19bc18fa416c4"
## @brief Encode every field of complete clearpath_control_msgs/srv/PowerControl_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_control_msgsSrvPowerControl_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1, written)
## @brief Decode every field of complete clearpath_control_msgs/srv/PowerControl_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_control_msgsSrvPowerControl_Request*(bytes: openArray[byte]; value: var Ros2Clearpath_control_msgsSrvPowerControl_Request): uint32 =
  wire.decode(bytes, 1, 1, value)

## @brief Complete clearpath_control_msgs/srv/PowerControl_Response value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 5..261 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_control_msgsSrvPowerControl_Response* = object
    ## @brief Original clearpath_control_msgs/srv/PowerControl_Response.success field.
    ## @details Original type bool. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_success*: bool
    ## @brief Original clearpath_control_msgs/srv/PowerControl_Response.message field.
    ## @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_message*: NativeText[256, false]
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_control_msgsSrvPowerControl_Response*(): Ros2Clearpath_control_msgsSrvPowerControl_Response =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_control_msgsSrvPowerControl_ResponseMinimumWireBytes* = 5
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_control_msgsSrvPowerControl_ResponseMaximumWireBytes* = 261
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_control_msgsSrvPowerControl_ResponseCodecIdentity* = "UWVMROS1_6d74d07d6a8ff1c41ed4ca13939d54e9e642f423dc2ff6598665238ebbf10a8b"
## @brief Encode every field of complete clearpath_control_msgs/srv/PowerControl_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_control_msgsSrvPowerControl_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 261, written)
## @brief Decode every field of complete clearpath_control_msgs/srv/PowerControl_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_control_msgsSrvPowerControl_Response*(bytes: openArray[byte]; value: var Ros2Clearpath_control_msgsSrvPowerControl_Response): uint32 =
  wire.decode(bytes, 5, 261, value)

## @brief Complete clearpath_platform_msgs/srv/ConfigureMcu_Request value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 5..261 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_platform_msgsSrvConfigureMcu_Request* = object
    ## @brief Original clearpath_platform_msgs/srv/ConfigureMcu_Request.domain_id field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_domain_id*: uint8
    ## @brief Original clearpath_platform_msgs/srv/ConfigureMcu_Request.robot_namespace field.
    ## @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_robot_namespace*: NativeText[256, false]
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_platform_msgsSrvConfigureMcu_Request*(): Ros2Clearpath_platform_msgsSrvConfigureMcu_Request =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsSrvConfigureMcu_RequestMinimumWireBytes* = 5
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsSrvConfigureMcu_RequestMaximumWireBytes* = 261
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_platform_msgsSrvConfigureMcu_RequestCodecIdentity* = "UWVMROS1_9c48451b208c4de7a51c5075587dfbe710e7ec6b249c7e1eef519022154023fa"
## @brief Encode every field of complete clearpath_platform_msgs/srv/ConfigureMcu_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_platform_msgsSrvConfigureMcu_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 261, written)
## @brief Decode every field of complete clearpath_platform_msgs/srv/ConfigureMcu_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_platform_msgsSrvConfigureMcu_Request*(bytes: openArray[byte]; value: var Ros2Clearpath_platform_msgsSrvConfigureMcu_Request): uint32 =
  wire.decode(bytes, 5, 261, value)

## @brief Complete clearpath_platform_msgs/srv/ConfigureMcu_Response value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 5..261 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_platform_msgsSrvConfigureMcu_Response* = object
    ## @brief Original clearpath_platform_msgs/srv/ConfigureMcu_Response.success field.
    ## @details Original type bool. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_success*: bool
    ## @brief Original clearpath_platform_msgs/srv/ConfigureMcu_Response.message field.
    ## @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_message*: NativeText[256, false]
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_platform_msgsSrvConfigureMcu_Response*(): Ros2Clearpath_platform_msgsSrvConfigureMcu_Response =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsSrvConfigureMcu_ResponseMinimumWireBytes* = 5
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsSrvConfigureMcu_ResponseMaximumWireBytes* = 261
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_platform_msgsSrvConfigureMcu_ResponseCodecIdentity* = "UWVMROS1_552e715f290b5b9aa5dc926519cf2ab5120d6b2ae5eca9902efcc3f8c9e459ad"
## @brief Encode every field of complete clearpath_platform_msgs/srv/ConfigureMcu_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_platform_msgsSrvConfigureMcu_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 261, written)
## @brief Decode every field of complete clearpath_platform_msgs/srv/ConfigureMcu_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_platform_msgsSrvConfigureMcu_Response*(bytes: openArray[byte]; value: var Ros2Clearpath_platform_msgsSrvConfigureMcu_Response): uint32 =
  wire.decode(bytes, 5, 261, value)

## @brief Complete clearpath_platform_msgs/srv/SetPinout_Request value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 5..5 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_platform_msgsSrvSetPinout_Request* = object
    ## @brief Original clearpath_platform_msgs/srv/SetPinout_Request.state field.
    ## @details Original type bool. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_state*: bool
    ## @brief Original clearpath_platform_msgs/srv/SetPinout_Request.toggle_period field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_toggle_period*: uint32
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_platform_msgsSrvSetPinout_Request*(): Ros2Clearpath_platform_msgsSrvSetPinout_Request =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsSrvSetPinout_RequestMinimumWireBytes* = 5
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsSrvSetPinout_RequestMaximumWireBytes* = 5
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_platform_msgsSrvSetPinout_RequestCodecIdentity* = "UWVMROS1_3a3a2f8f16279c2e7a057353cd1f7f11e1a65e887dd3ce0a4b7f584708afb238"
## @brief Encode every field of complete clearpath_platform_msgs/srv/SetPinout_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_platform_msgsSrvSetPinout_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 5, written)
## @brief Decode every field of complete clearpath_platform_msgs/srv/SetPinout_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_platform_msgsSrvSetPinout_Request*(bytes: openArray[byte]; value: var Ros2Clearpath_platform_msgsSrvSetPinout_Request): uint32 =
  wire.decode(bytes, 5, 5, value)

## @brief Complete clearpath_platform_msgs/srv/SetPinout_Response value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 5..261 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Clearpath_platform_msgsSrvSetPinout_Response* = object
    ## @brief Original clearpath_platform_msgs/srv/SetPinout_Response.success field.
    ## @details Original type bool. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_success*: bool
    ## @brief Original clearpath_platform_msgs/srv/SetPinout_Response.message field.
    ## @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_message*: NativeText[256, false]
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_platform_msgsSrvSetPinout_Response*(): Ros2Clearpath_platform_msgsSrvSetPinout_Response =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsSrvSetPinout_ResponseMinimumWireBytes* = 5
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsSrvSetPinout_ResponseMaximumWireBytes* = 261
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_platform_msgsSrvSetPinout_ResponseCodecIdentity* = "UWVMROS1_b643ef5de2dfb725906ef8f11d79601400953211b47220be7a6fcc05d1be8ee3"
## @brief Encode every field of complete clearpath_platform_msgs/srv/SetPinout_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_platform_msgsSrvSetPinout_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 261, written)
## @brief Decode every field of complete clearpath_platform_msgs/srv/SetPinout_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_platform_msgsSrvSetPinout_Response*(bytes: openArray[byte]; value: var Ros2Clearpath_platform_msgsSrvSetPinout_Response): uint32 =
  wire.decode(bytes, 5, 261, value)

