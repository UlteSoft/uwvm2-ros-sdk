## @file records.nim
## @brief Complete owned original ABB ROS 1 native records and codecs.
## @details Generated from the admitted source-pinned catalog; no ROS authority is created.
import ros/nim/wire

## @brief Complete abb_egm_msgs/EGMChannelState value.
## @details Retain all 7 original fields and 10 constants. Canonical extent 17..81 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_egm_msgsEGMChannelState* = object
  ## @brief Original abb_egm_msgs/EGMChannelState.name field.
  ## @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_name*: NativeText[64, false]
  ## @brief Original abb_egm_msgs/EGMChannelState.active field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_active*: bool
  ## @brief Original abb_egm_msgs/EGMChannelState.egm_convergence_met field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_egm_convergence_met*: bool
  ## @brief Original abb_egm_msgs/EGMChannelState.egm_client_state field.
  ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_egm_client_state*: uint8
  ## @brief Original abb_egm_msgs/EGMChannelState.motor_state field.
  ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_motor_state*: uint8
  ## @brief Original abb_egm_msgs/EGMChannelState.rapid_execution_state field.
  ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_rapid_execution_state*: uint8
  ## @brief Original abb_egm_msgs/EGMChannelState.utilization_rate field.
  ## @details Original type float64. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_utilization_rate*: float64
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_egm_msgsEGMChannelStateMinimumWireBytes* = 17
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_egm_msgsEGMChannelStateMaximumWireBytes* = 81
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_egm_msgsEGMChannelStateCodecIdentity* = "UWVMROS1_452d2adde3b1475fe3ff09ea11ff2ec7105a58c32e20d764e0c2ff152cb432f2"
## @brief Original abb_egm_msgs/EGMChannelState.EGM_UNDEFINED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_egm_msgsEGMChannelState_EGM_UNDEFINED*: uint8 = 1'u8
## @brief Original abb_egm_msgs/EGMChannelState.EGM_ERROR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_egm_msgsEGMChannelState_EGM_ERROR*: uint8 = 2'u8
## @brief Original abb_egm_msgs/EGMChannelState.EGM_STOPPED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_egm_msgsEGMChannelState_EGM_STOPPED*: uint8 = 3'u8
## @brief Original abb_egm_msgs/EGMChannelState.EGM_RUNNING constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_egm_msgsEGMChannelState_EGM_RUNNING*: uint8 = 4'u8
## @brief Original abb_egm_msgs/EGMChannelState.MOTORS_UNDEFINED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_egm_msgsEGMChannelState_MOTORS_UNDEFINED*: uint8 = 1'u8
## @brief Original abb_egm_msgs/EGMChannelState.MOTORS_ON constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_egm_msgsEGMChannelState_MOTORS_ON*: uint8 = 2'u8
## @brief Original abb_egm_msgs/EGMChannelState.MOTORS_OFF constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_egm_msgsEGMChannelState_MOTORS_OFF*: uint8 = 3'u8
## @brief Original abb_egm_msgs/EGMChannelState.RAPID_UNDEFINED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_egm_msgsEGMChannelState_RAPID_UNDEFINED*: uint8 = 1'u8
## @brief Original abb_egm_msgs/EGMChannelState.RAPID_STOPPED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_egm_msgsEGMChannelState_RAPID_STOPPED*: uint8 = 2'u8
## @brief Original abb_egm_msgs/EGMChannelState.RAPID_RUNNING constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_egm_msgsEGMChannelState_RAPID_RUNNING*: uint8 = 3'u8
## @brief Encode every field of complete abb_egm_msgs/EGMChannelState.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_egm_msgsEGMChannelState; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 81, written)
## @brief Decode every field of complete abb_egm_msgs/EGMChannelState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_egm_msgsEGMChannelState*(bytes: openArray[byte]; value: var Ros1Abb_egm_msgsEGMChannelState): uint32 =
  wire.decode(bytes, 17, 81, value)

## @brief Complete time value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Time* = object
  ## @brief Original time.sec field.
  ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_sec*: uint32
  ## @brief Original time.nsec field.
  ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_nsec*: uint32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1TimeMinimumWireBytes* = 8
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1TimeMaximumWireBytes* = 8
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1TimeCodecIdentity* = "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0"
## @brief Validate the original complete time-domain invariant.
## @details No clock read, unit conversion or normalization is performed.
## @param value Complete immutable owned record.
## @return Zero or canonical error 22.
proc validate*(value: Ros1Time): uint32 =
  if value.field_nsec >= 1000000000: 22'u32 else: 0'u32
## @brief Encode every field of complete time.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Time; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 8, written)
## @brief Decode every field of complete time.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Time*(bytes: openArray[byte]; value: var Ros1Time): uint32 =
  wire.decode(bytes, 8, 8, value)

## @brief Complete std_msgs/Header value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 16..80 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Std_msgsHeader* = object
  ## @brief Original std_msgs/Header.seq field.
  ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_seq*: uint32
  ## @brief Original std_msgs/Header.stamp field.
  ## @details Original type time. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_stamp*: Ros1Time
  ## @brief Original std_msgs/Header.frame_id field.
  ## @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_frame_id*: NativeText[64, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Std_msgsHeaderMinimumWireBytes* = 16
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Std_msgsHeaderMaximumWireBytes* = 80
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Std_msgsHeaderCodecIdentity* = "UWVMROS1_ca1b8ffce276bdc4f86dccae58ede9f860ffe8778c6d4ffe0fb70675777801db"
## @brief Encode every field of complete std_msgs/Header.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Std_msgsHeader; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 80, written)
## @brief Decode every field of complete std_msgs/Header.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Std_msgsHeader*(bytes: openArray[byte]; value: var Ros1Std_msgsHeader): uint32 =
  wire.decode(bytes, 16, 80, value)

## @brief Complete abb_egm_msgs/EGMState value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 20..1380 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_egm_msgsEGMState* = object
  ## @brief Original abb_egm_msgs/EGMState.header field.
  ## @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
  ## order. Backing storage belongs to this value; constructing or copying it creates no native ROS
  ## owner.
  field_header*: Ros1Std_msgsHeader
  ## @brief Original abb_egm_msgs/EGMState.egm_channels field.
  ## @details Original type abb_egm_msgs/EGMChannelState. Shape sequence; bound/count 16 elements.
  ## Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  ## value; constructing or copying it creates no native ROS owner.
  field_egm_channels*: NativeSequence[Ros1Abb_egm_msgsEGMChannelState, 16]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_egm_msgsEGMStateMinimumWireBytes* = 20
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_egm_msgsEGMStateMaximumWireBytes* = 1380
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_egm_msgsEGMStateCodecIdentity* = "UWVMROS1_f7fe1d3924dc4e497c58aab27da69cfa6ab1a11f64b970b42e2d040a1312c4d8"
## @brief Encode every field of complete abb_egm_msgs/EGMState.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_egm_msgsEGMState; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1380, written)
## @brief Decode every field of complete abb_egm_msgs/EGMState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_egm_msgsEGMState*(bytes: openArray[byte]; value: var Ros1Abb_egm_msgsEGMState): uint32 =
  wire.decode(bytes, 20, 1380, value)

## @brief Complete abb_rapid_msgs/ConfData value.
## @details Retain all 4 original fields and 0 constants. Canonical extent 16..16 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_rapid_msgsConfData* = object
  ## @brief Original abb_rapid_msgs/ConfData.cf1 field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_cf1*: float32
  ## @brief Original abb_rapid_msgs/ConfData.cf4 field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_cf4*: float32
  ## @brief Original abb_rapid_msgs/ConfData.cf6 field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_cf6*: float32
  ## @brief Original abb_rapid_msgs/ConfData.cfx field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_cfx*: float32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_msgsConfDataMinimumWireBytes* = 16
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_msgsConfDataMaximumWireBytes* = 16
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_rapid_msgsConfDataCodecIdentity* = "UWVMROS1_293eb01e8fa150a8a3c741626b76804255d0eb321a0484aac402201447392af2"
## @brief Encode every field of complete abb_rapid_msgs/ConfData.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_rapid_msgsConfData; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 16, written)
## @brief Decode every field of complete abb_rapid_msgs/ConfData.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_rapid_msgsConfData*(bytes: openArray[byte]; value: var Ros1Abb_rapid_msgsConfData): uint32 =
  wire.decode(bytes, 16, 16, value)

## @brief Complete abb_rapid_msgs/ExtJoint value.
## @details Retain all 6 original fields and 0 constants. Canonical extent 24..24 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_rapid_msgsExtJoint* = object
  ## @brief Original abb_rapid_msgs/ExtJoint.eax_a field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_eax_a*: float32
  ## @brief Original abb_rapid_msgs/ExtJoint.eax_b field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_eax_b*: float32
  ## @brief Original abb_rapid_msgs/ExtJoint.eax_c field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_eax_c*: float32
  ## @brief Original abb_rapid_msgs/ExtJoint.eax_d field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_eax_d*: float32
  ## @brief Original abb_rapid_msgs/ExtJoint.eax_e field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_eax_e*: float32
  ## @brief Original abb_rapid_msgs/ExtJoint.eax_f field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_eax_f*: float32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_msgsExtJointMinimumWireBytes* = 24
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_msgsExtJointMaximumWireBytes* = 24
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_rapid_msgsExtJointCodecIdentity* = "UWVMROS1_653a47c44ab85151fd9e6215901fb154962c32fe1082386733ec6205eaae613a"
## @brief Encode every field of complete abb_rapid_msgs/ExtJoint.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_rapid_msgsExtJoint; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 24, written)
## @brief Decode every field of complete abb_rapid_msgs/ExtJoint.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_rapid_msgsExtJoint*(bytes: openArray[byte]; value: var Ros1Abb_rapid_msgsExtJoint): uint32 =
  wire.decode(bytes, 24, 24, value)

## @brief Complete abb_rapid_msgs/RobJoint value.
## @details Retain all 6 original fields and 0 constants. Canonical extent 24..24 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_rapid_msgsRobJoint* = object
  ## @brief Original abb_rapid_msgs/RobJoint.rax_1 field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_rax_1*: float32
  ## @brief Original abb_rapid_msgs/RobJoint.rax_2 field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_rax_2*: float32
  ## @brief Original abb_rapid_msgs/RobJoint.rax_3 field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_rax_3*: float32
  ## @brief Original abb_rapid_msgs/RobJoint.rax_4 field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_rax_4*: float32
  ## @brief Original abb_rapid_msgs/RobJoint.rax_5 field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_rax_5*: float32
  ## @brief Original abb_rapid_msgs/RobJoint.rax_6 field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_rax_6*: float32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_msgsRobJointMinimumWireBytes* = 24
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_msgsRobJointMaximumWireBytes* = 24
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_rapid_msgsRobJointCodecIdentity* = "UWVMROS1_5d45bc0efae8c4f5b26e4043fe537e163c4cc4c6458d1eac9be429c37aaf82f0"
## @brief Encode every field of complete abb_rapid_msgs/RobJoint.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_rapid_msgsRobJoint; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 24, written)
## @brief Decode every field of complete abb_rapid_msgs/RobJoint.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_rapid_msgsRobJoint*(bytes: openArray[byte]; value: var Ros1Abb_rapid_msgsRobJoint): uint32 =
  wire.decode(bytes, 24, 24, value)

## @brief Complete abb_rapid_msgs/JointTarget value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 48..48 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_rapid_msgsJointTarget* = object
  ## @brief Original abb_rapid_msgs/JointTarget.robax field.
  ## @details Original type abb_rapid_msgs/RobJoint. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_robax*: Ros1Abb_rapid_msgsRobJoint
  ## @brief Original abb_rapid_msgs/JointTarget.extax field.
  ## @details Original type abb_rapid_msgs/ExtJoint. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_extax*: Ros1Abb_rapid_msgsExtJoint
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_msgsJointTargetMinimumWireBytes* = 48
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_msgsJointTargetMaximumWireBytes* = 48
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_rapid_msgsJointTargetCodecIdentity* = "UWVMROS1_4a1cc175468da9204c5f2f399b76712617daec21a0d1675a6e73c84ff170dc24"
## @brief Encode every field of complete abb_rapid_msgs/JointTarget.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_rapid_msgsJointTarget; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 48, written)
## @brief Decode every field of complete abb_rapid_msgs/JointTarget.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_rapid_msgsJointTarget*(bytes: openArray[byte]; value: var Ros1Abb_rapid_msgsJointTarget): uint32 =
  wire.decode(bytes, 48, 48, value)

## @brief Complete abb_rapid_msgs/Pos value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 12..12 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_rapid_msgsPos* = object
  ## @brief Original abb_rapid_msgs/Pos.x field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_x*: float32
  ## @brief Original abb_rapid_msgs/Pos.y field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_y*: float32
  ## @brief Original abb_rapid_msgs/Pos.z field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_z*: float32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_msgsPosMinimumWireBytes* = 12
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_msgsPosMaximumWireBytes* = 12
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_rapid_msgsPosCodecIdentity* = "UWVMROS1_79edd4553fad8a8f833a3399e354c93538d4971bc3820cc14cf540e960356c01"
## @brief Encode every field of complete abb_rapid_msgs/Pos.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_rapid_msgsPos; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 12, written)
## @brief Decode every field of complete abb_rapid_msgs/Pos.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_rapid_msgsPos*(bytes: openArray[byte]; value: var Ros1Abb_rapid_msgsPos): uint32 =
  wire.decode(bytes, 12, 12, value)

## @brief Complete abb_rapid_msgs/Orient value.
## @details Retain all 4 original fields and 0 constants. Canonical extent 16..16 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_rapid_msgsOrient* = object
  ## @brief Original abb_rapid_msgs/Orient.q1 field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_q1*: float32
  ## @brief Original abb_rapid_msgs/Orient.q2 field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_q2*: float32
  ## @brief Original abb_rapid_msgs/Orient.q3 field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_q3*: float32
  ## @brief Original abb_rapid_msgs/Orient.q4 field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_q4*: float32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_msgsOrientMinimumWireBytes* = 16
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_msgsOrientMaximumWireBytes* = 16
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_rapid_msgsOrientCodecIdentity* = "UWVMROS1_5a9c29323a5e3bc0c4c0afa7d305738cd52b49ae339e72f6b34b35b165f3d270"
## @brief Encode every field of complete abb_rapid_msgs/Orient.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_rapid_msgsOrient; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 16, written)
## @brief Decode every field of complete abb_rapid_msgs/Orient.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_rapid_msgsOrient*(bytes: openArray[byte]; value: var Ros1Abb_rapid_msgsOrient): uint32 =
  wire.decode(bytes, 16, 16, value)

