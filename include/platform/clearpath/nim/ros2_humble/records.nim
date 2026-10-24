## @file records.nim
## @brief Complete owned original clearpath ROS 2 native records and codecs.
## @details Generated from the admitted source-pinned catalog; no ROS authority is created.
import native/nim/wire

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
## @details Retain all 1 original fields and 9 constants. Canonical extent 4..6 bytes. Native
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
const Ros2Clearpath_platform_msgsMsgFansCodecIdentity* = "UWVMROS1_addc15a9b6db4f7a0eba3545f02ece0800e48796f71e387b4d249af861f95317"
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
## @details Retain all 1 original fields and 20 constants. Canonical extent 4..10 bytes. Native
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
const Ros2Clearpath_platform_msgsMsgLightsCodecIdentity* = "UWVMROS1_14da254234c9c897e39bf4ee0db8faad0798d23fe7017195f35f88fb6e0b3332"
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

## @brief Complete clearpath_platform_msgs/msg/Power value.
## @details Retain all 8 original fields and 42 constants. Canonical extent 25..169 bytes. Native
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
const Ros2Clearpath_platform_msgsMsgPowerCodecIdentity* = "UWVMROS1_e97ba89dea149ff43d0134038985ea45d2f072af592ea128aa5502a053478d22"
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
## @details Retain all 7 original fields and 0 constants. Canonical extent 44..684 bytes. Native
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
    ## @brief Original clearpath_platform_msgs/msg/Status.pcb_temperature field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_pcb_temperature*: float32
    ## @brief Original clearpath_platform_msgs/msg/Status.mcu_temperature field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_mcu_temperature*: float32
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Clearpath_platform_msgsMsgStatus*(): Ros2Clearpath_platform_msgsMsgStatus =
    result.field_header = initRos2Std_msgsMsgHeader()
    result.field_mcu_uptime = initRos2Builtin_interfacesMsgDuration()
    result.field_connection_uptime = initRos2Builtin_interfacesMsgDuration()
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsMsgStatusMinimumWireBytes* = 44
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Clearpath_platform_msgsMsgStatusMaximumWireBytes* = 684
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Clearpath_platform_msgsMsgStatusCodecIdentity* = "UWVMROS1_331afb70728e70e0391da1b2a0f2b97fdc8742a363a2b007606121ad778dd5c1"
## @brief Encode every field of complete clearpath_platform_msgs/msg/Status.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Clearpath_platform_msgsMsgStatus; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 684, written)
## @brief Decode every field of complete clearpath_platform_msgs/msg/Status.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Clearpath_platform_msgsMsgStatus*(bytes: openArray[byte]; value: var Ros2Clearpath_platform_msgsMsgStatus): uint32 =
  wire.decode(bytes, 44, 684, value)

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

