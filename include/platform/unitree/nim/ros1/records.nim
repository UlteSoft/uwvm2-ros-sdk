## @file records.nim
## @brief Complete owned original Unitree ROS 1 native records and codecs.
## @details Generated from the admitted source-pinned catalog; no ROS authority is created.
import unitree/nim/wire

## @brief Complete unitree_legged_msgs/BmsCmd value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 4..4 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Unitree_legged_msgsBmsCmd* = object
    ## @brief Original unitree_legged_msgs/BmsCmd.off field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_off*: uint8
    ## @brief Original unitree_legged_msgs/BmsCmd.reserve field.
    ## @details Original type uint8. Shape array; bound/count 3 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_reserve*: array[3, uint8]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Unitree_legged_msgsBmsCmdMinimumWireBytes* = 4
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Unitree_legged_msgsBmsCmdMaximumWireBytes* = 4
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros1Unitree_legged_msgsBmsCmdCodecIdentity* =
    "UWVMROS1_75732753b156fff8db3ba7e39541444bed2b71e139389a9b5bfbc49a4fa14928"
 ## @brief Encode every field of complete unitree_legged_msgs/BmsCmd.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Unitree_legged_msgsBmsCmd; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 4, written)
## @brief Decode every field of complete unitree_legged_msgs/BmsCmd.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Unitree_legged_msgsBmsCmd*(bytes: openArray[byte]; value: var Ros1Unitree_legged_msgsBmsCmd): uint32 =
    wire.decode(bytes, 4, 4, value)

## @brief Complete unitree_legged_msgs/BmsState value.
## @details Retain all 9 original fields and 0 constants. Canonical extent 34..34 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Unitree_legged_msgsBmsState* = object
    ## @brief Original unitree_legged_msgs/BmsState.version_h field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_version_h*: uint8
    ## @brief Original unitree_legged_msgs/BmsState.version_l field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_version_l*: uint8
    ## @brief Original unitree_legged_msgs/BmsState.bms_status field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_bms_status*: uint8
    ## @brief Original unitree_legged_msgs/BmsState.SOC field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_SOC*: uint8
    ## @brief Original unitree_legged_msgs/BmsState.current field.
    ## @details Original type int32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_current*: int32
    ## @brief Original unitree_legged_msgs/BmsState.cycle field.
    ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_cycle*: uint16
    ## @brief Original unitree_legged_msgs/BmsState.BQ_NTC field.
    ## @details Original type int8. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_BQ_NTC*: array[2, int8]
    ## @brief Original unitree_legged_msgs/BmsState.MCU_NTC field.
    ## @details Original type int8. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_MCU_NTC*: array[2, int8]
    ## @brief Original unitree_legged_msgs/BmsState.cell_vol field.
    ## @details Original type uint16. Shape array; bound/count 10 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_cell_vol*: array[10, uint16]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Unitree_legged_msgsBmsStateMinimumWireBytes* = 34
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Unitree_legged_msgsBmsStateMaximumWireBytes* = 34
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros1Unitree_legged_msgsBmsStateCodecIdentity* =
    "UWVMROS1_ef0f93501f54d0ff760039d86bd1ba1739cb0c888b3a873611679484ccec094a"
 ## @brief Encode every field of complete unitree_legged_msgs/BmsState.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Unitree_legged_msgsBmsState; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 34, written)
## @brief Decode every field of complete unitree_legged_msgs/BmsState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Unitree_legged_msgsBmsState*(bytes: openArray[byte];
        value: var Ros1Unitree_legged_msgsBmsState): uint32 =
    wire.decode(bytes, 34, 34, value)