## @brief Complete abb_rapid_msgs/LoadData value.
## @details Retain all 6 original fields and 0 constants. Canonical extent 44..44 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_rapid_msgsLoadData* = object
  ## @brief Original abb_rapid_msgs/LoadData.mass field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_mass*: float32
  ## @brief Original abb_rapid_msgs/LoadData.cog field.
  ## @details Original type abb_rapid_msgs/Pos. Preserve declared units, frame, signedness and field
  ## order. Backing storage belongs to this value; constructing or copying it creates no native ROS
  ## owner.
  field_cog*: Ros1Abb_rapid_msgsPos
  ## @brief Original abb_rapid_msgs/LoadData.aom field.
  ## @details Original type abb_rapid_msgs/Orient. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_aom*: Ros1Abb_rapid_msgsOrient
  ## @brief Original abb_rapid_msgs/LoadData.ix field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_ix*: float32
  ## @brief Original abb_rapid_msgs/LoadData.iy field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_iy*: float32
  ## @brief Original abb_rapid_msgs/LoadData.iz field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_iz*: float32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_msgsLoadDataMinimumWireBytes* = 44
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_msgsLoadDataMaximumWireBytes* = 44
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_rapid_msgsLoadDataCodecIdentity* = "UWVMROS1_2cc985cc188a03e7c6de3d22310802cac1e0a748bae7f828d957436c1e03303d"
## @brief Encode every field of complete abb_rapid_msgs/LoadData.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_rapid_msgsLoadData; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 44, written)
## @brief Decode every field of complete abb_rapid_msgs/LoadData.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_rapid_msgsLoadData*(bytes: openArray[byte]; value: var Ros1Abb_rapid_msgsLoadData): uint32 =
  wire.decode(bytes, 44, 44, value)

## @brief Complete abb_rapid_msgs/Pose value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 28..28 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_rapid_msgsPose* = object
  ## @brief Original abb_rapid_msgs/Pose.trans field.
  ## @details Original type abb_rapid_msgs/Pos. Preserve declared units, frame, signedness and field
  ## order. Backing storage belongs to this value; constructing or copying it creates no native ROS
  ## owner.
  field_trans*: Ros1Abb_rapid_msgsPos
  ## @brief Original abb_rapid_msgs/Pose.rot field.
  ## @details Original type abb_rapid_msgs/Orient. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_rot*: Ros1Abb_rapid_msgsOrient
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_msgsPoseMinimumWireBytes* = 28
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_msgsPoseMaximumWireBytes* = 28
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_rapid_msgsPoseCodecIdentity* = "UWVMROS1_3e0cfbb7e25376639d1ff6e555a86e69f8c9ed177c1ef14b301d90b206a19c99"
## @brief Encode every field of complete abb_rapid_msgs/Pose.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_rapid_msgsPose; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 28, written)
## @brief Decode every field of complete abb_rapid_msgs/Pose.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_rapid_msgsPose*(bytes: openArray[byte]; value: var Ros1Abb_rapid_msgsPose): uint32 =
  wire.decode(bytes, 28, 28, value)

## @brief Complete abb_rapid_msgs/RobTarget value.
## @details Retain all 4 original fields and 0 constants. Canonical extent 68..68 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_rapid_msgsRobTarget* = object
  ## @brief Original abb_rapid_msgs/RobTarget.trans field.
  ## @details Original type abb_rapid_msgs/Pos. Preserve declared units, frame, signedness and field
  ## order. Backing storage belongs to this value; constructing or copying it creates no native ROS
  ## owner.
  field_trans*: Ros1Abb_rapid_msgsPos
  ## @brief Original abb_rapid_msgs/RobTarget.rot field.
  ## @details Original type abb_rapid_msgs/Orient. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_rot*: Ros1Abb_rapid_msgsOrient
  ## @brief Original abb_rapid_msgs/RobTarget.robconf field.
  ## @details Original type abb_rapid_msgs/ConfData. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_robconf*: Ros1Abb_rapid_msgsConfData
  ## @brief Original abb_rapid_msgs/RobTarget.extax field.
  ## @details Original type abb_rapid_msgs/ExtJoint. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_extax*: Ros1Abb_rapid_msgsExtJoint
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_msgsRobTargetMinimumWireBytes* = 68
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_msgsRobTargetMaximumWireBytes* = 68
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_rapid_msgsRobTargetCodecIdentity* = "UWVMROS1_0abb3aee8b1303ccf9419f2774829d1231de3ac033e4b644d585f195972f09ce"
## @brief Encode every field of complete abb_rapid_msgs/RobTarget.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_rapid_msgsRobTarget; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 68, written)
## @brief Decode every field of complete abb_rapid_msgs/RobTarget.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_rapid_msgsRobTarget*(bytes: openArray[byte]; value: var Ros1Abb_rapid_msgsRobTarget): uint32 =
  wire.decode(bytes, 68, 68, value)

## @brief Complete abb_rapid_msgs/ToolData value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 73..73 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_rapid_msgsToolData* = object
  ## @brief Original abb_rapid_msgs/ToolData.robhold field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_robhold*: bool
  ## @brief Original abb_rapid_msgs/ToolData.tframe field.
  ## @details Original type abb_rapid_msgs/Pose. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_tframe*: Ros1Abb_rapid_msgsPose
  ## @brief Original abb_rapid_msgs/ToolData.tload field.
  ## @details Original type abb_rapid_msgs/LoadData. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_tload*: Ros1Abb_rapid_msgsLoadData
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_msgsToolDataMinimumWireBytes* = 73
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_msgsToolDataMaximumWireBytes* = 73
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_rapid_msgsToolDataCodecIdentity* = "UWVMROS1_e2feaee4bda891f594542384d70883184262777e359fb037a648b7526ef76cba"
## @brief Encode every field of complete abb_rapid_msgs/ToolData.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_rapid_msgsToolData; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 73, written)
## @brief Decode every field of complete abb_rapid_msgs/ToolData.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_rapid_msgsToolData*(bytes: openArray[byte]; value: var Ros1Abb_rapid_msgsToolData): uint32 =
  wire.decode(bytes, 73, 73, value)

## @brief Complete abb_rapid_msgs/WObjData value.
## @details Retain all 5 original fields and 0 constants. Canonical extent 62..574 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_rapid_msgsWObjData* = object
  ## @brief Original abb_rapid_msgs/WObjData.robhold field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_robhold*: bool
  ## @brief Original abb_rapid_msgs/WObjData.ufprog field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_ufprog*: bool
  ## @brief Original abb_rapid_msgs/WObjData.ufmec field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_ufmec*: NativeText[512, false]
  ## @brief Original abb_rapid_msgs/WObjData.uframe field.
  ## @details Original type abb_rapid_msgs/Pose. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_uframe*: Ros1Abb_rapid_msgsPose
  ## @brief Original abb_rapid_msgs/WObjData.oframe field.
  ## @details Original type abb_rapid_msgs/Pose. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_oframe*: Ros1Abb_rapid_msgsPose
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_msgsWObjDataMinimumWireBytes* = 62
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_msgsWObjDataMaximumWireBytes* = 574
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_rapid_msgsWObjDataCodecIdentity* = "UWVMROS1_6de4cf654a15ef3b63d9b0f3d0984438f21963c10ffd1b00238113b6fae8454f"
## @brief Encode every field of complete abb_rapid_msgs/WObjData.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_rapid_msgsWObjData; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 574, written)
## @brief Decode every field of complete abb_rapid_msgs/WObjData.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_rapid_msgsWObjData*(bytes: openArray[byte]; value: var Ros1Abb_rapid_msgsWObjData): uint32 =
  wire.decode(bytes, 62, 574, value)

## @brief Complete abb_rapid_sm_addin_msgs/EGMActivateSettings value.
## @details Retain all 8 original fields and 0 constants. Canonical extent 204..716 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings* = object
  ## @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.tool field.
  ## @details Original type abb_rapid_msgs/ToolData. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_tool*: Ros1Abb_rapid_msgsToolData
  ## @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.wobj field.
  ## @details Original type abb_rapid_msgs/WObjData. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_wobj*: Ros1Abb_rapid_msgsWObjData
  ## @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.correction_frame field.
  ## @details Original type abb_rapid_msgs/Pose. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_correction_frame*: Ros1Abb_rapid_msgsPose
  ## @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.sensor_frame field.
  ## @details Original type abb_rapid_msgs/Pose. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_sensor_frame*: Ros1Abb_rapid_msgsPose
  ## @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.cond_min_max field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_cond_min_max*: float32
  ## @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.lp_filter field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_lp_filter*: float32
  ## @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.sample_rate field.
  ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_sample_rate*: uint8
  ## @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.max_speed_deviation field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_max_speed_deviation*: float32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_sm_addin_msgsEGMActivateSettingsMinimumWireBytes* = 204
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_sm_addin_msgsEGMActivateSettingsMaximumWireBytes* = 716
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_rapid_sm_addin_msgsEGMActivateSettingsCodecIdentity* = "UWVMROS1_c50be5682021e5d1a7a938e6fe3595cec7c0b0ae727070c0924da731c2c73d4d"
## @brief Encode every field of complete abb_rapid_sm_addin_msgs/EGMActivateSettings.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 716, written)
## @brief Decode every field of complete abb_rapid_sm_addin_msgs/EGMActivateSettings.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_rapid_sm_addin_msgsEGMActivateSettings*(bytes: openArray[byte]; value: var Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings): uint32 =
  wire.decode(bytes, 204, 716, value)

## @brief Complete abb_rapid_sm_addin_msgs/EGMRunSettings value.
## @details Retain all 4 original fields and 0 constants. Canonical extent 40..40 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_rapid_sm_addin_msgsEGMRunSettings* = object
  ## @brief Original abb_rapid_sm_addin_msgs/EGMRunSettings.cond_time field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_cond_time*: float32
  ## @brief Original abb_rapid_sm_addin_msgs/EGMRunSettings.ramp_in_time field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_ramp_in_time*: float32
  ## @brief Original abb_rapid_sm_addin_msgs/EGMRunSettings.offset field.
  ## @details Original type abb_rapid_msgs/Pose. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_offset*: Ros1Abb_rapid_msgsPose
  ## @brief Original abb_rapid_sm_addin_msgs/EGMRunSettings.pos_corr_gain field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_pos_corr_gain*: float32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_sm_addin_msgsEGMRunSettingsMinimumWireBytes* = 40
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_sm_addin_msgsEGMRunSettingsMaximumWireBytes* = 40
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_rapid_sm_addin_msgsEGMRunSettingsCodecIdentity* = "UWVMROS1_09a843da7aa89c60e6404f8d36b9a1a57f75e330329ac043449fd438b7029506"
## @brief Encode every field of complete abb_rapid_sm_addin_msgs/EGMRunSettings.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_rapid_sm_addin_msgsEGMRunSettings; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 40, written)
## @brief Decode every field of complete abb_rapid_sm_addin_msgs/EGMRunSettings.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_rapid_sm_addin_msgsEGMRunSettings*(bytes: openArray[byte]; value: var Ros1Abb_rapid_sm_addin_msgsEGMRunSettings): uint32 =
  wire.decode(bytes, 40, 40, value)

## @brief Complete abb_rapid_sm_addin_msgs/EGMSetupSettings value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 5..5 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings* = object
  ## @brief Original abb_rapid_sm_addin_msgs/EGMSetupSettings.use_filtering field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_use_filtering*: bool
  ## @brief Original abb_rapid_sm_addin_msgs/EGMSetupSettings.comm_timeout field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_comm_timeout*: float32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_sm_addin_msgsEGMSetupSettingsMinimumWireBytes* = 5
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_sm_addin_msgsEGMSetupSettingsMaximumWireBytes* = 5
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_rapid_sm_addin_msgsEGMSetupSettingsCodecIdentity* = "UWVMROS1_ece31a7631bb3bb248aece52d4d5f6e190a94dcc3052b2761b759bed24513779"
## @brief Encode every field of complete abb_rapid_sm_addin_msgs/EGMSetupSettings.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 5, written)
## @brief Decode every field of complete abb_rapid_sm_addin_msgs/EGMSetupSettings.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_rapid_sm_addin_msgsEGMSetupSettings*(bytes: openArray[byte]; value: var Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings): uint32 =
  wire.decode(bytes, 5, 5, value)

## @brief Complete abb_rapid_sm_addin_msgs/EGMStopSettings value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 4..4 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_rapid_sm_addin_msgsEGMStopSettings* = object
  ## @brief Original abb_rapid_sm_addin_msgs/EGMStopSettings.ramp_out_time field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_ramp_out_time*: float32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_sm_addin_msgsEGMStopSettingsMinimumWireBytes* = 4
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_sm_addin_msgsEGMStopSettingsMaximumWireBytes* = 4
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_rapid_sm_addin_msgsEGMStopSettingsCodecIdentity* = "UWVMROS1_64009cc452b9b2b12b3501d150e8c88c9cc07c796df06775195fa17c2a103a08"
## @brief Encode every field of complete abb_rapid_sm_addin_msgs/EGMStopSettings.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_rapid_sm_addin_msgsEGMStopSettings; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 4, written)
## @brief Decode every field of complete abb_rapid_sm_addin_msgs/EGMStopSettings.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_rapid_sm_addin_msgsEGMStopSettings*(bytes: openArray[byte]; value: var Ros1Abb_rapid_sm_addin_msgsEGMStopSettings): uint32 =
  wire.decode(bytes, 4, 4, value)

## @brief Complete abb_rapid_sm_addin_msgs/EGMSettings value.
## @details Retain all 6 original fields and 0 constants. Canonical extent 255..767 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_rapid_sm_addin_msgsEGMSettings* = object
  ## @brief Original abb_rapid_sm_addin_msgs/EGMSettings.allow_egm_motions field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_allow_egm_motions*: bool
  ## @brief Original abb_rapid_sm_addin_msgs/EGMSettings.use_presync field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_use_presync*: bool
  ## @brief Original abb_rapid_sm_addin_msgs/EGMSettings.setup_uc field.
  ## @details Original type abb_rapid_sm_addin_msgs/EGMSetupSettings. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_setup_uc*: Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings
  ## @brief Original abb_rapid_sm_addin_msgs/EGMSettings.activate field.
  ## @details Original type abb_rapid_sm_addin_msgs/EGMActivateSettings. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_activate*: Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings
  ## @brief Original abb_rapid_sm_addin_msgs/EGMSettings.run field.
  ## @details Original type abb_rapid_sm_addin_msgs/EGMRunSettings. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_run*: Ros1Abb_rapid_sm_addin_msgsEGMRunSettings
  ## @brief Original abb_rapid_sm_addin_msgs/EGMSettings.stop field.
  ## @details Original type abb_rapid_sm_addin_msgs/EGMStopSettings. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_stop*: Ros1Abb_rapid_sm_addin_msgsEGMStopSettings
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_sm_addin_msgsEGMSettingsMinimumWireBytes* = 255
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_sm_addin_msgsEGMSettingsMaximumWireBytes* = 767
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_rapid_sm_addin_msgsEGMSettingsCodecIdentity* = "UWVMROS1_ebc0ca24a54451f863964c74bf0257b5b25546d0d4b8a75ac75c265e1d62317b"
## @brief Encode every field of complete abb_rapid_sm_addin_msgs/EGMSettings.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_rapid_sm_addin_msgsEGMSettings; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 767, written)
## @brief Decode every field of complete abb_rapid_sm_addin_msgs/EGMSettings.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_rapid_sm_addin_msgsEGMSettings*(bytes: openArray[byte]; value: var Ros1Abb_rapid_sm_addin_msgsEGMSettings): uint32 =
  wire.decode(bytes, 255, 767, value)

