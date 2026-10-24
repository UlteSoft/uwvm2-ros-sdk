## @file records.nim
## @brief Complete owned original ABB ROS 2 native records and codecs.
## @details Generated from the admitted source-pinned catalog; no ROS authority is created.
import ros/nim/wire

## @brief Complete abb_egm_msgs/msg/EGMChannelState value.
## @details Retain all 7 original fields and 10 constants. Canonical extent 17..81 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_egm_msgsMsgEGMChannelState* = object
  ## @brief Original abb_egm_msgs/msg/EGMChannelState.name field.
  ## @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_name*: NativeText[64, false]
  ## @brief Original abb_egm_msgs/msg/EGMChannelState.active field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_active*: bool
  ## @brief Original abb_egm_msgs/msg/EGMChannelState.egm_convergence_met field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_egm_convergence_met*: bool
  ## @brief Original abb_egm_msgs/msg/EGMChannelState.egm_client_state field.
  ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_egm_client_state*: uint8
  ## @brief Original abb_egm_msgs/msg/EGMChannelState.motor_state field.
  ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_motor_state*: uint8
  ## @brief Original abb_egm_msgs/msg/EGMChannelState.rapid_execution_state field.
  ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_rapid_execution_state*: uint8
  ## @brief Original abb_egm_msgs/msg/EGMChannelState.utilization_rate field.
  ## @details Original type float64. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_utilization_rate*: float64
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_egm_msgsMsgEGMChannelStateMinimumWireBytes* = 17
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_egm_msgsMsgEGMChannelStateMaximumWireBytes* = 81
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_egm_msgsMsgEGMChannelStateCodecIdentity* = "UWVMROS1_fbd288b93963fccc92aa114570c0a4f6a1fdc5b473cb8e252922720f5d88b519"
## @brief Original abb_egm_msgs/msg/EGMChannelState.EGM_UNDEFINED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_egm_msgsMsgEGMChannelState_EGM_UNDEFINED*: uint8 = 1'u8
## @brief Original abb_egm_msgs/msg/EGMChannelState.EGM_ERROR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_egm_msgsMsgEGMChannelState_EGM_ERROR*: uint8 = 2'u8
## @brief Original abb_egm_msgs/msg/EGMChannelState.EGM_STOPPED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_egm_msgsMsgEGMChannelState_EGM_STOPPED*: uint8 = 3'u8
## @brief Original abb_egm_msgs/msg/EGMChannelState.EGM_RUNNING constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_egm_msgsMsgEGMChannelState_EGM_RUNNING*: uint8 = 4'u8
## @brief Original abb_egm_msgs/msg/EGMChannelState.MOTORS_UNDEFINED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_egm_msgsMsgEGMChannelState_MOTORS_UNDEFINED*: uint8 = 1'u8
## @brief Original abb_egm_msgs/msg/EGMChannelState.MOTORS_ON constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_egm_msgsMsgEGMChannelState_MOTORS_ON*: uint8 = 2'u8
## @brief Original abb_egm_msgs/msg/EGMChannelState.MOTORS_OFF constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_egm_msgsMsgEGMChannelState_MOTORS_OFF*: uint8 = 3'u8
## @brief Original abb_egm_msgs/msg/EGMChannelState.RAPID_UNDEFINED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_egm_msgsMsgEGMChannelState_RAPID_UNDEFINED*: uint8 = 1'u8
## @brief Original abb_egm_msgs/msg/EGMChannelState.RAPID_STOPPED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_egm_msgsMsgEGMChannelState_RAPID_STOPPED*: uint8 = 2'u8
## @brief Original abb_egm_msgs/msg/EGMChannelState.RAPID_RUNNING constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_egm_msgsMsgEGMChannelState_RAPID_RUNNING*: uint8 = 3'u8
## @brief Encode every field of complete abb_egm_msgs/msg/EGMChannelState.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_egm_msgsMsgEGMChannelState; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 81, written)
## @brief Decode every field of complete abb_egm_msgs/msg/EGMChannelState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_egm_msgsMsgEGMChannelState*(bytes: openArray[byte]; value: var Ros2Abb_egm_msgsMsgEGMChannelState): uint32 =
  wire.decode(bytes, 17, 81, value)

## @brief Complete builtin_interfaces/msg/Time value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Builtin_interfacesMsgTime* = object
  ## @brief Original builtin_interfaces/msg/Time.sec field.
  ## @details Original type int32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_sec*: int32
  ## @brief Original builtin_interfaces/msg/Time.nanosec field.
  ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_nanosec*: uint32
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
## @brief Validate the original complete time-domain invariant.
## @details No clock read, unit conversion or normalization is performed.
## @param value Complete immutable owned record.
## @return Zero or canonical error 22.
proc validate*(value: Ros2Builtin_interfacesMsgTime): uint32 =
  if value.field_nanosec >= 1000000000: 22'u32 else: 0'u32
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

## @brief Complete std_msgs/msg/Header value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 12..76 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Std_msgsMsgHeader* = object
  ## @brief Original std_msgs/msg/Header.stamp field.
  ## @details Original type builtin_interfaces/msg/Time. Preserve declared units, frame, signedness
  ## and field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_stamp*: Ros2Builtin_interfacesMsgTime
  ## @brief Original std_msgs/msg/Header.frame_id field.
  ## @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_frame_id*: NativeText[64, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Std_msgsMsgHeaderMinimumWireBytes* = 12
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Std_msgsMsgHeaderMaximumWireBytes* = 76
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Std_msgsMsgHeaderCodecIdentity* = "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396"
## @brief Encode every field of complete std_msgs/msg/Header.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Std_msgsMsgHeader; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 76, written)
## @brief Decode every field of complete std_msgs/msg/Header.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Std_msgsMsgHeader*(bytes: openArray[byte]; value: var Ros2Std_msgsMsgHeader): uint32 =
  wire.decode(bytes, 12, 76, value)

## @brief Complete abb_egm_msgs/msg/EGMState value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 16..1376 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_egm_msgsMsgEGMState* = object
  ## @brief Original abb_egm_msgs/msg/EGMState.header field.
  ## @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_header*: Ros2Std_msgsMsgHeader
  ## @brief Original abb_egm_msgs/msg/EGMState.egm_channels field.
  ## @details Original type abb_egm_msgs/msg/EGMChannelState. Shape sequence; bound/count 16
  ## elements. Preserve declared units, frame, signedness and field order. Backing storage belongs
  ## to this value; constructing or copying it creates no native ROS owner.
  field_egm_channels*: NativeSequence[Ros2Abb_egm_msgsMsgEGMChannelState, 16]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_egm_msgsMsgEGMStateMinimumWireBytes* = 16
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_egm_msgsMsgEGMStateMaximumWireBytes* = 1376
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_egm_msgsMsgEGMStateCodecIdentity* = "UWVMROS1_5b10efb13c3be7290c7e391d55679a174969887edd1b8baca682edac311a8e5d"
## @brief Encode every field of complete abb_egm_msgs/msg/EGMState.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_egm_msgsMsgEGMState; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1376, written)
## @brief Decode every field of complete abb_egm_msgs/msg/EGMState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_egm_msgsMsgEGMState*(bytes: openArray[byte]; value: var Ros2Abb_egm_msgsMsgEGMState): uint32 =
  wire.decode(bytes, 16, 1376, value)

## @brief Complete abb_rapid_msgs/msg/ConfData value.
## @details Retain all 4 original fields and 0 constants. Canonical extent 16..16 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_rapid_msgsMsgConfData* = object
  ## @brief Original abb_rapid_msgs/msg/ConfData.cf1 field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_cf1*: float32
  ## @brief Original abb_rapid_msgs/msg/ConfData.cf4 field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_cf4*: float32
  ## @brief Original abb_rapid_msgs/msg/ConfData.cf6 field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_cf6*: float32
  ## @brief Original abb_rapid_msgs/msg/ConfData.cfx field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_cfx*: float32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_msgsMsgConfDataMinimumWireBytes* = 16
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_msgsMsgConfDataMaximumWireBytes* = 16
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_rapid_msgsMsgConfDataCodecIdentity* = "UWVMROS1_0c22cc29db62f5001ef20ea7b131de63099e31ac5f150d3e9f0bb62120d60571"
## @brief Encode every field of complete abb_rapid_msgs/msg/ConfData.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_rapid_msgsMsgConfData; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 16, written)
## @brief Decode every field of complete abb_rapid_msgs/msg/ConfData.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_rapid_msgsMsgConfData*(bytes: openArray[byte]; value: var Ros2Abb_rapid_msgsMsgConfData): uint32 =
  wire.decode(bytes, 16, 16, value)

## @brief Complete abb_rapid_msgs/msg/ExtJoint value.
## @details Retain all 6 original fields and 0 constants. Canonical extent 24..24 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_rapid_msgsMsgExtJoint* = object
  ## @brief Original abb_rapid_msgs/msg/ExtJoint.eax_a field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_eax_a*: float32
  ## @brief Original abb_rapid_msgs/msg/ExtJoint.eax_b field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_eax_b*: float32
  ## @brief Original abb_rapid_msgs/msg/ExtJoint.eax_c field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_eax_c*: float32
  ## @brief Original abb_rapid_msgs/msg/ExtJoint.eax_d field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_eax_d*: float32
  ## @brief Original abb_rapid_msgs/msg/ExtJoint.eax_e field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_eax_e*: float32
  ## @brief Original abb_rapid_msgs/msg/ExtJoint.eax_f field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_eax_f*: float32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_msgsMsgExtJointMinimumWireBytes* = 24
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_msgsMsgExtJointMaximumWireBytes* = 24
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_rapid_msgsMsgExtJointCodecIdentity* = "UWVMROS1_8b799c6bec9e4eab0900a633a93375a7792e49fde0bf302f6752115a001a4ae2"
## @brief Encode every field of complete abb_rapid_msgs/msg/ExtJoint.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_rapid_msgsMsgExtJoint; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 24, written)
## @brief Decode every field of complete abb_rapid_msgs/msg/ExtJoint.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_rapid_msgsMsgExtJoint*(bytes: openArray[byte]; value: var Ros2Abb_rapid_msgsMsgExtJoint): uint32 =
  wire.decode(bytes, 24, 24, value)

## @brief Complete abb_rapid_msgs/msg/RobJoint value.
## @details Retain all 6 original fields and 0 constants. Canonical extent 24..24 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_rapid_msgsMsgRobJoint* = object
  ## @brief Original abb_rapid_msgs/msg/RobJoint.rax_1 field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_rax_1*: float32
  ## @brief Original abb_rapid_msgs/msg/RobJoint.rax_2 field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_rax_2*: float32
  ## @brief Original abb_rapid_msgs/msg/RobJoint.rax_3 field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_rax_3*: float32
  ## @brief Original abb_rapid_msgs/msg/RobJoint.rax_4 field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_rax_4*: float32
  ## @brief Original abb_rapid_msgs/msg/RobJoint.rax_5 field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_rax_5*: float32
  ## @brief Original abb_rapid_msgs/msg/RobJoint.rax_6 field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_rax_6*: float32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_msgsMsgRobJointMinimumWireBytes* = 24
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_msgsMsgRobJointMaximumWireBytes* = 24
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_rapid_msgsMsgRobJointCodecIdentity* = "UWVMROS1_6d842aebc0a3b222a727063a41ef7e96f2b8c14ffbba5c8d6e140ba2890e69cd"
## @brief Encode every field of complete abb_rapid_msgs/msg/RobJoint.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_rapid_msgsMsgRobJoint; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 24, written)
## @brief Decode every field of complete abb_rapid_msgs/msg/RobJoint.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_rapid_msgsMsgRobJoint*(bytes: openArray[byte]; value: var Ros2Abb_rapid_msgsMsgRobJoint): uint32 =
  wire.decode(bytes, 24, 24, value)

## @brief Complete abb_rapid_msgs/msg/JointTarget value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 48..48 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_rapid_msgsMsgJointTarget* = object
  ## @brief Original abb_rapid_msgs/msg/JointTarget.robax field.
  ## @details Original type abb_rapid_msgs/msg/RobJoint. Preserve declared units, frame, signedness
  ## and field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_robax*: Ros2Abb_rapid_msgsMsgRobJoint
  ## @brief Original abb_rapid_msgs/msg/JointTarget.extax field.
  ## @details Original type abb_rapid_msgs/msg/ExtJoint. Preserve declared units, frame, signedness
  ## and field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_extax*: Ros2Abb_rapid_msgsMsgExtJoint
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_msgsMsgJointTargetMinimumWireBytes* = 48
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_msgsMsgJointTargetMaximumWireBytes* = 48
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_rapid_msgsMsgJointTargetCodecIdentity* = "UWVMROS1_5949cf0121391646c1f04b54d8f7deaae0497f4920f7817739fc25bfddc4e540"
## @brief Encode every field of complete abb_rapid_msgs/msg/JointTarget.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_rapid_msgsMsgJointTarget; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 48, written)
## @brief Decode every field of complete abb_rapid_msgs/msg/JointTarget.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_rapid_msgsMsgJointTarget*(bytes: openArray[byte]; value: var Ros2Abb_rapid_msgsMsgJointTarget): uint32 =
  wire.decode(bytes, 48, 48, value)

## @brief Complete abb_rapid_msgs/msg/Pos value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 12..12 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_rapid_msgsMsgPos* = object
  ## @brief Original abb_rapid_msgs/msg/Pos.x field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_x*: float32
  ## @brief Original abb_rapid_msgs/msg/Pos.y field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_y*: float32
  ## @brief Original abb_rapid_msgs/msg/Pos.z field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_z*: float32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_msgsMsgPosMinimumWireBytes* = 12
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_msgsMsgPosMaximumWireBytes* = 12
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_rapid_msgsMsgPosCodecIdentity* = "UWVMROS1_31d490d6ead5a1a78295dc4e934f0b89e74e4732da2b57d28d297477bf4cbdd2"
## @brief Encode every field of complete abb_rapid_msgs/msg/Pos.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_rapid_msgsMsgPos; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 12, written)
## @brief Decode every field of complete abb_rapid_msgs/msg/Pos.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_rapid_msgsMsgPos*(bytes: openArray[byte]; value: var Ros2Abb_rapid_msgsMsgPos): uint32 =
  wire.decode(bytes, 12, 12, value)

## @brief Complete abb_rapid_msgs/msg/Orient value.
## @details Retain all 4 original fields and 0 constants. Canonical extent 16..16 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_rapid_msgsMsgOrient* = object
  ## @brief Original abb_rapid_msgs/msg/Orient.q1 field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_q1*: float32
  ## @brief Original abb_rapid_msgs/msg/Orient.q2 field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_q2*: float32
  ## @brief Original abb_rapid_msgs/msg/Orient.q3 field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_q3*: float32
  ## @brief Original abb_rapid_msgs/msg/Orient.q4 field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_q4*: float32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_msgsMsgOrientMinimumWireBytes* = 16
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_msgsMsgOrientMaximumWireBytes* = 16
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_rapid_msgsMsgOrientCodecIdentity* = "UWVMROS1_821d887b88298422f9466aaf3926db580f878e964055fbd72226b7f76f2f536e"
## @brief Encode every field of complete abb_rapid_msgs/msg/Orient.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_rapid_msgsMsgOrient; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 16, written)
## @brief Decode every field of complete abb_rapid_msgs/msg/Orient.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_rapid_msgsMsgOrient*(bytes: openArray[byte]; value: var Ros2Abb_rapid_msgsMsgOrient): uint32 =
  wire.decode(bytes, 16, 16, value)

## @brief Complete abb_rapid_msgs/msg/LoadData value.
## @details Retain all 6 original fields and 0 constants. Canonical extent 44..44 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_rapid_msgsMsgLoadData* = object
  ## @brief Original abb_rapid_msgs/msg/LoadData.mass field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_mass*: float32
  ## @brief Original abb_rapid_msgs/msg/LoadData.cog field.
  ## @details Original type abb_rapid_msgs/msg/Pos. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_cog*: Ros2Abb_rapid_msgsMsgPos
  ## @brief Original abb_rapid_msgs/msg/LoadData.aom field.
  ## @details Original type abb_rapid_msgs/msg/Orient. Preserve declared units, frame, signedness
  ## and field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_aom*: Ros2Abb_rapid_msgsMsgOrient
  ## @brief Original abb_rapid_msgs/msg/LoadData.ix field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_ix*: float32
  ## @brief Original abb_rapid_msgs/msg/LoadData.iy field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_iy*: float32
  ## @brief Original abb_rapid_msgs/msg/LoadData.iz field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_iz*: float32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_msgsMsgLoadDataMinimumWireBytes* = 44
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_msgsMsgLoadDataMaximumWireBytes* = 44
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_rapid_msgsMsgLoadDataCodecIdentity* = "UWVMROS1_f73e480a0e6746a4df8f4d62bc123d68d01d3dc48f0bc5f0eac51b859a0750f9"
## @brief Encode every field of complete abb_rapid_msgs/msg/LoadData.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_rapid_msgsMsgLoadData; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 44, written)
## @brief Decode every field of complete abb_rapid_msgs/msg/LoadData.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_rapid_msgsMsgLoadData*(bytes: openArray[byte]; value: var Ros2Abb_rapid_msgsMsgLoadData): uint32 =
  wire.decode(bytes, 44, 44, value)