## @brief Complete unitree_legged_msgs/Cartesian value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 12..12 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Unitree_legged_msgsCartesian* = object
    ## @brief Original unitree_legged_msgs/Cartesian.x field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_x*: float32
    ## @brief Original unitree_legged_msgs/Cartesian.y field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_y*: float32
    ## @brief Original unitree_legged_msgs/Cartesian.z field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_z*: float32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Unitree_legged_msgsCartesianMinimumWireBytes* = 12
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Unitree_legged_msgsCartesianMaximumWireBytes* = 12
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros1Unitree_legged_msgsCartesianCodecIdentity* =
    "UWVMROS1_43c7c62ba2a689751a0a15e326c5c9690a9b1f166b6726a0f803b98d2b3fa722"
 ## @brief Encode every field of complete unitree_legged_msgs/Cartesian.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Unitree_legged_msgsCartesian; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 12, written)
## @brief Decode every field of complete unitree_legged_msgs/Cartesian.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Unitree_legged_msgsCartesian*(bytes: openArray[byte];
        value: var Ros1Unitree_legged_msgsCartesian): uint32 =
    wire.decode(bytes, 12, 12, value)

## @brief Complete unitree_legged_msgs/LED value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 3..3 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Unitree_legged_msgsLED* = object
    ## @brief Original unitree_legged_msgs/LED.r field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_r*: uint8
    ## @brief Original unitree_legged_msgs/LED.g field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_g*: uint8
    ## @brief Original unitree_legged_msgs/LED.b field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_b*: uint8
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Unitree_legged_msgsLEDMinimumWireBytes* = 3
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Unitree_legged_msgsLEDMaximumWireBytes* = 3
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros1Unitree_legged_msgsLEDCodecIdentity* =
    "UWVMROS1_b4efac59eaf4d3f09c069e4833dd82b5422980f6a9f27db84950243a47164ea5"
 ## @brief Encode every field of complete unitree_legged_msgs/LED.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Unitree_legged_msgsLED; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 3, written)
## @brief Decode every field of complete unitree_legged_msgs/LED.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Unitree_legged_msgsLED*(bytes: openArray[byte]; value: var Ros1Unitree_legged_msgsLED): uint32 =
    wire.decode(bytes, 3, 3, value)

## @brief Complete unitree_legged_msgs/HighCmd value.
## @details Retain all 20 original fields and 0 constants. Canonical extent 129..129 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Unitree_legged_msgsHighCmd* = object
    ## @brief Original unitree_legged_msgs/HighCmd.head field.
    ## @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_head*: array[2, uint8]
    ## @brief Original unitree_legged_msgs/HighCmd.levelFlag field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_levelFlag*: uint8
    ## @brief Original unitree_legged_msgs/HighCmd.frameReserve field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_frameReserve*: uint8
    ## @brief Original unitree_legged_msgs/HighCmd.SN field.
    ## @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_SN*: array[2, uint32]
    ## @brief Original unitree_legged_msgs/HighCmd.version field.
    ## @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_version*: array[2, uint32]
    ## @brief Original unitree_legged_msgs/HighCmd.bandWidth field.
    ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_bandWidth*: uint16
    ## @brief Original unitree_legged_msgs/HighCmd.mode field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_mode*: uint8
    ## @brief Original unitree_legged_msgs/HighCmd.gaitType field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_gaitType*: uint8
    ## @brief Original unitree_legged_msgs/HighCmd.speedLevel field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_speedLevel*: uint8
    ## @brief Original unitree_legged_msgs/HighCmd.footRaiseHeight field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_footRaiseHeight*: float32
    ## @brief Original unitree_legged_msgs/HighCmd.bodyHeight field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_bodyHeight*: float32
    ## @brief Original unitree_legged_msgs/HighCmd.position field.
    ## @details Original type float32. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_position*: array[2, float32]
    ## @brief Original unitree_legged_msgs/HighCmd.euler field.
    ## @details Original type float32. Shape array; bound/count 3 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_euler*: array[3, float32]
    ## @brief Original unitree_legged_msgs/HighCmd.velocity field.
    ## @details Original type float32. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_velocity*: array[2, float32]
    ## @brief Original unitree_legged_msgs/HighCmd.yawSpeed field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_yawSpeed*: float32
    ## @brief Original unitree_legged_msgs/HighCmd.bms field.
    ## @details Original type unitree_legged_msgs/BmsCmd. Preserve declared units, frame, signedness
    ## and field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_bms*: Ros1Unitree_legged_msgsBmsCmd
    ## @brief Original unitree_legged_msgs/HighCmd.led field.
    ## @details Original type unitree_legged_msgs/LED. Shape array; bound/count 4 elements. Preserve
    ## declared units, frame, signedness and field order. Backing storage belongs to this value;
    ## constructing or copying it creates no native ROS owner.
    field_led*: array[4, Ros1Unitree_legged_msgsLED]
    ## @brief Original unitree_legged_msgs/HighCmd.wirelessRemote field.
    ## @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_wirelessRemote*: array[40, uint8]
    ## @brief Original unitree_legged_msgs/HighCmd.reserve field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_reserve*: uint32
    ## @brief Original unitree_legged_msgs/HighCmd.crc field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_crc*: uint32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Unitree_legged_msgsHighCmdMinimumWireBytes* = 129
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Unitree_legged_msgsHighCmdMaximumWireBytes* = 129
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros1Unitree_legged_msgsHighCmdCodecIdentity* =
    "UWVMROS1_ec6ec8937b2629a4441adc4a21eed83fca940b18d46b970d96e05c957ac90b38"
 ## @brief Encode every field of complete unitree_legged_msgs/HighCmd.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Unitree_legged_msgsHighCmd; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 129, written)