## @brief Complete abb_rapid_sm_addin_msgs/GetEGMSettingsRequest value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 4..68 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest* = object
  ## @brief Original abb_rapid_sm_addin_msgs/GetEGMSettingsRequest.task field.
  ## @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_task*: NativeText[64, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequestMinimumWireBytes* = 4
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequestMaximumWireBytes* = 68
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequestCodecIdentity* = "UWVMROS1_42cca857367e08720f989416d18d6a1f7d677f7e5bf49435b9735a9eb10a8f9c"
## @brief Encode every field of complete abb_rapid_sm_addin_msgs/GetEGMSettingsRequest.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 68, written)
## @brief Decode every field of complete abb_rapid_sm_addin_msgs/GetEGMSettingsRequest.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest*(bytes: openArray[byte]; value: var Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest): uint32 =
  wire.decode(bytes, 4, 68, value)

## @brief Complete abb_rapid_sm_addin_msgs/GetEGMSettingsResponse value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 261..1285 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse* = object
  ## @brief Original abb_rapid_sm_addin_msgs/GetEGMSettingsResponse.settings field.
  ## @details Original type abb_rapid_sm_addin_msgs/EGMSettings. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_settings*: Ros1Abb_rapid_sm_addin_msgsEGMSettings
  ## @brief Original abb_rapid_sm_addin_msgs/GetEGMSettingsResponse.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_rapid_sm_addin_msgs/GetEGMSettingsResponse.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponseMinimumWireBytes* = 261
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponseMaximumWireBytes* = 1285
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponseCodecIdentity* = "UWVMROS1_094fd8b0b992c26d708bbd09952d36a3921ad5e5e66f45edb9d19af5ec3472bc"
## @brief Encode every field of complete abb_rapid_sm_addin_msgs/GetEGMSettingsResponse.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1285, written)
## @brief Decode every field of complete abb_rapid_sm_addin_msgs/GetEGMSettingsResponse.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse*(bytes: openArray[byte]; value: var Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse): uint32 =
  wire.decode(bytes, 261, 1285, value)

## @brief Complete abb_rapid_sm_addin_msgs/StateMachineState value.
## @details Retain all 3 original fields and 12 constants. Canonical extent 6..518 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_rapid_sm_addin_msgsStateMachineState* = object
  ## @brief Original abb_rapid_sm_addin_msgs/StateMachineState.rapid_task field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_rapid_task*: NativeText[512, false]
  ## @brief Original abb_rapid_sm_addin_msgs/StateMachineState.sm_state field.
  ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_sm_state*: uint8
  ## @brief Original abb_rapid_sm_addin_msgs/StateMachineState.egm_action field.
  ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_egm_action*: uint8
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_sm_addin_msgsStateMachineStateMinimumWireBytes* = 6
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_sm_addin_msgsStateMachineStateMaximumWireBytes* = 518
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_rapid_sm_addin_msgsStateMachineStateCodecIdentity* = "UWVMROS1_9ef8cc3a0438ad892acc1a2f485039ca49abce6fedf40cc5d9b2fe03dd9490bb"
## @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_UNKNOWN constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_rapid_sm_addin_msgsStateMachineState_SM_STATE_UNKNOWN*: uint8 = 1'u8
## @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_IDLE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_rapid_sm_addin_msgsStateMachineState_SM_STATE_IDLE*: uint8 = 2'u8
## @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_INITIALIZE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_rapid_sm_addin_msgsStateMachineState_SM_STATE_INITIALIZE*: uint8 = 3'u8
## @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_RUN_RAPID_ROUTINE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_rapid_sm_addin_msgsStateMachineState_SM_STATE_RUN_RAPID_ROUTINE*: uint8 = 4'u8
## @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_RUN_EGM_ROUTINE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_rapid_sm_addin_msgsStateMachineState_SM_STATE_RUN_EGM_ROUTINE*: uint8 = 5'u8
## @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_UNKNOWN constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_rapid_sm_addin_msgsStateMachineState_EGM_ACTION_UNKNOWN*: uint8 = 1'u8
## @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_NONE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_rapid_sm_addin_msgsStateMachineState_EGM_ACTION_NONE*: uint8 = 2'u8
## @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_RUN_JOINT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_rapid_sm_addin_msgsStateMachineState_EGM_ACTION_RUN_JOINT*: uint8 = 3'u8
## @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_RUN_POSE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_rapid_sm_addin_msgsStateMachineState_EGM_ACTION_RUN_POSE*: uint8 = 4'u8
## @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_STOP constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_rapid_sm_addin_msgsStateMachineState_EGM_ACTION_STOP*: uint8 = 5'u8
## @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_START_STREAM constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_rapid_sm_addin_msgsStateMachineState_EGM_ACTION_START_STREAM*: uint8 = 6'u8
## @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_STOP_STREAM constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_rapid_sm_addin_msgsStateMachineState_EGM_ACTION_STOP_STREAM*: uint8 = 7'u8
## @brief Encode every field of complete abb_rapid_sm_addin_msgs/StateMachineState.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_rapid_sm_addin_msgsStateMachineState; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 518, written)
## @brief Decode every field of complete abb_rapid_sm_addin_msgs/StateMachineState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_rapid_sm_addin_msgsStateMachineState*(bytes: openArray[byte]; value: var Ros1Abb_rapid_sm_addin_msgsStateMachineState): uint32 =
  wire.decode(bytes, 6, 518, value)

## @brief Complete abb_rapid_sm_addin_msgs/RuntimeState value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 20..8372 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_rapid_sm_addin_msgsRuntimeState* = object
  ## @brief Original abb_rapid_sm_addin_msgs/RuntimeState.header field.
  ## @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
  ## order. Backing storage belongs to this value; constructing or copying it creates no native ROS
  ## owner.
  field_header*: Ros1Std_msgsHeader
  ## @brief Original abb_rapid_sm_addin_msgs/RuntimeState.state_machines field.
  ## @details Original type abb_rapid_sm_addin_msgs/StateMachineState. Shape sequence; bound/count
  ## 16 elements. Preserve declared units, frame, signedness and field order. Backing storage
  ## belongs to this value; constructing or copying it creates no native ROS owner.
  field_state_machines*: NativeSequence[Ros1Abb_rapid_sm_addin_msgsStateMachineState, 16]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_sm_addin_msgsRuntimeStateMinimumWireBytes* = 20
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_sm_addin_msgsRuntimeStateMaximumWireBytes* = 8372
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_rapid_sm_addin_msgsRuntimeStateCodecIdentity* = "UWVMROS1_50d7eab2eed3ce0b55160e85b44b4108d966290f6b8f126980ee452846f3660c"
## @brief Encode every field of complete abb_rapid_sm_addin_msgs/RuntimeState.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_rapid_sm_addin_msgsRuntimeState; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 8372, written)
## @brief Decode every field of complete abb_rapid_sm_addin_msgs/RuntimeState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_rapid_sm_addin_msgsRuntimeState*(bytes: openArray[byte]; value: var Ros1Abb_rapid_sm_addin_msgsRuntimeState): uint32 =
  wire.decode(bytes, 20, 8372, value)

## @brief Complete abb_rapid_sm_addin_msgs/SetEGMSettingsRequest value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 259..835 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest* = object
  ## @brief Original abb_rapid_sm_addin_msgs/SetEGMSettingsRequest.task field.
  ## @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_task*: NativeText[64, false]
  ## @brief Original abb_rapid_sm_addin_msgs/SetEGMSettingsRequest.settings field.
  ## @details Original type abb_rapid_sm_addin_msgs/EGMSettings. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_settings*: Ros1Abb_rapid_sm_addin_msgsEGMSettings
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequestMinimumWireBytes* = 259
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequestMaximumWireBytes* = 835
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequestCodecIdentity* = "UWVMROS1_fe85c34f8dff2c0a547f89385d75771af13a03d997b880ab7be2eb84ea800155"
## @brief Encode every field of complete abb_rapid_sm_addin_msgs/SetEGMSettingsRequest.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 835, written)
## @brief Decode every field of complete abb_rapid_sm_addin_msgs/SetEGMSettingsRequest.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest*(bytes: openArray[byte]; value: var Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest): uint32 =
  wire.decode(bytes, 259, 835, value)

## @brief Complete abb_rapid_sm_addin_msgs/SetEGMSettingsResponse value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse* = object
  ## @brief Original abb_rapid_sm_addin_msgs/SetEGMSettingsResponse.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_rapid_sm_addin_msgs/SetEGMSettingsResponse.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponseMinimumWireBytes* = 6
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponseMaximumWireBytes* = 518
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponseCodecIdentity* = "UWVMROS1_c0d4e594a51a6cdd245ad03b6e27bbdc298c5c9fbe26cc25fa3594deef9b2591"
## @brief Encode every field of complete abb_rapid_sm_addin_msgs/SetEGMSettingsResponse.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 518, written)
## @brief Decode every field of complete abb_rapid_sm_addin_msgs/SetEGMSettingsResponse.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse*(bytes: openArray[byte]; value: var Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse): uint32 =
  wire.decode(bytes, 6, 518, value)

## @brief Complete abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 8..584 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest* = object
  ## @brief Original abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest.task field.
  ## @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_task*: NativeText[64, false]
  ## @brief Original abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest.routine field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_routine*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequestMinimumWireBytes* = 8
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequestMaximumWireBytes* = 584
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequestCodecIdentity* = "UWVMROS1_b16ba3e98ee1d45864532b01f914746f041e49463b9330ef6056e427d199a5a3"
## @brief Encode every field of complete abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 584, written)
## @brief Decode every field of complete abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest*(bytes: openArray[byte]; value: var Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest): uint32 =
  wire.decode(bytes, 8, 584, value)

## @brief Complete abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse* = object
  ## @brief Original abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponseMinimumWireBytes* = 6
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponseMaximumWireBytes* = 518
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponseCodecIdentity* = "UWVMROS1_44de2385f12a8612fa75ca7c3f97b07f22d04e920bdeca0f0bd7fed5322c680e"
## @brief Encode every field of complete abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 518, written)
## @brief Decode every field of complete abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse*(bytes: openArray[byte]; value: var Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse): uint32 =
  wire.decode(bytes, 6, 518, value)

## @brief Complete abb_rapid_sm_addin_msgs/SetSGCommandRequest value.
## @details Retain all 3 original fields and 15 constants. Canonical extent 9..73 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest* = object
  ## @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.task field.
  ## @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_task*: NativeText[64, false]
  ## @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.command field.
  ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_command*: uint8
  ## @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.target_position field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_target_position*: float32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestMinimumWireBytes* = 9
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestMaximumWireBytes* = 73
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodecIdentity* = "UWVMROS1_e39d7fee66c1efb9ea963216823f6e10bd632d78634d8c47f3283a1a1779f0c2"
## @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_UNKNOWN constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_UNKNOWN*: uint8 = 1'u8
## @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_NONE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_NONE*: uint8 = 2'u8
## @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_INITIALIZE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_INITIALIZE*: uint8 = 3'u8
## @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_CALIBRATE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_CALIBRATE*: uint8 = 4'u8
## @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_MOVE_TO constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_MOVE_TO*: uint8 = 5'u8
## @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_GRIP_IN constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_GRIP_IN*: uint8 = 6'u8
## @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_GRIP_OUT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_GRIP_OUT*: uint8 = 7'u8
## @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_BLOW_ON_1 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_BLOW_ON_1*: uint8 = 8'u8
## @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_BLOW_ON_2 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_BLOW_ON_2*: uint8 = 9'u8
## @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_BLOW_OFF_1 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_BLOW_OFF_1*: uint8 = 10'u8
## @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_BLOW_OFF_2 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_BLOW_OFF_2*: uint8 = 11'u8
## @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_VACUUM_ON_1 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_VACUUM_ON_1*: uint8 = 12'u8
## @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_VACUUM_ON_2 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_VACUUM_ON_2*: uint8 = 13'u8
## @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_VACUUM_OFF_1 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_VACUUM_OFF_1*: uint8 = 14'u8
## @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_VACUUM_OFF_2 constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_VACUUM_OFF_2*: uint8 = 15'u8
## @brief Encode every field of complete abb_rapid_sm_addin_msgs/SetSGCommandRequest.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 73, written)
## @brief Decode every field of complete abb_rapid_sm_addin_msgs/SetSGCommandRequest.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_rapid_sm_addin_msgsSetSGCommandRequest*(bytes: openArray[byte]; value: var Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest): uint32 =
  wire.decode(bytes, 9, 73, value)

## @brief Complete abb_rapid_sm_addin_msgs/SetSGCommandResponse value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse* = object
  ## @brief Original abb_rapid_sm_addin_msgs/SetSGCommandResponse.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_rapid_sm_addin_msgs/SetSGCommandResponse.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponseMinimumWireBytes* = 6
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponseMaximumWireBytes* = 518
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponseCodecIdentity* = "UWVMROS1_2f22b2098d86dd0764277247eb7f64dccecebf0cddce85654b01c1928eb9c192"
## @brief Encode every field of complete abb_rapid_sm_addin_msgs/SetSGCommandResponse.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 518, written)
## @brief Decode every field of complete abb_rapid_sm_addin_msgs/SetSGCommandResponse.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_rapid_sm_addin_msgsSetSGCommandResponse*(bytes: openArray[byte]; value: var Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse): uint32 =
  wire.decode(bytes, 6, 518, value)

## @brief Complete abb_robot_msgs/GetFileContentsRequest value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 4..516 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsGetFileContentsRequest* = object
  ## @brief Original abb_robot_msgs/GetFileContentsRequest.filename field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_filename*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetFileContentsRequestMinimumWireBytes* = 4
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetFileContentsRequestMaximumWireBytes* = 516
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsGetFileContentsRequestCodecIdentity* = "UWVMROS1_75f5802b385cc1efb524fadea657fda1d5cc4298c5720222d33cd3dd39656f21"
## @brief Encode every field of complete abb_robot_msgs/GetFileContentsRequest.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsGetFileContentsRequest; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 516, written)
## @brief Decode every field of complete abb_robot_msgs/GetFileContentsRequest.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsGetFileContentsRequest*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsGetFileContentsRequest): uint32 =
  wire.decode(bytes, 4, 516, value)

## @brief Complete abb_robot_msgs/GetFileContentsResponse value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 10..4618 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsGetFileContentsResponse* = object
  ## @brief Original abb_robot_msgs/GetFileContentsResponse.contents field.
  ## @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_contents*: NativeText[4096, false]
  ## @brief Original abb_robot_msgs/GetFileContentsResponse.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/GetFileContentsResponse.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetFileContentsResponseMinimumWireBytes* = 10
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetFileContentsResponseMaximumWireBytes* = 4618
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsGetFileContentsResponseCodecIdentity* = "UWVMROS1_693b53ed168f81a7c93ac8083977c4f8bd6f4a3999d079f5b47029699ba68fdb"
## @brief Encode every field of complete abb_robot_msgs/GetFileContentsResponse.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsGetFileContentsResponse; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 4618, written)
## @brief Decode every field of complete abb_robot_msgs/GetFileContentsResponse.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsGetFileContentsResponse*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsGetFileContentsResponse): uint32 =
  wire.decode(bytes, 10, 4618, value)