## @brief Complete abb_rapid_msgs/msg/Pose value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 28..28 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_rapid_msgsMsgPose* = object
  ## @brief Original abb_rapid_msgs/msg/Pose.trans field.
  ## @details Original type abb_rapid_msgs/msg/Pos. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_trans*: Ros2Abb_rapid_msgsMsgPos
  ## @brief Original abb_rapid_msgs/msg/Pose.rot field.
  ## @details Original type abb_rapid_msgs/msg/Orient. Preserve declared units, frame, signedness
  ## and field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_rot*: Ros2Abb_rapid_msgsMsgOrient
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_msgsMsgPoseMinimumWireBytes* = 28
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_msgsMsgPoseMaximumWireBytes* = 28
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_rapid_msgsMsgPoseCodecIdentity* = "UWVMROS1_8f1535fe21326706fd0b16314857162d36bca91ce8e8f6a8bec3864dafb9e2f2"
## @brief Encode every field of complete abb_rapid_msgs/msg/Pose.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_rapid_msgsMsgPose; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 28, written)
## @brief Decode every field of complete abb_rapid_msgs/msg/Pose.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_rapid_msgsMsgPose*(bytes: openArray[byte]; value: var Ros2Abb_rapid_msgsMsgPose): uint32 =
  wire.decode(bytes, 28, 28, value)

## @brief Complete abb_rapid_msgs/msg/RobTarget value.
## @details Retain all 4 original fields and 0 constants. Canonical extent 68..68 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_rapid_msgsMsgRobTarget* = object
  ## @brief Original abb_rapid_msgs/msg/RobTarget.trans field.
  ## @details Original type abb_rapid_msgs/msg/Pos. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_trans*: Ros2Abb_rapid_msgsMsgPos
  ## @brief Original abb_rapid_msgs/msg/RobTarget.rot field.
  ## @details Original type abb_rapid_msgs/msg/Orient. Preserve declared units, frame, signedness
  ## and field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_rot*: Ros2Abb_rapid_msgsMsgOrient
  ## @brief Original abb_rapid_msgs/msg/RobTarget.robconf field.
  ## @details Original type abb_rapid_msgs/msg/ConfData. Preserve declared units, frame, signedness
  ## and field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_robconf*: Ros2Abb_rapid_msgsMsgConfData
  ## @brief Original abb_rapid_msgs/msg/RobTarget.extax field.
  ## @details Original type abb_rapid_msgs/msg/ExtJoint. Preserve declared units, frame, signedness
  ## and field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_extax*: Ros2Abb_rapid_msgsMsgExtJoint
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_msgsMsgRobTargetMinimumWireBytes* = 68
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_msgsMsgRobTargetMaximumWireBytes* = 68
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_rapid_msgsMsgRobTargetCodecIdentity* = "UWVMROS1_8decb56e8faf0a6a954af974adfea5c500aea8392e6a778ae7394174323489d8"
## @brief Encode every field of complete abb_rapid_msgs/msg/RobTarget.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_rapid_msgsMsgRobTarget; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 68, written)
## @brief Decode every field of complete abb_rapid_msgs/msg/RobTarget.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_rapid_msgsMsgRobTarget*(bytes: openArray[byte]; value: var Ros2Abb_rapid_msgsMsgRobTarget): uint32 =
  wire.decode(bytes, 68, 68, value)

## @brief Complete abb_rapid_msgs/msg/ToolData value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 73..73 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_rapid_msgsMsgToolData* = object
  ## @brief Original abb_rapid_msgs/msg/ToolData.robhold field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_robhold*: bool
  ## @brief Original abb_rapid_msgs/msg/ToolData.tframe field.
  ## @details Original type abb_rapid_msgs/msg/Pose. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_tframe*: Ros2Abb_rapid_msgsMsgPose
  ## @brief Original abb_rapid_msgs/msg/ToolData.tload field.
  ## @details Original type abb_rapid_msgs/msg/LoadData. Preserve declared units, frame, signedness
  ## and field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_tload*: Ros2Abb_rapid_msgsMsgLoadData
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_msgsMsgToolDataMinimumWireBytes* = 73
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_msgsMsgToolDataMaximumWireBytes* = 73
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_rapid_msgsMsgToolDataCodecIdentity* = "UWVMROS1_948fa0bbaaf95f0d88ca03cad687f16102261f54b0da889ae8bca82042fc5237"
## @brief Encode every field of complete abb_rapid_msgs/msg/ToolData.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_rapid_msgsMsgToolData; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 73, written)
## @brief Decode every field of complete abb_rapid_msgs/msg/ToolData.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_rapid_msgsMsgToolData*(bytes: openArray[byte]; value: var Ros2Abb_rapid_msgsMsgToolData): uint32 =
  wire.decode(bytes, 73, 73, value)

## @brief Complete abb_rapid_msgs/msg/WObjData value.
## @details Retain all 5 original fields and 0 constants. Canonical extent 62..574 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_rapid_msgsMsgWObjData* = object
  ## @brief Original abb_rapid_msgs/msg/WObjData.robhold field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_robhold*: bool
  ## @brief Original abb_rapid_msgs/msg/WObjData.ufprog field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_ufprog*: bool
  ## @brief Original abb_rapid_msgs/msg/WObjData.ufmec field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_ufmec*: NativeText[512, false]
  ## @brief Original abb_rapid_msgs/msg/WObjData.uframe field.
  ## @details Original type abb_rapid_msgs/msg/Pose. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_uframe*: Ros2Abb_rapid_msgsMsgPose
  ## @brief Original abb_rapid_msgs/msg/WObjData.oframe field.
  ## @details Original type abb_rapid_msgs/msg/Pose. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_oframe*: Ros2Abb_rapid_msgsMsgPose
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_msgsMsgWObjDataMinimumWireBytes* = 62
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_msgsMsgWObjDataMaximumWireBytes* = 574
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_rapid_msgsMsgWObjDataCodecIdentity* = "UWVMROS1_b36f0448512fab6028431d19b39a8ae31b7b81b2615ffc8311139f63b5d8e7cd"
## @brief Encode every field of complete abb_rapid_msgs/msg/WObjData.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_rapid_msgsMsgWObjData; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 574, written)
## @brief Decode every field of complete abb_rapid_msgs/msg/WObjData.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_rapid_msgsMsgWObjData*(bytes: openArray[byte]; value: var Ros2Abb_rapid_msgsMsgWObjData): uint32 =
  wire.decode(bytes, 62, 574, value)

## @brief Complete abb_rapid_sm_addin_msgs/msg/EGMActivateSettings value.
## @details Retain all 8 original fields and 0 constants. Canonical extent 204..716 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings* = object
  ## @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.tool field.
  ## @details Original type abb_rapid_msgs/msg/ToolData. Preserve declared units, frame, signedness
  ## and field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_tool*: Ros2Abb_rapid_msgsMsgToolData
  ## @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.wobj field.
  ## @details Original type abb_rapid_msgs/msg/WObjData. Preserve declared units, frame, signedness
  ## and field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_wobj*: Ros2Abb_rapid_msgsMsgWObjData
  ## @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.correction_frame field.
  ## @details Original type abb_rapid_msgs/msg/Pose. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_correction_frame*: Ros2Abb_rapid_msgsMsgPose
  ## @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.sensor_frame field.
  ## @details Original type abb_rapid_msgs/msg/Pose. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_sensor_frame*: Ros2Abb_rapid_msgsMsgPose
  ## @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.cond_min_max field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_cond_min_max*: float32
  ## @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.lp_filter field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_lp_filter*: float32
  ## @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.sample_rate field.
  ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_sample_rate*: uint8
  ## @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.max_speed_deviation field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_max_speed_deviation*: float32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettingsMinimumWireBytes* = 204
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettingsMaximumWireBytes* = 716
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettingsCodecIdentity* = "UWVMROS1_fce73aea80d9b8a299b8e2ab742602871146b3ebbd624a2e807e25c1ac107cfa"
## @brief Encode every field of complete abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 716, written)
## @brief Decode every field of complete abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings*(bytes: openArray[byte]; value: var Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings): uint32 =
  wire.decode(bytes, 204, 716, value)

## @brief Complete abb_rapid_sm_addin_msgs/msg/EGMRunSettings value.
## @details Retain all 4 original fields and 0 constants. Canonical extent 40..40 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings* = object
  ## @brief Original abb_rapid_sm_addin_msgs/msg/EGMRunSettings.cond_time field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_cond_time*: float32
  ## @brief Original abb_rapid_sm_addin_msgs/msg/EGMRunSettings.ramp_in_time field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_ramp_in_time*: float32
  ## @brief Original abb_rapid_sm_addin_msgs/msg/EGMRunSettings.offset field.
  ## @details Original type abb_rapid_msgs/msg/Pose. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_offset*: Ros2Abb_rapid_msgsMsgPose
  ## @brief Original abb_rapid_sm_addin_msgs/msg/EGMRunSettings.pos_corr_gain field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_pos_corr_gain*: float32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettingsMinimumWireBytes* = 40
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettingsMaximumWireBytes* = 40
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettingsCodecIdentity* = "UWVMROS1_92a2a654eb2eda89077933f955f04ed87884827b8875cf563570eed5d211b0e2"
## @brief Encode every field of complete abb_rapid_sm_addin_msgs/msg/EGMRunSettings.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 40, written)
## @brief Decode every field of complete abb_rapid_sm_addin_msgs/msg/EGMRunSettings.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_rapid_sm_addin_msgsMsgEGMRunSettings*(bytes: openArray[byte]; value: var Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings): uint32 =
  wire.decode(bytes, 40, 40, value)

## @brief Complete abb_rapid_sm_addin_msgs/msg/EGMSetupSettings value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 5..5 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings* = object
  ## @brief Original abb_rapid_sm_addin_msgs/msg/EGMSetupSettings.use_filtering field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_use_filtering*: bool
  ## @brief Original abb_rapid_sm_addin_msgs/msg/EGMSetupSettings.comm_timeout field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_comm_timeout*: float32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettingsMinimumWireBytes* = 5
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettingsMaximumWireBytes* = 5
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettingsCodecIdentity* = "UWVMROS1_2565bed5b83b132c69f37d7294c69181800ad2974ddc54f60868da57e28e782c"
## @brief Encode every field of complete abb_rapid_sm_addin_msgs/msg/EGMSetupSettings.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 5, written)
## @brief Decode every field of complete abb_rapid_sm_addin_msgs/msg/EGMSetupSettings.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings*(bytes: openArray[byte]; value: var Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings): uint32 =
  wire.decode(bytes, 5, 5, value)

## @brief Complete abb_rapid_sm_addin_msgs/msg/EGMStopSettings value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 4..4 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings* = object
  ## @brief Original abb_rapid_sm_addin_msgs/msg/EGMStopSettings.ramp_out_time field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_ramp_out_time*: float32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettingsMinimumWireBytes* = 4
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettingsMaximumWireBytes* = 4
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettingsCodecIdentity* = "UWVMROS1_0f3f2f6034567a7d49dd140ff9ff620e8567548139597b9b823e63a947673cee"
## @brief Encode every field of complete abb_rapid_sm_addin_msgs/msg/EGMStopSettings.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 4, written)
## @brief Decode every field of complete abb_rapid_sm_addin_msgs/msg/EGMStopSettings.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_rapid_sm_addin_msgsMsgEGMStopSettings*(bytes: openArray[byte]; value: var Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings): uint32 =
  wire.decode(bytes, 4, 4, value)

## @brief Complete abb_rapid_sm_addin_msgs/msg/EGMSettings value.
## @details Retain all 6 original fields and 0 constants. Canonical extent 255..767 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings* = object
  ## @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.allow_egm_motions field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_allow_egm_motions*: bool
  ## @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.use_presync field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_use_presync*: bool
  ## @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.setup_uc field.
  ## @details Original type abb_rapid_sm_addin_msgs/msg/EGMSetupSettings. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_setup_uc*: Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings
  ## @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.activate field.
  ## @details Original type abb_rapid_sm_addin_msgs/msg/EGMActivateSettings. Preserve declared
  ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
  ## or copying it creates no native ROS owner.
  field_activate*: Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings
  ## @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.run field.
  ## @details Original type abb_rapid_sm_addin_msgs/msg/EGMRunSettings. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_run*: Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings
  ## @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.stop field.
  ## @details Original type abb_rapid_sm_addin_msgs/msg/EGMStopSettings. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_stop*: Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_sm_addin_msgsMsgEGMSettingsMinimumWireBytes* = 255
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_sm_addin_msgsMsgEGMSettingsMaximumWireBytes* = 767
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_rapid_sm_addin_msgsMsgEGMSettingsCodecIdentity* = "UWVMROS1_622d3a975eecb11f7729aecfadc161cada271208d6fe7599f455750b90144ef3"
## @brief Encode every field of complete abb_rapid_sm_addin_msgs/msg/EGMSettings.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 767, written)
## @brief Decode every field of complete abb_rapid_sm_addin_msgs/msg/EGMSettings.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_rapid_sm_addin_msgsMsgEGMSettings*(bytes: openArray[byte]; value: var Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings): uint32 =
  wire.decode(bytes, 255, 767, value)

## @brief Complete abb_rapid_sm_addin_msgs/msg/StateMachineState value.
## @details Retain all 3 original fields and 12 constants. Canonical extent 6..518 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState* = object
  ## @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.rapid_task field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_rapid_task*: NativeText[512, false]
  ## @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.sm_state field.
  ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_sm_state*: uint8
  ## @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.egm_action field.
  ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_egm_action*: uint8
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_sm_addin_msgsMsgStateMachineStateMinimumWireBytes* = 6
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_sm_addin_msgsMsgStateMachineStateMaximumWireBytes* = 518
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_rapid_sm_addin_msgsMsgStateMachineStateCodecIdentity* = "UWVMROS1_ff2a09e4b6e8ef26cbdc3ecdffdceb33d6b2c82f0d51ed2c38ce9648c6f47711"
## @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.SM_STATE_UNKNOWN constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_SM_STATE_UNKNOWN*: uint8 = 1'u8
## @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.SM_STATE_IDLE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_SM_STATE_IDLE*: uint8 = 2'u8
## @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.SM_STATE_INITIALIZE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_SM_STATE_INITIALIZE*: uint8 = 3'u8
## @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.SM_STATE_RUN_RAPID_ROUTINE
## constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_SM_STATE_RUN_RAPID_ROUTINE*: uint8 = 4'u8
## @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.SM_STATE_RUN_EGM_ROUTINE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_SM_STATE_RUN_EGM_ROUTINE*: uint8 = 5'u8
## @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_UNKNOWN constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_EGM_ACTION_UNKNOWN*: uint8 = 1'u8
## @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_NONE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_EGM_ACTION_NONE*: uint8 = 2'u8
## @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_RUN_JOINT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_EGM_ACTION_RUN_JOINT*: uint8 = 3'u8
## @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_RUN_POSE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_EGM_ACTION_RUN_POSE*: uint8 = 4'u8
## @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_STOP constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_EGM_ACTION_STOP*: uint8 = 5'u8
## @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_START_STREAM constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_EGM_ACTION_START_STREAM*: uint8 = 6'u8
## @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_STOP_STREAM constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_EGM_ACTION_STOP_STREAM*: uint8 = 7'u8
## @brief Encode every field of complete abb_rapid_sm_addin_msgs/msg/StateMachineState.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 518, written)
## @brief Decode every field of complete abb_rapid_sm_addin_msgs/msg/StateMachineState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_rapid_sm_addin_msgsMsgStateMachineState*(bytes: openArray[byte]; value: var Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState): uint32 =
  wire.decode(bytes, 6, 518, value)