## @brief Decode every field of complete unitree_legged_msgs/HighCmd.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Unitree_legged_msgsHighCmd*(bytes: openArray[byte]; value: var Ros1Unitree_legged_msgsHighCmd): uint32 =
    wire.decode(bytes, 129, 129, value)

## @brief Complete unitree_legged_msgs/IMU value.
## @details Retain all 5 original fields and 0 constants. Canonical extent 53..53 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Unitree_legged_msgsIMU* = object
    ## @brief Original unitree_legged_msgs/IMU.quaternion field.
    ## @details Original type float32. Shape array; bound/count 4 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_quaternion*: array[4, float32]
    ## @brief Original unitree_legged_msgs/IMU.gyroscope field.
    ## @details Original type float32. Shape array; bound/count 3 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_gyroscope*: array[3, float32]
    ## @brief Original unitree_legged_msgs/IMU.accelerometer field.
    ## @details Original type float32. Shape array; bound/count 3 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_accelerometer*: array[3, float32]
    ## @brief Original unitree_legged_msgs/IMU.rpy field.
    ## @details Original type float32. Shape array; bound/count 3 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_rpy*: array[3, float32]
    ## @brief Original unitree_legged_msgs/IMU.temperature field.
    ## @details Original type int8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_temperature*: int8
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Unitree_legged_msgsIMUMinimumWireBytes* = 53
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Unitree_legged_msgsIMUMaximumWireBytes* = 53
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros1Unitree_legged_msgsIMUCodecIdentity* =
    "UWVMROS1_29d9ec99e676fe8747665da588b78c8ab77a3197e281ba892ab389d2d81fa276"
 ## @brief Encode every field of complete unitree_legged_msgs/IMU.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Unitree_legged_msgsIMU; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 53, written)
## @brief Decode every field of complete unitree_legged_msgs/IMU.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Unitree_legged_msgsIMU*(bytes: openArray[byte]; value: var Ros1Unitree_legged_msgsIMU): uint32 =
    wire.decode(bytes, 53, 53, value)