## @brief Complete abb_robot_msgs/GetIOSignalRequest value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 4..516 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsGetIOSignalRequest* = object
  ## @brief Original abb_robot_msgs/GetIOSignalRequest.signal field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_signal*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetIOSignalRequestMinimumWireBytes* = 4
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetIOSignalRequestMaximumWireBytes* = 516
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsGetIOSignalRequestCodecIdentity* = "UWVMROS1_d98f7577756b476cac0dd325d45f333fcd2b735df7dce58fb660790b5a91f83b"
## @brief Encode every field of complete abb_robot_msgs/GetIOSignalRequest.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsGetIOSignalRequest; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 516, written)
## @brief Decode every field of complete abb_robot_msgs/GetIOSignalRequest.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsGetIOSignalRequest*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsGetIOSignalRequest): uint32 =
  wire.decode(bytes, 4, 516, value)

## @brief Complete abb_robot_msgs/GetIOSignalResponse value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 10..1034 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsGetIOSignalResponse* = object
  ## @brief Original abb_robot_msgs/GetIOSignalResponse.value field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_value*: NativeText[512, false]
  ## @brief Original abb_robot_msgs/GetIOSignalResponse.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/GetIOSignalResponse.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetIOSignalResponseMinimumWireBytes* = 10
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetIOSignalResponseMaximumWireBytes* = 1034
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsGetIOSignalResponseCodecIdentity* = "UWVMROS1_10a66146c4815b0d758ec81dde1c552695c97a8727ee995299018b23f129d79e"
## @brief Encode every field of complete abb_robot_msgs/GetIOSignalResponse.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsGetIOSignalResponse; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1034, written)
## @brief Decode every field of complete abb_robot_msgs/GetIOSignalResponse.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsGetIOSignalResponse*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsGetIOSignalResponse): uint32 =
  wire.decode(bytes, 10, 1034, value)

## @brief Complete abb_robot_msgs/RAPIDSymbolPath value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 12..204 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsRAPIDSymbolPath* = object
  ## @brief Original abb_robot_msgs/RAPIDSymbolPath.task field.
  ## @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_task*: NativeText[64, false]
  ## @brief Original abb_robot_msgs/RAPIDSymbolPath.module field.
  ## @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_module*: NativeText[64, false]
  ## @brief Original abb_robot_msgs/RAPIDSymbolPath.symbol field.
  ## @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_symbol*: NativeText[64, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsRAPIDSymbolPathMinimumWireBytes* = 12
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsRAPIDSymbolPathMaximumWireBytes* = 204
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsRAPIDSymbolPathCodecIdentity* = "UWVMROS1_07308d9ce1e71a02f5cc3546cdbaaa0b24a06534a55aa3ee3354b498038faad2"
## @brief Encode every field of complete abb_robot_msgs/RAPIDSymbolPath.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsRAPIDSymbolPath; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 204, written)
## @brief Decode every field of complete abb_robot_msgs/RAPIDSymbolPath.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsRAPIDSymbolPath*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsRAPIDSymbolPath): uint32 =
  wire.decode(bytes, 12, 204, value)

## @brief Complete abb_robot_msgs/GetRAPIDBoolRequest value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 12..204 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsGetRAPIDBoolRequest* = object
  ## @brief Original abb_robot_msgs/GetRAPIDBoolRequest.path field.
  ## @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_path*: Ros1Abb_robot_msgsRAPIDSymbolPath
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetRAPIDBoolRequestMinimumWireBytes* = 12
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetRAPIDBoolRequestMaximumWireBytes* = 204
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsGetRAPIDBoolRequestCodecIdentity* = "UWVMROS1_46e49c0d6796175d0c56460dd4c7d2557deaa8db4f1a3bec40b53636d3b44b96"
## @brief Encode every field of complete abb_robot_msgs/GetRAPIDBoolRequest.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsGetRAPIDBoolRequest; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 204, written)
## @brief Decode every field of complete abb_robot_msgs/GetRAPIDBoolRequest.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsGetRAPIDBoolRequest*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsGetRAPIDBoolRequest): uint32 =
  wire.decode(bytes, 12, 204, value)

## @brief Complete abb_robot_msgs/GetRAPIDBoolResponse value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 7..519 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsGetRAPIDBoolResponse* = object
  ## @brief Original abb_robot_msgs/GetRAPIDBoolResponse.value field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_value*: bool
  ## @brief Original abb_robot_msgs/GetRAPIDBoolResponse.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/GetRAPIDBoolResponse.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetRAPIDBoolResponseMinimumWireBytes* = 7
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetRAPIDBoolResponseMaximumWireBytes* = 519
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsGetRAPIDBoolResponseCodecIdentity* = "UWVMROS1_bfe21e95cb79f1d9bc1bc1dc2f61c744a2a7dc49e5a5ed07b6c8619344b97b3f"
## @brief Encode every field of complete abb_robot_msgs/GetRAPIDBoolResponse.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsGetRAPIDBoolResponse; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 519, written)
## @brief Decode every field of complete abb_robot_msgs/GetRAPIDBoolResponse.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsGetRAPIDBoolResponse*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsGetRAPIDBoolResponse): uint32 =
  wire.decode(bytes, 7, 519, value)

## @brief Complete abb_robot_msgs/GetRAPIDDnumRequest value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 12..204 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsGetRAPIDDnumRequest* = object
  ## @brief Original abb_robot_msgs/GetRAPIDDnumRequest.path field.
  ## @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_path*: Ros1Abb_robot_msgsRAPIDSymbolPath
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetRAPIDDnumRequestMinimumWireBytes* = 12
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetRAPIDDnumRequestMaximumWireBytes* = 204
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsGetRAPIDDnumRequestCodecIdentity* = "UWVMROS1_9058d8774de0da657344a00d75a7f75878da2b0453bf25708bc8ed7f45c90c9d"
## @brief Encode every field of complete abb_robot_msgs/GetRAPIDDnumRequest.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsGetRAPIDDnumRequest; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 204, written)
## @brief Decode every field of complete abb_robot_msgs/GetRAPIDDnumRequest.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsGetRAPIDDnumRequest*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsGetRAPIDDnumRequest): uint32 =
  wire.decode(bytes, 12, 204, value)

## @brief Complete abb_robot_msgs/GetRAPIDDnumResponse value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 14..526 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsGetRAPIDDnumResponse* = object
  ## @brief Original abb_robot_msgs/GetRAPIDDnumResponse.value field.
  ## @details Original type float64. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_value*: float64
  ## @brief Original abb_robot_msgs/GetRAPIDDnumResponse.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/GetRAPIDDnumResponse.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetRAPIDDnumResponseMinimumWireBytes* = 14
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetRAPIDDnumResponseMaximumWireBytes* = 526
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsGetRAPIDDnumResponseCodecIdentity* = "UWVMROS1_9c209b4b12d733e33b76cc33ae93b6d561ce1eb7f8864429a56bd073317a01b3"
## @brief Encode every field of complete abb_robot_msgs/GetRAPIDDnumResponse.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsGetRAPIDDnumResponse; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 526, written)
## @brief Decode every field of complete abb_robot_msgs/GetRAPIDDnumResponse.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsGetRAPIDDnumResponse*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsGetRAPIDDnumResponse): uint32 =
  wire.decode(bytes, 14, 526, value)

## @brief Complete abb_robot_msgs/GetRAPIDNumRequest value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 12..204 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsGetRAPIDNumRequest* = object
  ## @brief Original abb_robot_msgs/GetRAPIDNumRequest.path field.
  ## @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_path*: Ros1Abb_robot_msgsRAPIDSymbolPath
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetRAPIDNumRequestMinimumWireBytes* = 12
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetRAPIDNumRequestMaximumWireBytes* = 204
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsGetRAPIDNumRequestCodecIdentity* = "UWVMROS1_a316395c8a19b7c0a9c3a555e625fffc7d647c7b567f38c53b1c3735b50ee910"
## @brief Encode every field of complete abb_robot_msgs/GetRAPIDNumRequest.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsGetRAPIDNumRequest; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 204, written)
## @brief Decode every field of complete abb_robot_msgs/GetRAPIDNumRequest.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsGetRAPIDNumRequest*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsGetRAPIDNumRequest): uint32 =
  wire.decode(bytes, 12, 204, value)

## @brief Complete abb_robot_msgs/GetRAPIDNumResponse value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 10..522 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsGetRAPIDNumResponse* = object
  ## @brief Original abb_robot_msgs/GetRAPIDNumResponse.value field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_value*: float32
  ## @brief Original abb_robot_msgs/GetRAPIDNumResponse.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/GetRAPIDNumResponse.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetRAPIDNumResponseMinimumWireBytes* = 10
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetRAPIDNumResponseMaximumWireBytes* = 522
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsGetRAPIDNumResponseCodecIdentity* = "UWVMROS1_1573cba9a9046a6b304a49e3a77266fa0d6f615d2ea9a24692c25616970fd9b0"
## @brief Encode every field of complete abb_robot_msgs/GetRAPIDNumResponse.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsGetRAPIDNumResponse; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 522, written)
## @brief Decode every field of complete abb_robot_msgs/GetRAPIDNumResponse.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsGetRAPIDNumResponse*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsGetRAPIDNumResponse): uint32 =
  wire.decode(bytes, 10, 522, value)

## @brief Complete abb_robot_msgs/GetRAPIDStringRequest value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 12..204 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsGetRAPIDStringRequest* = object
  ## @brief Original abb_robot_msgs/GetRAPIDStringRequest.path field.
  ## @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_path*: Ros1Abb_robot_msgsRAPIDSymbolPath
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetRAPIDStringRequestMinimumWireBytes* = 12
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetRAPIDStringRequestMaximumWireBytes* = 204
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsGetRAPIDStringRequestCodecIdentity* = "UWVMROS1_56514142e9e064aa43d09078b49ed8ee0366189727c35a9bc130b35007da4c9c"
## @brief Encode every field of complete abb_robot_msgs/GetRAPIDStringRequest.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsGetRAPIDStringRequest; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 204, written)
## @brief Decode every field of complete abb_robot_msgs/GetRAPIDStringRequest.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsGetRAPIDStringRequest*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsGetRAPIDStringRequest): uint32 =
  wire.decode(bytes, 12, 204, value)

## @brief Complete abb_robot_msgs/GetRAPIDStringResponse value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 10..1034 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsGetRAPIDStringResponse* = object
  ## @brief Original abb_robot_msgs/GetRAPIDStringResponse.value field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_value*: NativeText[512, false]
  ## @brief Original abb_robot_msgs/GetRAPIDStringResponse.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/GetRAPIDStringResponse.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetRAPIDStringResponseMinimumWireBytes* = 10
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetRAPIDStringResponseMaximumWireBytes* = 1034
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsGetRAPIDStringResponseCodecIdentity* = "UWVMROS1_d1188827af3c307a721f8128b6f14fa6020f3187afce8a4162ce6562cdd1c854"
## @brief Encode every field of complete abb_robot_msgs/GetRAPIDStringResponse.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsGetRAPIDStringResponse; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1034, written)
## @brief Decode every field of complete abb_robot_msgs/GetRAPIDStringResponse.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsGetRAPIDStringResponse*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsGetRAPIDStringResponse): uint32 =
  wire.decode(bytes, 10, 1034, value)

## @brief Complete abb_robot_msgs/GetRAPIDSymbolRequest value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 12..204 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsGetRAPIDSymbolRequest* = object
  ## @brief Original abb_robot_msgs/GetRAPIDSymbolRequest.path field.
  ## @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_path*: Ros1Abb_robot_msgsRAPIDSymbolPath
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetRAPIDSymbolRequestMinimumWireBytes* = 12
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetRAPIDSymbolRequestMaximumWireBytes* = 204
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsGetRAPIDSymbolRequestCodecIdentity* = "UWVMROS1_31302ad912a8ff39b56a429bc9dae22cbfc2c2101b8cd05162d00d9206aecf5b"
## @brief Encode every field of complete abb_robot_msgs/GetRAPIDSymbolRequest.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsGetRAPIDSymbolRequest; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 204, written)
## @brief Decode every field of complete abb_robot_msgs/GetRAPIDSymbolRequest.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsGetRAPIDSymbolRequest*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsGetRAPIDSymbolRequest): uint32 =
  wire.decode(bytes, 12, 204, value)

## @brief Complete abb_robot_msgs/GetRAPIDSymbolResponse value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 10..1034 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsGetRAPIDSymbolResponse* = object
  ## @brief Original abb_robot_msgs/GetRAPIDSymbolResponse.value field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_value*: NativeText[512, false]
  ## @brief Original abb_robot_msgs/GetRAPIDSymbolResponse.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/GetRAPIDSymbolResponse.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetRAPIDSymbolResponseMinimumWireBytes* = 10
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetRAPIDSymbolResponseMaximumWireBytes* = 1034
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsGetRAPIDSymbolResponseCodecIdentity* = "UWVMROS1_182dc465ea5fb9543791b6fb76520313cee1ed472ab0296c8ef7a9ed3d4d110f"
## @brief Encode every field of complete abb_robot_msgs/GetRAPIDSymbolResponse.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsGetRAPIDSymbolResponse; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1034, written)
## @brief Decode every field of complete abb_robot_msgs/GetRAPIDSymbolResponse.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsGetRAPIDSymbolResponse*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsGetRAPIDSymbolResponse): uint32 =
  wire.decode(bytes, 10, 1034, value)

## @brief Complete abb_robot_msgs/GetRobotControllerDescriptionRequest value.
## @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest* = object
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetRobotControllerDescriptionRequestMinimumWireBytes* = 0
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetRobotControllerDescriptionRequestMaximumWireBytes* = 0
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsGetRobotControllerDescriptionRequestCodecIdentity* = "UWVMROS1_bc5f87f4d0f33cbc640c8188fbb15c9b0f43b3067f2406700d6f5bd2475089b6"
## @brief Encode every field of complete abb_robot_msgs/GetRobotControllerDescriptionRequest.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 0, written)
## @brief Decode every field of complete abb_robot_msgs/GetRobotControllerDescriptionRequest.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsGetRobotControllerDescriptionRequest*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest): uint32 =
  wire.decode(bytes, 0, 0, value)

## @brief Complete abb_robot_msgs/GetRobotControllerDescriptionResponse value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 10..4618 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse* = object
  ## @brief Original abb_robot_msgs/GetRobotControllerDescriptionResponse.description field.
  ## @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_description*: NativeText[4096, false]
  ## @brief Original abb_robot_msgs/GetRobotControllerDescriptionResponse.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/GetRobotControllerDescriptionResponse.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetRobotControllerDescriptionResponseMinimumWireBytes* = 10
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetRobotControllerDescriptionResponseMaximumWireBytes* = 4618
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsGetRobotControllerDescriptionResponseCodecIdentity* = "UWVMROS1_7db41283fbe12a010e526b87d77a5bb7faecdf85595ef2dc13f14bfed56b6e39"
## @brief Encode every field of complete abb_robot_msgs/GetRobotControllerDescriptionResponse.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 4618, written)
## @brief Decode every field of complete abb_robot_msgs/GetRobotControllerDescriptionResponse.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsGetRobotControllerDescriptionResponse*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse): uint32 =
  wire.decode(bytes, 10, 4618, value)

## @brief Complete abb_robot_msgs/GetSpeedRatioRequest value.
## @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsGetSpeedRatioRequest* = object
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetSpeedRatioRequestMinimumWireBytes* = 0
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetSpeedRatioRequestMaximumWireBytes* = 0
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsGetSpeedRatioRequestCodecIdentity* = "UWVMROS1_82230aebf6fa923e09bcd413ecb3b4803a6f1cfd3e8334e0ce0c496b73008373"
## @brief Encode every field of complete abb_robot_msgs/GetSpeedRatioRequest.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsGetSpeedRatioRequest; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 0, written)
## @brief Decode every field of complete abb_robot_msgs/GetSpeedRatioRequest.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsGetSpeedRatioRequest*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsGetSpeedRatioRequest): uint32 =
  wire.decode(bytes, 0, 0, value)