## @brief Complete abb_rapid_sm_addin_msgs/msg/RuntimeState value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 16..8368 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState* = object
  ## @brief Original abb_rapid_sm_addin_msgs/msg/RuntimeState.header field.
  ## @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_header*: Ros2Std_msgsMsgHeader
  ## @brief Original abb_rapid_sm_addin_msgs/msg/RuntimeState.state_machines field.
  ## @details Original type abb_rapid_sm_addin_msgs/msg/StateMachineState. Shape sequence;
  ## bound/count 16 elements. Preserve declared units, frame, signedness and field order. Backing
  ## storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_state_machines*: NativeSequence[Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState, 16]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_sm_addin_msgsMsgRuntimeStateMinimumWireBytes* = 16
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_sm_addin_msgsMsgRuntimeStateMaximumWireBytes* = 8368
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_rapid_sm_addin_msgsMsgRuntimeStateCodecIdentity* = "UWVMROS1_3c0f157544fa82c4e206a4fb42f8ba7f67213d19533f79b77c66dec6fd0460d9"
## @brief Encode every field of complete abb_rapid_sm_addin_msgs/msg/RuntimeState.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 8368, written)
## @brief Decode every field of complete abb_rapid_sm_addin_msgs/msg/RuntimeState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_rapid_sm_addin_msgsMsgRuntimeState*(bytes: openArray[byte]; value: var Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState): uint32 =
  wire.decode(bytes, 16, 8368, value)

## @brief Complete abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 4..68 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request* = object
  ## @brief Original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request.task field.
  ## @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_task*: NativeText[64, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_RequestMinimumWireBytes* = 4
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_RequestMaximumWireBytes* = 68
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_RequestCodecIdentity* = "UWVMROS1_363be2459fcc9c475c6305cbcfebf7689e891eb27645b7667960aace23d56e8e"
## @brief Encode every field of complete abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 68, written)
## @brief Decode every field of complete abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request*(bytes: openArray[byte]; value: var Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request): uint32 =
  wire.decode(bytes, 4, 68, value)

## @brief Complete abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 261..1285 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response* = object
  ## @brief Original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response.settings field.
  ## @details Original type abb_rapid_sm_addin_msgs/msg/EGMSettings. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_settings*: Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings
  ## @brief Original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_ResponseMinimumWireBytes* = 261
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_ResponseMaximumWireBytes* = 1285
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_ResponseCodecIdentity* = "UWVMROS1_d8f340e1c6d78fc0a782c3279efb34ae5e11df175a82f9dd5ee82e603d6b2ffb"
## @brief Encode every field of complete abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1285, written)
## @brief Decode every field of complete abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response*(bytes: openArray[byte]; value: var Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response): uint32 =
  wire.decode(bytes, 261, 1285, value)

## @brief Complete abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 259..835 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request* = object
  ## @brief Original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request.task field.
  ## @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_task*: NativeText[64, false]
  ## @brief Original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request.settings field.
  ## @details Original type abb_rapid_sm_addin_msgs/msg/EGMSettings. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_settings*: Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_RequestMinimumWireBytes* = 259
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_RequestMaximumWireBytes* = 835
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_RequestCodecIdentity* = "UWVMROS1_c2f3dd535e9475526bf18bdffa0e9a839049d315c9aebb150f8561ee3361a2bd"
## @brief Encode every field of complete abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 835, written)
## @brief Decode every field of complete abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request*(bytes: openArray[byte]; value: var Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request): uint32 =
  wire.decode(bytes, 259, 835, value)

## @brief Complete abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response* = object
  ## @brief Original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_ResponseMinimumWireBytes* = 6
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_ResponseMaximumWireBytes* = 518
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_ResponseCodecIdentity* = "UWVMROS1_6a1adeebe31dfe101a6d57019e26ee2f1144b9a6ce30aee08d4c6fe56ea6838d"
## @brief Encode every field of complete abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 518, written)
## @brief Decode every field of complete abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response*(bytes: openArray[byte]; value: var Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response): uint32 =
  wire.decode(bytes, 6, 518, value)

## @brief Complete abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 8..584 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request* = object
  ## @brief Original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request.task field.
  ## @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_task*: NativeText[64, false]
  ## @brief Original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request.routine field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_routine*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_RequestMinimumWireBytes* = 8
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_RequestMaximumWireBytes* = 584
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_RequestCodecIdentity* = "UWVMROS1_4561b7e5e296a1a329d5f5684bcbde1ef41324554a34e9a79a85824286dd477c"
## @brief Encode every field of complete abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 584, written)
## @brief Decode every field of complete abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request*(bytes: openArray[byte]; value: var Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request): uint32 =
  wire.decode(bytes, 8, 584, value)

## @brief Complete abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response* = object
  ## @brief Original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_ResponseMinimumWireBytes* = 6
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_ResponseMaximumWireBytes* = 518
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_ResponseCodecIdentity* = "UWVMROS1_980d2a16536289f446161acdf2fc57d459baa2290d74f1dd5aaf8129126cbba1"
## @brief Encode every field of complete abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 518, written)
## @brief Decode every field of complete abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response*(bytes: openArray[byte]; value: var Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response): uint32 =
  wire.decode(bytes, 6, 518, value)

## @brief Complete abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request value.
## @details Retain all 3 original fields and 15 constants. Canonical extent 9..73 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request* = object
  ## @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.task field.
  ## @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_task*: NativeText[64, false]
  ## @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.command field.
  ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_command*: uint8
  ## @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.target_position field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_target_position*: float32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_RequestMinimumWireBytes* = 9
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_RequestMaximumWireBytes* = 73
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_RequestCodecIdentity* = "UWVMROS1_5d6983aa85c2c52f8ec06cbd723d5929cfc381db2e0bfffb4c27078497d86c90"
## @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_UNKNOWN constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_UNKNOWN*: uint8 = 1'u8
## @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_NONE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_NONE*: uint8 = 2'u8
## @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_INITIALIZE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_INITIALIZE*: uint8 = 3'u8
## @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_CALIBRATE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_CALIBRATE*: uint8 = 4'u8
## @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_MOVE_TO constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_MOVE_TO*: uint8 = 5'u8
## @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_GRIP_IN constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_GRIP_IN*: uint8 = 6'u8
## @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_GRIP_OUT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_GRIP_OUT*: uint8 = 7'u8
## @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_BLOW_ON_1 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_BLOW_ON_1*: uint8 = 8'u8
## @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_BLOW_ON_2 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_BLOW_ON_2*: uint8 = 9'u8
## @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_BLOW_OFF_1 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_BLOW_OFF_1*: uint8 = 10'u8
## @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_BLOW_OFF_2 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_BLOW_OFF_2*: uint8 = 11'u8
## @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_VACUUM_ON_1 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_VACUUM_ON_1*: uint8 = 12'u8
## @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_VACUUM_ON_2 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_VACUUM_ON_2*: uint8 = 13'u8
## @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_VACUUM_OFF_1
## constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_VACUUM_OFF_1*: uint8 = 14'u8
## @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_VACUUM_OFF_2
## constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_VACUUM_OFF_2*: uint8 = 15'u8
## @brief Encode every field of complete abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 73, written)
## @brief Decode every field of complete abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request*(bytes: openArray[byte]; value: var Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request): uint32 =
  wire.decode(bytes, 9, 73, value)

## @brief Complete abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response* = object
  ## @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_ResponseMinimumWireBytes* = 6
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_ResponseMaximumWireBytes* = 518
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_ResponseCodecIdentity* = "UWVMROS1_87cdc41c81d49930dce7193d4b7af98add266a6e9a7cf5e69457d01ded388cf8"
## @brief Encode every field of complete abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 518, written)
## @brief Decode every field of complete abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response*(bytes: openArray[byte]; value: var Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response): uint32 =
  wire.decode(bytes, 6, 518, value)

## @brief Complete abb_robot_msgs/msg/MechanicalUnitState value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 5..69 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsMsgMechanicalUnitState* = object
  ## @brief Original abb_robot_msgs/msg/MechanicalUnitState.name field.
  ## @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_name*: NativeText[64, false]
  ## @brief Original abb_robot_msgs/msg/MechanicalUnitState.activated field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_activated*: bool
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsMsgMechanicalUnitStateMinimumWireBytes* = 5
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsMsgMechanicalUnitStateMaximumWireBytes* = 69
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsMsgMechanicalUnitStateCodecIdentity* = "UWVMROS1_1dc7a7dcbaa19e78cd6419f8844287a7fbd9d7a839ab1a8ad97ef0be34f3a3a8"
## @brief Encode every field of complete abb_robot_msgs/msg/MechanicalUnitState.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsMsgMechanicalUnitState; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 69, written)
## @brief Decode every field of complete abb_robot_msgs/msg/MechanicalUnitState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsMsgMechanicalUnitState*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsMsgMechanicalUnitState): uint32 =
  wire.decode(bytes, 5, 69, value)

## @brief Complete abb_robot_msgs/msg/RAPIDSymbolPath value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 12..204 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsMsgRAPIDSymbolPath* = object
  ## @brief Original abb_robot_msgs/msg/RAPIDSymbolPath.task field.
  ## @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_task*: NativeText[64, false]
  ## @brief Original abb_robot_msgs/msg/RAPIDSymbolPath.module field.
  ## @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_module*: NativeText[64, false]
  ## @brief Original abb_robot_msgs/msg/RAPIDSymbolPath.symbol field.
  ## @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_symbol*: NativeText[64, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsMsgRAPIDSymbolPathMinimumWireBytes* = 12
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsMsgRAPIDSymbolPathMaximumWireBytes* = 204
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsMsgRAPIDSymbolPathCodecIdentity* = "UWVMROS1_249523197567fbf638f30487a7f5b8d8ff5ea746fcd4a65a35f2dbb18a3adf0e"
## @brief Encode every field of complete abb_robot_msgs/msg/RAPIDSymbolPath.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsMsgRAPIDSymbolPath; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 204, written)
## @brief Decode every field of complete abb_robot_msgs/msg/RAPIDSymbolPath.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsMsgRAPIDSymbolPath*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsMsgRAPIDSymbolPath): uint32 =
  wire.decode(bytes, 12, 204, value)

## @brief Complete abb_robot_msgs/msg/RAPIDTaskState value.
## @details Retain all 4 original fields and 5 constants. Canonical extent 7..71 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsMsgRAPIDTaskState* = object
  ## @brief Original abb_robot_msgs/msg/RAPIDTaskState.name field.
  ## @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_name*: NativeText[64, false]
  ## @brief Original abb_robot_msgs/msg/RAPIDTaskState.activated field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_activated*: bool
  ## @brief Original abb_robot_msgs/msg/RAPIDTaskState.execution_state field.
  ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_execution_state*: uint8
  ## @brief Original abb_robot_msgs/msg/RAPIDTaskState.motion_task field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_motion_task*: bool
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsMsgRAPIDTaskStateMinimumWireBytes* = 7
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsMsgRAPIDTaskStateMaximumWireBytes* = 71
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsMsgRAPIDTaskStateCodecIdentity* = "UWVMROS1_ff698e375b0ff33026cfd248c1ac734f939763aba25a6c4f7cac628d445422fd"
## @brief Original abb_robot_msgs/msg/RAPIDTaskState.EXECUTION_STATE_UNKNOWN constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgRAPIDTaskState_EXECUTION_STATE_UNKNOWN*: uint8 = 1'u8
## @brief Original abb_robot_msgs/msg/RAPIDTaskState.EXECUTION_STATE_READY constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgRAPIDTaskState_EXECUTION_STATE_READY*: uint8 = 2'u8
## @brief Original abb_robot_msgs/msg/RAPIDTaskState.EXECUTION_STATE_STOPPED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgRAPIDTaskState_EXECUTION_STATE_STOPPED*: uint8 = 3'u8
## @brief Original abb_robot_msgs/msg/RAPIDTaskState.EXECUTION_STATE_STARTED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgRAPIDTaskState_EXECUTION_STATE_STARTED*: uint8 = 4'u8
## @brief Original abb_robot_msgs/msg/RAPIDTaskState.EXECUTION_STATE_UNINITIALIZED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgRAPIDTaskState_EXECUTION_STATE_UNINITIALIZED*: uint8 = 5'u8
## @brief Encode every field of complete abb_robot_msgs/msg/RAPIDTaskState.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsMsgRAPIDTaskState; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 71, written)
## @brief Decode every field of complete abb_robot_msgs/msg/RAPIDTaskState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsMsgRAPIDTaskState*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsMsgRAPIDTaskState): uint32 =
  wire.decode(bytes, 7, 71, value)

## @brief Complete abb_robot_msgs/msg/ServiceResponses value.
## @details Retain all 0 original fields and 32 constants. Canonical extent 0..0 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsMsgServiceResponses* = object
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsMsgServiceResponsesMinimumWireBytes* = 0
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsMsgServiceResponsesMaximumWireBytes* = 0
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsMsgServiceResponsesCodecIdentity* = "UWVMROS1_4e01b972b67454e851801f28aee09c0774b67907d2241cc67cae7d045c18f646"
## @brief Original abb_robot_msgs/msg/ServiceResponses.SUCCESS constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgServiceResponses_SUCCESS*: string = ""
## @brief Original abb_robot_msgs/msg/ServiceResponses.RC_SUCCESS constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgServiceResponses_RC_SUCCESS*: uint16 = 1'u16
## @brief Original abb_robot_msgs/msg/ServiceResponses.FAILED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgServiceResponses_FAILED*: string = "Service failed (e.g. timeout or resource not found, see the DEBUG log for details)"
## @brief Original abb_robot_msgs/msg/ServiceResponses.RC_FAILED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgServiceResponses_RC_FAILED*: uint16 = 2'u16
## @brief Original abb_robot_msgs/msg/ServiceResponses.SERVER_IS_BUSY constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgServiceResponses_SERVER_IS_BUSY*: string = "Server is busy"
## @brief Original abb_robot_msgs/msg/ServiceResponses.RC_SERVER_IS_BUSY constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgServiceResponses_RC_SERVER_IS_BUSY*: uint16 = 1001'u16
## @brief Original abb_robot_msgs/msg/ServiceResponses.EMPTY_FILENAME constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgServiceResponses_EMPTY_FILENAME*: string = "Filename is empty"
## @brief Original abb_robot_msgs/msg/ServiceResponses.RC_EMPTY_FILENAME constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgServiceResponses_RC_EMPTY_FILENAME*: uint16 = 2001'u16
## @brief Original abb_robot_msgs/msg/ServiceResponses.EMPTY_SIGNAL_NAME constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgServiceResponses_EMPTY_SIGNAL_NAME*: string = "Signal name is empty"
## @brief Original abb_robot_msgs/msg/ServiceResponses.RC_EMPTY_SIGNAL_NAME constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgServiceResponses_RC_EMPTY_SIGNAL_NAME*: uint16 = 2002'u16
## @brief Original abb_robot_msgs/msg/ServiceResponses.EMPTY_RAPID_TASK_NAME constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgServiceResponses_EMPTY_RAPID_TASK_NAME*: string = "RAPID task name is empty"
## @brief Original abb_robot_msgs/msg/ServiceResponses.RC_EMPTY_RAPID_TASK_NAME constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgServiceResponses_RC_EMPTY_RAPID_TASK_NAME*: uint16 = 2003'u16
## @brief Original abb_robot_msgs/msg/ServiceResponses.EMPTY_RAPID_MODULE_NAME constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgServiceResponses_EMPTY_RAPID_MODULE_NAME*: string = "RAPID module name is empty"
## @brief Original abb_robot_msgs/msg/ServiceResponses.RC_EMPTY_RAPID_MODULE_NAME constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgServiceResponses_RC_EMPTY_RAPID_MODULE_NAME*: uint16 = 2004'u16
## @brief Original abb_robot_msgs/msg/ServiceResponses.EMPTY_RAPID_SYMBOL_NAME constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgServiceResponses_EMPTY_RAPID_SYMBOL_NAME*: string = "RAPID symbol name is empty"
## @brief Original abb_robot_msgs/msg/ServiceResponses.RC_EMPTY_RAPID_SYMBOL_NAME constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgServiceResponses_RC_EMPTY_RAPID_SYMBOL_NAME*: uint16 = 2005'u16
## @brief Original abb_robot_msgs/msg/ServiceResponses.NOT_IN_AUTO_MODE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgServiceResponses_NOT_IN_AUTO_MODE*: string = "Robot controller is not in AUTO mode"
## @brief Original abb_robot_msgs/msg/ServiceResponses.RC_NOT_IN_AUTO_MODE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgServiceResponses_RC_NOT_IN_AUTO_MODE*: uint16 = 3001'u16
## @brief Original abb_robot_msgs/msg/ServiceResponses.MOTORS_ARE_OFF constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgServiceResponses_MOTORS_ARE_OFF*: string = "Motors are off"
## @brief Original abb_robot_msgs/msg/ServiceResponses.RC_MOTORS_ARE_OFF constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgServiceResponses_RC_MOTORS_ARE_OFF*: uint16 = 3002'u16
## @brief Original abb_robot_msgs/msg/ServiceResponses.MOTORS_ARE_ON constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgServiceResponses_MOTORS_ARE_ON*: string = "Motors are on"
## @brief Original abb_robot_msgs/msg/ServiceResponses.RC_MOTORS_ARE_ON constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgServiceResponses_RC_MOTORS_ARE_ON*: uint16 = 3003'u16
## @brief Original abb_robot_msgs/msg/ServiceResponses.RAPID_NOT_STOPPED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgServiceResponses_RAPID_NOT_STOPPED*: string = "RAPID has not been stopped"
## @brief Original abb_robot_msgs/msg/ServiceResponses.RC_RAPID_NOT_STOPPED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgServiceResponses_RC_RAPID_NOT_STOPPED*: uint16 = 3004'u16
## @brief Original abb_robot_msgs/msg/ServiceResponses.RAPID_NOT_RUNNING constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgServiceResponses_RAPID_NOT_RUNNING*: string = "RAPID is not running"
## @brief Original abb_robot_msgs/msg/ServiceResponses.RC_RAPID_NOT_RUNNING constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgServiceResponses_RC_RAPID_NOT_RUNNING*: uint16 = 3005'u16
## @brief Original abb_robot_msgs/msg/ServiceResponses.SM_RUNTIME_STATES_MISSING constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgServiceResponses_SM_RUNTIME_STATES_MISSING*: string = "No runtime states received for any StateMachine Add-In instance"
## @brief Original abb_robot_msgs/msg/ServiceResponses.RC_SM_RUNTIME_STATES_MISSING constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgServiceResponses_RC_SM_RUNTIME_STATES_MISSING*: uint16 = 4001'u16
## @brief Original abb_robot_msgs/msg/ServiceResponses.SM_UNKNOWN_RAPID_TASK constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgServiceResponses_SM_UNKNOWN_RAPID_TASK*: string = "RAPID task not found among known StateMachine Add-In instances"
## @brief Original abb_robot_msgs/msg/ServiceResponses.RC_SM_UNKNOWN_RAPID_TASK constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgServiceResponses_RC_SM_UNKNOWN_RAPID_TASK*: uint16 = 4002'u16
## @brief Original abb_robot_msgs/msg/ServiceResponses.SM_UNINITIALIZED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgServiceResponses_SM_UNINITIALIZED*: string = "StateMachine Add-In instance has not been initialized"
## @brief Original abb_robot_msgs/msg/ServiceResponses.RC_SM_UNINITIALIZED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Abb_robot_msgsMsgServiceResponses_RC_SM_UNINITIALIZED*: uint16 = 4003'u16
## @brief Encode every field of complete abb_robot_msgs/msg/ServiceResponses.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsMsgServiceResponses; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 0, written)
## @brief Decode every field of complete abb_robot_msgs/msg/ServiceResponses.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsMsgServiceResponses*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsMsgServiceResponses): uint32 =
  wire.decode(bytes, 0, 0, value)