## @brief Complete unitree_legged_msgs/MotorState value.
## @details Retain all 10 original fields and 0 constants. Canonical extent 38..38 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Unitree_legged_msgsMotorState* = object
    ## @brief Original unitree_legged_msgs/MotorState.mode field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_mode*: uint8
    ## @brief Original unitree_legged_msgs/MotorState.q field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_q*: float32
    ## @brief Original unitree_legged_msgs/MotorState.dq field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_dq*: float32
    ## @brief Original unitree_legged_msgs/MotorState.ddq field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_ddq*: float32
    ## @brief Original unitree_legged_msgs/MotorState.tauEst field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_tauEst*: float32
    ## @brief Original unitree_legged_msgs/MotorState.q_raw field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_q_raw*: float32
    ## @brief Original unitree_legged_msgs/MotorState.dq_raw field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_dq_raw*: float32
    ## @brief Original unitree_legged_msgs/MotorState.ddq_raw field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_ddq_raw*: float32
    ## @brief Original unitree_legged_msgs/MotorState.temperature field.
    ## @details Original type int8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_temperature*: int8
    ## @brief Original unitree_legged_msgs/MotorState.reserve field.
    ## @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_reserve*: array[2, uint32]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Unitree_legged_msgsMotorStateMinimumWireBytes* = 38
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Unitree_legged_msgsMotorStateMaximumWireBytes* = 38
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros1Unitree_legged_msgsMotorStateCodecIdentity* =
    "UWVMROS1_be540cb22db5f08b6b9a8082777c76244e80f3148e9cfd63f510e4b2acdc0abf"
 ## @brief Encode every field of complete unitree_legged_msgs/MotorState.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Unitree_legged_msgsMotorState; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 38, written)
## @brief Decode every field of complete unitree_legged_msgs/MotorState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Unitree_legged_msgsMotorState*(bytes: openArray[byte];
        value: var Ros1Unitree_legged_msgsMotorState): uint32 =
    wire.decode(bytes, 38, 38, value)

## @brief Complete unitree_legged_msgs/HighState value.
## @details Retain all 25 original fields and 0 constants. Canonical extent 1087..1087 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Unitree_legged_msgsHighState* = object
    ## @brief Original unitree_legged_msgs/HighState.head field.
    ## @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_head*: array[2, uint8]
    ## @brief Original unitree_legged_msgs/HighState.levelFlag field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_levelFlag*: uint8
    ## @brief Original unitree_legged_msgs/HighState.frameReserve field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_frameReserve*: uint8
    ## @brief Original unitree_legged_msgs/HighState.SN field.
    ## @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_SN*: array[2, uint32]
    ## @brief Original unitree_legged_msgs/HighState.version field.
    ## @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_version*: array[2, uint32]
    ## @brief Original unitree_legged_msgs/HighState.bandWidth field.
    ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_bandWidth*: uint16
    ## @brief Original unitree_legged_msgs/HighState.imu field.
    ## @details Original type unitree_legged_msgs/IMU. Preserve declared units, frame, signedness
    ## and field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_imu*: Ros1Unitree_legged_msgsIMU
    ## @brief Original unitree_legged_msgs/HighState.motorState field.
    ## @details Original type unitree_legged_msgs/MotorState. Shape array; bound/count 20 elements.
    ## Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    ## value; constructing or copying it creates no native ROS owner.
    field_motorState*: array[20, Ros1Unitree_legged_msgsMotorState]
    ## @brief Original unitree_legged_msgs/HighState.bms field.
    ## @details Original type unitree_legged_msgs/BmsState. Preserve declared units, frame,
    ## signedness and field order. Backing storage belongs to this value; constructing or copying it
    ## creates no native ROS owner.
    field_bms*: Ros1Unitree_legged_msgsBmsState
    ## @brief Original unitree_legged_msgs/HighState.footForce field.
    ## @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_footForce*: array[4, int16]
    ## @brief Original unitree_legged_msgs/HighState.footForceEst field.
    ## @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_footForceEst*: array[4, int16]
    ## @brief Original unitree_legged_msgs/HighState.mode field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_mode*: uint8
    ## @brief Original unitree_legged_msgs/HighState.progress field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_progress*: float32
    ## @brief Original unitree_legged_msgs/HighState.gaitType field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_gaitType*: uint8
    ## @brief Original unitree_legged_msgs/HighState.footRaiseHeight field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_footRaiseHeight*: float32
    ## @brief Original unitree_legged_msgs/HighState.position field.
    ## @details Original type float32. Shape array; bound/count 3 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_position*: array[3, float32]
    ## @brief Original unitree_legged_msgs/HighState.bodyHeight field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_bodyHeight*: float32
    ## @brief Original unitree_legged_msgs/HighState.velocity field.
    ## @details Original type float32. Shape array; bound/count 3 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_velocity*: array[3, float32]
    ## @brief Original unitree_legged_msgs/HighState.yawSpeed field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_yawSpeed*: float32
    ## @brief Original unitree_legged_msgs/HighState.rangeObstacle field.
    ## @details Original type float32. Shape array; bound/count 4 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_rangeObstacle*: array[4, float32]
    ## @brief Original unitree_legged_msgs/HighState.footPosition2Body field.
    ## @details Original type unitree_legged_msgs/Cartesian. Shape array; bound/count 4 elements.
    ## Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    ## value; constructing or copying it creates no native ROS owner.
    field_footPosition2Body*: array[4, Ros1Unitree_legged_msgsCartesian]
    ## @brief Original unitree_legged_msgs/HighState.footSpeed2Body field.
    ## @details Original type unitree_legged_msgs/Cartesian. Shape array; bound/count 4 elements.
    ## Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    ## value; constructing or copying it creates no native ROS owner.
    field_footSpeed2Body*: array[4, Ros1Unitree_legged_msgsCartesian]
    ## @brief Original unitree_legged_msgs/HighState.wirelessRemote field.
    ## @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_wirelessRemote*: array[40, uint8]
    ## @brief Original unitree_legged_msgs/HighState.reserve field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_reserve*: uint32
    ## @brief Original unitree_legged_msgs/HighState.crc field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_crc*: uint32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Unitree_legged_msgsHighStateMinimumWireBytes* = 1087
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Unitree_legged_msgsHighStateMaximumWireBytes* = 1087
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros1Unitree_legged_msgsHighStateCodecIdentity* =
    "UWVMROS1_82ee0efaab21b5cb89e99f5c0f5daec583b48dd5feb2dd6a7e09ba9d9110b53d"
 ## @brief Encode every field of complete unitree_legged_msgs/HighState.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Unitree_legged_msgsHighState; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 1087, written)