## @brief Complete abb_robot_msgs/GetSpeedRatioResponse value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 7..519 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsGetSpeedRatioResponse* = object
  ## @brief Original abb_robot_msgs/GetSpeedRatioResponse.speed_ratio field.
  ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_speed_ratio*: uint8
  ## @brief Original abb_robot_msgs/GetSpeedRatioResponse.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/GetSpeedRatioResponse.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetSpeedRatioResponseMinimumWireBytes* = 7
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsGetSpeedRatioResponseMaximumWireBytes* = 519
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsGetSpeedRatioResponseCodecIdentity* = "UWVMROS1_7784360ddafa1b8ad9626fde0afa2b2335f6a294507036c3aee953df99e91940"
## @brief Encode every field of complete abb_robot_msgs/GetSpeedRatioResponse.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsGetSpeedRatioResponse; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 519, written)
## @brief Decode every field of complete abb_robot_msgs/GetSpeedRatioResponse.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsGetSpeedRatioResponse*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsGetSpeedRatioResponse): uint32 =
  wire.decode(bytes, 7, 519, value)

## @brief Complete abb_robot_msgs/MechanicalUnitState value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 5..69 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsMechanicalUnitState* = object
  ## @brief Original abb_robot_msgs/MechanicalUnitState.name field.
  ## @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_name*: NativeText[64, false]
  ## @brief Original abb_robot_msgs/MechanicalUnitState.activated field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_activated*: bool
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsMechanicalUnitStateMinimumWireBytes* = 5
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsMechanicalUnitStateMaximumWireBytes* = 69
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsMechanicalUnitStateCodecIdentity* = "UWVMROS1_872cc6e8bdf32426bb9e24322c951452aab6ebcbc1f2998f4fb19c34abece8fa"
## @brief Encode every field of complete abb_robot_msgs/MechanicalUnitState.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsMechanicalUnitState; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 69, written)
## @brief Decode every field of complete abb_robot_msgs/MechanicalUnitState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsMechanicalUnitState*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsMechanicalUnitState): uint32 =
  wire.decode(bytes, 5, 69, value)

## @brief Complete abb_robot_msgs/RAPIDTaskState value.
## @details Retain all 4 original fields and 5 constants. Canonical extent 7..71 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsRAPIDTaskState* = object
  ## @brief Original abb_robot_msgs/RAPIDTaskState.name field.
  ## @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_name*: NativeText[64, false]
  ## @brief Original abb_robot_msgs/RAPIDTaskState.activated field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_activated*: bool
  ## @brief Original abb_robot_msgs/RAPIDTaskState.execution_state field.
  ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_execution_state*: uint8
  ## @brief Original abb_robot_msgs/RAPIDTaskState.motion_task field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_motion_task*: bool
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsRAPIDTaskStateMinimumWireBytes* = 7
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsRAPIDTaskStateMaximumWireBytes* = 71
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsRAPIDTaskStateCodecIdentity* = "UWVMROS1_ab1245cc352efa91cdcc8de801392857e25a4101a141439554b761525b31b947"
## @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_UNKNOWN constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsRAPIDTaskState_EXECUTION_STATE_UNKNOWN*: uint8 = 1'u8
## @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_READY constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsRAPIDTaskState_EXECUTION_STATE_READY*: uint8 = 2'u8
## @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_STOPPED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsRAPIDTaskState_EXECUTION_STATE_STOPPED*: uint8 = 3'u8
## @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_STARTED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsRAPIDTaskState_EXECUTION_STATE_STARTED*: uint8 = 4'u8
## @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_UNINITIALIZED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsRAPIDTaskState_EXECUTION_STATE_UNINITIALIZED*: uint8 = 5'u8
## @brief Encode every field of complete abb_robot_msgs/RAPIDTaskState.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsRAPIDTaskState; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 71, written)
## @brief Decode every field of complete abb_robot_msgs/RAPIDTaskState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsRAPIDTaskState*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsRAPIDTaskState): uint32 =
  wire.decode(bytes, 7, 71, value)

## @brief Complete abb_robot_msgs/ServiceResponses value.
## @details Retain all 0 original fields and 32 constants. Canonical extent 0..0 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsServiceResponses* = object
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsServiceResponsesMinimumWireBytes* = 0
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsServiceResponsesMaximumWireBytes* = 0
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsServiceResponsesCodecIdentity* = "UWVMROS1_f0a3c4b160bf0ca52dbbb4e26d2c8a7d3c6a40ac70787ba59cf181945e4276d4"
## @brief Original abb_robot_msgs/ServiceResponses.SUCCESS constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsServiceResponses_SUCCESS*: string = ""
## @brief Original abb_robot_msgs/ServiceResponses.RC_SUCCESS constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsServiceResponses_RC_SUCCESS*: uint16 = 1'u16
## @brief Original abb_robot_msgs/ServiceResponses.FAILED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsServiceResponses_FAILED*: string = "Service failed (e.g. timeout or resource not found, see the DEBUG log for details)"
## @brief Original abb_robot_msgs/ServiceResponses.RC_FAILED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsServiceResponses_RC_FAILED*: uint16 = 2'u16
## @brief Original abb_robot_msgs/ServiceResponses.SERVER_IS_BUSY constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsServiceResponses_SERVER_IS_BUSY*: string = "Server is busy"
## @brief Original abb_robot_msgs/ServiceResponses.RC_SERVER_IS_BUSY constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsServiceResponses_RC_SERVER_IS_BUSY*: uint16 = 1001'u16
## @brief Original abb_robot_msgs/ServiceResponses.EMPTY_FILENAME constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsServiceResponses_EMPTY_FILENAME*: string = "Filename is empty"
## @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_FILENAME constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsServiceResponses_RC_EMPTY_FILENAME*: uint16 = 2001'u16
## @brief Original abb_robot_msgs/ServiceResponses.EMPTY_SIGNAL_NAME constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsServiceResponses_EMPTY_SIGNAL_NAME*: string = "Signal name is empty"
## @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_SIGNAL_NAME constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsServiceResponses_RC_EMPTY_SIGNAL_NAME*: uint16 = 2002'u16
## @brief Original abb_robot_msgs/ServiceResponses.EMPTY_RAPID_TASK_NAME constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsServiceResponses_EMPTY_RAPID_TASK_NAME*: string = "RAPID task name is empty"
## @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_RAPID_TASK_NAME constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsServiceResponses_RC_EMPTY_RAPID_TASK_NAME*: uint16 = 2003'u16
## @brief Original abb_robot_msgs/ServiceResponses.EMPTY_RAPID_MODULE_NAME constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsServiceResponses_EMPTY_RAPID_MODULE_NAME*: string = "RAPID module name is empty"
## @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_RAPID_MODULE_NAME constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsServiceResponses_RC_EMPTY_RAPID_MODULE_NAME*: uint16 = 2004'u16
## @brief Original abb_robot_msgs/ServiceResponses.EMPTY_RAPID_SYMBOL_NAME constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsServiceResponses_EMPTY_RAPID_SYMBOL_NAME*: string = "RAPID symbol name is empty"
## @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_RAPID_SYMBOL_NAME constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsServiceResponses_RC_EMPTY_RAPID_SYMBOL_NAME*: uint16 = 2005'u16
## @brief Original abb_robot_msgs/ServiceResponses.NOT_IN_AUTO_MODE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsServiceResponses_NOT_IN_AUTO_MODE*: string = "Robot controller is not in AUTO mode"
## @brief Original abb_robot_msgs/ServiceResponses.RC_NOT_IN_AUTO_MODE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsServiceResponses_RC_NOT_IN_AUTO_MODE*: uint16 = 3001'u16
## @brief Original abb_robot_msgs/ServiceResponses.MOTORS_ARE_OFF constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsServiceResponses_MOTORS_ARE_OFF*: string = "Motors are off"
## @brief Original abb_robot_msgs/ServiceResponses.RC_MOTORS_ARE_OFF constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsServiceResponses_RC_MOTORS_ARE_OFF*: uint16 = 3002'u16
## @brief Original abb_robot_msgs/ServiceResponses.MOTORS_ARE_ON constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsServiceResponses_MOTORS_ARE_ON*: string = "Motors are on"
## @brief Original abb_robot_msgs/ServiceResponses.RC_MOTORS_ARE_ON constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsServiceResponses_RC_MOTORS_ARE_ON*: uint16 = 3003'u16
## @brief Original abb_robot_msgs/ServiceResponses.RAPID_NOT_STOPPED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsServiceResponses_RAPID_NOT_STOPPED*: string = "RAPID has not been stopped"
## @brief Original abb_robot_msgs/ServiceResponses.RC_RAPID_NOT_STOPPED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsServiceResponses_RC_RAPID_NOT_STOPPED*: uint16 = 3004'u16
## @brief Original abb_robot_msgs/ServiceResponses.RAPID_NOT_RUNNING constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsServiceResponses_RAPID_NOT_RUNNING*: string = "RAPID is not running"
## @brief Original abb_robot_msgs/ServiceResponses.RC_RAPID_NOT_RUNNING constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsServiceResponses_RC_RAPID_NOT_RUNNING*: uint16 = 3005'u16
## @brief Original abb_robot_msgs/ServiceResponses.SM_RUNTIME_STATES_MISSING constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsServiceResponses_SM_RUNTIME_STATES_MISSING*: string = "No runtime states received for any StateMachine Add-In instance"
## @brief Original abb_robot_msgs/ServiceResponses.RC_SM_RUNTIME_STATES_MISSING constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsServiceResponses_RC_SM_RUNTIME_STATES_MISSING*: uint16 = 4001'u16
## @brief Original abb_robot_msgs/ServiceResponses.SM_UNKNOWN_RAPID_TASK constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsServiceResponses_SM_UNKNOWN_RAPID_TASK*: string = "RAPID task not found among known StateMachine Add-In instances"
## @brief Original abb_robot_msgs/ServiceResponses.RC_SM_UNKNOWN_RAPID_TASK constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsServiceResponses_RC_SM_UNKNOWN_RAPID_TASK*: uint16 = 4002'u16
## @brief Original abb_robot_msgs/ServiceResponses.SM_UNINITIALIZED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsServiceResponses_SM_UNINITIALIZED*: string = "StateMachine Add-In instance has not been initialized"
## @brief Original abb_robot_msgs/ServiceResponses.RC_SM_UNINITIALIZED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Abb_robot_msgsServiceResponses_RC_SM_UNINITIALIZED*: uint16 = 4003'u16
## @brief Encode every field of complete abb_robot_msgs/ServiceResponses.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsServiceResponses; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 0, written)
## @brief Decode every field of complete abb_robot_msgs/ServiceResponses.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsServiceResponses*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsServiceResponses): uint32 =
  wire.decode(bytes, 0, 0, value)

## @brief Complete abb_robot_msgs/SetFileContentsRequest value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 8..4616 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsSetFileContentsRequest* = object
  ## @brief Original abb_robot_msgs/SetFileContentsRequest.filename field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_filename*: NativeText[512, false]
  ## @brief Original abb_robot_msgs/SetFileContentsRequest.contents field.
  ## @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_contents*: NativeText[4096, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSetFileContentsRequestMinimumWireBytes* = 8
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSetFileContentsRequestMaximumWireBytes* = 4616
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsSetFileContentsRequestCodecIdentity* = "UWVMROS1_f764448d9754e9ebc5e5fab64f0c8ebb01c534ec7b95751ed7d58e8ce0bd3012"
## @brief Encode every field of complete abb_robot_msgs/SetFileContentsRequest.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsSetFileContentsRequest; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 4616, written)
## @brief Decode every field of complete abb_robot_msgs/SetFileContentsRequest.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsSetFileContentsRequest*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsSetFileContentsRequest): uint32 =
  wire.decode(bytes, 8, 4616, value)

## @brief Complete abb_robot_msgs/SetFileContentsResponse value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsSetFileContentsResponse* = object
  ## @brief Original abb_robot_msgs/SetFileContentsResponse.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/SetFileContentsResponse.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSetFileContentsResponseMinimumWireBytes* = 6
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSetFileContentsResponseMaximumWireBytes* = 518
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsSetFileContentsResponseCodecIdentity* = "UWVMROS1_3de2a08b8e158e0612898880d6d9c98f1995828eb53bd5639b47f730c6cbefd0"
## @brief Encode every field of complete abb_robot_msgs/SetFileContentsResponse.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsSetFileContentsResponse; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 518, written)
## @brief Decode every field of complete abb_robot_msgs/SetFileContentsResponse.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsSetFileContentsResponse*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsSetFileContentsResponse): uint32 =
  wire.decode(bytes, 6, 518, value)

## @brief Complete abb_robot_msgs/SetIOSignalRequest value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 8..1032 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsSetIOSignalRequest* = object
  ## @brief Original abb_robot_msgs/SetIOSignalRequest.signal field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_signal*: NativeText[512, false]
  ## @brief Original abb_robot_msgs/SetIOSignalRequest.value field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_value*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSetIOSignalRequestMinimumWireBytes* = 8
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSetIOSignalRequestMaximumWireBytes* = 1032
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsSetIOSignalRequestCodecIdentity* = "UWVMROS1_57a0197e2a5de7efd2fc91d945d699be24559baec6651179a1256f1d9d35bbc9"
## @brief Encode every field of complete abb_robot_msgs/SetIOSignalRequest.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsSetIOSignalRequest; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1032, written)
## @brief Decode every field of complete abb_robot_msgs/SetIOSignalRequest.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsSetIOSignalRequest*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsSetIOSignalRequest): uint32 =
  wire.decode(bytes, 8, 1032, value)

## @brief Complete abb_robot_msgs/SetIOSignalResponse value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsSetIOSignalResponse* = object
  ## @brief Original abb_robot_msgs/SetIOSignalResponse.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/SetIOSignalResponse.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSetIOSignalResponseMinimumWireBytes* = 6
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSetIOSignalResponseMaximumWireBytes* = 518
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsSetIOSignalResponseCodecIdentity* = "UWVMROS1_becc0f844ce6a7fabd8a683175edd8033ba5c943c2de152991755ee112b460e5"
## @brief Encode every field of complete abb_robot_msgs/SetIOSignalResponse.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsSetIOSignalResponse; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 518, written)
## @brief Decode every field of complete abb_robot_msgs/SetIOSignalResponse.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsSetIOSignalResponse*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsSetIOSignalResponse): uint32 =
  wire.decode(bytes, 6, 518, value)