## @brief Complete abb_robot_msgs/msg/SystemState value.
## @details Retain all 6 original fields and 0 constants. Canonical extent 23..2327 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsMsgSystemState* = object
  ## @brief Original abb_robot_msgs/msg/SystemState.header field.
  ## @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_header*: Ros2Std_msgsMsgHeader
  ## @brief Original abb_robot_msgs/msg/SystemState.motors_on field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_motors_on*: bool
  ## @brief Original abb_robot_msgs/msg/SystemState.auto_mode field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_auto_mode*: bool
  ## @brief Original abb_robot_msgs/msg/SystemState.rapid_running field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_rapid_running*: bool
  ## @brief Original abb_robot_msgs/msg/SystemState.rapid_tasks field.
  ## @details Original type abb_robot_msgs/msg/RAPIDTaskState. Shape sequence; bound/count 16
  ## elements. Preserve declared units, frame, signedness and field order. Backing storage belongs
  ## to this value; constructing or copying it creates no native ROS owner.
  field_rapid_tasks*: NativeSequence[Ros2Abb_robot_msgsMsgRAPIDTaskState, 16]
  ## @brief Original abb_robot_msgs/msg/SystemState.mechanical_units field.
  ## @details Original type abb_robot_msgs/msg/MechanicalUnitState. Shape sequence; bound/count 16
  ## elements. Preserve declared units, frame, signedness and field order. Backing storage belongs
  ## to this value; constructing or copying it creates no native ROS owner.
  field_mechanical_units*: NativeSequence[Ros2Abb_robot_msgsMsgMechanicalUnitState, 16]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsMsgSystemStateMinimumWireBytes* = 23
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsMsgSystemStateMaximumWireBytes* = 2327
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsMsgSystemStateCodecIdentity* = "UWVMROS1_c1cdbf0e578fddc5bf70cc2cc181d786f3e8189afc6a67962de6eb273973a38f"
## @brief Encode every field of complete abb_robot_msgs/msg/SystemState.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsMsgSystemState; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 2327, written)
## @brief Decode every field of complete abb_robot_msgs/msg/SystemState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsMsgSystemState*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsMsgSystemState): uint32 =
  wire.decode(bytes, 23, 2327, value)

## @brief Complete abb_robot_msgs/srv/GetFileContents_Request value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 4..516 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvGetFileContents_Request* = object
  ## @brief Original abb_robot_msgs/srv/GetFileContents_Request.filename field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_filename*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetFileContents_RequestMinimumWireBytes* = 4
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetFileContents_RequestMaximumWireBytes* = 516
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvGetFileContents_RequestCodecIdentity* = "UWVMROS1_bdcf73a965bd05356e48019b74d633176fdeda62452bc7185d6b6ff30576016b"
## @brief Encode every field of complete abb_robot_msgs/srv/GetFileContents_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvGetFileContents_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 516, written)
## @brief Decode every field of complete abb_robot_msgs/srv/GetFileContents_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvGetFileContents_Request*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvGetFileContents_Request): uint32 =
  wire.decode(bytes, 4, 516, value)

## @brief Complete abb_robot_msgs/srv/GetFileContents_Response value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 10..4618 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvGetFileContents_Response* = object
  ## @brief Original abb_robot_msgs/srv/GetFileContents_Response.contents field.
  ## @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_contents*: NativeText[4096, false]
  ## @brief Original abb_robot_msgs/srv/GetFileContents_Response.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/srv/GetFileContents_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetFileContents_ResponseMinimumWireBytes* = 10
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetFileContents_ResponseMaximumWireBytes* = 4618
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvGetFileContents_ResponseCodecIdentity* = "UWVMROS1_f05617145a40043e87cbc251f833274d2a962bd7cdaabc5f9a8e4591bd56e107"
## @brief Encode every field of complete abb_robot_msgs/srv/GetFileContents_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvGetFileContents_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 4618, written)
## @brief Decode every field of complete abb_robot_msgs/srv/GetFileContents_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvGetFileContents_Response*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvGetFileContents_Response): uint32 =
  wire.decode(bytes, 10, 4618, value)

## @brief Complete abb_robot_msgs/srv/GetIOSignal_Request value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 4..516 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvGetIOSignal_Request* = object
  ## @brief Original abb_robot_msgs/srv/GetIOSignal_Request.signal field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_signal*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetIOSignal_RequestMinimumWireBytes* = 4
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetIOSignal_RequestMaximumWireBytes* = 516
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvGetIOSignal_RequestCodecIdentity* = "UWVMROS1_2406d53c2fce44e72ad7e6f1c9e75ea19c4df694ff9f00917229ec758209b1f5"
## @brief Encode every field of complete abb_robot_msgs/srv/GetIOSignal_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvGetIOSignal_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 516, written)
## @brief Decode every field of complete abb_robot_msgs/srv/GetIOSignal_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvGetIOSignal_Request*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvGetIOSignal_Request): uint32 =
  wire.decode(bytes, 4, 516, value)

## @brief Complete abb_robot_msgs/srv/GetIOSignal_Response value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 10..1034 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvGetIOSignal_Response* = object
  ## @brief Original abb_robot_msgs/srv/GetIOSignal_Response.value field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_value*: NativeText[512, false]
  ## @brief Original abb_robot_msgs/srv/GetIOSignal_Response.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/srv/GetIOSignal_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetIOSignal_ResponseMinimumWireBytes* = 10
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetIOSignal_ResponseMaximumWireBytes* = 1034
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvGetIOSignal_ResponseCodecIdentity* = "UWVMROS1_1f668ef78c353f2ec8defdac619d349cda731576f2429cf07107b9b56ba9030e"
## @brief Encode every field of complete abb_robot_msgs/srv/GetIOSignal_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvGetIOSignal_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1034, written)
## @brief Decode every field of complete abb_robot_msgs/srv/GetIOSignal_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvGetIOSignal_Response*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvGetIOSignal_Response): uint32 =
  wire.decode(bytes, 10, 1034, value)

## @brief Complete abb_robot_msgs/srv/GetRAPIDBool_Request value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 12..204 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvGetRAPIDBool_Request* = object
  ## @brief Original abb_robot_msgs/srv/GetRAPIDBool_Request.path field.
  ## @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_path*: Ros2Abb_robot_msgsMsgRAPIDSymbolPath
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetRAPIDBool_RequestMinimumWireBytes* = 12
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetRAPIDBool_RequestMaximumWireBytes* = 204
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvGetRAPIDBool_RequestCodecIdentity* = "UWVMROS1_c381080d235c78216a8e64275819ff3fb97e1b1de96e7da758c4889630b8e0ff"
## @brief Encode every field of complete abb_robot_msgs/srv/GetRAPIDBool_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvGetRAPIDBool_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 204, written)
## @brief Decode every field of complete abb_robot_msgs/srv/GetRAPIDBool_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvGetRAPIDBool_Request*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvGetRAPIDBool_Request): uint32 =
  wire.decode(bytes, 12, 204, value)

## @brief Complete abb_robot_msgs/srv/GetRAPIDBool_Response value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 7..519 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvGetRAPIDBool_Response* = object
  ## @brief Original abb_robot_msgs/srv/GetRAPIDBool_Response.value field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_value*: bool
  ## @brief Original abb_robot_msgs/srv/GetRAPIDBool_Response.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/srv/GetRAPIDBool_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetRAPIDBool_ResponseMinimumWireBytes* = 7
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetRAPIDBool_ResponseMaximumWireBytes* = 519
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvGetRAPIDBool_ResponseCodecIdentity* = "UWVMROS1_b853e212489fb815866fa29b165eea474a977483158b6203699c4a1293aa6acd"
## @brief Encode every field of complete abb_robot_msgs/srv/GetRAPIDBool_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvGetRAPIDBool_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 519, written)
## @brief Decode every field of complete abb_robot_msgs/srv/GetRAPIDBool_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvGetRAPIDBool_Response*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvGetRAPIDBool_Response): uint32 =
  wire.decode(bytes, 7, 519, value)

## @brief Complete abb_robot_msgs/srv/GetRAPIDDnum_Request value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 12..204 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request* = object
  ## @brief Original abb_robot_msgs/srv/GetRAPIDDnum_Request.path field.
  ## @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_path*: Ros2Abb_robot_msgsMsgRAPIDSymbolPath
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetRAPIDDnum_RequestMinimumWireBytes* = 12
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetRAPIDDnum_RequestMaximumWireBytes* = 204
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvGetRAPIDDnum_RequestCodecIdentity* = "UWVMROS1_71057c2fe44bc96505ec6e05d998fcb6323b281fff40808ce990207c48626979"
## @brief Encode every field of complete abb_robot_msgs/srv/GetRAPIDDnum_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 204, written)
## @brief Decode every field of complete abb_robot_msgs/srv/GetRAPIDDnum_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvGetRAPIDDnum_Request*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request): uint32 =
  wire.decode(bytes, 12, 204, value)

## @brief Complete abb_robot_msgs/srv/GetRAPIDDnum_Response value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 14..526 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response* = object
  ## @brief Original abb_robot_msgs/srv/GetRAPIDDnum_Response.value field.
  ## @details Original type float64. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_value*: float64
  ## @brief Original abb_robot_msgs/srv/GetRAPIDDnum_Response.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/srv/GetRAPIDDnum_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetRAPIDDnum_ResponseMinimumWireBytes* = 14
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetRAPIDDnum_ResponseMaximumWireBytes* = 526
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvGetRAPIDDnum_ResponseCodecIdentity* = "UWVMROS1_af0420c126368a7e45b728c7fef76062b5ef2f0adea7535ad38e4771244edd56"
## @brief Encode every field of complete abb_robot_msgs/srv/GetRAPIDDnum_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 526, written)
## @brief Decode every field of complete abb_robot_msgs/srv/GetRAPIDDnum_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvGetRAPIDDnum_Response*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response): uint32 =
  wire.decode(bytes, 14, 526, value)

## @brief Complete abb_robot_msgs/srv/GetRAPIDNum_Request value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 12..204 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvGetRAPIDNum_Request* = object
  ## @brief Original abb_robot_msgs/srv/GetRAPIDNum_Request.path field.
  ## @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_path*: Ros2Abb_robot_msgsMsgRAPIDSymbolPath
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetRAPIDNum_RequestMinimumWireBytes* = 12
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetRAPIDNum_RequestMaximumWireBytes* = 204
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvGetRAPIDNum_RequestCodecIdentity* = "UWVMROS1_03d5da34af8d90ed8a20f8ca38fa75d9e777496828978f0f348e3c1c8f67d0a5"
## @brief Encode every field of complete abb_robot_msgs/srv/GetRAPIDNum_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvGetRAPIDNum_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 204, written)
## @brief Decode every field of complete abb_robot_msgs/srv/GetRAPIDNum_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvGetRAPIDNum_Request*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvGetRAPIDNum_Request): uint32 =
  wire.decode(bytes, 12, 204, value)

## @brief Complete abb_robot_msgs/srv/GetRAPIDNum_Response value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 10..522 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvGetRAPIDNum_Response* = object
  ## @brief Original abb_robot_msgs/srv/GetRAPIDNum_Response.value field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_value*: float32
  ## @brief Original abb_robot_msgs/srv/GetRAPIDNum_Response.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/srv/GetRAPIDNum_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetRAPIDNum_ResponseMinimumWireBytes* = 10
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetRAPIDNum_ResponseMaximumWireBytes* = 522
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvGetRAPIDNum_ResponseCodecIdentity* = "UWVMROS1_a0da03014dd001e58efc4a5b274cd5c62016e7fa257af1120a8142a79635220d"
## @brief Encode every field of complete abb_robot_msgs/srv/GetRAPIDNum_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvGetRAPIDNum_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 522, written)
## @brief Decode every field of complete abb_robot_msgs/srv/GetRAPIDNum_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvGetRAPIDNum_Response*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvGetRAPIDNum_Response): uint32 =
  wire.decode(bytes, 10, 522, value)

## @brief Complete abb_robot_msgs/srv/GetRAPIDString_Request value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 12..204 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvGetRAPIDString_Request* = object
  ## @brief Original abb_robot_msgs/srv/GetRAPIDString_Request.path field.
  ## @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_path*: Ros2Abb_robot_msgsMsgRAPIDSymbolPath
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetRAPIDString_RequestMinimumWireBytes* = 12
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetRAPIDString_RequestMaximumWireBytes* = 204
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvGetRAPIDString_RequestCodecIdentity* = "UWVMROS1_c7bc9c788301e619a165c18a1cdb0aca80df8def5be31da5dbf34c0038e73596"
## @brief Encode every field of complete abb_robot_msgs/srv/GetRAPIDString_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvGetRAPIDString_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 204, written)
## @brief Decode every field of complete abb_robot_msgs/srv/GetRAPIDString_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvGetRAPIDString_Request*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvGetRAPIDString_Request): uint32 =
  wire.decode(bytes, 12, 204, value)

## @brief Complete abb_robot_msgs/srv/GetRAPIDString_Response value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 10..1034 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvGetRAPIDString_Response* = object
  ## @brief Original abb_robot_msgs/srv/GetRAPIDString_Response.value field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_value*: NativeText[512, false]
  ## @brief Original abb_robot_msgs/srv/GetRAPIDString_Response.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/srv/GetRAPIDString_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetRAPIDString_ResponseMinimumWireBytes* = 10
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetRAPIDString_ResponseMaximumWireBytes* = 1034
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvGetRAPIDString_ResponseCodecIdentity* = "UWVMROS1_cf7bfdb2af5b91eb58b19b909f7fa3357dc1dad02716f8fa4465b53f3f4a1458"
## @brief Encode every field of complete abb_robot_msgs/srv/GetRAPIDString_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvGetRAPIDString_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1034, written)
## @brief Decode every field of complete abb_robot_msgs/srv/GetRAPIDString_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvGetRAPIDString_Response*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvGetRAPIDString_Response): uint32 =
  wire.decode(bytes, 10, 1034, value)