## @brief Decode every field of complete unitree_legged_msgs/HighState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Unitree_legged_msgsHighState*(bytes: openArray[byte];
        value: var Ros1Unitree_legged_msgsHighState): uint32 =
    wire.decode(bytes, 1087, 1087, value)

## @brief Complete unitree_legged_msgs/MotorCmd value.
## @details Retain all 7 original fields and 0 constants. Canonical extent 33..33 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Unitree_legged_msgsMotorCmd* = object
    ## @brief Original unitree_legged_msgs/MotorCmd.mode field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_mode*: uint8
    ## @brief Original unitree_legged_msgs/MotorCmd.q field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_q*: float32
    ## @brief Original unitree_legged_msgs/MotorCmd.dq field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_dq*: float32
    ## @brief Original unitree_legged_msgs/MotorCmd.tau field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_tau*: float32
    ## @brief Original unitree_legged_msgs/MotorCmd.Kp field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_Kp*: float32
    ## @brief Original unitree_legged_msgs/MotorCmd.Kd field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_Kd*: float32
    ## @brief Original unitree_legged_msgs/MotorCmd.reserve field.
    ## @details Original type uint32. Shape array; bound/count 3 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_reserve*: array[3, uint32]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Unitree_legged_msgsMotorCmdMinimumWireBytes* = 33
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Unitree_legged_msgsMotorCmdMaximumWireBytes* = 33
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros1Unitree_legged_msgsMotorCmdCodecIdentity* =
    "UWVMROS1_632b25f209e72857182d92752aa72e3ab47a45e895cc352ee6dc05f1c1168083"
 ## @brief Encode every field of complete unitree_legged_msgs/MotorCmd.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Unitree_legged_msgsMotorCmd; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 33, written)