## @brief Complete abb_robot_msgs/SetRAPIDBoolRequest value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 13..205 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsSetRAPIDBoolRequest* = object
  ## @brief Original abb_robot_msgs/SetRAPIDBoolRequest.path field.
  ## @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_path*: Ros1Abb_robot_msgsRAPIDSymbolPath
  ## @brief Original abb_robot_msgs/SetRAPIDBoolRequest.value field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_value*: bool
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSetRAPIDBoolRequestMinimumWireBytes* = 13
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSetRAPIDBoolRequestMaximumWireBytes* = 205
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsSetRAPIDBoolRequestCodecIdentity* = "UWVMROS1_d8e5420678fe5feeffa20ad9ab8431678ec346f764c94871c4496c62e9dd8e8d"
## @brief Encode every field of complete abb_robot_msgs/SetRAPIDBoolRequest.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsSetRAPIDBoolRequest; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 205, written)
## @brief Decode every field of complete abb_robot_msgs/SetRAPIDBoolRequest.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsSetRAPIDBoolRequest*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsSetRAPIDBoolRequest): uint32 =
  wire.decode(bytes, 13, 205, value)

## @brief Complete abb_robot_msgs/SetRAPIDBoolResponse value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsSetRAPIDBoolResponse* = object
  ## @brief Original abb_robot_msgs/SetRAPIDBoolResponse.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/SetRAPIDBoolResponse.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSetRAPIDBoolResponseMinimumWireBytes* = 6
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSetRAPIDBoolResponseMaximumWireBytes* = 518
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsSetRAPIDBoolResponseCodecIdentity* = "UWVMROS1_da2ae1231cb0c1ec452fb2733d5c99dcae78ad0bfd10771241708931b271bf13"
## @brief Encode every field of complete abb_robot_msgs/SetRAPIDBoolResponse.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsSetRAPIDBoolResponse; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 518, written)
## @brief Decode every field of complete abb_robot_msgs/SetRAPIDBoolResponse.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsSetRAPIDBoolResponse*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsSetRAPIDBoolResponse): uint32 =
  wire.decode(bytes, 6, 518, value)

## @brief Complete abb_robot_msgs/SetRAPIDDnumRequest value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 20..212 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsSetRAPIDDnumRequest* = object
  ## @brief Original abb_robot_msgs/SetRAPIDDnumRequest.path field.
  ## @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_path*: Ros1Abb_robot_msgsRAPIDSymbolPath
  ## @brief Original abb_robot_msgs/SetRAPIDDnumRequest.value field.
  ## @details Original type float64. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_value*: float64
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSetRAPIDDnumRequestMinimumWireBytes* = 20
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSetRAPIDDnumRequestMaximumWireBytes* = 212
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsSetRAPIDDnumRequestCodecIdentity* = "UWVMROS1_0f17e3068f86bca6effb99f3bc850234b0163028f372340c450fce31657b9cf9"
## @brief Encode every field of complete abb_robot_msgs/SetRAPIDDnumRequest.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsSetRAPIDDnumRequest; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 212, written)
## @brief Decode every field of complete abb_robot_msgs/SetRAPIDDnumRequest.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsSetRAPIDDnumRequest*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsSetRAPIDDnumRequest): uint32 =
  wire.decode(bytes, 20, 212, value)

## @brief Complete abb_robot_msgs/SetRAPIDDnumResponse value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsSetRAPIDDnumResponse* = object
  ## @brief Original abb_robot_msgs/SetRAPIDDnumResponse.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/SetRAPIDDnumResponse.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSetRAPIDDnumResponseMinimumWireBytes* = 6
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSetRAPIDDnumResponseMaximumWireBytes* = 518
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsSetRAPIDDnumResponseCodecIdentity* = "UWVMROS1_1905aed9683e03494baa54627ddbaf4aed0b92357823c0c042f9b7c6a970c8ed"
## @brief Encode every field of complete abb_robot_msgs/SetRAPIDDnumResponse.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsSetRAPIDDnumResponse; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 518, written)
## @brief Decode every field of complete abb_robot_msgs/SetRAPIDDnumResponse.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsSetRAPIDDnumResponse*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsSetRAPIDDnumResponse): uint32 =
  wire.decode(bytes, 6, 518, value)

## @brief Complete abb_robot_msgs/SetRAPIDNumRequest value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 16..208 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsSetRAPIDNumRequest* = object
  ## @brief Original abb_robot_msgs/SetRAPIDNumRequest.path field.
  ## @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_path*: Ros1Abb_robot_msgsRAPIDSymbolPath
  ## @brief Original abb_robot_msgs/SetRAPIDNumRequest.value field.
  ## @details Original type float32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_value*: float32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSetRAPIDNumRequestMinimumWireBytes* = 16
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSetRAPIDNumRequestMaximumWireBytes* = 208
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsSetRAPIDNumRequestCodecIdentity* = "UWVMROS1_9982d02cb0b6ee5813f5fb38072d665226b7885aeb90517af881f4fc990f392f"
## @brief Encode every field of complete abb_robot_msgs/SetRAPIDNumRequest.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsSetRAPIDNumRequest; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 208, written)
## @brief Decode every field of complete abb_robot_msgs/SetRAPIDNumRequest.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsSetRAPIDNumRequest*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsSetRAPIDNumRequest): uint32 =
  wire.decode(bytes, 16, 208, value)

## @brief Complete abb_robot_msgs/SetRAPIDNumResponse value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsSetRAPIDNumResponse* = object
  ## @brief Original abb_robot_msgs/SetRAPIDNumResponse.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/SetRAPIDNumResponse.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSetRAPIDNumResponseMinimumWireBytes* = 6
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSetRAPIDNumResponseMaximumWireBytes* = 518
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsSetRAPIDNumResponseCodecIdentity* = "UWVMROS1_af1181242b4afdb6d387d39c24d0bc343e872fb9ab21c0ec1e451785786a4e64"
## @brief Encode every field of complete abb_robot_msgs/SetRAPIDNumResponse.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsSetRAPIDNumResponse; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 518, written)
## @brief Decode every field of complete abb_robot_msgs/SetRAPIDNumResponse.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsSetRAPIDNumResponse*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsSetRAPIDNumResponse): uint32 =
  wire.decode(bytes, 6, 518, value)

## @brief Complete abb_robot_msgs/SetRAPIDStringRequest value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 16..720 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsSetRAPIDStringRequest* = object
  ## @brief Original abb_robot_msgs/SetRAPIDStringRequest.path field.
  ## @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_path*: Ros1Abb_robot_msgsRAPIDSymbolPath
  ## @brief Original abb_robot_msgs/SetRAPIDStringRequest.value field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_value*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSetRAPIDStringRequestMinimumWireBytes* = 16
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSetRAPIDStringRequestMaximumWireBytes* = 720
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsSetRAPIDStringRequestCodecIdentity* = "UWVMROS1_e06839324f8abfa8780b683386f87bab1ec04f1e6463e63c0599f5c2f8a75f0c"
## @brief Encode every field of complete abb_robot_msgs/SetRAPIDStringRequest.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsSetRAPIDStringRequest; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 720, written)
## @brief Decode every field of complete abb_robot_msgs/SetRAPIDStringRequest.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsSetRAPIDStringRequest*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsSetRAPIDStringRequest): uint32 =
  wire.decode(bytes, 16, 720, value)

## @brief Complete abb_robot_msgs/SetRAPIDStringResponse value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsSetRAPIDStringResponse* = object
  ## @brief Original abb_robot_msgs/SetRAPIDStringResponse.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/SetRAPIDStringResponse.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSetRAPIDStringResponseMinimumWireBytes* = 6
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSetRAPIDStringResponseMaximumWireBytes* = 518
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsSetRAPIDStringResponseCodecIdentity* = "UWVMROS1_e175bdff5a150722b8c50cf2e1c0f28a99289a0b148339efdee4b034ea3b96b4"
## @brief Encode every field of complete abb_robot_msgs/SetRAPIDStringResponse.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsSetRAPIDStringResponse; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 518, written)
## @brief Decode every field of complete abb_robot_msgs/SetRAPIDStringResponse.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsSetRAPIDStringResponse*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsSetRAPIDStringResponse): uint32 =
  wire.decode(bytes, 6, 518, value)

## @brief Complete abb_robot_msgs/SetRAPIDSymbolRequest value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 16..720 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsSetRAPIDSymbolRequest* = object
  ## @brief Original abb_robot_msgs/SetRAPIDSymbolRequest.path field.
  ## @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_path*: Ros1Abb_robot_msgsRAPIDSymbolPath
  ## @brief Original abb_robot_msgs/SetRAPIDSymbolRequest.value field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_value*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSetRAPIDSymbolRequestMinimumWireBytes* = 16
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSetRAPIDSymbolRequestMaximumWireBytes* = 720
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsSetRAPIDSymbolRequestCodecIdentity* = "UWVMROS1_0654a5a8e5ec42f4feab54b086a008e02a74d44df65d2fcf60f007736e3fec7d"
## @brief Encode every field of complete abb_robot_msgs/SetRAPIDSymbolRequest.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsSetRAPIDSymbolRequest; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 720, written)
## @brief Decode every field of complete abb_robot_msgs/SetRAPIDSymbolRequest.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsSetRAPIDSymbolRequest*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsSetRAPIDSymbolRequest): uint32 =
  wire.decode(bytes, 16, 720, value)

## @brief Complete abb_robot_msgs/SetRAPIDSymbolResponse value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsSetRAPIDSymbolResponse* = object
  ## @brief Original abb_robot_msgs/SetRAPIDSymbolResponse.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/SetRAPIDSymbolResponse.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSetRAPIDSymbolResponseMinimumWireBytes* = 6
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSetRAPIDSymbolResponseMaximumWireBytes* = 518
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsSetRAPIDSymbolResponseCodecIdentity* = "UWVMROS1_a4ca0a8821337d1f16ba1f2ad2b232aceaba419308ca03b27f43dac427a32846"
## @brief Encode every field of complete abb_robot_msgs/SetRAPIDSymbolResponse.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsSetRAPIDSymbolResponse; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 518, written)
## @brief Decode every field of complete abb_robot_msgs/SetRAPIDSymbolResponse.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsSetRAPIDSymbolResponse*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsSetRAPIDSymbolResponse): uint32 =
  wire.decode(bytes, 6, 518, value)

## @brief Complete abb_robot_msgs/SetSpeedRatioRequest value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 1..1 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsSetSpeedRatioRequest* = object
  ## @brief Original abb_robot_msgs/SetSpeedRatioRequest.speed_ratio field.
  ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_speed_ratio*: uint8
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSetSpeedRatioRequestMinimumWireBytes* = 1
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSetSpeedRatioRequestMaximumWireBytes* = 1
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsSetSpeedRatioRequestCodecIdentity* = "UWVMROS1_a6ac368d243d488901b03d5e4303600d5f0eaf62150801103e5f5f9c0863fab5"
## @brief Encode every field of complete abb_robot_msgs/SetSpeedRatioRequest.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsSetSpeedRatioRequest; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1, written)
## @brief Decode every field of complete abb_robot_msgs/SetSpeedRatioRequest.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsSetSpeedRatioRequest*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsSetSpeedRatioRequest): uint32 =
  wire.decode(bytes, 1, 1, value)

## @brief Complete abb_robot_msgs/SetSpeedRatioResponse value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsSetSpeedRatioResponse* = object
  ## @brief Original abb_robot_msgs/SetSpeedRatioResponse.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/SetSpeedRatioResponse.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSetSpeedRatioResponseMinimumWireBytes* = 6
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSetSpeedRatioResponseMaximumWireBytes* = 518
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsSetSpeedRatioResponseCodecIdentity* = "UWVMROS1_9775dc1029993d1dfdf5f3080e6ae4262177ba96cdc0fbe9851dc4fea16c70d8"
## @brief Encode every field of complete abb_robot_msgs/SetSpeedRatioResponse.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsSetSpeedRatioResponse; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 518, written)
## @brief Decode every field of complete abb_robot_msgs/SetSpeedRatioResponse.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsSetSpeedRatioResponse*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsSetSpeedRatioResponse): uint32 =
  wire.decode(bytes, 6, 518, value)

## @brief Complete abb_robot_msgs/SystemState value.
## @details Retain all 6 original fields and 0 constants. Canonical extent 27..2331 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsSystemState* = object
  ## @brief Original abb_robot_msgs/SystemState.header field.
  ## @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
  ## order. Backing storage belongs to this value; constructing or copying it creates no native ROS
  ## owner.
  field_header*: Ros1Std_msgsHeader
  ## @brief Original abb_robot_msgs/SystemState.motors_on field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_motors_on*: bool
  ## @brief Original abb_robot_msgs/SystemState.auto_mode field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_auto_mode*: bool
  ## @brief Original abb_robot_msgs/SystemState.rapid_running field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_rapid_running*: bool
  ## @brief Original abb_robot_msgs/SystemState.rapid_tasks field.
  ## @details Original type abb_robot_msgs/RAPIDTaskState. Shape sequence; bound/count 16 elements.
  ## Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  ## value; constructing or copying it creates no native ROS owner.
  field_rapid_tasks*: NativeSequence[Ros1Abb_robot_msgsRAPIDTaskState, 16]
  ## @brief Original abb_robot_msgs/SystemState.mechanical_units field.
  ## @details Original type abb_robot_msgs/MechanicalUnitState. Shape sequence; bound/count 16
  ## elements. Preserve declared units, frame, signedness and field order. Backing storage belongs
  ## to this value; constructing or copying it creates no native ROS owner.
  field_mechanical_units*: NativeSequence[Ros1Abb_robot_msgsMechanicalUnitState, 16]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSystemStateMinimumWireBytes* = 27
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsSystemStateMaximumWireBytes* = 2331
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsSystemStateCodecIdentity* = "UWVMROS1_b57aa1fdf098aa78c51a96bd2978e02f97cbae67148c0028557d2a3e1e8630f2"
## @brief Encode every field of complete abb_robot_msgs/SystemState.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsSystemState; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 2331, written)
## @brief Decode every field of complete abb_robot_msgs/SystemState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsSystemState*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsSystemState): uint32 =
  wire.decode(bytes, 27, 2331, value)

## @brief Complete abb_robot_msgs/TriggerWithResultCodeRequest value.
## @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsTriggerWithResultCodeRequest* = object
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsTriggerWithResultCodeRequestMinimumWireBytes* = 0
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsTriggerWithResultCodeRequestMaximumWireBytes* = 0
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsTriggerWithResultCodeRequestCodecIdentity* = "UWVMROS1_999f63504788e522f7d0108a895cf35cd101e9a50856e480ae9edabf791bcf94"
## @brief Encode every field of complete abb_robot_msgs/TriggerWithResultCodeRequest.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsTriggerWithResultCodeRequest; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 0, written)
## @brief Decode every field of complete abb_robot_msgs/TriggerWithResultCodeRequest.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsTriggerWithResultCodeRequest*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsTriggerWithResultCodeRequest): uint32 =
  wire.decode(bytes, 0, 0, value)

## @brief Complete abb_robot_msgs/TriggerWithResultCodeResponse value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Abb_robot_msgsTriggerWithResultCodeResponse* = object
  ## @brief Original abb_robot_msgs/TriggerWithResultCodeResponse.result_code field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint16
  ## @brief Original abb_robot_msgs/TriggerWithResultCodeResponse.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsTriggerWithResultCodeResponseMinimumWireBytes* = 6
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Abb_robot_msgsTriggerWithResultCodeResponseMaximumWireBytes* = 518
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Abb_robot_msgsTriggerWithResultCodeResponseCodecIdentity* = "UWVMROS1_4ef5c987592e849766b82b7fd99a65b7a1e17605f3e3341c99803181887967ff"
## @brief Encode every field of complete abb_robot_msgs/TriggerWithResultCodeResponse.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Abb_robot_msgsTriggerWithResultCodeResponse; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 518, written)
## @brief Decode every field of complete abb_robot_msgs/TriggerWithResultCodeResponse.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Abb_robot_msgsTriggerWithResultCodeResponse*(bytes: openArray[byte]; value: var Ros1Abb_robot_msgsTriggerWithResultCodeResponse): uint32 =
  wire.decode(bytes, 6, 518, value)