## @brief Complete abb_robot_msgs/srv/GetRAPIDSymbol_Request value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 12..204 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request* = object
  ## @brief Original abb_robot_msgs/srv/GetRAPIDSymbol_Request.path field.
  ## @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_path*: Ros2Abb_robot_msgsMsgRAPIDSymbolPath
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetRAPIDSymbol_RequestMinimumWireBytes* = 12
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetRAPIDSymbol_RequestMaximumWireBytes* = 204
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvGetRAPIDSymbol_RequestCodecIdentity* = "UWVMROS1_e216a54cdae70f8147489928ff05a4b172ba4fc47e9ed5df4828b070354ac469"
## @brief Encode every field of complete abb_robot_msgs/srv/GetRAPIDSymbol_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 204, written)
## @brief Decode every field of complete abb_robot_msgs/srv/GetRAPIDSymbol_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvGetRAPIDSymbol_Request*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request): uint32 =
  wire.decode(bytes, 12, 204, value)

## @brief Complete abb_robot_msgs/srv/GetRAPIDSymbol_Response value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 10..1034 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response* = object
  ## @brief Original abb_robot_msgs/srv/GetRAPIDSymbol_Response.value field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_value*: NativeText[512, false]
  ## @brief Original abb_robot_msgs/srv/GetRAPIDSymbol_Response.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/srv/GetRAPIDSymbol_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetRAPIDSymbol_ResponseMinimumWireBytes* = 10
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetRAPIDSymbol_ResponseMaximumWireBytes* = 1034
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvGetRAPIDSymbol_ResponseCodecIdentity* = "UWVMROS1_b1f6de7ad0640f5645678d327804dc7e732bdad38805e642b13ed7294c21d602"
## @brief Encode every field of complete abb_robot_msgs/srv/GetRAPIDSymbol_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1034, written)
## @brief Decode every field of complete abb_robot_msgs/srv/GetRAPIDSymbol_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvGetRAPIDSymbol_Response*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response): uint32 =
  wire.decode(bytes, 10, 1034, value)

## @brief Complete abb_robot_msgs/srv/GetRobotControllerDescription_Request value.
## @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request* = object
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetRobotControllerDescription_RequestMinimumWireBytes* = 0
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetRobotControllerDescription_RequestMaximumWireBytes* = 0
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvGetRobotControllerDescription_RequestCodecIdentity* = "UWVMROS1_caf70e11b386a933f62d06a433ca1cedaa3c8ecc75b7e8de8c1d5ae00a29f03e"
## @brief Encode every field of complete abb_robot_msgs/srv/GetRobotControllerDescription_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 0, written)
## @brief Decode every field of complete abb_robot_msgs/srv/GetRobotControllerDescription_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvGetRobotControllerDescription_Request*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request): uint32 =
  wire.decode(bytes, 0, 0, value)

## @brief Complete abb_robot_msgs/srv/GetRobotControllerDescription_Response value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 10..4618 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response* = object
  ## @brief Original abb_robot_msgs/srv/GetRobotControllerDescription_Response.description field.
  ## @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_description*: NativeText[4096, false]
  ## @brief Original abb_robot_msgs/srv/GetRobotControllerDescription_Response.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/srv/GetRobotControllerDescription_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetRobotControllerDescription_ResponseMinimumWireBytes* = 10
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetRobotControllerDescription_ResponseMaximumWireBytes* = 4618
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvGetRobotControllerDescription_ResponseCodecIdentity* = "UWVMROS1_1af2591f035379597f376ed1e2343f73a89f9fef5c29269aa420243a82e6c368"
## @brief Encode every field of complete abb_robot_msgs/srv/GetRobotControllerDescription_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 4618, written)
## @brief Decode every field of complete abb_robot_msgs/srv/GetRobotControllerDescription_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvGetRobotControllerDescription_Response*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response): uint32 =
  wire.decode(bytes, 10, 4618, value)

## @brief Complete abb_robot_msgs/srv/GetSpeedRatio_Request value.
## @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvGetSpeedRatio_Request* = object
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetSpeedRatio_RequestMinimumWireBytes* = 0
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetSpeedRatio_RequestMaximumWireBytes* = 0
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvGetSpeedRatio_RequestCodecIdentity* = "UWVMROS1_54ee2c897e2bf2f39c96cc42246ffe5997c8df280280433e8748b3bcf24c299c"
## @brief Encode every field of complete abb_robot_msgs/srv/GetSpeedRatio_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvGetSpeedRatio_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 0, written)
## @brief Decode every field of complete abb_robot_msgs/srv/GetSpeedRatio_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvGetSpeedRatio_Request*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvGetSpeedRatio_Request): uint32 =
  wire.decode(bytes, 0, 0, value)

## @brief Complete abb_robot_msgs/srv/GetSpeedRatio_Response value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 7..519 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvGetSpeedRatio_Response* = object
  ## @brief Original abb_robot_msgs/srv/GetSpeedRatio_Response.speed_ratio field.
  ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_speed_ratio*: uint8
  ## @brief Original abb_robot_msgs/srv/GetSpeedRatio_Response.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/srv/GetSpeedRatio_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetSpeedRatio_ResponseMinimumWireBytes* = 7
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvGetSpeedRatio_ResponseMaximumWireBytes* = 519
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvGetSpeedRatio_ResponseCodecIdentity* = "UWVMROS1_baa271a258c7ca274e0145fea1abb7cbc43e98c82b8e40d67c4743237a19910b"
## @brief Encode every field of complete abb_robot_msgs/srv/GetSpeedRatio_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvGetSpeedRatio_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 519, written)
## @brief Decode every field of complete abb_robot_msgs/srv/GetSpeedRatio_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvGetSpeedRatio_Response*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvGetSpeedRatio_Response): uint32 =
  wire.decode(bytes, 7, 519, value)

## @brief Complete abb_robot_msgs/srv/SetFileContents_Request value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 8..4616 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvSetFileContents_Request* = object
  ## @brief Original abb_robot_msgs/srv/SetFileContents_Request.filename field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_filename*: NativeText[512, false]
  ## @brief Original abb_robot_msgs/srv/SetFileContents_Request.contents field.
  ## @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_contents*: NativeText[4096, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvSetFileContents_RequestMinimumWireBytes* = 8
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvSetFileContents_RequestMaximumWireBytes* = 4616
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvSetFileContents_RequestCodecIdentity* = "UWVMROS1_3bfa8ad1846fc31acae47a875d3555a78a64b777923eb9b62e87a836f041b26b"
## @brief Encode every field of complete abb_robot_msgs/srv/SetFileContents_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvSetFileContents_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 4616, written)
## @brief Decode every field of complete abb_robot_msgs/srv/SetFileContents_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvSetFileContents_Request*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvSetFileContents_Request): uint32 =
  wire.decode(bytes, 8, 4616, value)

## @brief Complete abb_robot_msgs/srv/SetFileContents_Response value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvSetFileContents_Response* = object
  ## @brief Original abb_robot_msgs/srv/SetFileContents_Response.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/srv/SetFileContents_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvSetFileContents_ResponseMinimumWireBytes* = 6
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvSetFileContents_ResponseMaximumWireBytes* = 518
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvSetFileContents_ResponseCodecIdentity* = "UWVMROS1_1586344401d43055460b49f2487567638f66838cfe5cac99a47e0a39c0b06ede"
## @brief Encode every field of complete abb_robot_msgs/srv/SetFileContents_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvSetFileContents_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 518, written)
## @brief Decode every field of complete abb_robot_msgs/srv/SetFileContents_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvSetFileContents_Response*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvSetFileContents_Response): uint32 =
  wire.decode(bytes, 6, 518, value)

## @brief Complete abb_robot_msgs/srv/SetIOSignal_Request value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 8..1032 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvSetIOSignal_Request* = object
  ## @brief Original abb_robot_msgs/srv/SetIOSignal_Request.signal field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_signal*: NativeText[512, false]
  ## @brief Original abb_robot_msgs/srv/SetIOSignal_Request.value field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_value*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvSetIOSignal_RequestMinimumWireBytes* = 8
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvSetIOSignal_RequestMaximumWireBytes* = 1032
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvSetIOSignal_RequestCodecIdentity* = "UWVMROS1_2d206d0020179263e83e745a428616ed53d809b0c65a79ad495cb882ae9e49b7"
## @brief Encode every field of complete abb_robot_msgs/srv/SetIOSignal_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvSetIOSignal_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1032, written)
## @brief Decode every field of complete abb_robot_msgs/srv/SetIOSignal_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvSetIOSignal_Request*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvSetIOSignal_Request): uint32 =
  wire.decode(bytes, 8, 1032, value)

## @brief Complete abb_robot_msgs/srv/SetIOSignal_Response value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvSetIOSignal_Response* = object
  ## @brief Original abb_robot_msgs/srv/SetIOSignal_Response.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/srv/SetIOSignal_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvSetIOSignal_ResponseMinimumWireBytes* = 6
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvSetIOSignal_ResponseMaximumWireBytes* = 518
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvSetIOSignal_ResponseCodecIdentity* = "UWVMROS1_1fa28cc3160d51f71d0740cbe145663ec360d6fa488c2a6bf14ad6ab92004a75"
## @brief Encode every field of complete abb_robot_msgs/srv/SetIOSignal_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvSetIOSignal_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 518, written)
## @brief Decode every field of complete abb_robot_msgs/srv/SetIOSignal_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvSetIOSignal_Response*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvSetIOSignal_Response): uint32 =
  wire.decode(bytes, 6, 518, value)

## @brief Complete abb_robot_msgs/srv/SetRAPIDBool_Request value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 13..205 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvSetRAPIDBool_Request* = object
  ## @brief Original abb_robot_msgs/srv/SetRAPIDBool_Request.path field.
  ## @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_path*: Ros2Abb_robot_msgsMsgRAPIDSymbolPath
  ## @brief Original abb_robot_msgs/srv/SetRAPIDBool_Request.value field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_value*: bool
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvSetRAPIDBool_RequestMinimumWireBytes* = 13
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvSetRAPIDBool_RequestMaximumWireBytes* = 205
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvSetRAPIDBool_RequestCodecIdentity* = "UWVMROS1_4e707e429acc860d032d216bcd2c1eb1a0f731fad7e7c0bef7beed810c6e4a52"
## @brief Encode every field of complete abb_robot_msgs/srv/SetRAPIDBool_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvSetRAPIDBool_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 205, written)
## @brief Decode every field of complete abb_robot_msgs/srv/SetRAPIDBool_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvSetRAPIDBool_Request*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvSetRAPIDBool_Request): uint32 =
  wire.decode(bytes, 13, 205, value)

## @brief Complete abb_robot_msgs/srv/SetRAPIDBool_Response value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvSetRAPIDBool_Response* = object
  ## @brief Original abb_robot_msgs/srv/SetRAPIDBool_Response.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/srv/SetRAPIDBool_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvSetRAPIDBool_ResponseMinimumWireBytes* = 6
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvSetRAPIDBool_ResponseMaximumWireBytes* = 518
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvSetRAPIDBool_ResponseCodecIdentity* = "UWVMROS1_80d2b31c93771cfa8a19ff82a3d9d63951bf9d28c039d2725017327fa3b0114a"
## @brief Encode every field of complete abb_robot_msgs/srv/SetRAPIDBool_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvSetRAPIDBool_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 518, written)
## @brief Decode every field of complete abb_robot_msgs/srv/SetRAPIDBool_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvSetRAPIDBool_Response*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvSetRAPIDBool_Response): uint32 =
  wire.decode(bytes, 6, 518, value)

## @brief Complete abb_robot_msgs/srv/SetRAPIDDnum_Request value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 20..212 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request* = object
  ## @brief Original abb_robot_msgs/srv/SetRAPIDDnum_Request.path field.
  ## @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_path*: Ros2Abb_robot_msgsMsgRAPIDSymbolPath
  ## @brief Original abb_robot_msgs/srv/SetRAPIDDnum_Request.value field.
  ## @details Original type float64. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_value*: float64
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvSetRAPIDDnum_RequestMinimumWireBytes* = 20
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvSetRAPIDDnum_RequestMaximumWireBytes* = 212
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvSetRAPIDDnum_RequestCodecIdentity* = "UWVMROS1_cece086311a908f12c0b0ab3988ca829e891749c74687c717d2a52bfb8ceaf76"
## @brief Encode every field of complete abb_robot_msgs/srv/SetRAPIDDnum_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 212, written)
## @brief Decode every field of complete abb_robot_msgs/srv/SetRAPIDDnum_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvSetRAPIDDnum_Request*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request): uint32 =
  wire.decode(bytes, 20, 212, value)

## @brief Complete abb_robot_msgs/srv/SetRAPIDDnum_Response value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response* = object
  ## @brief Original abb_robot_msgs/srv/SetRAPIDDnum_Response.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/srv/SetRAPIDDnum_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvSetRAPIDDnum_ResponseMinimumWireBytes* = 6
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvSetRAPIDDnum_ResponseMaximumWireBytes* = 518
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvSetRAPIDDnum_ResponseCodecIdentity* = "UWVMROS1_e5f77fe9850f109d873a2784b9690c8aa0632b9e91d158ed4d14daf1aaf90ea6"
## @brief Encode every field of complete abb_robot_msgs/srv/SetRAPIDDnum_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 518, written)
## @brief Decode every field of complete abb_robot_msgs/srv/SetRAPIDDnum_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvSetRAPIDDnum_Response*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response): uint32 =
  wire.decode(bytes, 6, 518, value)

## @brief Complete abb_robot_msgs/srv/SetRAPIDNum_Request value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 16..208 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvSetRAPIDNum_Request* = object
  ## @brief Original abb_robot_msgs/srv/SetRAPIDNum_Request.path field.
  ## @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_path*: Ros2Abb_robot_msgsMsgRAPIDSymbolPath
  ## @brief Original abb_robot_msgs/srv/SetRAPIDNum_Request.value field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_value*: float32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvSetRAPIDNum_RequestMinimumWireBytes* = 16
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvSetRAPIDNum_RequestMaximumWireBytes* = 208
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvSetRAPIDNum_RequestCodecIdentity* = "UWVMROS1_a5bee9a64be69dc4246f68837a44362f52795ae3c6420a2df47685606283ea02"
## @brief Encode every field of complete abb_robot_msgs/srv/SetRAPIDNum_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvSetRAPIDNum_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 208, written)
## @brief Decode every field of complete abb_robot_msgs/srv/SetRAPIDNum_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvSetRAPIDNum_Request*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvSetRAPIDNum_Request): uint32 =
  wire.decode(bytes, 16, 208, value)

## @brief Complete abb_robot_msgs/srv/SetRAPIDNum_Response value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvSetRAPIDNum_Response* = object
  ## @brief Original abb_robot_msgs/srv/SetRAPIDNum_Response.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/srv/SetRAPIDNum_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvSetRAPIDNum_ResponseMinimumWireBytes* = 6
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvSetRAPIDNum_ResponseMaximumWireBytes* = 518
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvSetRAPIDNum_ResponseCodecIdentity* = "UWVMROS1_744f3c5fac58ff098c96cedcea94fe6fa87c88ceb89674449f50fbdcd1ca30bb"
## @brief Encode every field of complete abb_robot_msgs/srv/SetRAPIDNum_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvSetRAPIDNum_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 518, written)
## @brief Decode every field of complete abb_robot_msgs/srv/SetRAPIDNum_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvSetRAPIDNum_Response*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvSetRAPIDNum_Response): uint32 =
  wire.decode(bytes, 6, 518, value)

## @brief Complete abb_robot_msgs/srv/SetRAPIDString_Request value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 16..720 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvSetRAPIDString_Request* = object
  ## @brief Original abb_robot_msgs/srv/SetRAPIDString_Request.path field.
  ## @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_path*: Ros2Abb_robot_msgsMsgRAPIDSymbolPath
  ## @brief Original abb_robot_msgs/srv/SetRAPIDString_Request.value field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_value*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvSetRAPIDString_RequestMinimumWireBytes* = 16
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvSetRAPIDString_RequestMaximumWireBytes* = 720
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvSetRAPIDString_RequestCodecIdentity* = "UWVMROS1_f21c45f3f8cd4c0b50781bdd487fdc6ec0c0b35adbc7e36e9ca5b7cc47c3d461"
## @brief Encode every field of complete abb_robot_msgs/srv/SetRAPIDString_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvSetRAPIDString_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 720, written)
## @brief Decode every field of complete abb_robot_msgs/srv/SetRAPIDString_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvSetRAPIDString_Request*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvSetRAPIDString_Request): uint32 =
  wire.decode(bytes, 16, 720, value)