## @brief Decode every field of complete unitree_legged_msgs/MotorCmd.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Unitree_legged_msgsMotorCmd*(bytes: openArray[byte];
        value: var Ros1Unitree_legged_msgsMotorCmd): uint32 =
    wire.decode(bytes, 33, 33, value)

## @brief Complete unitree_legged_msgs/LowCmd value.
## @details Retain all 11 original fields and 0 constants. Canonical extent 734..734 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Unitree_legged_msgsLowCmd* = object
    ## @brief Original unitree_legged_msgs/LowCmd.head field.
    ## @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_head*: array[2, uint8]
    ## @brief Original unitree_legged_msgs/LowCmd.levelFlag field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_levelFlag*: uint8
    ## @brief Original unitree_legged_msgs/LowCmd.frameReserve field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_frameReserve*: uint8
    ## @brief Original unitree_legged_msgs/LowCmd.SN field.
    ## @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_SN*: array[2, uint32]
    ## @brief Original unitree_legged_msgs/LowCmd.version field.
    ## @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_version*: array[2, uint32]
    ## @brief Original unitree_legged_msgs/LowCmd.bandWidth field.
    ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_bandWidth*: uint16
    ## @brief Original unitree_legged_msgs/LowCmd.motorCmd field.
    ## @details Original type unitree_legged_msgs/MotorCmd. Shape array; bound/count 20 elements.
    ## Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    ## value; constructing or copying it creates no native ROS owner.
    field_motorCmd*: array[20, Ros1Unitree_legged_msgsMotorCmd]
    ## @brief Original unitree_legged_msgs/LowCmd.bms field.
    ## @details Original type unitree_legged_msgs/BmsCmd. Preserve declared units, frame, signedness
    ## and field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_bms*: Ros1Unitree_legged_msgsBmsCmd
    ## @brief Original unitree_legged_msgs/LowCmd.wirelessRemote field.
    ## @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_wirelessRemote*: array[40, uint8]
    ## @brief Original unitree_legged_msgs/LowCmd.reserve field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_reserve*: uint32
    ## @brief Original unitree_legged_msgs/LowCmd.crc field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_crc*: uint32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Unitree_legged_msgsLowCmdMinimumWireBytes* = 734
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Unitree_legged_msgsLowCmdMaximumWireBytes* = 734
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros1Unitree_legged_msgsLowCmdCodecIdentity* =
    "UWVMROS1_11d3ac7c497f01fbf6624c39ec71fa613c462cd62acb20c1f263cdde672e9181"
 ## @brief Encode every field of complete unitree_legged_msgs/LowCmd.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Unitree_legged_msgsLowCmd; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 734, written)
## @brief Decode every field of complete unitree_legged_msgs/LowCmd.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Unitree_legged_msgsLowCmd*(bytes: openArray[byte]; value: var Ros1Unitree_legged_msgsLowCmd): uint32 =
    wire.decode(bytes, 734, 734, value)