## @brief Complete duration value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Duration* = object
  ## @brief Original duration.sec field.
  ## @details Original type int32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_sec*: int32
  ## @brief Original duration.nsec field.
  ## @details Original type int32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_nsec*: int32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1DurationMinimumWireBytes* = 8
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1DurationMaximumWireBytes* = 8
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1DurationCodecIdentity* = "UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8"
## @brief Validate the original complete time-domain invariant.
## @details No clock read, unit conversion or normalization is performed.
## @param value Complete immutable owned record.
## @return Zero or canonical error 22.
proc validate*(value: Ros1Duration): uint32 =
  if value.field_nsec >= 1000000000 or value.field_nsec < 0: 22'u32 else: 0'u32
## @brief Encode every field of complete duration.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Duration; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 8, written)
## @brief Decode every field of complete duration.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Duration*(bytes: openArray[byte]; value: var Ros1Duration): uint32 =
  wire.decode(bytes, 8, 8, value)

## @brief Complete trajectory_msgs/JointTrajectoryPoint value.
## @details Retain all 5 original fields and 0 constants. Canonical extent 24..408 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Trajectory_msgsJointTrajectoryPoint* = object
  ## @brief Original trajectory_msgs/JointTrajectoryPoint.positions field.
  ## @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
  ## or copying it creates no native ROS owner.
  field_positions*: NativeSequence[float64, 12]
  ## @brief Original trajectory_msgs/JointTrajectoryPoint.velocities field.
  ## @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
  ## or copying it creates no native ROS owner.
  field_velocities*: NativeSequence[float64, 12]
  ## @brief Original trajectory_msgs/JointTrajectoryPoint.accelerations field.
  ## @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
  ## or copying it creates no native ROS owner.
  field_accelerations*: NativeSequence[float64, 12]
  ## @brief Original trajectory_msgs/JointTrajectoryPoint.effort field.
  ## @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
  ## or copying it creates no native ROS owner.
  field_effort*: NativeSequence[float64, 12]
  ## @brief Original trajectory_msgs/JointTrajectoryPoint.time_from_start field.
  ## @details Original type duration. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_time_from_start*: Ros1Duration
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Trajectory_msgsJointTrajectoryPointMinimumWireBytes* = 24
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Trajectory_msgsJointTrajectoryPointMaximumWireBytes* = 408
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Trajectory_msgsJointTrajectoryPointCodecIdentity* = "UWVMROS1_9773572fff8616235c4d7e23fccbe01f28dcfa62c7c80323a65c8c305feba3c5"
## @brief Encode every field of complete trajectory_msgs/JointTrajectoryPoint.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Trajectory_msgsJointTrajectoryPoint; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 408, written)
## @brief Decode every field of complete trajectory_msgs/JointTrajectoryPoint.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Trajectory_msgsJointTrajectoryPoint*(bytes: openArray[byte]; value: var Ros1Trajectory_msgsJointTrajectoryPoint): uint32 =
  wire.decode(bytes, 24, 408, value)

## @brief Complete trajectory_msgs/JointTrajectory value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 24..4168 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Trajectory_msgsJointTrajectory* = object
  ## @brief Original trajectory_msgs/JointTrajectory.header field.
  ## @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
  ## order. Backing storage belongs to this value; constructing or copying it creates no native ROS
  ## owner.
  field_header*: Ros1Std_msgsHeader
  ## @brief Original trajectory_msgs/JointTrajectory.joint_names field.
  ## @details Original type string. String bound 64 bytes; domain utf8. Shape sequence; bound/count
  ## 12 elements. Preserve declared units, frame, signedness and field order. Backing storage
  ## belongs to this value; constructing or copying it creates no native ROS owner.
  field_joint_names*: NativeSequence[NativeText[64, false], 12]
  ## @brief Original trajectory_msgs/JointTrajectory.points field.
  ## @details Original type trajectory_msgs/JointTrajectoryPoint. Shape sequence; bound/count 8
  ## elements. Preserve declared units, frame, signedness and field order. Backing storage belongs
  ## to this value; constructing or copying it creates no native ROS owner.
  field_points*: NativeSequence[Ros1Trajectory_msgsJointTrajectoryPoint, 8]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Trajectory_msgsJointTrajectoryMinimumWireBytes* = 24
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Trajectory_msgsJointTrajectoryMaximumWireBytes* = 4168
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Trajectory_msgsJointTrajectoryCodecIdentity* = "UWVMROS1_079e6c432f0a858d6bd47c87aaf353a8b0676706809e0f984705b1a688de282b"
## @brief Encode every field of complete trajectory_msgs/JointTrajectory.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Trajectory_msgsJointTrajectory; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 4168, written)
## @brief Decode every field of complete trajectory_msgs/JointTrajectory.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Trajectory_msgsJointTrajectory*(bytes: openArray[byte]; value: var Ros1Trajectory_msgsJointTrajectory): uint32 =
  wire.decode(bytes, 24, 4168, value)

## @brief Complete control_msgs/JointTolerance value.
## @details Retain all 4 original fields and 0 constants. Canonical extent 28..92 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Control_msgsJointTolerance* = object
  ## @brief Original control_msgs/JointTolerance.name field.
  ## @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_name*: NativeText[64, false]
  ## @brief Original control_msgs/JointTolerance.position field.
  ## @details Original type float64. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_position*: float64
  ## @brief Original control_msgs/JointTolerance.velocity field.
  ## @details Original type float64. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_velocity*: float64
  ## @brief Original control_msgs/JointTolerance.acceleration field.
  ## @details Original type float64. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_acceleration*: float64
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Control_msgsJointToleranceMinimumWireBytes* = 28
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Control_msgsJointToleranceMaximumWireBytes* = 92
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Control_msgsJointToleranceCodecIdentity* = "UWVMROS1_c9f71f98726d4a6621dcc8db96a394a24941a79d9041c8ad7a07724ee64d3c88"
## @brief Encode every field of complete control_msgs/JointTolerance.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Control_msgsJointTolerance; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 92, written)
## @brief Decode every field of complete control_msgs/JointTolerance.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Control_msgsJointTolerance*(bytes: openArray[byte]; value: var Ros1Control_msgsJointTolerance): uint32 =
  wire.decode(bytes, 28, 92, value)

## @brief Complete control_msgs/FollowJointTrajectoryGoal value.
## @details Retain all 4 original fields and 0 constants. Canonical extent 40..6392 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Control_msgsFollowJointTrajectoryGoal* = object
  ## @brief Original control_msgs/FollowJointTrajectoryGoal.trajectory field.
  ## @details Original type trajectory_msgs/JointTrajectory. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_trajectory*: Ros1Trajectory_msgsJointTrajectory
  ## @brief Original control_msgs/FollowJointTrajectoryGoal.path_tolerance field.
  ## @details Original type control_msgs/JointTolerance. Shape sequence; bound/count 12 elements.
  ## Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  ## value; constructing or copying it creates no native ROS owner.
  field_path_tolerance*: NativeSequence[Ros1Control_msgsJointTolerance, 12]
  ## @brief Original control_msgs/FollowJointTrajectoryGoal.goal_tolerance field.
  ## @details Original type control_msgs/JointTolerance. Shape sequence; bound/count 12 elements.
  ## Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  ## value; constructing or copying it creates no native ROS owner.
  field_goal_tolerance*: NativeSequence[Ros1Control_msgsJointTolerance, 12]
  ## @brief Original control_msgs/FollowJointTrajectoryGoal.goal_time_tolerance field.
  ## @details Original type duration. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_goal_time_tolerance*: Ros1Duration
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Control_msgsFollowJointTrajectoryGoalMinimumWireBytes* = 40
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Control_msgsFollowJointTrajectoryGoalMaximumWireBytes* = 6392
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Control_msgsFollowJointTrajectoryGoalCodecIdentity* = "UWVMROS1_e9fda6f9e732450f2cf1af046ceb67815e6e1a22105eda2fee38f8f470252d40"
## @brief Encode every field of complete control_msgs/FollowJointTrajectoryGoal.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Control_msgsFollowJointTrajectoryGoal; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 6392, written)
## @brief Decode every field of complete control_msgs/FollowJointTrajectoryGoal.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Control_msgsFollowJointTrajectoryGoal*(bytes: openArray[byte]; value: var Ros1Control_msgsFollowJointTrajectoryGoal): uint32 =
  wire.decode(bytes, 40, 6392, value)

## @brief Complete control_msgs/FollowJointTrajectoryResult value.
## @details Retain all 2 original fields and 6 constants. Canonical extent 8..4104 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Control_msgsFollowJointTrajectoryResult* = object
  ## @brief Original control_msgs/FollowJointTrajectoryResult.error_code field.
  ## @details Original type int32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_error_code*: int32
  ## @brief Original control_msgs/FollowJointTrajectoryResult.error_string field.
  ## @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_error_string*: NativeText[4096, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Control_msgsFollowJointTrajectoryResultMinimumWireBytes* = 8
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Control_msgsFollowJointTrajectoryResultMaximumWireBytes* = 4104
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Control_msgsFollowJointTrajectoryResultCodecIdentity* = "UWVMROS1_71da832be83c08804668aa63576768bbe831f21f5f270cdc8d851b30d2fc4281"
## @brief Original control_msgs/FollowJointTrajectoryResult.SUCCESSFUL constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Control_msgsFollowJointTrajectoryResult_SUCCESSFUL*: int32 = 0'i32
## @brief Original control_msgs/FollowJointTrajectoryResult.INVALID_GOAL constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Control_msgsFollowJointTrajectoryResult_INVALID_GOAL*: int32 = -1'i32
## @brief Original control_msgs/FollowJointTrajectoryResult.INVALID_JOINTS constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Control_msgsFollowJointTrajectoryResult_INVALID_JOINTS*: int32 = -2'i32
## @brief Original control_msgs/FollowJointTrajectoryResult.OLD_HEADER_TIMESTAMP constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Control_msgsFollowJointTrajectoryResult_OLD_HEADER_TIMESTAMP*: int32 = -3'i32
## @brief Original control_msgs/FollowJointTrajectoryResult.PATH_TOLERANCE_VIOLATED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Control_msgsFollowJointTrajectoryResult_PATH_TOLERANCE_VIOLATED*: int32 = -4'i32
## @brief Original control_msgs/FollowJointTrajectoryResult.GOAL_TOLERANCE_VIOLATED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Control_msgsFollowJointTrajectoryResult_GOAL_TOLERANCE_VIOLATED*: int32 = -5'i32
## @brief Encode every field of complete control_msgs/FollowJointTrajectoryResult.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Control_msgsFollowJointTrajectoryResult; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 4104, written)
## @brief Decode every field of complete control_msgs/FollowJointTrajectoryResult.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Control_msgsFollowJointTrajectoryResult*(bytes: openArray[byte]; value: var Ros1Control_msgsFollowJointTrajectoryResult): uint32 =
  wire.decode(bytes, 8, 4104, value)

## @brief Complete control_msgs/FollowJointTrajectoryFeedback value.
## @details Retain all 5 original fields and 0 constants. Canonical extent 92..2124 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Control_msgsFollowJointTrajectoryFeedback* = object
  ## @brief Original control_msgs/FollowJointTrajectoryFeedback.header field.
  ## @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
  ## order. Backing storage belongs to this value; constructing or copying it creates no native ROS
  ## owner.
  field_header*: Ros1Std_msgsHeader
  ## @brief Original control_msgs/FollowJointTrajectoryFeedback.joint_names field.
  ## @details Original type string. String bound 64 bytes; domain utf8. Shape sequence; bound/count
  ## 12 elements. Preserve declared units, frame, signedness and field order. Backing storage
  ## belongs to this value; constructing or copying it creates no native ROS owner.
  field_joint_names*: NativeSequence[NativeText[64, false], 12]
  ## @brief Original control_msgs/FollowJointTrajectoryFeedback.desired field.
  ## @details Original type trajectory_msgs/JointTrajectoryPoint. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_desired*: Ros1Trajectory_msgsJointTrajectoryPoint
  ## @brief Original control_msgs/FollowJointTrajectoryFeedback.actual field.
  ## @details Original type trajectory_msgs/JointTrajectoryPoint. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_actual*: Ros1Trajectory_msgsJointTrajectoryPoint
  ## @brief Original control_msgs/FollowJointTrajectoryFeedback.error field.
  ## @details Original type trajectory_msgs/JointTrajectoryPoint. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_error*: Ros1Trajectory_msgsJointTrajectoryPoint
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Control_msgsFollowJointTrajectoryFeedbackMinimumWireBytes* = 92
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Control_msgsFollowJointTrajectoryFeedbackMaximumWireBytes* = 2124
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Control_msgsFollowJointTrajectoryFeedbackCodecIdentity* = "UWVMROS1_a1ad5a1f8a00b60f97d06209737993bd395d83d1a008705d65193b63933b62a8"
## @brief Encode every field of complete control_msgs/FollowJointTrajectoryFeedback.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Control_msgsFollowJointTrajectoryFeedback; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 2124, written)
## @brief Decode every field of complete control_msgs/FollowJointTrajectoryFeedback.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Control_msgsFollowJointTrajectoryFeedback*(bytes: openArray[byte]; value: var Ros1Control_msgsFollowJointTrajectoryFeedback): uint32 =
  wire.decode(bytes, 92, 2124, value)

## @brief Complete sensor_msgs/JointState value.
## @details Retain all 5 original fields and 0 constants. Canonical extent 32..1200 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Sensor_msgsJointState* = object
  ## @brief Original sensor_msgs/JointState.header field.
  ## @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
  ## order. Backing storage belongs to this value; constructing or copying it creates no native ROS
  ## owner.
  field_header*: Ros1Std_msgsHeader
  ## @brief Original sensor_msgs/JointState.name field.
  ## @details Original type string. String bound 64 bytes; domain utf8. Shape sequence; bound/count
  ## 12 elements. Preserve declared units, frame, signedness and field order. Backing storage
  ## belongs to this value; constructing or copying it creates no native ROS owner.
  field_name*: NativeSequence[NativeText[64, false], 12]
  ## @brief Original sensor_msgs/JointState.position field.
  ## @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
  ## or copying it creates no native ROS owner.
  field_position*: NativeSequence[float64, 12]
  ## @brief Original sensor_msgs/JointState.velocity field.
  ## @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
  ## or copying it creates no native ROS owner.
  field_velocity*: NativeSequence[float64, 12]
  ## @brief Original sensor_msgs/JointState.effort field.
  ## @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
  ## or copying it creates no native ROS owner.
  field_effort*: NativeSequence[float64, 12]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Sensor_msgsJointStateMinimumWireBytes* = 32
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Sensor_msgsJointStateMaximumWireBytes* = 1200
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Sensor_msgsJointStateCodecIdentity* = "UWVMROS1_8d1bb9c4903dd4b070a5ab157b3590815722d6b574d610c9b9fb5ead8be7a057"
## @brief Encode every field of complete sensor_msgs/JointState.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Sensor_msgsJointState; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1200, written)
## @brief Decode every field of complete sensor_msgs/JointState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Sensor_msgsJointState*(bytes: openArray[byte]; value: var Ros1Sensor_msgsJointState): uint32 =
  wire.decode(bytes, 32, 1200, value)