## @brief Complete abb_robot_msgs/srv/SetRAPIDString_Response value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvSetRAPIDString_Response* = object
  ## @brief Original abb_robot_msgs/srv/SetRAPIDString_Response.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/srv/SetRAPIDString_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvSetRAPIDString_ResponseMinimumWireBytes* = 6
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvSetRAPIDString_ResponseMaximumWireBytes* = 518
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvSetRAPIDString_ResponseCodecIdentity* = "UWVMROS1_1496ef4f4ffe48fe74b9e25b925c19f10f0e171a9d33fa2e56c15aa5cfbe4774"
## @brief Encode every field of complete abb_robot_msgs/srv/SetRAPIDString_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvSetRAPIDString_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 518, written)
## @brief Decode every field of complete abb_robot_msgs/srv/SetRAPIDString_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvSetRAPIDString_Response*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvSetRAPIDString_Response): uint32 =
  wire.decode(bytes, 6, 518, value)

## @brief Complete abb_robot_msgs/srv/SetRAPIDSymbol_Request value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 16..720 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request* = object
  ## @brief Original abb_robot_msgs/srv/SetRAPIDSymbol_Request.path field.
  ## @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_path*: Ros2Abb_robot_msgsMsgRAPIDSymbolPath
  ## @brief Original abb_robot_msgs/srv/SetRAPIDSymbol_Request.value field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_value*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvSetRAPIDSymbol_RequestMinimumWireBytes* = 16
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvSetRAPIDSymbol_RequestMaximumWireBytes* = 720
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvSetRAPIDSymbol_RequestCodecIdentity* = "UWVMROS1_928d427801b79775595fed6e3779f9ba9e7e8e27f2de66cf79610cb51bb72bcf"
## @brief Encode every field of complete abb_robot_msgs/srv/SetRAPIDSymbol_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 720, written)
## @brief Decode every field of complete abb_robot_msgs/srv/SetRAPIDSymbol_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvSetRAPIDSymbol_Request*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request): uint32 =
  wire.decode(bytes, 16, 720, value)

## @brief Complete abb_robot_msgs/srv/SetRAPIDSymbol_Response value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response* = object
  ## @brief Original abb_robot_msgs/srv/SetRAPIDSymbol_Response.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/srv/SetRAPIDSymbol_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvSetRAPIDSymbol_ResponseMinimumWireBytes* = 6
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvSetRAPIDSymbol_ResponseMaximumWireBytes* = 518
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvSetRAPIDSymbol_ResponseCodecIdentity* = "UWVMROS1_e156616a51bf4691a1c3853d62a8b0c43bb17d1a330cd4e7a58eceb5fe442382"
## @brief Encode every field of complete abb_robot_msgs/srv/SetRAPIDSymbol_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 518, written)
## @brief Decode every field of complete abb_robot_msgs/srv/SetRAPIDSymbol_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvSetRAPIDSymbol_Response*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response): uint32 =
  wire.decode(bytes, 6, 518, value)

## @brief Complete abb_robot_msgs/srv/SetSpeedRatio_Request value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 1..1 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvSetSpeedRatio_Request* = object
  ## @brief Original abb_robot_msgs/srv/SetSpeedRatio_Request.speed_ratio field.
  ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_speed_ratio*: uint8
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvSetSpeedRatio_RequestMinimumWireBytes* = 1
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvSetSpeedRatio_RequestMaximumWireBytes* = 1
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvSetSpeedRatio_RequestCodecIdentity* = "UWVMROS1_da30970377ba1bc151b544560773f02e17f4eaed56eb4c8d791de72bdef04355"
## @brief Encode every field of complete abb_robot_msgs/srv/SetSpeedRatio_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvSetSpeedRatio_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1, written)
## @brief Decode every field of complete abb_robot_msgs/srv/SetSpeedRatio_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvSetSpeedRatio_Request*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvSetSpeedRatio_Request): uint32 =
  wire.decode(bytes, 1, 1, value)

## @brief Complete abb_robot_msgs/srv/SetSpeedRatio_Response value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvSetSpeedRatio_Response* = object
  ## @brief Original abb_robot_msgs/srv/SetSpeedRatio_Response.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/srv/SetSpeedRatio_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvSetSpeedRatio_ResponseMinimumWireBytes* = 6
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvSetSpeedRatio_ResponseMaximumWireBytes* = 518
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvSetSpeedRatio_ResponseCodecIdentity* = "UWVMROS1_25e6d7edaa0503a4d45d893e886db4215bfd0af8711307c141bc63552609e3a5"
## @brief Encode every field of complete abb_robot_msgs/srv/SetSpeedRatio_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvSetSpeedRatio_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 518, written)
## @brief Decode every field of complete abb_robot_msgs/srv/SetSpeedRatio_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvSetSpeedRatio_Response*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvSetSpeedRatio_Response): uint32 =
  wire.decode(bytes, 6, 518, value)

## @brief Complete abb_robot_msgs/srv/TriggerWithResultCode_Request value.
## @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request* = object
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvTriggerWithResultCode_RequestMinimumWireBytes* = 0
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvTriggerWithResultCode_RequestMaximumWireBytes* = 0
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvTriggerWithResultCode_RequestCodecIdentity* = "UWVMROS1_fd1d49c3b4e489464c6662f306210137f71d15192f64cd8a8abf93acd5fbff8d"
## @brief Encode every field of complete abb_robot_msgs/srv/TriggerWithResultCode_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 0, written)
## @brief Decode every field of complete abb_robot_msgs/srv/TriggerWithResultCode_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvTriggerWithResultCode_Request*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request): uint32 =
  wire.decode(bytes, 0, 0, value)

## @brief Complete abb_robot_msgs/srv/TriggerWithResultCode_Response value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response* = object
  ## @brief Original abb_robot_msgs/srv/TriggerWithResultCode_Response.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/srv/TriggerWithResultCode_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvTriggerWithResultCode_ResponseMinimumWireBytes* = 6
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Abb_robot_msgsSrvTriggerWithResultCode_ResponseMaximumWireBytes* = 518
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Abb_robot_msgsSrvTriggerWithResultCode_ResponseCodecIdentity* = "UWVMROS1_e38422b2a008f07e108505ac3ce65c24189a1d6657e88a6289e17d7d4ae38d51"
## @brief Encode every field of complete abb_robot_msgs/srv/TriggerWithResultCode_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 518, written)
## @brief Decode every field of complete abb_robot_msgs/srv/TriggerWithResultCode_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Abb_robot_msgsSrvTriggerWithResultCode_Response*(bytes: openArray[byte]; value: var Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response): uint32 =
  wire.decode(bytes, 6, 518, value)

## @brief Complete builtin_interfaces/msg/Duration value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Builtin_interfacesMsgDuration* = object
  ## @brief Original builtin_interfaces/msg/Duration.sec field.
  ## @details Original type int32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_sec*: int32
  ## @brief Original builtin_interfaces/msg/Duration.nanosec field.
  ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_nanosec*: uint32
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
## @brief Validate the original complete time-domain invariant.
## @details No clock read, unit conversion or normalization is performed.
## @param value Complete immutable owned record.
## @return Zero or canonical error 22.
proc validate*(value: Ros2Builtin_interfacesMsgDuration): uint32 =
  if value.field_nanosec >= 1000000000: 22'u32 else: 0'u32
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

## @brief Complete trajectory_msgs/msg/JointTrajectoryPoint value.
## @details Retain all 5 original fields and 0 constants. Canonical extent 24..408 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Trajectory_msgsMsgJointTrajectoryPoint* = object
  ## @brief Original trajectory_msgs/msg/JointTrajectoryPoint.positions field.
  ## @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
  ## or copying it creates no native ROS owner.
  field_positions*: NativeSequence[float64, 12]
  ## @brief Original trajectory_msgs/msg/JointTrajectoryPoint.velocities field.
  ## @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
  ## or copying it creates no native ROS owner.
  field_velocities*: NativeSequence[float64, 12]
  ## @brief Original trajectory_msgs/msg/JointTrajectoryPoint.accelerations field.
  ## @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
  ## or copying it creates no native ROS owner.
  field_accelerations*: NativeSequence[float64, 12]
  ## @brief Original trajectory_msgs/msg/JointTrajectoryPoint.effort field.
  ## @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
  ## or copying it creates no native ROS owner.
  field_effort*: NativeSequence[float64, 12]
  ## @brief Original trajectory_msgs/msg/JointTrajectoryPoint.time_from_start field.
  ## @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_time_from_start*: Ros2Builtin_interfacesMsgDuration
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Trajectory_msgsMsgJointTrajectoryPointMinimumWireBytes* = 24
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Trajectory_msgsMsgJointTrajectoryPointMaximumWireBytes* = 408
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Trajectory_msgsMsgJointTrajectoryPointCodecIdentity* = "UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5"
## @brief Encode every field of complete trajectory_msgs/msg/JointTrajectoryPoint.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Trajectory_msgsMsgJointTrajectoryPoint; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 408, written)
## @brief Decode every field of complete trajectory_msgs/msg/JointTrajectoryPoint.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Trajectory_msgsMsgJointTrajectoryPoint*(bytes: openArray[byte]; value: var Ros2Trajectory_msgsMsgJointTrajectoryPoint): uint32 =
  wire.decode(bytes, 24, 408, value)

## @brief Complete trajectory_msgs/msg/JointTrajectory value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 20..4164 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Trajectory_msgsMsgJointTrajectory* = object
  ## @brief Original trajectory_msgs/msg/JointTrajectory.header field.
  ## @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_header*: Ros2Std_msgsMsgHeader
  ## @brief Original trajectory_msgs/msg/JointTrajectory.joint_names field.
  ## @details Original type string. String bound 64 bytes; domain utf8. Shape sequence; bound/count
  ## 12 elements. Preserve declared units, frame, signedness and field order. Backing storage
  ## belongs to this value; constructing or copying it creates no native ROS owner.
  field_joint_names*: NativeSequence[NativeText[64, false], 12]
  ## @brief Original trajectory_msgs/msg/JointTrajectory.points field.
  ## @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Shape sequence; bound/count 8
  ## elements. Preserve declared units, frame, signedness and field order. Backing storage belongs
  ## to this value; constructing or copying it creates no native ROS owner.
  field_points*: NativeSequence[Ros2Trajectory_msgsMsgJointTrajectoryPoint, 8]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Trajectory_msgsMsgJointTrajectoryMinimumWireBytes* = 20
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Trajectory_msgsMsgJointTrajectoryMaximumWireBytes* = 4164
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Trajectory_msgsMsgJointTrajectoryCodecIdentity* = "UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0"
## @brief Encode every field of complete trajectory_msgs/msg/JointTrajectory.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Trajectory_msgsMsgJointTrajectory; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 4164, written)
## @brief Decode every field of complete trajectory_msgs/msg/JointTrajectory.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Trajectory_msgsMsgJointTrajectory*(bytes: openArray[byte]; value: var Ros2Trajectory_msgsMsgJointTrajectory): uint32 =
  wire.decode(bytes, 20, 4164, value)

## @brief Complete geometry_msgs/msg/Vector3 value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 24..24 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Geometry_msgsMsgVector3* = object
  ## @brief Original geometry_msgs/msg/Vector3.x field.
  ## @details Original type float64. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_x*: float64
  ## @brief Original geometry_msgs/msg/Vector3.y field.
  ## @details Original type float64. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_y*: float64
  ## @brief Original geometry_msgs/msg/Vector3.z field.
  ## @details Original type float64. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_z*: float64
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Geometry_msgsMsgVector3MinimumWireBytes* = 24
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Geometry_msgsMsgVector3MaximumWireBytes* = 24
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Geometry_msgsMsgVector3CodecIdentity* = "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e"
## @brief Encode every field of complete geometry_msgs/msg/Vector3.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Geometry_msgsMsgVector3; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 24, written)
## @brief Decode every field of complete geometry_msgs/msg/Vector3.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Geometry_msgsMsgVector3*(bytes: openArray[byte]; value: var Ros2Geometry_msgsMsgVector3): uint32 =
  wire.decode(bytes, 24, 24, value)

## @brief Complete geometry_msgs/msg/Quaternion value.
## @details Retain all 4 original fields and 0 constants. Canonical extent 32..32 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Geometry_msgsMsgQuaternion* = object
  ## @brief Original geometry_msgs/msg/Quaternion.x field.
  ## @details Original type float64. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_x*: float64
  ## @brief Original geometry_msgs/msg/Quaternion.y field.
  ## @details Original type float64. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_y*: float64
  ## @brief Original geometry_msgs/msg/Quaternion.z field.
  ## @details Original type float64. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_z*: float64
  ## @brief Original geometry_msgs/msg/Quaternion.w field.
  ## @details Original type float64. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_w*: float64
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Geometry_msgsMsgQuaternionMinimumWireBytes* = 32
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Geometry_msgsMsgQuaternionMaximumWireBytes* = 32
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Geometry_msgsMsgQuaternionCodecIdentity* = "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672"
## @brief Encode every field of complete geometry_msgs/msg/Quaternion.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Geometry_msgsMsgQuaternion; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 32, written)
## @brief Decode every field of complete geometry_msgs/msg/Quaternion.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Geometry_msgsMsgQuaternion*(bytes: openArray[byte]; value: var Ros2Geometry_msgsMsgQuaternion): uint32 =
  wire.decode(bytes, 32, 32, value)

## @brief Complete geometry_msgs/msg/Transform value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 56..56 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Geometry_msgsMsgTransform* = object
  ## @brief Original geometry_msgs/msg/Transform.translation field.
  ## @details Original type geometry_msgs/msg/Vector3. Preserve declared units, frame, signedness
  ## and field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_translation*: Ros2Geometry_msgsMsgVector3
  ## @brief Original geometry_msgs/msg/Transform.rotation field.
  ## @details Original type geometry_msgs/msg/Quaternion. Preserve declared units, frame, signedness
  ## and field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_rotation*: Ros2Geometry_msgsMsgQuaternion
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Geometry_msgsMsgTransformMinimumWireBytes* = 56
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Geometry_msgsMsgTransformMaximumWireBytes* = 56
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Geometry_msgsMsgTransformCodecIdentity* = "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b"
## @brief Encode every field of complete geometry_msgs/msg/Transform.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Geometry_msgsMsgTransform; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 56, written)
## @brief Decode every field of complete geometry_msgs/msg/Transform.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Geometry_msgsMsgTransform*(bytes: openArray[byte]; value: var Ros2Geometry_msgsMsgTransform): uint32 =
  wire.decode(bytes, 56, 56, value)

## @brief Complete geometry_msgs/msg/Twist value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 48..48 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Geometry_msgsMsgTwist* = object
  ## @brief Original geometry_msgs/msg/Twist.linear field.
  ## @details Original type geometry_msgs/msg/Vector3. Preserve declared units, frame, signedness
  ## and field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_linear*: Ros2Geometry_msgsMsgVector3
  ## @brief Original geometry_msgs/msg/Twist.angular field.
  ## @details Original type geometry_msgs/msg/Vector3. Preserve declared units, frame, signedness
  ## and field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_angular*: Ros2Geometry_msgsMsgVector3
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Geometry_msgsMsgTwistMinimumWireBytes* = 48
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Geometry_msgsMsgTwistMaximumWireBytes* = 48
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Geometry_msgsMsgTwistCodecIdentity* = "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e"
## @brief Encode every field of complete geometry_msgs/msg/Twist.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Geometry_msgsMsgTwist; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 48, written)
## @brief Decode every field of complete geometry_msgs/msg/Twist.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Geometry_msgsMsgTwist*(bytes: openArray[byte]; value: var Ros2Geometry_msgsMsgTwist): uint32 =
  wire.decode(bytes, 48, 48, value)

## @brief Complete trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value.
## @details Retain all 4 original fields and 0 constants. Canonical extent 20..324 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint* = object
  ## @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.transforms field.
  ## @details Original type geometry_msgs/msg/Transform. Shape sequence; bound/count 2 elements.
  ## Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  ## value; constructing or copying it creates no native ROS owner.
  field_transforms*: NativeSequence[Ros2Geometry_msgsMsgTransform, 2]
  ## @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.velocities field.
  ## @details Original type geometry_msgs/msg/Twist. Shape sequence; bound/count 2 elements.
  ## Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  ## value; constructing or copying it creates no native ROS owner.
  field_velocities*: NativeSequence[Ros2Geometry_msgsMsgTwist, 2]
  ## @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.accelerations field.
  ## @details Original type geometry_msgs/msg/Twist. Shape sequence; bound/count 2 elements.
  ## Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  ## value; constructing or copying it creates no native ROS owner.
  field_accelerations*: NativeSequence[Ros2Geometry_msgsMsgTwist, 2]
  ## @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.time_from_start field.
  ## @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_time_from_start*: Ros2Builtin_interfacesMsgDuration
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointMinimumWireBytes* = 20
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointMaximumWireBytes* = 324
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodecIdentity* = "UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242"
## @brief Encode every field of complete trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 324, written)
## @brief Decode every field of complete trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint*(bytes: openArray[byte]; value: var Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint): uint32 =
  wire.decode(bytes, 20, 324, value)