## @brief Complete unitree_legged_msgs/LowState value.
## @details Retain all 20 original fields and 0 constants. Canonical extent 1069..1069 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Unitree_legged_msgsLowState* = object
    ## @brief Original unitree_legged_msgs/LowState.head field.
    ## @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_head*: array[2, uint8]
    ## @brief Original unitree_legged_msgs/LowState.levelFlag field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_levelFlag*: uint8
    ## @brief Original unitree_legged_msgs/LowState.frameReserve field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_frameReserve*: uint8
    ## @brief Original unitree_legged_msgs/LowState.SN field.
    ## @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_SN*: array[2, uint32]
    ## @brief Original unitree_legged_msgs/LowState.version field.
    ## @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_version*: array[2, uint32]
    ## @brief Original unitree_legged_msgs/LowState.bandWidth field.
    ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_bandWidth*: uint16
    ## @brief Original unitree_legged_msgs/LowState.imu field.
    ## @details Original type unitree_legged_msgs/IMU. Preserve declared units, frame, signedness
    ## and field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_imu*: Ros1Unitree_legged_msgsIMU
    ## @brief Original unitree_legged_msgs/LowState.motorState field.
    ## @details Original type unitree_legged_msgs/MotorState. Shape array; bound/count 20 elements.
    ## Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    ## value; constructing or copying it creates no native ROS owner.
    field_motorState*: array[20, Ros1Unitree_legged_msgsMotorState]
    ## @brief Original unitree_legged_msgs/LowState.bms field.
    ## @details Original type unitree_legged_msgs/BmsState. Preserve declared units, frame,
    ## signedness and field order. Backing storage belongs to this value; constructing or copying it
    ## creates no native ROS owner.
    field_bms*: Ros1Unitree_legged_msgsBmsState
    ## @brief Original unitree_legged_msgs/LowState.footForce field.
    ## @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_footForce*: array[4, int16]
    ## @brief Original unitree_legged_msgs/LowState.footForceEst field.
    ## @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_footForceEst*: array[4, int16]
    ## @brief Original unitree_legged_msgs/LowState.tick field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_tick*: uint32
    ## @brief Original unitree_legged_msgs/LowState.wirelessRemote field.
    ## @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_wirelessRemote*: array[40, uint8]
    ## @brief Original unitree_legged_msgs/LowState.reserve field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_reserve*: uint32
    ## @brief Original unitree_legged_msgs/LowState.crc field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_crc*: uint32
    ## @brief Original unitree_legged_msgs/LowState.eeForceRaw field.
    ## @details Original type unitree_legged_msgs/Cartesian. Shape array; bound/count 4 elements.
    ## Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    ## value; constructing or copying it creates no native ROS owner.
    field_eeForceRaw*: array[4, Ros1Unitree_legged_msgsCartesian]
    ## @brief Original unitree_legged_msgs/LowState.eeForce field.
    ## @details Original type unitree_legged_msgs/Cartesian. Shape array; bound/count 4 elements.
    ## Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    ## value; constructing or copying it creates no native ROS owner.
    field_eeForce*: array[4, Ros1Unitree_legged_msgsCartesian]
    ## @brief Original unitree_legged_msgs/LowState.position field.
    ## @details Original type unitree_legged_msgs/Cartesian. Preserve declared units, frame,
    ## signedness and field order. Backing storage belongs to this value; constructing or copying it
    ## creates no native ROS owner.
    field_position*: Ros1Unitree_legged_msgsCartesian
    ## @brief Original unitree_legged_msgs/LowState.velocity field.
    ## @details Original type unitree_legged_msgs/Cartesian. Preserve declared units, frame,
    ## signedness and field order. Backing storage belongs to this value; constructing or copying it
    ## creates no native ROS owner.
    field_velocity*: Ros1Unitree_legged_msgsCartesian
    ## @brief Original unitree_legged_msgs/LowState.velocity_w field.
    ## @details Original type unitree_legged_msgs/Cartesian. Preserve declared units, frame,
    ## signedness and field order. Backing storage belongs to this value; constructing or copying it
    ## creates no native ROS owner.
    field_velocity_w*: Ros1Unitree_legged_msgsCartesian
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Unitree_legged_msgsLowStateMinimumWireBytes* = 1069
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Unitree_legged_msgsLowStateMaximumWireBytes* = 1069
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros1Unitree_legged_msgsLowStateCodecIdentity* =
    "UWVMROS1_37425ed49c0eebd762b6084ee413c7706fc43defc524414d3f50cdd2d25552c0"
 ## @brief Encode every field of complete unitree_legged_msgs/LowState.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Unitree_legged_msgsLowState; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 1069, written)
## @brief Decode every field of complete unitree_legged_msgs/LowState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Unitree_legged_msgsLowState*(bytes: openArray[byte];
        value: var Ros1Unitree_legged_msgsLowState): uint32 =
    wire.decode(bytes, 1069, 1069, value)