# DEFAULT_FACTORIES_BEGIN

proc initRos1Abb_egm_msgsEGMChannelState*(value: var Ros1Abb_egm_msgsEGMChannelState): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_egm_msgsEGMChannelState(bytes, value)

proc initRos1Time*(value: var Ros1Time): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Time(bytes, value)

proc initRos1Std_msgsHeader*(value: var Ros1Std_msgsHeader): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Std_msgsHeader(bytes, value)

proc initRos1Abb_egm_msgsEGMState*(value: var Ros1Abb_egm_msgsEGMState): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos1Abb_egm_msgsEGMState(bytes, value)

proc initRos1Abb_rapid_msgsConfData*(value: var Ros1Abb_rapid_msgsConfData): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_rapid_msgsConfData(bytes, value)

proc initRos1Abb_rapid_msgsExtJoint*(value: var Ros1Abb_rapid_msgsExtJoint): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos1Abb_rapid_msgsExtJoint(bytes, value)

proc initRos1Abb_rapid_msgsRobJoint*(value: var Ros1Abb_rapid_msgsRobJoint): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos1Abb_rapid_msgsRobJoint(bytes, value)

proc initRos1Abb_rapid_msgsJointTarget*(value: var Ros1Abb_rapid_msgsJointTarget): uint32 =
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
  decodeRos1Abb_rapid_msgsJointTarget(bytes, value)

proc initRos1Abb_rapid_msgsPos*(value: var Ros1Abb_rapid_msgsPos): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_rapid_msgsPos(bytes, value)

proc initRos1Abb_rapid_msgsOrient*(value: var Ros1Abb_rapid_msgsOrient): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_rapid_msgsOrient(bytes, value)

proc initRos1Abb_rapid_msgsLoadData*(value: var Ros1Abb_rapid_msgsLoadData): uint32 =
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
  decodeRos1Abb_rapid_msgsLoadData(bytes, value)

proc initRos1Abb_rapid_msgsPose*(value: var Ros1Abb_rapid_msgsPose): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos1Abb_rapid_msgsPose(bytes, value)

proc initRos1Abb_rapid_msgsRobTarget*(value: var Ros1Abb_rapid_msgsRobTarget): uint32 =
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
  decodeRos1Abb_rapid_msgsRobTarget(bytes, value)

proc initRos1Abb_rapid_msgsToolData*(value: var Ros1Abb_rapid_msgsToolData): uint32 =
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
  decodeRos1Abb_rapid_msgsToolData(bytes, value)

proc initRos1Abb_rapid_msgsWObjData*(value: var Ros1Abb_rapid_msgsWObjData): uint32 =
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
  decodeRos1Abb_rapid_msgsWObjData(bytes, value)

proc initRos1Abb_rapid_sm_addin_msgsEGMActivateSettings*(value: var Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings): uint32 =
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
  decodeRos1Abb_rapid_sm_addin_msgsEGMActivateSettings(bytes, value)

proc initRos1Abb_rapid_sm_addin_msgsEGMRunSettings*(value: var Ros1Abb_rapid_sm_addin_msgsEGMRunSettings): uint32 =
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
  decodeRos1Abb_rapid_sm_addin_msgsEGMRunSettings(bytes, value)

proc initRos1Abb_rapid_sm_addin_msgsEGMSetupSettings*(value: var Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_rapid_sm_addin_msgsEGMSetupSettings(bytes, value)

proc initRos1Abb_rapid_sm_addin_msgsEGMStopSettings*(value: var Ros1Abb_rapid_sm_addin_msgsEGMStopSettings): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_rapid_sm_addin_msgsEGMStopSettings(bytes, value)

proc initRos1Abb_rapid_sm_addin_msgsEGMSettings*(value: var Ros1Abb_rapid_sm_addin_msgsEGMSettings): uint32 =
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
  decodeRos1Abb_rapid_sm_addin_msgsEGMSettings(bytes, value)

proc initRos1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest*(value: var Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest(bytes, value)

proc initRos1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse*(value: var Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse): uint32 =
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
  decodeRos1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse(bytes, value)

proc initRos1Abb_rapid_sm_addin_msgsStateMachineState*(value: var Ros1Abb_rapid_sm_addin_msgsStateMachineState): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_rapid_sm_addin_msgsStateMachineState(bytes, value)

proc initRos1Abb_rapid_sm_addin_msgsRuntimeState*(value: var Ros1Abb_rapid_sm_addin_msgsRuntimeState): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos1Abb_rapid_sm_addin_msgsRuntimeState(bytes, value)

proc initRos1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest*(value: var Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest): uint32 =
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
  decodeRos1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest(bytes, value)

proc initRos1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse*(value: var Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse(bytes, value)

proc initRos1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest*(value: var Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest(bytes, value)

proc initRos1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse*(value: var Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse(bytes, value)

proc initRos1Abb_rapid_sm_addin_msgsSetSGCommandRequest*(value: var Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_rapid_sm_addin_msgsSetSGCommandRequest(bytes, value)

proc initRos1Abb_rapid_sm_addin_msgsSetSGCommandResponse*(value: var Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_rapid_sm_addin_msgsSetSGCommandResponse(bytes, value)

proc initRos1Abb_robot_msgsGetFileContentsRequest*(value: var Ros1Abb_robot_msgsGetFileContentsRequest): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsGetFileContentsRequest(bytes, value)

proc initRos1Abb_robot_msgsGetFileContentsResponse*(value: var Ros1Abb_robot_msgsGetFileContentsResponse): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsGetFileContentsResponse(bytes, value)

proc initRos1Abb_robot_msgsGetIOSignalRequest*(value: var Ros1Abb_robot_msgsGetIOSignalRequest): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsGetIOSignalRequest(bytes, value)

proc initRos1Abb_robot_msgsGetIOSignalResponse*(value: var Ros1Abb_robot_msgsGetIOSignalResponse): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsGetIOSignalResponse(bytes, value)

proc initRos1Abb_robot_msgsRAPIDSymbolPath*(value: var Ros1Abb_robot_msgsRAPIDSymbolPath): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsRAPIDSymbolPath(bytes, value)

proc initRos1Abb_robot_msgsGetRAPIDBoolRequest*(value: var Ros1Abb_robot_msgsGetRAPIDBoolRequest): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsGetRAPIDBoolRequest(bytes, value)

proc initRos1Abb_robot_msgsGetRAPIDBoolResponse*(value: var Ros1Abb_robot_msgsGetRAPIDBoolResponse): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsGetRAPIDBoolResponse(bytes, value)

proc initRos1Abb_robot_msgsGetRAPIDDnumRequest*(value: var Ros1Abb_robot_msgsGetRAPIDDnumRequest): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsGetRAPIDDnumRequest(bytes, value)

proc initRos1Abb_robot_msgsGetRAPIDDnumResponse*(value: var Ros1Abb_robot_msgsGetRAPIDDnumResponse): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsGetRAPIDDnumResponse(bytes, value)

proc initRos1Abb_robot_msgsGetRAPIDNumRequest*(value: var Ros1Abb_robot_msgsGetRAPIDNumRequest): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsGetRAPIDNumRequest(bytes, value)

proc initRos1Abb_robot_msgsGetRAPIDNumResponse*(value: var Ros1Abb_robot_msgsGetRAPIDNumResponse): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsGetRAPIDNumResponse(bytes, value)

proc initRos1Abb_robot_msgsGetRAPIDStringRequest*(value: var Ros1Abb_robot_msgsGetRAPIDStringRequest): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsGetRAPIDStringRequest(bytes, value)

proc initRos1Abb_robot_msgsGetRAPIDStringResponse*(value: var Ros1Abb_robot_msgsGetRAPIDStringResponse): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsGetRAPIDStringResponse(bytes, value)

proc initRos1Abb_robot_msgsGetRAPIDSymbolRequest*(value: var Ros1Abb_robot_msgsGetRAPIDSymbolRequest): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsGetRAPIDSymbolRequest(bytes, value)

proc initRos1Abb_robot_msgsGetRAPIDSymbolResponse*(value: var Ros1Abb_robot_msgsGetRAPIDSymbolResponse): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsGetRAPIDSymbolResponse(bytes, value)

proc initRos1Abb_robot_msgsGetRobotControllerDescriptionRequest*(value: var Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes: array[0, byte] = []
  decodeRos1Abb_robot_msgsGetRobotControllerDescriptionRequest(bytes, value)

proc initRos1Abb_robot_msgsGetRobotControllerDescriptionResponse*(value: var Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsGetRobotControllerDescriptionResponse(bytes, value)

proc initRos1Abb_robot_msgsGetSpeedRatioRequest*(value: var Ros1Abb_robot_msgsGetSpeedRatioRequest): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes: array[0, byte] = []
  decodeRos1Abb_robot_msgsGetSpeedRatioRequest(bytes, value)

proc initRos1Abb_robot_msgsGetSpeedRatioResponse*(value: var Ros1Abb_robot_msgsGetSpeedRatioResponse): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsGetSpeedRatioResponse(bytes, value)

proc initRos1Abb_robot_msgsMechanicalUnitState*(value: var Ros1Abb_robot_msgsMechanicalUnitState): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsMechanicalUnitState(bytes, value)

proc initRos1Abb_robot_msgsRAPIDTaskState*(value: var Ros1Abb_robot_msgsRAPIDTaskState): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsRAPIDTaskState(bytes, value)

proc initRos1Abb_robot_msgsServiceResponses*(value: var Ros1Abb_robot_msgsServiceResponses): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes: array[0, byte] = []
  decodeRos1Abb_robot_msgsServiceResponses(bytes, value)

proc initRos1Abb_robot_msgsSetFileContentsRequest*(value: var Ros1Abb_robot_msgsSetFileContentsRequest): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsSetFileContentsRequest(bytes, value)

proc initRos1Abb_robot_msgsSetFileContentsResponse*(value: var Ros1Abb_robot_msgsSetFileContentsResponse): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsSetFileContentsResponse(bytes, value)

proc initRos1Abb_robot_msgsSetIOSignalRequest*(value: var Ros1Abb_robot_msgsSetIOSignalRequest): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsSetIOSignalRequest(bytes, value)

proc initRos1Abb_robot_msgsSetIOSignalResponse*(value: var Ros1Abb_robot_msgsSetIOSignalResponse): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsSetIOSignalResponse(bytes, value)

proc initRos1Abb_robot_msgsSetRAPIDBoolRequest*(value: var Ros1Abb_robot_msgsSetRAPIDBoolRequest): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsSetRAPIDBoolRequest(bytes, value)

proc initRos1Abb_robot_msgsSetRAPIDBoolResponse*(value: var Ros1Abb_robot_msgsSetRAPIDBoolResponse): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsSetRAPIDBoolResponse(bytes, value)

proc initRos1Abb_robot_msgsSetRAPIDDnumRequest*(value: var Ros1Abb_robot_msgsSetRAPIDDnumRequest): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos1Abb_robot_msgsSetRAPIDDnumRequest(bytes, value)

proc initRos1Abb_robot_msgsSetRAPIDDnumResponse*(value: var Ros1Abb_robot_msgsSetRAPIDDnumResponse): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsSetRAPIDDnumResponse(bytes, value)

proc initRos1Abb_robot_msgsSetRAPIDNumRequest*(value: var Ros1Abb_robot_msgsSetRAPIDNumRequest): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsSetRAPIDNumRequest(bytes, value)

proc initRos1Abb_robot_msgsSetRAPIDNumResponse*(value: var Ros1Abb_robot_msgsSetRAPIDNumResponse): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsSetRAPIDNumResponse(bytes, value)

proc initRos1Abb_robot_msgsSetRAPIDStringRequest*(value: var Ros1Abb_robot_msgsSetRAPIDStringRequest): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsSetRAPIDStringRequest(bytes, value)

proc initRos1Abb_robot_msgsSetRAPIDStringResponse*(value: var Ros1Abb_robot_msgsSetRAPIDStringResponse): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsSetRAPIDStringResponse(bytes, value)

proc initRos1Abb_robot_msgsSetRAPIDSymbolRequest*(value: var Ros1Abb_robot_msgsSetRAPIDSymbolRequest): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsSetRAPIDSymbolRequest(bytes, value)

proc initRos1Abb_robot_msgsSetRAPIDSymbolResponse*(value: var Ros1Abb_robot_msgsSetRAPIDSymbolResponse): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsSetRAPIDSymbolResponse(bytes, value)

proc initRos1Abb_robot_msgsSetSpeedRatioRequest*(value: var Ros1Abb_robot_msgsSetSpeedRatioRequest): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8]
  decodeRos1Abb_robot_msgsSetSpeedRatioRequest(bytes, value)

proc initRos1Abb_robot_msgsSetSpeedRatioResponse*(value: var Ros1Abb_robot_msgsSetSpeedRatioResponse): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsSetSpeedRatioResponse(bytes, value)

proc initRos1Abb_robot_msgsSystemState*(value: var Ros1Abb_robot_msgsSystemState): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8
    ]
  decodeRos1Abb_robot_msgsSystemState(bytes, value)

proc initRos1Abb_robot_msgsTriggerWithResultCodeRequest*(value: var Ros1Abb_robot_msgsTriggerWithResultCodeRequest): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes: array[0, byte] = []
  decodeRos1Abb_robot_msgsTriggerWithResultCodeRequest(bytes, value)

proc initRos1Abb_robot_msgsTriggerWithResultCodeResponse*(value: var Ros1Abb_robot_msgsTriggerWithResultCodeResponse): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Abb_robot_msgsTriggerWithResultCodeResponse(bytes, value)

proc initRos1Duration*(value: var Ros1Duration): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Duration(bytes, value)

proc initRos1Trajectory_msgsJointTrajectoryPoint*(value: var Ros1Trajectory_msgsJointTrajectoryPoint): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos1Trajectory_msgsJointTrajectoryPoint(bytes, value)

proc initRos1Trajectory_msgsJointTrajectory*(value: var Ros1Trajectory_msgsJointTrajectory): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos1Trajectory_msgsJointTrajectory(bytes, value)

proc initRos1Control_msgsJointTolerance*(value: var Ros1Control_msgsJointTolerance): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos1Control_msgsJointTolerance(bytes, value)

proc initRos1Control_msgsFollowJointTrajectoryGoal*(value: var Ros1Control_msgsFollowJointTrajectoryGoal): uint32 =
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
  decodeRos1Control_msgsFollowJointTrajectoryGoal(bytes, value)

proc initRos1Control_msgsFollowJointTrajectoryResult*(value: var Ros1Control_msgsFollowJointTrajectoryResult): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos1Control_msgsFollowJointTrajectoryResult(bytes, value)

proc initRos1Control_msgsFollowJointTrajectoryFeedback*(value: var Ros1Control_msgsFollowJointTrajectoryFeedback): uint32 =
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
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos1Control_msgsFollowJointTrajectoryFeedback(bytes, value)

proc initRos1Sensor_msgsJointState*(value: var Ros1Sensor_msgsJointState): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos1Sensor_msgsJointState(bytes, value)