## @brief Complete trajectory_msgs/msg/MultiDOFJointTrajectory value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 20..1516 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Trajectory_msgsMsgMultiDOFJointTrajectory* = object
  ## @brief Original trajectory_msgs/msg/MultiDOFJointTrajectory.header field.
  ## @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_header*: Ros2Std_msgsMsgHeader
  ## @brief Original trajectory_msgs/msg/MultiDOFJointTrajectory.joint_names field.
  ## @details Original type string. String bound 64 bytes; domain utf8. Shape sequence; bound/count
  ## 2 elements. Preserve declared units, frame, signedness and field order. Backing storage belongs
  ## to this value; constructing or copying it creates no native ROS owner.
  field_joint_names*: NativeSequence[NativeText[64, false], 2]
  ## @brief Original trajectory_msgs/msg/MultiDOFJointTrajectory.points field.
  ## @details Original type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Shape sequence;
  ## bound/count 4 elements. Preserve declared units, frame, signedness and field order. Backing
  ## storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_points*: NativeSequence[Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint, 4]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryMinimumWireBytes* = 20
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryMaximumWireBytes* = 1516
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodecIdentity* = "UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401"
## @brief Encode every field of complete trajectory_msgs/msg/MultiDOFJointTrajectory.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1516, written)
## @brief Decode every field of complete trajectory_msgs/msg/MultiDOFJointTrajectory.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Trajectory_msgsMsgMultiDOFJointTrajectory*(bytes: openArray[byte]; value: var Ros2Trajectory_msgsMsgMultiDOFJointTrajectory): uint32 =
  wire.decode(bytes, 20, 1516, value)

## @brief Complete control_msgs/msg/JointTolerance value.
## @details Retain all 4 original fields and 0 constants. Canonical extent 28..92 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Control_msgsMsgJointTolerance* = object
  ## @brief Original control_msgs/msg/JointTolerance.name field.
  ## @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_name*: NativeText[64, false]
  ## @brief Original control_msgs/msg/JointTolerance.position field.
  ## @details Original type float64. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_position*: float64
  ## @brief Original control_msgs/msg/JointTolerance.velocity field.
  ## @details Original type float64. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_velocity*: float64
  ## @brief Original control_msgs/msg/JointTolerance.acceleration field.
  ## @details Original type float64. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_acceleration*: float64
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Control_msgsMsgJointToleranceMinimumWireBytes* = 28
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Control_msgsMsgJointToleranceMaximumWireBytes* = 92
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Control_msgsMsgJointToleranceCodecIdentity* = "UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2"
## @brief Encode every field of complete control_msgs/msg/JointTolerance.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Control_msgsMsgJointTolerance; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 92, written)
## @brief Decode every field of complete control_msgs/msg/JointTolerance.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Control_msgsMsgJointTolerance*(bytes: openArray[byte]; value: var Ros2Control_msgsMsgJointTolerance): uint32 =
  wire.decode(bytes, 28, 92, value)

## @brief Complete control_msgs/msg/JointComponentTolerance value.
## @details Retain all 5 original fields and 5 constants. Canonical extent 30..542 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Control_msgsMsgJointComponentTolerance* = object
  ## @brief Original control_msgs/msg/JointComponentTolerance.joint_name field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_joint_name*: NativeText[512, false]
  ## @brief Original control_msgs/msg/JointComponentTolerance.component field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_component*: uint16
  ## @brief Original control_msgs/msg/JointComponentTolerance.position field.
  ## @details Original type float64. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_position*: float64
  ## @brief Original control_msgs/msg/JointComponentTolerance.velocity field.
  ## @details Original type float64. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_velocity*: float64
  ## @brief Original control_msgs/msg/JointComponentTolerance.acceleration field.
  ## @details Original type float64. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_acceleration*: float64
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Control_msgsMsgJointComponentToleranceMinimumWireBytes* = 30
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Control_msgsMsgJointComponentToleranceMaximumWireBytes* = 542
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Control_msgsMsgJointComponentToleranceCodecIdentity* = "UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342"
## @brief Original control_msgs/msg/JointComponentTolerance.X_AXIS constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Control_msgsMsgJointComponentTolerance_X_AXIS*: uint16 = 1'u16
## @brief Original control_msgs/msg/JointComponentTolerance.Y_AXIS constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Control_msgsMsgJointComponentTolerance_Y_AXIS*: uint16 = 2'u16
## @brief Original control_msgs/msg/JointComponentTolerance.Z_AXIS constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Control_msgsMsgJointComponentTolerance_Z_AXIS*: uint16 = 3'u16
## @brief Original control_msgs/msg/JointComponentTolerance.TRANSLATION constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Control_msgsMsgJointComponentTolerance_TRANSLATION*: uint16 = 4'u16
## @brief Original control_msgs/msg/JointComponentTolerance.ROTATION constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Control_msgsMsgJointComponentTolerance_ROTATION*: uint16 = 5'u16
## @brief Encode every field of complete control_msgs/msg/JointComponentTolerance.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Control_msgsMsgJointComponentTolerance; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 542, written)
## @brief Decode every field of complete control_msgs/msg/JointComponentTolerance.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Control_msgsMsgJointComponentTolerance*(bytes: openArray[byte]; value: var Ros2Control_msgsMsgJointComponentTolerance): uint32 =
  wire.decode(bytes, 30, 542, value)

## @brief Complete control_msgs/action/FollowJointTrajectory_Goal value.
## @details Retain all 7 original fields and 0 constants. Canonical extent 64..20920 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Control_msgsActionFollowJointTrajectory_Goal* = object
  ## @brief Original control_msgs/action/FollowJointTrajectory_Goal.trajectory field.
  ## @details Original type trajectory_msgs/msg/JointTrajectory. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_trajectory*: Ros2Trajectory_msgsMsgJointTrajectory
  ## @brief Original control_msgs/action/FollowJointTrajectory_Goal.multi_dof_trajectory field.
  ## @details Original type trajectory_msgs/msg/MultiDOFJointTrajectory. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_multi_dof_trajectory*: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
  ## @brief Original control_msgs/action/FollowJointTrajectory_Goal.path_tolerance field.
  ## @details Original type control_msgs/msg/JointTolerance. Shape sequence; bound/count 12
  ## elements. Preserve declared units, frame, signedness and field order. Backing storage belongs
  ## to this value; constructing or copying it creates no native ROS owner.
  field_path_tolerance*: NativeSequence[Ros2Control_msgsMsgJointTolerance, 12]
  ## @brief Original control_msgs/action/FollowJointTrajectory_Goal.component_path_tolerance field.
  ## @details Original type control_msgs/msg/JointComponentTolerance. Shape sequence; bound/count 12
  ## elements. Preserve declared units, frame, signedness and field order. Backing storage belongs
  ## to this value; constructing or copying it creates no native ROS owner.
  field_component_path_tolerance*: NativeSequence[Ros2Control_msgsMsgJointComponentTolerance, 12]
  ## @brief Original control_msgs/action/FollowJointTrajectory_Goal.goal_tolerance field.
  ## @details Original type control_msgs/msg/JointTolerance. Shape sequence; bound/count 12
  ## elements. Preserve declared units, frame, signedness and field order. Backing storage belongs
  ## to this value; constructing or copying it creates no native ROS owner.
  field_goal_tolerance*: NativeSequence[Ros2Control_msgsMsgJointTolerance, 12]
  ## @brief Original control_msgs/action/FollowJointTrajectory_Goal.component_goal_tolerance field.
  ## @details Original type control_msgs/msg/JointComponentTolerance. Shape sequence; bound/count 12
  ## elements. Preserve declared units, frame, signedness and field order. Backing storage belongs
  ## to this value; constructing or copying it creates no native ROS owner.
  field_component_goal_tolerance*: NativeSequence[Ros2Control_msgsMsgJointComponentTolerance, 12]
  ## @brief Original control_msgs/action/FollowJointTrajectory_Goal.goal_time_tolerance field.
  ## @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_goal_time_tolerance*: Ros2Builtin_interfacesMsgDuration
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Control_msgsActionFollowJointTrajectory_GoalMinimumWireBytes* = 64
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Control_msgsActionFollowJointTrajectory_GoalMaximumWireBytes* = 20920
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Control_msgsActionFollowJointTrajectory_GoalCodecIdentity* = "UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16"
## @brief Encode every field of complete control_msgs/action/FollowJointTrajectory_Goal.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Control_msgsActionFollowJointTrajectory_Goal; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 20920, written)
## @brief Decode every field of complete control_msgs/action/FollowJointTrajectory_Goal.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Control_msgsActionFollowJointTrajectory_Goal*(bytes: openArray[byte]; value: var Ros2Control_msgsActionFollowJointTrajectory_Goal): uint32 =
  wire.decode(bytes, 64, 20920, value)

## @brief Complete control_msgs/action/FollowJointTrajectory_Result value.
## @details Retain all 2 original fields and 6 constants. Canonical extent 8..4104 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Control_msgsActionFollowJointTrajectory_Result* = object
  ## @brief Original control_msgs/action/FollowJointTrajectory_Result.error_code field.
  ## @details Original type int32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_error_code*: int32
  ## @brief Original control_msgs/action/FollowJointTrajectory_Result.error_string field.
  ## @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_error_string*: NativeText[4096, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Control_msgsActionFollowJointTrajectory_ResultMinimumWireBytes* = 8
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Control_msgsActionFollowJointTrajectory_ResultMaximumWireBytes* = 4104
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Control_msgsActionFollowJointTrajectory_ResultCodecIdentity* = "UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70"
## @brief Original control_msgs/action/FollowJointTrajectory_Result.SUCCESSFUL constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Control_msgsActionFollowJointTrajectory_Result_SUCCESSFUL*: int32 = 0'i32
## @brief Original control_msgs/action/FollowJointTrajectory_Result.INVALID_GOAL constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Control_msgsActionFollowJointTrajectory_Result_INVALID_GOAL*: int32 = -1'i32
## @brief Original control_msgs/action/FollowJointTrajectory_Result.INVALID_JOINTS constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Control_msgsActionFollowJointTrajectory_Result_INVALID_JOINTS*: int32 = -2'i32
## @brief Original control_msgs/action/FollowJointTrajectory_Result.OLD_HEADER_TIMESTAMP constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Control_msgsActionFollowJointTrajectory_Result_OLD_HEADER_TIMESTAMP*: int32 = -3'i32
## @brief Original control_msgs/action/FollowJointTrajectory_Result.PATH_TOLERANCE_VIOLATED
## constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Control_msgsActionFollowJointTrajectory_Result_PATH_TOLERANCE_VIOLATED*: int32 = -4'i32
## @brief Original control_msgs/action/FollowJointTrajectory_Result.GOAL_TOLERANCE_VIOLATED
## constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Control_msgsActionFollowJointTrajectory_Result_GOAL_TOLERANCE_VIOLATED*: int32 = -5'i32
## @brief Encode every field of complete control_msgs/action/FollowJointTrajectory_Result.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Control_msgsActionFollowJointTrajectory_Result; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 4104, written)
## @brief Decode every field of complete control_msgs/action/FollowJointTrajectory_Result.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Control_msgsActionFollowJointTrajectory_Result*(bytes: openArray[byte]; value: var Ros2Control_msgsActionFollowJointTrajectory_Result): uint32 =
  wire.decode(bytes, 8, 4104, value)

## @brief Complete control_msgs/action/FollowJointTrajectory_Feedback value.
## @details Retain all 9 original fields and 0 constants. Canonical extent 152..4128 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Control_msgsActionFollowJointTrajectory_Feedback* = object
  ## @brief Original control_msgs/action/FollowJointTrajectory_Feedback.header field.
  ## @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_header*: Ros2Std_msgsMsgHeader
  ## @brief Original control_msgs/action/FollowJointTrajectory_Feedback.joint_names field.
  ## @details Original type string. String bound 64 bytes; domain utf8. Shape sequence; bound/count
  ## 12 elements. Preserve declared units, frame, signedness and field order. Backing storage
  ## belongs to this value; constructing or copying it creates no native ROS owner.
  field_joint_names*: NativeSequence[NativeText[64, false], 12]
  ## @brief Original control_msgs/action/FollowJointTrajectory_Feedback.desired field.
  ## @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_desired*: Ros2Trajectory_msgsMsgJointTrajectoryPoint
  ## @brief Original control_msgs/action/FollowJointTrajectory_Feedback.actual field.
  ## @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_actual*: Ros2Trajectory_msgsMsgJointTrajectoryPoint
  ## @brief Original control_msgs/action/FollowJointTrajectory_Feedback.error field.
  ## @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_error*: Ros2Trajectory_msgsMsgJointTrajectoryPoint
  ## @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_joint_names field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Shape sequence; bound/count
  ## 2 elements. Preserve declared units, frame, signedness and field order. Backing storage belongs
  ## to this value; constructing or copying it creates no native ROS owner.
  field_multi_dof_joint_names*: NativeSequence[NativeText[512, false], 2]
  ## @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_desired field.
  ## @details Original type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Preserve declared
  ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
  ## or copying it creates no native ROS owner.
  field_multi_dof_desired*: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
  ## @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_actual field.
  ## @details Original type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Preserve declared
  ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
  ## or copying it creates no native ROS owner.
  field_multi_dof_actual*: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
  ## @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_error field.
  ## @details Original type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Preserve declared
  ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
  ## or copying it creates no native ROS owner.
  field_multi_dof_error*: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Control_msgsActionFollowJointTrajectory_FeedbackMinimumWireBytes* = 152
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Control_msgsActionFollowJointTrajectory_FeedbackMaximumWireBytes* = 4128
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodecIdentity* = "UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb"
## @brief Encode every field of complete control_msgs/action/FollowJointTrajectory_Feedback.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Control_msgsActionFollowJointTrajectory_Feedback; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 4128, written)
## @brief Decode every field of complete control_msgs/action/FollowJointTrajectory_Feedback.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Control_msgsActionFollowJointTrajectory_Feedback*(bytes: openArray[byte]; value: var Ros2Control_msgsActionFollowJointTrajectory_Feedback): uint32 =
  wire.decode(bytes, 152, 4128, value)

## @brief Complete sensor_msgs/msg/JointState value.
## @details Retain all 5 original fields and 0 constants. Canonical extent 28..1196 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Sensor_msgsMsgJointState* = object
  ## @brief Original sensor_msgs/msg/JointState.header field.
  ## @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_header*: Ros2Std_msgsMsgHeader
  ## @brief Original sensor_msgs/msg/JointState.name field.
  ## @details Original type string. String bound 64 bytes; domain utf8. Shape sequence; bound/count
  ## 12 elements. Preserve declared units, frame, signedness and field order. Backing storage
  ## belongs to this value; constructing or copying it creates no native ROS owner.
  field_name*: NativeSequence[NativeText[64, false], 12]
  ## @brief Original sensor_msgs/msg/JointState.position field.
  ## @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
  ## or copying it creates no native ROS owner.
  field_position*: NativeSequence[float64, 12]
  ## @brief Original sensor_msgs/msg/JointState.velocity field.
  ## @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
  ## or copying it creates no native ROS owner.
  field_velocity*: NativeSequence[float64, 12]
  ## @brief Original sensor_msgs/msg/JointState.effort field.
  ## @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
  ## or copying it creates no native ROS owner.
  field_effort*: NativeSequence[float64, 12]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Sensor_msgsMsgJointStateMinimumWireBytes* = 28
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Sensor_msgsMsgJointStateMaximumWireBytes* = 1196
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Sensor_msgsMsgJointStateCodecIdentity* = "UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884"
## @brief Encode every field of complete sensor_msgs/msg/JointState.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Sensor_msgsMsgJointState; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1196, written)
## @brief Decode every field of complete sensor_msgs/msg/JointState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Sensor_msgsMsgJointState*(bytes: openArray[byte]; value: var Ros2Sensor_msgsMsgJointState): uint32 =
  wire.decode(bytes, 28, 1196, value)

## @brief Complete std_srvs/srv/Trigger_Request value.
## @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Std_srvsSrvTrigger_Request* = object
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Std_srvsSrvTrigger_RequestMinimumWireBytes* = 0
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Std_srvsSrvTrigger_RequestMaximumWireBytes* = 0
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Std_srvsSrvTrigger_RequestCodecIdentity* = "UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77"
## @brief Encode every field of complete std_srvs/srv/Trigger_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Std_srvsSrvTrigger_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 0, written)
## @brief Decode every field of complete std_srvs/srv/Trigger_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Std_srvsSrvTrigger_Request*(bytes: openArray[byte]; value: var Ros2Std_srvsSrvTrigger_Request): uint32 =
  wire.decode(bytes, 0, 0, value)

## @brief Complete std_srvs/srv/Trigger_Response value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 5..517 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Std_srvsSrvTrigger_Response* = object
  ## @brief Original std_srvs/srv/Trigger_Response.success field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_success*: bool
  ## @brief Original std_srvs/srv/Trigger_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Std_srvsSrvTrigger_ResponseMinimumWireBytes* = 5
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Std_srvsSrvTrigger_ResponseMaximumWireBytes* = 517
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Std_srvsSrvTrigger_ResponseCodecIdentity* = "UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d"
## @brief Encode every field of complete std_srvs/srv/Trigger_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Std_srvsSrvTrigger_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 517, written)
## @brief Decode every field of complete std_srvs/srv/Trigger_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Std_srvsSrvTrigger_Response*(bytes: openArray[byte]; value: var Ros2Std_srvsSrvTrigger_Response): uint32 =
  wire.decode(bytes, 5, 517, value)


# DEFAULT_FACTORIES_BEGIN

proc initRos2Abb_egm_msgsMsgEGMChannelState*(value: var Ros2Abb_egm_msgsMsgEGMChannelState): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_egm_msgsMsgEGMChannelState(bytes, value)

proc initRos2Builtin_interfacesMsgTime*(value: var Ros2Builtin_interfacesMsgTime): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Builtin_interfacesMsgTime(bytes, value)

proc initRos2Std_msgsMsgHeader*(value: var Ros2Std_msgsMsgHeader): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Std_msgsMsgHeader(bytes, value)

proc initRos2Abb_egm_msgsMsgEGMState*(value: var Ros2Abb_egm_msgsMsgEGMState): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_egm_msgsMsgEGMState(bytes, value)

proc initRos2Abb_rapid_msgsMsgConfData*(value: var Ros2Abb_rapid_msgsMsgConfData): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_rapid_msgsMsgConfData(bytes, value)

proc initRos2Abb_rapid_msgsMsgExtJoint*(value: var Ros2Abb_rapid_msgsMsgExtJoint): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos2Abb_rapid_msgsMsgExtJoint(bytes, value)

proc initRos2Abb_rapid_msgsMsgRobJoint*(value: var Ros2Abb_rapid_msgsMsgRobJoint): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos2Abb_rapid_msgsMsgRobJoint(bytes, value)

proc initRos2Abb_rapid_msgsMsgJointTarget*(value: var Ros2Abb_rapid_msgsMsgJointTarget): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos2Abb_rapid_msgsMsgJointTarget(bytes, value)

proc initRos2Abb_rapid_msgsMsgPos*(value: var Ros2Abb_rapid_msgsMsgPos): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_rapid_msgsMsgPos(bytes, value)

proc initRos2Abb_rapid_msgsMsgOrient*(value: var Ros2Abb_rapid_msgsMsgOrient): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_rapid_msgsMsgOrient(bytes, value)

proc initRos2Abb_rapid_msgsMsgLoadData*(value: var Ros2Abb_rapid_msgsMsgLoadData): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos2Abb_rapid_msgsMsgLoadData(bytes, value)

proc initRos2Abb_rapid_msgsMsgPose*(value: var Ros2Abb_rapid_msgsMsgPose): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos2Abb_rapid_msgsMsgPose(bytes, value)

proc initRos2Abb_rapid_msgsMsgRobTarget*(value: var Ros2Abb_rapid_msgsMsgRobTarget): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos2Abb_rapid_msgsMsgRobTarget(bytes, value)

proc initRos2Abb_rapid_msgsMsgToolData*(value: var Ros2Abb_rapid_msgsMsgToolData): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8
    ]
  decodeRos2Abb_rapid_msgsMsgToolData(bytes, value)

proc initRos2Abb_rapid_msgsMsgWObjData*(value: var Ros2Abb_rapid_msgsMsgWObjData): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8
    ]
  decodeRos2Abb_rapid_msgsMsgWObjData(bytes, value)

proc initRos2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings*(value: var Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings(bytes, value)

proc initRos2Abb_rapid_sm_addin_msgsMsgEGMRunSettings*(value: var Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos2Abb_rapid_sm_addin_msgsMsgEGMRunSettings(bytes, value)

proc initRos2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings*(value: var Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings(bytes, value)

proc initRos2Abb_rapid_sm_addin_msgsMsgEGMStopSettings*(value: var Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_rapid_sm_addin_msgsMsgEGMStopSettings(bytes, value)

proc initRos2Abb_rapid_sm_addin_msgsMsgEGMSettings*(value: var Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8
    ]
  decodeRos2Abb_rapid_sm_addin_msgsMsgEGMSettings(bytes, value)

proc initRos2Abb_rapid_sm_addin_msgsMsgStateMachineState*(value: var Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_rapid_sm_addin_msgsMsgStateMachineState(bytes, value)

proc initRos2Abb_rapid_sm_addin_msgsMsgRuntimeState*(value: var Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_rapid_sm_addin_msgsMsgRuntimeState(bytes, value)

proc initRos2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request*(value: var Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request(bytes, value)

proc initRos2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response*(value: var Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response(bytes, value)

proc initRos2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request*(value: var Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request(bytes, value)

proc initRos2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response*(value: var Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response(bytes, value)

proc initRos2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request*(value: var Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request(bytes, value)

proc initRos2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response*(value: var Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response(bytes, value)

proc initRos2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request*(value: var Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request(bytes, value)

proc initRos2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response*(value: var Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response(bytes, value)

proc initRos2Abb_robot_msgsMsgMechanicalUnitState*(value: var Ros2Abb_robot_msgsMsgMechanicalUnitState): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsMsgMechanicalUnitState(bytes, value)

proc initRos2Abb_robot_msgsMsgRAPIDSymbolPath*(value: var Ros2Abb_robot_msgsMsgRAPIDSymbolPath): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsMsgRAPIDSymbolPath(bytes, value)

proc initRos2Abb_robot_msgsMsgRAPIDTaskState*(value: var Ros2Abb_robot_msgsMsgRAPIDTaskState): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsMsgRAPIDTaskState(bytes, value)

proc initRos2Abb_robot_msgsMsgServiceResponses*(value: var Ros2Abb_robot_msgsMsgServiceResponses): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes: array[0, byte] = []
  decodeRos2Abb_robot_msgsMsgServiceResponses(bytes, value)

proc initRos2Abb_robot_msgsMsgSystemState*(value: var Ros2Abb_robot_msgsMsgSystemState): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos2Abb_robot_msgsMsgSystemState(bytes, value)

proc initRos2Abb_robot_msgsSrvGetFileContents_Request*(value: var Ros2Abb_robot_msgsSrvGetFileContents_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsSrvGetFileContents_Request(bytes, value)

proc initRos2Abb_robot_msgsSrvGetFileContents_Response*(value: var Ros2Abb_robot_msgsSrvGetFileContents_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsSrvGetFileContents_Response(bytes, value)

proc initRos2Abb_robot_msgsSrvGetIOSignal_Request*(value: var Ros2Abb_robot_msgsSrvGetIOSignal_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsSrvGetIOSignal_Request(bytes, value)

proc initRos2Abb_robot_msgsSrvGetIOSignal_Response*(value: var Ros2Abb_robot_msgsSrvGetIOSignal_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsSrvGetIOSignal_Response(bytes, value)

proc initRos2Abb_robot_msgsSrvGetRAPIDBool_Request*(value: var Ros2Abb_robot_msgsSrvGetRAPIDBool_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsSrvGetRAPIDBool_Request(bytes, value)

proc initRos2Abb_robot_msgsSrvGetRAPIDBool_Response*(value: var Ros2Abb_robot_msgsSrvGetRAPIDBool_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsSrvGetRAPIDBool_Response(bytes, value)

proc initRos2Abb_robot_msgsSrvGetRAPIDDnum_Request*(value: var Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsSrvGetRAPIDDnum_Request(bytes, value)

proc initRos2Abb_robot_msgsSrvGetRAPIDDnum_Response*(value: var Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsSrvGetRAPIDDnum_Response(bytes, value)

proc initRos2Abb_robot_msgsSrvGetRAPIDNum_Request*(value: var Ros2Abb_robot_msgsSrvGetRAPIDNum_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsSrvGetRAPIDNum_Request(bytes, value)

proc initRos2Abb_robot_msgsSrvGetRAPIDNum_Response*(value: var Ros2Abb_robot_msgsSrvGetRAPIDNum_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsSrvGetRAPIDNum_Response(bytes, value)

proc initRos2Abb_robot_msgsSrvGetRAPIDString_Request*(value: var Ros2Abb_robot_msgsSrvGetRAPIDString_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsSrvGetRAPIDString_Request(bytes, value)

proc initRos2Abb_robot_msgsSrvGetRAPIDString_Response*(value: var Ros2Abb_robot_msgsSrvGetRAPIDString_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsSrvGetRAPIDString_Response(bytes, value)

proc initRos2Abb_robot_msgsSrvGetRAPIDSymbol_Request*(value: var Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsSrvGetRAPIDSymbol_Request(bytes, value)

proc initRos2Abb_robot_msgsSrvGetRAPIDSymbol_Response*(value: var Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsSrvGetRAPIDSymbol_Response(bytes, value)

proc initRos2Abb_robot_msgsSrvGetRobotControllerDescription_Request*(value: var Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes: array[0, byte] = []
  decodeRos2Abb_robot_msgsSrvGetRobotControllerDescription_Request(bytes, value)

proc initRos2Abb_robot_msgsSrvGetRobotControllerDescription_Response*(value: var Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsSrvGetRobotControllerDescription_Response(bytes, value)

proc initRos2Abb_robot_msgsSrvGetSpeedRatio_Request*(value: var Ros2Abb_robot_msgsSrvGetSpeedRatio_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes: array[0, byte] = []
  decodeRos2Abb_robot_msgsSrvGetSpeedRatio_Request(bytes, value)

proc initRos2Abb_robot_msgsSrvGetSpeedRatio_Response*(value: var Ros2Abb_robot_msgsSrvGetSpeedRatio_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsSrvGetSpeedRatio_Response(bytes, value)

proc initRos2Abb_robot_msgsSrvSetFileContents_Request*(value: var Ros2Abb_robot_msgsSrvSetFileContents_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsSrvSetFileContents_Request(bytes, value)

proc initRos2Abb_robot_msgsSrvSetFileContents_Response*(value: var Ros2Abb_robot_msgsSrvSetFileContents_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsSrvSetFileContents_Response(bytes, value)

proc initRos2Abb_robot_msgsSrvSetIOSignal_Request*(value: var Ros2Abb_robot_msgsSrvSetIOSignal_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsSrvSetIOSignal_Request(bytes, value)

proc initRos2Abb_robot_msgsSrvSetIOSignal_Response*(value: var Ros2Abb_robot_msgsSrvSetIOSignal_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsSrvSetIOSignal_Response(bytes, value)

proc initRos2Abb_robot_msgsSrvSetRAPIDBool_Request*(value: var Ros2Abb_robot_msgsSrvSetRAPIDBool_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsSrvSetRAPIDBool_Request(bytes, value)

proc initRos2Abb_robot_msgsSrvSetRAPIDBool_Response*(value: var Ros2Abb_robot_msgsSrvSetRAPIDBool_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsSrvSetRAPIDBool_Response(bytes, value)

proc initRos2Abb_robot_msgsSrvSetRAPIDDnum_Request*(value: var Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos2Abb_robot_msgsSrvSetRAPIDDnum_Request(bytes, value)

proc initRos2Abb_robot_msgsSrvSetRAPIDDnum_Response*(value: var Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsSrvSetRAPIDDnum_Response(bytes, value)

proc initRos2Abb_robot_msgsSrvSetRAPIDNum_Request*(value: var Ros2Abb_robot_msgsSrvSetRAPIDNum_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsSrvSetRAPIDNum_Request(bytes, value)

proc initRos2Abb_robot_msgsSrvSetRAPIDNum_Response*(value: var Ros2Abb_robot_msgsSrvSetRAPIDNum_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsSrvSetRAPIDNum_Response(bytes, value)

proc initRos2Abb_robot_msgsSrvSetRAPIDString_Request*(value: var Ros2Abb_robot_msgsSrvSetRAPIDString_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsSrvSetRAPIDString_Request(bytes, value)

proc initRos2Abb_robot_msgsSrvSetRAPIDString_Response*(value: var Ros2Abb_robot_msgsSrvSetRAPIDString_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsSrvSetRAPIDString_Response(bytes, value)

proc initRos2Abb_robot_msgsSrvSetRAPIDSymbol_Request*(value: var Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsSrvSetRAPIDSymbol_Request(bytes, value)

proc initRos2Abb_robot_msgsSrvSetRAPIDSymbol_Response*(value: var Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsSrvSetRAPIDSymbol_Response(bytes, value)

proc initRos2Abb_robot_msgsSrvSetSpeedRatio_Request*(value: var Ros2Abb_robot_msgsSrvSetSpeedRatio_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8]
  decodeRos2Abb_robot_msgsSrvSetSpeedRatio_Request(bytes, value)

proc initRos2Abb_robot_msgsSrvSetSpeedRatio_Response*(value: var Ros2Abb_robot_msgsSrvSetSpeedRatio_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsSrvSetSpeedRatio_Response(bytes, value)

proc initRos2Abb_robot_msgsSrvTriggerWithResultCode_Request*(value: var Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes: array[0, byte] = []
  decodeRos2Abb_robot_msgsSrvTriggerWithResultCode_Request(bytes, value)

proc initRos2Abb_robot_msgsSrvTriggerWithResultCode_Response*(value: var Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Abb_robot_msgsSrvTriggerWithResultCode_Response(bytes, value)

proc initRos2Builtin_interfacesMsgDuration*(value: var Ros2Builtin_interfacesMsgDuration): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Builtin_interfacesMsgDuration(bytes, value)

proc initRos2Trajectory_msgsMsgJointTrajectoryPoint*(value: var Ros2Trajectory_msgsMsgJointTrajectoryPoint): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos2Trajectory_msgsMsgJointTrajectoryPoint(bytes, value)

proc initRos2Trajectory_msgsMsgJointTrajectory*(value: var Ros2Trajectory_msgsMsgJointTrajectory): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos2Trajectory_msgsMsgJointTrajectory(bytes, value)

proc initRos2Geometry_msgsMsgVector3*(value: var Ros2Geometry_msgsMsgVector3): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos2Geometry_msgsMsgVector3(bytes, value)

proc initRos2Geometry_msgsMsgQuaternion*(value: var Ros2Geometry_msgsMsgQuaternion): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 240'u8, 63'u8
    ]
  decodeRos2Geometry_msgsMsgQuaternion(bytes, value)

proc initRos2Geometry_msgsMsgTransform*(value: var Ros2Geometry_msgsMsgTransform): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 240'u8, 63'u8
    ]
  decodeRos2Geometry_msgsMsgTransform(bytes, value)

proc initRos2Geometry_msgsMsgTwist*(value: var Ros2Geometry_msgsMsgTwist): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos2Geometry_msgsMsgTwist(bytes, value)

proc initRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint*(value: var Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(bytes, value)

proc initRos2Trajectory_msgsMsgMultiDOFJointTrajectory*(value: var Ros2Trajectory_msgsMsgMultiDOFJointTrajectory): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos2Trajectory_msgsMsgMultiDOFJointTrajectory(bytes, value)

proc initRos2Control_msgsMsgJointTolerance*(value: var Ros2Control_msgsMsgJointTolerance): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos2Control_msgsMsgJointTolerance(bytes, value)

proc initRos2Control_msgsMsgJointComponentTolerance*(value: var Ros2Control_msgsMsgJointComponentTolerance): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos2Control_msgsMsgJointComponentTolerance(bytes, value)

proc initRos2Control_msgsActionFollowJointTrajectory_Goal*(value: var Ros2Control_msgsActionFollowJointTrajectory_Goal): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos2Control_msgsActionFollowJointTrajectory_Goal(bytes, value)

proc initRos2Control_msgsActionFollowJointTrajectory_Result*(value: var Ros2Control_msgsActionFollowJointTrajectory_Result): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Control_msgsActionFollowJointTrajectory_Result(bytes, value)

proc initRos2Control_msgsActionFollowJointTrajectory_Feedback*(value: var Ros2Control_msgsActionFollowJointTrajectory_Feedback): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos2Control_msgsActionFollowJointTrajectory_Feedback(bytes, value)

proc initRos2Sensor_msgsMsgJointState*(value: var Ros2Sensor_msgsMsgJointState): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos2Sensor_msgsMsgJointState(bytes, value)

proc initRos2Std_srvsSrvTrigger_Request*(value: var Ros2Std_srvsSrvTrigger_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes: array[0, byte] = []
  decodeRos2Std_srvsSrvTrigger_Request(bytes, value)

proc initRos2Std_srvsSrvTrigger_Response*(value: var Ros2Std_srvsSrvTrigger_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Std_srvsSrvTrigger_Response(bytes, value)
