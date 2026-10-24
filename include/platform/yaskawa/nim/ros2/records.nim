## @file records.nim
## @brief Complete owned original YASKAWA ROS 2 native records and codecs.
## @details Generated from the admitted source-pinned catalog; no ROS authority is created.
import ros/nim/wire

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

## @brief Complete geometry_msgs/msg/TransformStamped value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 72..648 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Geometry_msgsMsgTransformStamped* = object
  ## @brief Original geometry_msgs/msg/TransformStamped.header field.
  ## @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_header*: Ros2Std_msgsMsgHeader
  ## @brief Original geometry_msgs/msg/TransformStamped.child_frame_id field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_child_frame_id*: NativeText[512, false]
  ## @brief Original geometry_msgs/msg/TransformStamped.transform field.
  ## @details Original type geometry_msgs/msg/Transform. Preserve declared units, frame, signedness
  ## and field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_transform*: Ros2Geometry_msgsMsgTransform
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Geometry_msgsMsgTransformStampedMinimumWireBytes* = 72
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Geometry_msgsMsgTransformStampedMaximumWireBytes* = 648
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Geometry_msgsMsgTransformStampedCodecIdentity* = "UWVMROS1_be553b5a9c73b687cde56ff1c381e3c67168fd2c0366830be3c65382c5bbd792"
## @brief Encode every field of complete geometry_msgs/msg/TransformStamped.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Geometry_msgsMsgTransformStamped; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 648, written)
## @brief Decode every field of complete geometry_msgs/msg/TransformStamped.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Geometry_msgsMsgTransformStamped*(bytes: openArray[byte]; value: var Ros2Geometry_msgsMsgTransformStamped): uint32 =
  wire.decode(bytes, 72, 648, value)

## @brief Complete industrial_msgs/msg/DebugLevel value.
## @details Retain all 1 original fields and 6 constants. Canonical extent 1..1 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Industrial_msgsMsgDebugLevel* = object
  ## @brief Original industrial_msgs/msg/DebugLevel.val field.
  ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_val*: uint8
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsMsgDebugLevelMinimumWireBytes* = 1
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsMsgDebugLevelMaximumWireBytes* = 1
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Industrial_msgsMsgDebugLevelCodecIdentity* = "UWVMROS1_989475cc5d981d8c5ab91fb091235871f7a1c7d87d246eb2250086e6c3c37c79"
## @brief Original industrial_msgs/msg/DebugLevel.DEBUG constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Industrial_msgsMsgDebugLevel_DEBUG*: uint8 = 5'u8
## @brief Original industrial_msgs/msg/DebugLevel.INFO constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Industrial_msgsMsgDebugLevel_INFO*: uint8 = 4'u8
## @brief Original industrial_msgs/msg/DebugLevel.WARN constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Industrial_msgsMsgDebugLevel_WARN*: uint8 = 3'u8
## @brief Original industrial_msgs/msg/DebugLevel.ERROR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Industrial_msgsMsgDebugLevel_ERROR*: uint8 = 2'u8
## @brief Original industrial_msgs/msg/DebugLevel.FATAL constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Industrial_msgsMsgDebugLevel_FATAL*: uint8 = 1'u8
## @brief Original industrial_msgs/msg/DebugLevel.NONE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Industrial_msgsMsgDebugLevel_NONE*: uint8 = 0'u8
## @brief Encode every field of complete industrial_msgs/msg/DebugLevel.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Industrial_msgsMsgDebugLevel; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1, written)
## @brief Decode every field of complete industrial_msgs/msg/DebugLevel.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Industrial_msgsMsgDebugLevel*(bytes: openArray[byte]; value: var Ros2Industrial_msgsMsgDebugLevel): uint32 =
  wire.decode(bytes, 1, 1, value)

## @brief Complete industrial_msgs/msg/DeviceInfo value.
## @details Retain all 5 original fields and 0 constants. Canonical extent 20..2580 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Industrial_msgsMsgDeviceInfo* = object
  ## @brief Original industrial_msgs/msg/DeviceInfo.model field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_model*: NativeText[512, false]
  ## @brief Original industrial_msgs/msg/DeviceInfo.serial_number field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_serial_number*: NativeText[512, false]
  ## @brief Original industrial_msgs/msg/DeviceInfo.hw_version field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_hw_version*: NativeText[512, false]
  ## @brief Original industrial_msgs/msg/DeviceInfo.sw_version field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_sw_version*: NativeText[512, false]
  ## @brief Original industrial_msgs/msg/DeviceInfo.address field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_address*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsMsgDeviceInfoMinimumWireBytes* = 20
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsMsgDeviceInfoMaximumWireBytes* = 2580
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Industrial_msgsMsgDeviceInfoCodecIdentity* = "UWVMROS1_f9a5962800e17495f34dbb73f37373df22f900e528c630497417f78cdecb283b"
## @brief Encode every field of complete industrial_msgs/msg/DeviceInfo.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Industrial_msgsMsgDeviceInfo; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 2580, written)
## @brief Decode every field of complete industrial_msgs/msg/DeviceInfo.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Industrial_msgsMsgDeviceInfo*(bytes: openArray[byte]; value: var Ros2Industrial_msgsMsgDeviceInfo): uint32 =
  wire.decode(bytes, 20, 2580, value)

## @brief Complete industrial_msgs/msg/RobotMode value.
## @details Retain all 1 original fields and 3 constants. Canonical extent 1..1 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Industrial_msgsMsgRobotMode* = object
  ## @brief Original industrial_msgs/msg/RobotMode.val field.
  ## @details Original type int8. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_val*: int8
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsMsgRobotModeMinimumWireBytes* = 1
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsMsgRobotModeMaximumWireBytes* = 1
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Industrial_msgsMsgRobotModeCodecIdentity* = "UWVMROS1_4f9173c5e27815ca33be603b8645a22420bda3ab308962127060d2413d092c4c"
## @brief Original industrial_msgs/msg/RobotMode.UNKNOWN constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Industrial_msgsMsgRobotMode_UNKNOWN*: int8 = -1'i8
## @brief Original industrial_msgs/msg/RobotMode.MANUAL constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Industrial_msgsMsgRobotMode_MANUAL*: int8 = 1'i8
## @brief Original industrial_msgs/msg/RobotMode.AUTO constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Industrial_msgsMsgRobotMode_AUTO*: int8 = 2'i8
## @brief Encode every field of complete industrial_msgs/msg/RobotMode.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Industrial_msgsMsgRobotMode; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1, written)
## @brief Decode every field of complete industrial_msgs/msg/RobotMode.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Industrial_msgsMsgRobotMode*(bytes: openArray[byte]; value: var Ros2Industrial_msgsMsgRobotMode): uint32 =
  wire.decode(bytes, 1, 1, value)

## @brief Complete industrial_msgs/msg/TriState value.
## @details Retain all 1 original fields and 11 constants. Canonical extent 1..1 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Industrial_msgsMsgTriState* = object
  ## @brief Original industrial_msgs/msg/TriState.val field.
  ## @details Original type int8. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_val*: int8
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsMsgTriStateMinimumWireBytes* = 1
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsMsgTriStateMaximumWireBytes* = 1
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Industrial_msgsMsgTriStateCodecIdentity* = "UWVMROS1_b7ae62ce19d642ad46e962ffb50cd76c43c96ac673ac36d690f99c1dd8d2a841"
## @brief Original industrial_msgs/msg/TriState.UNKNOWN constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Industrial_msgsMsgTriState_UNKNOWN*: int8 = -1'i8
## @brief Original industrial_msgs/msg/TriState.TRUE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Industrial_msgsMsgTriState_TRUE*: int8 = 1'i8
## @brief Original industrial_msgs/msg/TriState.ON constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Industrial_msgsMsgTriState_ON*: int8 = 1'i8
## @brief Original industrial_msgs/msg/TriState.ENABLED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Industrial_msgsMsgTriState_ENABLED*: int8 = 1'i8
## @brief Original industrial_msgs/msg/TriState.HIGH constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Industrial_msgsMsgTriState_HIGH*: int8 = 1'i8
## @brief Original industrial_msgs/msg/TriState.CLOSED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Industrial_msgsMsgTriState_CLOSED*: int8 = 1'i8
## @brief Original industrial_msgs/msg/TriState.FALSE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Industrial_msgsMsgTriState_FALSE*: int8 = 0'i8
## @brief Original industrial_msgs/msg/TriState.OFF constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Industrial_msgsMsgTriState_OFF*: int8 = 0'i8
## @brief Original industrial_msgs/msg/TriState.DISABLED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Industrial_msgsMsgTriState_DISABLED*: int8 = 0'i8
## @brief Original industrial_msgs/msg/TriState.LOW constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Industrial_msgsMsgTriState_LOW*: int8 = 0'i8
## @brief Original industrial_msgs/msg/TriState.OPEN constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Industrial_msgsMsgTriState_OPEN*: int8 = 0'i8
## @brief Encode every field of complete industrial_msgs/msg/TriState.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Industrial_msgsMsgTriState; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1, written)
## @brief Decode every field of complete industrial_msgs/msg/TriState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Industrial_msgsMsgTriState*(bytes: openArray[byte]; value: var Ros2Industrial_msgsMsgTriState): uint32 =
  wire.decode(bytes, 1, 1, value)

## @brief Complete industrial_msgs/msg/RobotStatus value.
## @details Retain all 8 original fields and 0 constants. Canonical extent 22..150 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Industrial_msgsMsgRobotStatus* = object
  ## @brief Original industrial_msgs/msg/RobotStatus.header field.
  ## @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  ## field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_header*: Ros2Std_msgsMsgHeader
  ## @brief Original industrial_msgs/msg/RobotStatus.mode field.
  ## @details Original type industrial_msgs/msg/RobotMode. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_mode*: Ros2Industrial_msgsMsgRobotMode
  ## @brief Original industrial_msgs/msg/RobotStatus.e_stopped field.
  ## @details Original type industrial_msgs/msg/TriState. Preserve declared units, frame, signedness
  ## and field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_e_stopped*: Ros2Industrial_msgsMsgTriState
  ## @brief Original industrial_msgs/msg/RobotStatus.drives_powered field.
  ## @details Original type industrial_msgs/msg/TriState. Preserve declared units, frame, signedness
  ## and field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_drives_powered*: Ros2Industrial_msgsMsgTriState
  ## @brief Original industrial_msgs/msg/RobotStatus.motion_possible field.
  ## @details Original type industrial_msgs/msg/TriState. Preserve declared units, frame, signedness
  ## and field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_motion_possible*: Ros2Industrial_msgsMsgTriState
  ## @brief Original industrial_msgs/msg/RobotStatus.in_motion field.
  ## @details Original type industrial_msgs/msg/TriState. Preserve declared units, frame, signedness
  ## and field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_in_motion*: Ros2Industrial_msgsMsgTriState
  ## @brief Original industrial_msgs/msg/RobotStatus.in_error field.
  ## @details Original type industrial_msgs/msg/TriState. Preserve declared units, frame, signedness
  ## and field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_in_error*: Ros2Industrial_msgsMsgTriState
  ## @brief Original industrial_msgs/msg/RobotStatus.error_codes field.
  ## @details Original type int32. Shape sequence; bound/count 16 elements. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_error_codes*: NativeSequence[int32, 16]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsMsgRobotStatusMinimumWireBytes* = 22
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsMsgRobotStatusMaximumWireBytes* = 150
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Industrial_msgsMsgRobotStatusCodecIdentity* = "UWVMROS1_1086f16ba5d614f3d87c3ab195240b5a0683ef490f2e92434e4ea3bdbe7554ba"
## @brief Encode every field of complete industrial_msgs/msg/RobotStatus.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Industrial_msgsMsgRobotStatus; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 150, written)
## @brief Decode every field of complete industrial_msgs/msg/RobotStatus.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Industrial_msgsMsgRobotStatus*(bytes: openArray[byte]; value: var Ros2Industrial_msgsMsgRobotStatus): uint32 =
  wire.decode(bytes, 22, 150, value)

## @brief Complete industrial_msgs/msg/ServiceReturnCode value.
## @details Retain all 1 original fields and 2 constants. Canonical extent 1..1 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Industrial_msgsMsgServiceReturnCode* = object
  ## @brief Original industrial_msgs/msg/ServiceReturnCode.val field.
  ## @details Original type int8. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_val*: int8
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsMsgServiceReturnCodeMinimumWireBytes* = 1
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsMsgServiceReturnCodeMaximumWireBytes* = 1
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Industrial_msgsMsgServiceReturnCodeCodecIdentity* = "UWVMROS1_62eb4415a63d7686f16ea343193238838c78aa8e9b9786a65c92fb227e03d3e5"
## @brief Original industrial_msgs/msg/ServiceReturnCode.SUCCESS constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Industrial_msgsMsgServiceReturnCode_SUCCESS*: int8 = 1'i8
## @brief Original industrial_msgs/msg/ServiceReturnCode.FAILURE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Industrial_msgsMsgServiceReturnCode_FAILURE*: int8 = -1'i8
## @brief Encode every field of complete industrial_msgs/msg/ServiceReturnCode.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Industrial_msgsMsgServiceReturnCode; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1, written)
## @brief Decode every field of complete industrial_msgs/msg/ServiceReturnCode.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Industrial_msgsMsgServiceReturnCode*(bytes: openArray[byte]; value: var Ros2Industrial_msgsMsgServiceReturnCode): uint32 =
  wire.decode(bytes, 1, 1, value)

## @brief Complete industrial_msgs/srv/CmdJointTrajectory_Request value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 20..4164 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Industrial_msgsSrvCmdJointTrajectory_Request* = object
  ## @brief Original industrial_msgs/srv/CmdJointTrajectory_Request.trajectory field.
  ## @details Original type trajectory_msgs/msg/JointTrajectory. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_trajectory*: Ros2Trajectory_msgsMsgJointTrajectory
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsSrvCmdJointTrajectory_RequestMinimumWireBytes* = 20
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsSrvCmdJointTrajectory_RequestMaximumWireBytes* = 4164
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Industrial_msgsSrvCmdJointTrajectory_RequestCodecIdentity* = "UWVMROS1_1def3934b243546a4591b7be1ef2eb27002fbd9d3725302016e3b1846805149d"
## @brief Encode every field of complete industrial_msgs/srv/CmdJointTrajectory_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Industrial_msgsSrvCmdJointTrajectory_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 4164, written)
## @brief Decode every field of complete industrial_msgs/srv/CmdJointTrajectory_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Industrial_msgsSrvCmdJointTrajectory_Request*(bytes: openArray[byte]; value: var Ros2Industrial_msgsSrvCmdJointTrajectory_Request): uint32 =
  wire.decode(bytes, 20, 4164, value)

## @brief Complete industrial_msgs/srv/CmdJointTrajectory_Response value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 1..1 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Industrial_msgsSrvCmdJointTrajectory_Response* = object
  ## @brief Original industrial_msgs/srv/CmdJointTrajectory_Response.code field.
  ## @details Original type industrial_msgs/msg/ServiceReturnCode. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_code*: Ros2Industrial_msgsMsgServiceReturnCode
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsSrvCmdJointTrajectory_ResponseMinimumWireBytes* = 1
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsSrvCmdJointTrajectory_ResponseMaximumWireBytes* = 1
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Industrial_msgsSrvCmdJointTrajectory_ResponseCodecIdentity* = "UWVMROS1_1e4d064ef659e5d1cc73bdd90f82657a16087c96e0f75b632e2be2be884bca8b"
## @brief Encode every field of complete industrial_msgs/srv/CmdJointTrajectory_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Industrial_msgsSrvCmdJointTrajectory_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1, written)
## @brief Decode every field of complete industrial_msgs/srv/CmdJointTrajectory_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Industrial_msgsSrvCmdJointTrajectory_Response*(bytes: openArray[byte]; value: var Ros2Industrial_msgsSrvCmdJointTrajectory_Response): uint32 =
  wire.decode(bytes, 1, 1, value)

## @brief Complete industrial_msgs/srv/GetRobotInfo_Request value.
## @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Industrial_msgsSrvGetRobotInfo_Request* = object
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsSrvGetRobotInfo_RequestMinimumWireBytes* = 0
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsSrvGetRobotInfo_RequestMaximumWireBytes* = 0
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Industrial_msgsSrvGetRobotInfo_RequestCodecIdentity* = "UWVMROS1_688a272f6ee39921013c6c39a7b0b0c4e2cda5119787088234103518ba25c1d2"
## @brief Encode every field of complete industrial_msgs/srv/GetRobotInfo_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Industrial_msgsSrvGetRobotInfo_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 0, written)
## @brief Decode every field of complete industrial_msgs/srv/GetRobotInfo_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Industrial_msgsSrvGetRobotInfo_Request*(bytes: openArray[byte]; value: var Ros2Industrial_msgsSrvGetRobotInfo_Request): uint32 =
  wire.decode(bytes, 0, 0, value)

## @brief Complete industrial_msgs/srv/GetRobotInfo_Response value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 25..32768 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Industrial_msgsSrvGetRobotInfo_Response* = object
  ## @brief Original industrial_msgs/srv/GetRobotInfo_Response.controller field.
  ## @details Original type industrial_msgs/msg/DeviceInfo. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_controller*: Ros2Industrial_msgsMsgDeviceInfo
  ## @brief Original industrial_msgs/srv/GetRobotInfo_Response.robots field.
  ## @details Original type industrial_msgs/msg/DeviceInfo. Shape sequence; bound/count 16 elements.
  ## Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  ## value; constructing or copying it creates no native ROS owner.
  field_robots*: NativeSequence[Ros2Industrial_msgsMsgDeviceInfo, 16]
  ## @brief Original industrial_msgs/srv/GetRobotInfo_Response.code field.
  ## @details Original type industrial_msgs/msg/ServiceReturnCode. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_code*: Ros2Industrial_msgsMsgServiceReturnCode
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsSrvGetRobotInfo_ResponseMinimumWireBytes* = 25
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsSrvGetRobotInfo_ResponseMaximumWireBytes* = 32768
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Industrial_msgsSrvGetRobotInfo_ResponseCodecIdentity* = "UWVMROS1_6d37cdcd8afc918329d7856e682d7fcdae2931832474a9194143c21079ed4152"
## @brief Encode every field of complete industrial_msgs/srv/GetRobotInfo_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Industrial_msgsSrvGetRobotInfo_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 32768, written)
## @brief Decode every field of complete industrial_msgs/srv/GetRobotInfo_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Industrial_msgsSrvGetRobotInfo_Response*(bytes: openArray[byte]; value: var Ros2Industrial_msgsSrvGetRobotInfo_Response): uint32 =
  wire.decode(bytes, 25, 32768, value)

## @brief Complete industrial_msgs/srv/SetDrivePower_Request value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 1..1 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Industrial_msgsSrvSetDrivePower_Request* = object
  ## @brief Original industrial_msgs/srv/SetDrivePower_Request.drive_power field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_drive_power*: bool
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsSrvSetDrivePower_RequestMinimumWireBytes* = 1
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsSrvSetDrivePower_RequestMaximumWireBytes* = 1
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Industrial_msgsSrvSetDrivePower_RequestCodecIdentity* = "UWVMROS1_b4fc5e109e131a97820ab5856b34839c572ac0b0c256d70457c176e401844f96"
## @brief Encode every field of complete industrial_msgs/srv/SetDrivePower_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Industrial_msgsSrvSetDrivePower_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1, written)
## @brief Decode every field of complete industrial_msgs/srv/SetDrivePower_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Industrial_msgsSrvSetDrivePower_Request*(bytes: openArray[byte]; value: var Ros2Industrial_msgsSrvSetDrivePower_Request): uint32 =
  wire.decode(bytes, 1, 1, value)

## @brief Complete industrial_msgs/srv/SetDrivePower_Response value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 1..1 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Industrial_msgsSrvSetDrivePower_Response* = object
  ## @brief Original industrial_msgs/srv/SetDrivePower_Response.code field.
  ## @details Original type industrial_msgs/msg/ServiceReturnCode. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_code*: Ros2Industrial_msgsMsgServiceReturnCode
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsSrvSetDrivePower_ResponseMinimumWireBytes* = 1
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsSrvSetDrivePower_ResponseMaximumWireBytes* = 1
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Industrial_msgsSrvSetDrivePower_ResponseCodecIdentity* = "UWVMROS1_050fb9a727ebedd240e9023b9a2379a5d72e0d9fa335bead0c40d783abb22cff"
## @brief Encode every field of complete industrial_msgs/srv/SetDrivePower_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Industrial_msgsSrvSetDrivePower_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1, written)
## @brief Decode every field of complete industrial_msgs/srv/SetDrivePower_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Industrial_msgsSrvSetDrivePower_Response*(bytes: openArray[byte]; value: var Ros2Industrial_msgsSrvSetDrivePower_Response): uint32 =
  wire.decode(bytes, 1, 1, value)

## @brief Complete industrial_msgs/srv/SetRemoteLoggerLevel_Request value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 1..1 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request* = object
  ## @brief Original industrial_msgs/srv/SetRemoteLoggerLevel_Request.level field.
  ## @details Original type industrial_msgs/msg/DebugLevel. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_level*: Ros2Industrial_msgsMsgDebugLevel
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsSrvSetRemoteLoggerLevel_RequestMinimumWireBytes* = 1
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsSrvSetRemoteLoggerLevel_RequestMaximumWireBytes* = 1
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Industrial_msgsSrvSetRemoteLoggerLevel_RequestCodecIdentity* = "UWVMROS1_bbadd39c05cab90b14f4b1fad23ff05ac83325f6cc57810cd649e04fa29fe014"
## @brief Encode every field of complete industrial_msgs/srv/SetRemoteLoggerLevel_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1, written)
## @brief Decode every field of complete industrial_msgs/srv/SetRemoteLoggerLevel_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Industrial_msgsSrvSetRemoteLoggerLevel_Request*(bytes: openArray[byte]; value: var Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request): uint32 =
  wire.decode(bytes, 1, 1, value)

## @brief Complete industrial_msgs/srv/SetRemoteLoggerLevel_Response value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 1..1 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response* = object
  ## @brief Original industrial_msgs/srv/SetRemoteLoggerLevel_Response.code field.
  ## @details Original type industrial_msgs/msg/ServiceReturnCode. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_code*: Ros2Industrial_msgsMsgServiceReturnCode
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsSrvSetRemoteLoggerLevel_ResponseMinimumWireBytes* = 1
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsSrvSetRemoteLoggerLevel_ResponseMaximumWireBytes* = 1
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Industrial_msgsSrvSetRemoteLoggerLevel_ResponseCodecIdentity* = "UWVMROS1_b8681d031a4bb5a67b842277af2e2156e8339bdef23be88d2b64e296a7e3d63b"
## @brief Encode every field of complete industrial_msgs/srv/SetRemoteLoggerLevel_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1, written)
## @brief Decode every field of complete industrial_msgs/srv/SetRemoteLoggerLevel_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Industrial_msgsSrvSetRemoteLoggerLevel_Response*(bytes: openArray[byte]; value: var Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response): uint32 =
  wire.decode(bytes, 1, 1, value)

## @brief Complete industrial_msgs/srv/StartMotion_Request value.
## @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Industrial_msgsSrvStartMotion_Request* = object
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsSrvStartMotion_RequestMinimumWireBytes* = 0
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsSrvStartMotion_RequestMaximumWireBytes* = 0
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Industrial_msgsSrvStartMotion_RequestCodecIdentity* = "UWVMROS1_0a96fb9489f863612a91bf82f995f2f28bcb7fb403bde74c617925c789e4dcd8"
## @brief Encode every field of complete industrial_msgs/srv/StartMotion_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Industrial_msgsSrvStartMotion_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 0, written)
## @brief Decode every field of complete industrial_msgs/srv/StartMotion_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Industrial_msgsSrvStartMotion_Request*(bytes: openArray[byte]; value: var Ros2Industrial_msgsSrvStartMotion_Request): uint32 =
  wire.decode(bytes, 0, 0, value)

## @brief Complete industrial_msgs/srv/StartMotion_Response value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 1..1 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Industrial_msgsSrvStartMotion_Response* = object
  ## @brief Original industrial_msgs/srv/StartMotion_Response.code field.
  ## @details Original type industrial_msgs/msg/ServiceReturnCode. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_code*: Ros2Industrial_msgsMsgServiceReturnCode
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsSrvStartMotion_ResponseMinimumWireBytes* = 1
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsSrvStartMotion_ResponseMaximumWireBytes* = 1
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Industrial_msgsSrvStartMotion_ResponseCodecIdentity* = "UWVMROS1_3bb3650fbe638a6d300bcd9fcd5acf574bd54d00a7368edd3014bf44dcf66c16"
## @brief Encode every field of complete industrial_msgs/srv/StartMotion_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Industrial_msgsSrvStartMotion_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1, written)
## @brief Decode every field of complete industrial_msgs/srv/StartMotion_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Industrial_msgsSrvStartMotion_Response*(bytes: openArray[byte]; value: var Ros2Industrial_msgsSrvStartMotion_Response): uint32 =
  wire.decode(bytes, 1, 1, value)

## @brief Complete industrial_msgs/srv/StopMotion_Request value.
## @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Industrial_msgsSrvStopMotion_Request* = object
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsSrvStopMotion_RequestMinimumWireBytes* = 0
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsSrvStopMotion_RequestMaximumWireBytes* = 0
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Industrial_msgsSrvStopMotion_RequestCodecIdentity* = "UWVMROS1_fe5a7cf0da30270eab5cfb1ab8c1fbd37d2b4c4f91ef29662a0ddcac39e6ef49"
## @brief Encode every field of complete industrial_msgs/srv/StopMotion_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Industrial_msgsSrvStopMotion_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 0, written)
## @brief Decode every field of complete industrial_msgs/srv/StopMotion_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Industrial_msgsSrvStopMotion_Request*(bytes: openArray[byte]; value: var Ros2Industrial_msgsSrvStopMotion_Request): uint32 =
  wire.decode(bytes, 0, 0, value)

## @brief Complete industrial_msgs/srv/StopMotion_Response value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 1..1 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Industrial_msgsSrvStopMotion_Response* = object
  ## @brief Original industrial_msgs/srv/StopMotion_Response.code field.
  ## @details Original type industrial_msgs/msg/ServiceReturnCode. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_code*: Ros2Industrial_msgsMsgServiceReturnCode
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsSrvStopMotion_ResponseMinimumWireBytes* = 1
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Industrial_msgsSrvStopMotion_ResponseMaximumWireBytes* = 1
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Industrial_msgsSrvStopMotion_ResponseCodecIdentity* = "UWVMROS1_c26bda240d86becc5b8b4ea80380eba3602092a5ec4a06818dbfbd38c24015b5"
## @brief Encode every field of complete industrial_msgs/srv/StopMotion_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Industrial_msgsSrvStopMotion_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1, written)
## @brief Decode every field of complete industrial_msgs/srv/StopMotion_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Industrial_msgsSrvStopMotion_Response*(bytes: openArray[byte]; value: var Ros2Industrial_msgsSrvStopMotion_Response): uint32 =
  wire.decode(bytes, 1, 1, value)

## @brief Complete motoros2_interfaces/msg/AlarmCauseRemedy value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 8..1032 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesMsgAlarmCauseRemedy* = object
  ## @brief Original motoros2_interfaces/msg/AlarmCauseRemedy.cause field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_cause*: NativeText[512, false]
  ## @brief Original motoros2_interfaces/msg/AlarmCauseRemedy.remedy field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_remedy*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesMsgAlarmCauseRemedyMinimumWireBytes* = 8
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesMsgAlarmCauseRemedyMaximumWireBytes* = 1032
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesMsgAlarmCauseRemedyCodecIdentity* = "UWVMROS1_f977609022f4ca593b9089d0038d1c28d1bc4b533e272f38c3379495f326ddf5"
## @brief Encode every field of complete motoros2_interfaces/msg/AlarmCauseRemedy.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesMsgAlarmCauseRemedy; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1032, written)
## @brief Decode every field of complete motoros2_interfaces/msg/AlarmCauseRemedy.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesMsgAlarmCauseRemedy*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesMsgAlarmCauseRemedy): uint32 =
  wire.decode(bytes, 8, 1032, value)

## @brief Complete motoros2_interfaces/msg/AlarmInfo value.
## @details Retain all 7 original fields and 0 constants. Canonical extent 32..25248 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesMsgAlarmInfo* = object
  ## @brief Original motoros2_interfaces/msg/AlarmInfo.number field.
  ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_number*: uint32
  ## @brief Original motoros2_interfaces/msg/AlarmInfo.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
  ## @brief Original motoros2_interfaces/msg/AlarmInfo.sub_code field.
  ## @details Original type int32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_sub_code*: int32
  ## @brief Original motoros2_interfaces/msg/AlarmInfo.datetime field.
  ## @details Original type builtin_interfaces/msg/Time. Preserve declared units, frame, signedness
  ## and field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_datetime*: Ros2Builtin_interfacesMsgTime
  ## @brief Original motoros2_interfaces/msg/AlarmInfo.contents field.
  ## @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_contents*: NativeText[4096, false]
  ## @brief Original motoros2_interfaces/msg/AlarmInfo.description field.
  ## @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_description*: NativeText[4096, false]
  ## @brief Original motoros2_interfaces/msg/AlarmInfo.help field.
  ## @details Original type motoros2_interfaces/msg/AlarmCauseRemedy. Shape sequence; bound/count 16
  ## elements. Preserve declared units, frame, signedness and field order. Backing storage belongs
  ## to this value; constructing or copying it creates no native ROS owner.
  field_help*: NativeSequence[Ros2Motoros2_interfacesMsgAlarmCauseRemedy, 16]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesMsgAlarmInfoMinimumWireBytes* = 32
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesMsgAlarmInfoMaximumWireBytes* = 25248
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesMsgAlarmInfoCodecIdentity* = "UWVMROS1_7cf3fa3037f28f295dd62009e708ea3e46a80f83471d0a0f9fb55af125c0c27f"
## @brief Encode every field of complete motoros2_interfaces/msg/AlarmInfo.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesMsgAlarmInfo; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 25248, written)
## @brief Decode every field of complete motoros2_interfaces/msg/AlarmInfo.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesMsgAlarmInfo*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesMsgAlarmInfo): uint32 =
  wire.decode(bytes, 32, 25248, value)

## @brief Complete motoros2_interfaces/msg/ErrorInfo value.
## @details Retain all 4 original fields and 0 constants. Canonical extent 20..532 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesMsgErrorInfo* = object
  ## @brief Original motoros2_interfaces/msg/ErrorInfo.number field.
  ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_number*: uint32
  ## @brief Original motoros2_interfaces/msg/ErrorInfo.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
  ## @brief Original motoros2_interfaces/msg/ErrorInfo.sub_code field.
  ## @details Original type int32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_sub_code*: int32
  ## @brief Original motoros2_interfaces/msg/ErrorInfo.datetime field.
  ## @details Original type builtin_interfaces/msg/Time. Preserve declared units, frame, signedness
  ## and field order. Backing storage belongs to this value; constructing or copying it creates no
  ## native ROS owner.
  field_datetime*: Ros2Builtin_interfacesMsgTime
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesMsgErrorInfoMinimumWireBytes* = 20
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesMsgErrorInfoMaximumWireBytes* = 532
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesMsgErrorInfoCodecIdentity* = "UWVMROS1_1cfe60c0af6bc157db84c4d9e0b20a8f2e5c78fd4afd6908d32b3217f3734b67"
## @brief Encode every field of complete motoros2_interfaces/msg/ErrorInfo.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesMsgErrorInfo; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 532, written)
## @brief Decode every field of complete motoros2_interfaces/msg/ErrorInfo.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesMsgErrorInfo*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesMsgErrorInfo): uint32 =
  wire.decode(bytes, 20, 532, value)

## @brief Complete motoros2_interfaces/msg/InformJobCrudResultCodes value.
## @details Retain all 0 original fields and 12 constants. Canonical extent 0..0 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesMsgInformJobCrudResultCodes* = object
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesMsgInformJobCrudResultCodesMinimumWireBytes* = 0
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesMsgInformJobCrudResultCodesMaximumWireBytes* = 0
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodecIdentity* = "UWVMROS1_f5ed037b83926b48a88fa486ed8db5f5d3e39e4a486d4a90190ffd6a70452613"
## @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.RC_OK constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInformJobCrudResultCodes_RC_OK*: uint32 = 1'u32
## @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.STR_OK constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInformJobCrudResultCodes_STR_OK*: string = "Success"
## @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_REFRESHING_JOB_LIST
## constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInformJobCrudResultCodes_RC_ERR_REFRESHING_JOB_LIST*: uint32 = 10'u32
## @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_REFRESHING_JOB_LIST
## constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInformJobCrudResultCodes_STR_ERR_REFRESHING_JOB_LIST*: string = "Error refreshing job list"
## @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_RETRIEVING_FILE_COUNT
## constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInformJobCrudResultCodes_RC_ERR_RETRIEVING_FILE_COUNT*: uint32 = 11'u32
## @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_RETRIEVING_FILE_COUNT
## constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInformJobCrudResultCodes_STR_ERR_RETRIEVING_FILE_COUNT*: string = "Error retrieving file count"
## @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_TOO_MANY_JOBS constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInformJobCrudResultCodes_RC_ERR_TOO_MANY_JOBS*: uint32 = 12'u32
## @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_TOO_MANY_JOBS constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInformJobCrudResultCodes_STR_ERR_TOO_MANY_JOBS*: string = "Too many jobs"
## @brief Original
## motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_RETRIEVING_JOB_NAME_FROM_LIST constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInformJobCrudResultCodes_RC_ERR_RETRIEVING_JOB_NAME_FROM_LIST*: uint32 = 13'u32
## @brief Original
## motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_RETRIEVING_JOB_NAME_FROM_LIST constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInformJobCrudResultCodes_STR_ERR_RETRIEVING_JOB_NAME_FROM_LIST*: string = "Failed retrieving job name from list"
## @brief Original
## motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE
## constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInformJobCrudResultCodes_RC_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE*: uint32 = 14'u32
## @brief Original
## motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE
## constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInformJobCrudResultCodes_STR_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE*: string = "Error adding job name to service response"
## @brief Encode every field of complete motoros2_interfaces/msg/InformJobCrudResultCodes.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesMsgInformJobCrudResultCodes; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 0, written)
## @brief Decode every field of complete motoros2_interfaces/msg/InformJobCrudResultCodes.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesMsgInformJobCrudResultCodes*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesMsgInformJobCrudResultCodes): uint32 =
  wire.decode(bytes, 0, 0, value)

## @brief Complete motoros2_interfaces/msg/InitTrajEnum value.
## @details Retain all 1 original fields and 34 constants. Canonical extent 2..2 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesMsgInitTrajEnum* = object
  ## @brief Original motoros2_interfaces/msg/InitTrajEnum.value field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_value*: uint16
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesMsgInitTrajEnumMinimumWireBytes* = 2
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesMsgInitTrajEnumMaximumWireBytes* = 2
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesMsgInitTrajEnumCodecIdentity* = "UWVMROS1_9279979f9e3570f48d6e23bf812a4680e3deed9af3309019efdff5464d7b7763"
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_OK constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_OK*: uint16 = 0'u16
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_OK_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_OK_STR*: string = "OK"
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_UNSPECIFIED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_UNSPECIFIED*: uint16 = 200'u16
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_UNSPECIFIED_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_UNSPECIFIED_STR*: string = "Unspecified failure"
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_TOO_SMALL constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_TOO_SMALL*: uint16 = 201'u16
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_TOO_SMALL_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_TOO_SMALL_STR*: string = "Trajectory must contain at least two points."
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_TOO_BIG constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_TOO_BIG*: uint16 = 202'u16
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_TOO_BIG_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_TOO_BIG_STR*: string = "Trajectory contains too many points (Not enough memory)."
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_ALREADY_IN_MOTION constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_ALREADY_IN_MOTION*: uint16 = 203'u16
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_ALREADY_IN_MOTION_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_ALREADY_IN_MOTION_STR*: string = "Already running a trajectory."
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_STARTING_POS constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_STARTING_POS*: uint16 = 204'u16
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_STARTING_POS_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_STARTING_POS_STR*: string = "The first point must match the robot's current position."
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_VELOCITY constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_VELOCITY*: uint16 = 205'u16
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_VELOCITY_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_VELOCITY_STR*: string = "The commanded velocity is too high."
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_JOINTNAME constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_JOINTNAME*: uint16 = 206'u16
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_JOINTNAME_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_JOINTNAME_STR*: string = "Invalid joint name specified. Check motoros2_config.yaml."
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INCOMPLETE_JOINTLIST constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INCOMPLETE_JOINTLIST*: uint16 = 207'u16
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INCOMPLETE_JOINTLIST_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INCOMPLETE_JOINTLIST_STR*: string = "Trajectory must contain data for all joints."
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_TIME constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_TIME*: uint16 = 208'u16
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_TIME_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_TIME_STR*: string = "Invalid time in trajectory."
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_MODE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_WRONG_MODE*: uint16 = 209'u16
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_MODE_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_WRONG_MODE_STR*: string = "Must call start_traj_mode service"
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_BACKWARD_TIME constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_BACKWARD_TIME*: uint16 = 210'u16
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_BACKWARD_TIME_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_BACKWARD_TIME_STR*: string = "Trajectory message contains waypoints that are not strictly increasing in time."
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS
## constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS*: uint16 = 211'u16
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS_STR
## constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS_STR*: string = "Trajectory did not contain position data for all axes."
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES
## constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES*: uint16 = 212'u16
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES_STR
## constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES_STR*: string = "Trajectory did not contain velocity data for all axes."
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_ENDING_VELOCITY constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_ENDING_VELOCITY*: uint16 = 213'u16
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_ENDING_VELOCITY_STR
## constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_ENDING_VELOCITY_STR*: string = "The final point in the trajectory must have zero velocity."
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_ENDING_ACCELERATION
## constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_ENDING_ACCELERATION*: uint16 = 214'u16
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_ENDING_ACCELERATION_STR
## constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_ENDING_ACCELERATION_STR*: string = "The final point in the trajectory must have zero acceleration."
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_DUPLICATE_JOINT_NAME constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_DUPLICATE_JOINT_NAME*: uint16 = 215'u16
## @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_DUPLICATE_JOINT_NAME_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_DUPLICATE_JOINT_NAME_STR*: string = "The trajectory contains duplicate joint names."
## @brief Encode every field of complete motoros2_interfaces/msg/InitTrajEnum.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesMsgInitTrajEnum; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 2, written)
## @brief Decode every field of complete motoros2_interfaces/msg/InitTrajEnum.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesMsgInitTrajEnum*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesMsgInitTrajEnum): uint32 =
  wire.decode(bytes, 2, 2, value)

## @brief Complete motoros2_interfaces/msg/IoResultCodes value.
## @details Retain all 0 original fields and 13 constants. Canonical extent 0..0 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesMsgIoResultCodes* = object
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesMsgIoResultCodesMinimumWireBytes* = 0
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesMsgIoResultCodesMaximumWireBytes* = 0
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesMsgIoResultCodesCodecIdentity* = "UWVMROS1_ef9ab829ae79d4e58336a56259b6beb2ad26a8b1b4070013d9004ac4ab269915"
## @brief Original motoros2_interfaces/msg/IoResultCodes.OK constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgIoResultCodes_OK*: uint32 = 0'u32
## @brief Original motoros2_interfaces/msg/IoResultCodes.OK_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgIoResultCodes_OK_STR*: string = "Success"
## @brief Original motoros2_interfaces/msg/IoResultCodes.READ_ADDRESS_INVALID constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgIoResultCodes_READ_ADDRESS_INVALID*: uint32 = 1001'u32
## @brief Original motoros2_interfaces/msg/IoResultCodes.READ_ADDRESS_INVALID_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgIoResultCodes_READ_ADDRESS_INVALID_STR*: string = "Address cannot be read from (out of readable range)"
## @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_ADDRESS_INVALID constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgIoResultCodes_WRITE_ADDRESS_INVALID*: uint32 = 1002'u32
## @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_ADDRESS_INVALID_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgIoResultCodes_WRITE_ADDRESS_INVALID_STR*: string = "Address cannot be written to (out of writable range)"
## @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_VALUE_INVALID constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgIoResultCodes_WRITE_VALUE_INVALID*: uint32 = 1003'u32
## @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_VALUE_INVALID_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgIoResultCodes_WRITE_VALUE_INVALID_STR*: string = "Illegal value for the type of IO element addressed"
## @brief Original motoros2_interfaces/msg/IoResultCodes.READ_API_ERROR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgIoResultCodes_READ_API_ERROR*: uint32 = 1004'u32
## @brief Original motoros2_interfaces/msg/IoResultCodes.READ_API_ERROR_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgIoResultCodes_READ_API_ERROR_STR*: string = "The MotoPlus function mpReadIO returned -1. No further information is available"
## @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_API_ERROR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgIoResultCodes_WRITE_API_ERROR*: uint32 = 1005'u32
## @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_API_ERROR_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgIoResultCodes_WRITE_API_ERROR_STR*: string = "The MotoPlus function mpWriteIO returned -1. No further information is available"
## @brief Original motoros2_interfaces/msg/IoResultCodes.UNKNOWN_API_ERROR_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgIoResultCodes_UNKNOWN_API_ERROR_STR*: string = "Unknown error accessing I/O. No further information is available"
## @brief Encode every field of complete motoros2_interfaces/msg/IoResultCodes.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesMsgIoResultCodes; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 0, written)
## @brief Decode every field of complete motoros2_interfaces/msg/IoResultCodes.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesMsgIoResultCodes*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesMsgIoResultCodes): uint32 =
  wire.decode(bytes, 0, 0, value)

## @brief Complete motoros2_interfaces/msg/MotionReadyEnum value.
## @details Retain all 1 original fields and 38 constants. Canonical extent 2..2 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesMsgMotionReadyEnum* = object
  ## @brief Original motoros2_interfaces/msg/MotionReadyEnum.value field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_value*: uint16
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesMsgMotionReadyEnumMinimumWireBytes* = 2
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesMsgMotionReadyEnumMaximumWireBytes* = 2
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesMsgMotionReadyEnumCodecIdentity* = "UWVMROS1_c8d4c2b0eba665e01cddc730421a3a42c5b344f4de35ae0a32204891603326d6"
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.READY constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_READY*: uint16 = 1'u16
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.READY_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_READY_STR*: string = "Ready"
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_UNSPECIFIED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_UNSPECIFIED*: uint16 = 100'u16
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_UNSPECIFIED_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_UNSPECIFIED_STR*: string = "Unspecified"
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ALARM constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_ALARM*: uint16 = 101'u16
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ALARM_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_ALARM_STR*: string = "The controller has an active Alarm"
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ERROR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_ERROR*: uint16 = 102'u16
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ERROR_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_ERROR_STR*: string = "The controller has an active Error"
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ESTOP constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_ESTOP*: uint16 = 103'u16
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ESTOP_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_ESTOP_STR*: string = "The controller is in E-Stop"
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_PLAY constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_NOT_PLAY*: uint16 = 104'u16
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_PLAY_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_NOT_PLAY_STR*: string = "The teach pendant must not be in TEACH mode"
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_REMOTE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_NOT_REMOTE*: uint16 = 105'u16
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_REMOTE_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_NOT_REMOTE_STR*: string = "The teach pendant must be in REMOTE mode"
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_SERVO_OFF constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_SERVO_OFF*: uint16 = 106'u16
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_SERVO_OFF_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_SERVO_OFF_STR*: string = "Servo power is OFF. Please call start_traj_mode or start_point_queue_mode service"
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_HOLD constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_HOLD*: uint16 = 107'u16
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_HOLD_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_HOLD_STR*: string = "The controller is in HOLD"
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_JOB_NOT_STARTED constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_JOB_NOT_STARTED*: uint16 = 108'u16
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_JOB_NOT_STARTED_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_JOB_NOT_STARTED_STR*: string = "The INIT_ROS job has not started. Please call start_traj_mode or start_point_queue_mode service"
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_ON_WAIT_CMD constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_NOT_ON_WAIT_CMD*: uint16 = 109'u16
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_ON_WAIT_CMD_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_NOT_ON_WAIT_CMD_STR*: string = "INFORM job is not on a WAIT command. Check the format of INIT_ROS"
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_PFL_ACTIVE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_PFL_ACTIVE*: uint16 = 111'u16
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_PFL_ACTIVE_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_PFL_ACTIVE_STR*: string = "A PFL event has occurred. Please return the robot to a safe state"
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_INC_MOVE_ERROR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_INC_MOVE_ERROR*: uint16 = 112'u16
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_INC_MOVE_ERROR_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_INC_MOVE_ERROR_STR*: string = "The controller is in an error state. Please call reset_error to attempt to clear the error"
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_OTHER_PROGRAM_RUNNING constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_OTHER_PROGRAM_RUNNING*: uint16 = 113'u16
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_OTHER_PROGRAM_RUNNING_STR
## constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_OTHER_PROGRAM_RUNNING_STR*: string = "Controller is running another job"
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_OTHER_TRAJ_MODE_ACTIVE
## constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_OTHER_TRAJ_MODE_ACTIVE*: uint16 = 114'u16
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_OTHER_TRAJ_MODE_ACTIVE_STR
## constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_OTHER_TRAJ_MODE_ACTIVE_STR*: string = "Another trajectory mode is already active. Please call stop_traj_mode service"
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_CONT_CYCLE_MODE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_NOT_CONT_CYCLE_MODE*: uint16 = 115'u16
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_CONT_CYCLE_MODE_STR
## constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_NOT_CONT_CYCLE_MODE_STR*: string = "AUTO cycle mode not set. Please set the cycle mode to AUTO"
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_MAJOR_ALARM constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_MAJOR_ALARM*: uint16 = 116'u16
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_MAJOR_ALARM_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_MAJOR_ALARM_STR*: string = "Major Alarms can't be reset. Please check the teach pendant"
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ECO_MODE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_ECO_MODE*: uint16 = 117'u16
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ECO_MODE_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_ECO_MODE_STR*: string = "Couldn't disable eco mode"
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_SERVO_ON_TIMEOUT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_SERVO_ON_TIMEOUT*: uint16 = 118'u16
## @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_SERVO_ON_TIMEOUT_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_SERVO_ON_TIMEOUT_STR*: string = "Timed out while waiting for servo on"
## @brief Encode every field of complete motoros2_interfaces/msg/MotionReadyEnum.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesMsgMotionReadyEnum; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 2, written)
## @brief Decode every field of complete motoros2_interfaces/msg/MotionReadyEnum.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesMsgMotionReadyEnum*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesMsgMotionReadyEnum): uint32 =
  wire.decode(bytes, 2, 2, value)

## @brief Complete motoros2_interfaces/msg/QueueResultEnum value.
## @details Retain all 1 original fields and 12 constants. Canonical extent 2..2 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesMsgQueueResultEnum* = object
  ## @brief Original motoros2_interfaces/msg/QueueResultEnum.value field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_value*: uint16
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesMsgQueueResultEnumMinimumWireBytes* = 2
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesMsgQueueResultEnumMaximumWireBytes* = 2
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesMsgQueueResultEnumCodecIdentity* = "UWVMROS1_146c6ce3f275b9e4a81622d73cca3d2298cf9f7bb95a783c0dea6279cb5b4f23"
## @brief Original motoros2_interfaces/msg/QueueResultEnum.SUCCESS constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgQueueResultEnum_SUCCESS*: uint16 = 1'u16
## @brief Original motoros2_interfaces/msg/QueueResultEnum.SUCCESS_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgQueueResultEnum_SUCCESS_STR*: string = ""
## @brief Original motoros2_interfaces/msg/QueueResultEnum.WRONG_MODE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgQueueResultEnum_WRONG_MODE*: uint16 = 2'u16
## @brief Original motoros2_interfaces/msg/QueueResultEnum.WRONG_MODE_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgQueueResultEnum_WRONG_MODE_STR*: string = "Must call start_point_queue_mode service"
## @brief Original motoros2_interfaces/msg/QueueResultEnum.INIT_FAILURE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgQueueResultEnum_INIT_FAILURE*: uint16 = 3'u16
## @brief Original motoros2_interfaces/msg/QueueResultEnum.INIT_FAILURE_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgQueueResultEnum_INIT_FAILURE_STR*: string = "Failed to initialize the streaming trajectory"
## @brief Original motoros2_interfaces/msg/QueueResultEnum.BUSY constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgQueueResultEnum_BUSY*: uint16 = 4'u16
## @brief Original motoros2_interfaces/msg/QueueResultEnum.BUSY_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgQueueResultEnum_BUSY_STR*: string = "Busy processing the previous trajectory point. Please resend the next point shortly"
## @brief Original motoros2_interfaces/msg/QueueResultEnum.INVALID_JOINT_LIST constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgQueueResultEnum_INVALID_JOINT_LIST*: uint16 = 5'u16
## @brief Original motoros2_interfaces/msg/QueueResultEnum.INVALID_JOINT_LIST_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgQueueResultEnum_INVALID_JOINT_LIST_STR*: string = "Point must contain data for all joints"
## @brief Original motoros2_interfaces/msg/QueueResultEnum.UNABLE_TO_PROCESS_POINT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgQueueResultEnum_UNABLE_TO_PROCESS_POINT*: uint16 = 6'u16
## @brief Original motoros2_interfaces/msg/QueueResultEnum.UNABLE_TO_PROCESS_POINT_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgQueueResultEnum_UNABLE_TO_PROCESS_POINT_STR*: string = "Error while processing the trajectory point. Check debug log for more details"
## @brief Encode every field of complete motoros2_interfaces/msg/QueueResultEnum.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesMsgQueueResultEnum; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 2, written)
## @brief Decode every field of complete motoros2_interfaces/msg/QueueResultEnum.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesMsgQueueResultEnum*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesMsgQueueResultEnum): uint32 =
  wire.decode(bytes, 2, 2, value)

## @brief Complete motoros2_interfaces/msg/SelectionResultCodes value.
## @details Retain all 1 original fields and 8 constants. Canonical extent 4..4 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesMsgSelectionResultCodes* = object
  ## @brief Original motoros2_interfaces/msg/SelectionResultCodes.value field.
  ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_value*: uint32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesMsgSelectionResultCodesMinimumWireBytes* = 4
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesMsgSelectionResultCodesMaximumWireBytes* = 4
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesMsgSelectionResultCodesCodecIdentity* = "UWVMROS1_46168b1f851163985e75842d9d795c5715160864a7736e7f92f95818c9435602"
## @brief Original motoros2_interfaces/msg/SelectionResultCodes.OK constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgSelectionResultCodes_OK*: uint32 = 0'u32
## @brief Original motoros2_interfaces/msg/SelectionResultCodes.OK_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgSelectionResultCodes_OK_STR*: string = ""
## @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_CONTROLLER_STATE constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgSelectionResultCodes_INVALID_CONTROLLER_STATE*: uint32 = 400'u32
## @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_CONTROLLER_STATE_STR
## constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgSelectionResultCodes_INVALID_CONTROLLER_STATE_STR*: string = "Pendant is not in REMOTE mode"
## @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_CONTROL_GROUP constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgSelectionResultCodes_INVALID_CONTROL_GROUP*: uint32 = 401'u32
## @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_CONTROL_GROUP_STR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgSelectionResultCodes_INVALID_CONTROL_GROUP_STR*: string = "Invalid control group"
## @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_SELECTION_INDEX constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgSelectionResultCodes_INVALID_SELECTION_INDEX*: uint32 = 402'u32
## @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_SELECTION_INDEX_STR
## constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Motoros2_interfacesMsgSelectionResultCodes_INVALID_SELECTION_INDEX_STR*: string = "Invalid tool selection"
## @brief Encode every field of complete motoros2_interfaces/msg/SelectionResultCodes.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesMsgSelectionResultCodes; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 4, written)
## @brief Decode every field of complete motoros2_interfaces/msg/SelectionResultCodes.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesMsgSelectionResultCodes*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesMsgSelectionResultCodes): uint32 =
  wire.decode(bytes, 4, 4, value)

## @brief Complete motoros2_interfaces/srv/GetActiveAlarmInfo_Request value.
## @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request* = object
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_RequestMinimumWireBytes* = 0
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_RequestMaximumWireBytes* = 0
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_RequestCodecIdentity* = "UWVMROS1_aadcd63f3bc47424c38767afdc1589561e3c90e8aeae9bdceef88b1033d57a7e"
## @brief Encode every field of complete motoros2_interfaces/srv/GetActiveAlarmInfo_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 0, written)
## @brief Decode every field of complete motoros2_interfaces/srv/GetActiveAlarmInfo_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesSrvGetActiveAlarmInfo_Request*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request): uint32 =
  wire.decode(bytes, 0, 0, value)

## @brief Complete motoros2_interfaces/srv/GetActiveAlarmInfo_Response value.
## @details Retain all 4 original fields and 0 constants. Canonical extent 16..32768 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response* = object
  ## @brief Original motoros2_interfaces/srv/GetActiveAlarmInfo_Response.result_code field.
  ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint32
  ## @brief Original motoros2_interfaces/srv/GetActiveAlarmInfo_Response.result_message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_result_message*: NativeText[512, false]
  ## @brief Original motoros2_interfaces/srv/GetActiveAlarmInfo_Response.alarms field.
  ## @details Original type motoros2_interfaces/msg/AlarmInfo. Shape sequence; bound/count 16
  ## elements. Preserve declared units, frame, signedness and field order. Backing storage belongs
  ## to this value; constructing or copying it creates no native ROS owner.
  field_alarms*: NativeSequence[Ros2Motoros2_interfacesMsgAlarmInfo, 16]
  ## @brief Original motoros2_interfaces/srv/GetActiveAlarmInfo_Response.errors field.
  ## @details Original type motoros2_interfaces/msg/ErrorInfo. Shape sequence; bound/count 16
  ## elements. Preserve declared units, frame, signedness and field order. Backing storage belongs
  ## to this value; constructing or copying it creates no native ROS owner.
  field_errors*: NativeSequence[Ros2Motoros2_interfacesMsgErrorInfo, 16]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_ResponseMinimumWireBytes* = 16
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_ResponseMaximumWireBytes* = 32768
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_ResponseCodecIdentity* = "UWVMROS1_e11bdbb95b6ded88d035696260c58dad32bcf3604aa4e89dd41c0dab26541567"
## @brief Encode every field of complete motoros2_interfaces/srv/GetActiveAlarmInfo_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 32768, written)
## @brief Decode every field of complete motoros2_interfaces/srv/GetActiveAlarmInfo_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesSrvGetActiveAlarmInfo_Response*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response): uint32 =
  wire.decode(bytes, 16, 32768, value)

## @brief Complete motoros2_interfaces/srv/ListInformJobs_Request value.
## @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesSrvListInformJobs_Request* = object
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvListInformJobs_RequestMinimumWireBytes* = 0
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvListInformJobs_RequestMaximumWireBytes* = 0
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesSrvListInformJobs_RequestCodecIdentity* = "UWVMROS1_e77eedadef98d98321b1757b88284022afcdb1ffef52b98820b0c4ba596d643c"
## @brief Encode every field of complete motoros2_interfaces/srv/ListInformJobs_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesSrvListInformJobs_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 0, written)
## @brief Decode every field of complete motoros2_interfaces/srv/ListInformJobs_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesSrvListInformJobs_Request*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesSrvListInformJobs_Request): uint32 =
  wire.decode(bytes, 0, 0, value)

## @brief Complete motoros2_interfaces/srv/ListInformJobs_Response value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 12..8780 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesSrvListInformJobs_Response* = object
  ## @brief Original motoros2_interfaces/srv/ListInformJobs_Response.result_code field.
  ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint32
  ## @brief Original motoros2_interfaces/srv/ListInformJobs_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
  ## @brief Original motoros2_interfaces/srv/ListInformJobs_Response.names field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Shape sequence; bound/count
  ## 16 elements. Preserve declared units, frame, signedness and field order. Backing storage
  ## belongs to this value; constructing or copying it creates no native ROS owner.
  field_names*: NativeSequence[NativeText[512, false], 16]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvListInformJobs_ResponseMinimumWireBytes* = 12
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvListInformJobs_ResponseMaximumWireBytes* = 8780
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesSrvListInformJobs_ResponseCodecIdentity* = "UWVMROS1_49021f0abc00f8df1ef49605a244cb6bba8d8b45ece5365ae35d747d2506eadc"
## @brief Encode every field of complete motoros2_interfaces/srv/ListInformJobs_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesSrvListInformJobs_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 8780, written)
## @brief Decode every field of complete motoros2_interfaces/srv/ListInformJobs_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesSrvListInformJobs_Response*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesSrvListInformJobs_Response): uint32 =
  wire.decode(bytes, 12, 8780, value)

## @brief Complete motoros2_interfaces/srv/QueueTrajPoint_Request value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 28..1228 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesSrvQueueTrajPoint_Request* = object
  ## @brief Original motoros2_interfaces/srv/QueueTrajPoint_Request.joint_names field.
  ## @details Original type string. String bound 64 bytes; domain utf8. Shape sequence; bound/count
  ## 12 elements. Preserve declared units, frame, signedness and field order. Backing storage
  ## belongs to this value; constructing or copying it creates no native ROS owner.
  field_joint_names*: NativeSequence[NativeText[64, false], 12]
  ## @brief Original motoros2_interfaces/srv/QueueTrajPoint_Request.point field.
  ## @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_point*: Ros2Trajectory_msgsMsgJointTrajectoryPoint
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvQueueTrajPoint_RequestMinimumWireBytes* = 28
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvQueueTrajPoint_RequestMaximumWireBytes* = 1228
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesSrvQueueTrajPoint_RequestCodecIdentity* = "UWVMROS1_3d37f9981d6abaca33ec0b5378fa3a1ac301791cc9be94d5bdcf4ea6aa81b8d0"
## @brief Encode every field of complete motoros2_interfaces/srv/QueueTrajPoint_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesSrvQueueTrajPoint_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 1228, written)
## @brief Decode every field of complete motoros2_interfaces/srv/QueueTrajPoint_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesSrvQueueTrajPoint_Request*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesSrvQueueTrajPoint_Request): uint32 =
  wire.decode(bytes, 28, 1228, value)

## @brief Complete motoros2_interfaces/srv/QueueTrajPoint_Response value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesSrvQueueTrajPoint_Response* = object
  ## @brief Original motoros2_interfaces/srv/QueueTrajPoint_Response.result_code field.
  ## @details Original type motoros2_interfaces/msg/QueueResultEnum. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_result_code*: Ros2Motoros2_interfacesMsgQueueResultEnum
  ## @brief Original motoros2_interfaces/srv/QueueTrajPoint_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvQueueTrajPoint_ResponseMinimumWireBytes* = 6
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvQueueTrajPoint_ResponseMaximumWireBytes* = 518
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesSrvQueueTrajPoint_ResponseCodecIdentity* = "UWVMROS1_d4887ed24d39332a5ccfd4a3d072004dd8f314fe5c166bf0bd57520a826cbccd"
## @brief Encode every field of complete motoros2_interfaces/srv/QueueTrajPoint_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesSrvQueueTrajPoint_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 518, written)
## @brief Decode every field of complete motoros2_interfaces/srv/QueueTrajPoint_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesSrvQueueTrajPoint_Response*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesSrvQueueTrajPoint_Response): uint32 =
  wire.decode(bytes, 6, 518, value)

## @brief Complete motoros2_interfaces/srv/ReadGroupIO_Request value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 4..4 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesSrvReadGroupIO_Request* = object
  ## @brief Original motoros2_interfaces/srv/ReadGroupIO_Request.address field.
  ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_address*: uint32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvReadGroupIO_RequestMinimumWireBytes* = 4
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvReadGroupIO_RequestMaximumWireBytes* = 4
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesSrvReadGroupIO_RequestCodecIdentity* = "UWVMROS1_6ee09ac379e169fc23b81a551e9a9ed21c3f82b5010859984e911b17152beb7f"
## @brief Encode every field of complete motoros2_interfaces/srv/ReadGroupIO_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesSrvReadGroupIO_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 4, written)
## @brief Decode every field of complete motoros2_interfaces/srv/ReadGroupIO_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesSrvReadGroupIO_Request*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesSrvReadGroupIO_Request): uint32 =
  wire.decode(bytes, 4, 4, value)

## @brief Complete motoros2_interfaces/srv/ReadGroupIO_Response value.
## @details Retain all 4 original fields and 0 constants. Canonical extent 10..522 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesSrvReadGroupIO_Response* = object
  ## @brief Original motoros2_interfaces/srv/ReadGroupIO_Response.result_code field.
  ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint32
  ## @brief Original motoros2_interfaces/srv/ReadGroupIO_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
  ## @brief Original motoros2_interfaces/srv/ReadGroupIO_Response.success field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_success*: bool
  ## @brief Original motoros2_interfaces/srv/ReadGroupIO_Response.value field.
  ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_value*: uint8
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvReadGroupIO_ResponseMinimumWireBytes* = 10
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvReadGroupIO_ResponseMaximumWireBytes* = 522
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesSrvReadGroupIO_ResponseCodecIdentity* = "UWVMROS1_292fcf6e8c46a2509ee4cc5238d443157f37fed0de898367248b967e9001ea0d"
## @brief Encode every field of complete motoros2_interfaces/srv/ReadGroupIO_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesSrvReadGroupIO_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 522, written)
## @brief Decode every field of complete motoros2_interfaces/srv/ReadGroupIO_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesSrvReadGroupIO_Response*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesSrvReadGroupIO_Response): uint32 =
  wire.decode(bytes, 10, 522, value)

## @brief Complete motoros2_interfaces/srv/ReadMRegister_Request value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 4..4 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesSrvReadMRegister_Request* = object
  ## @brief Original motoros2_interfaces/srv/ReadMRegister_Request.address field.
  ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_address*: uint32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvReadMRegister_RequestMinimumWireBytes* = 4
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvReadMRegister_RequestMaximumWireBytes* = 4
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesSrvReadMRegister_RequestCodecIdentity* = "UWVMROS1_f31f0983466054f5ac5dcb2ab80ab7721d606a681b833ebb376cc87f96054f6f"
## @brief Encode every field of complete motoros2_interfaces/srv/ReadMRegister_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesSrvReadMRegister_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 4, written)
## @brief Decode every field of complete motoros2_interfaces/srv/ReadMRegister_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesSrvReadMRegister_Request*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesSrvReadMRegister_Request): uint32 =
  wire.decode(bytes, 4, 4, value)

## @brief Complete motoros2_interfaces/srv/ReadMRegister_Response value.
## @details Retain all 4 original fields and 0 constants. Canonical extent 11..523 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesSrvReadMRegister_Response* = object
  ## @brief Original motoros2_interfaces/srv/ReadMRegister_Response.result_code field.
  ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint32
  ## @brief Original motoros2_interfaces/srv/ReadMRegister_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
  ## @brief Original motoros2_interfaces/srv/ReadMRegister_Response.success field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_success*: bool
  ## @brief Original motoros2_interfaces/srv/ReadMRegister_Response.value field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_value*: uint16
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvReadMRegister_ResponseMinimumWireBytes* = 11
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvReadMRegister_ResponseMaximumWireBytes* = 523
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesSrvReadMRegister_ResponseCodecIdentity* = "UWVMROS1_8d6ded2876adfa2079711205cb0110a82ead6f51db05f266bf285308cd815a04"
## @brief Encode every field of complete motoros2_interfaces/srv/ReadMRegister_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesSrvReadMRegister_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 523, written)
## @brief Decode every field of complete motoros2_interfaces/srv/ReadMRegister_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesSrvReadMRegister_Response*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesSrvReadMRegister_Response): uint32 =
  wire.decode(bytes, 11, 523, value)

## @brief Complete motoros2_interfaces/srv/ReadSingleIO_Request value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 4..4 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesSrvReadSingleIO_Request* = object
  ## @brief Original motoros2_interfaces/srv/ReadSingleIO_Request.address field.
  ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_address*: uint32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvReadSingleIO_RequestMinimumWireBytes* = 4
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvReadSingleIO_RequestMaximumWireBytes* = 4
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesSrvReadSingleIO_RequestCodecIdentity* = "UWVMROS1_30e28db303b772f26b2b3cf6165a0ff79037d037d60e8115b4ee8e177f17e8bb"
## @brief Encode every field of complete motoros2_interfaces/srv/ReadSingleIO_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesSrvReadSingleIO_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 4, written)
## @brief Decode every field of complete motoros2_interfaces/srv/ReadSingleIO_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesSrvReadSingleIO_Request*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesSrvReadSingleIO_Request): uint32 =
  wire.decode(bytes, 4, 4, value)

## @brief Complete motoros2_interfaces/srv/ReadSingleIO_Response value.
## @details Retain all 4 original fields and 0 constants. Canonical extent 13..525 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesSrvReadSingleIO_Response* = object
  ## @brief Original motoros2_interfaces/srv/ReadSingleIO_Response.result_code field.
  ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint32
  ## @brief Original motoros2_interfaces/srv/ReadSingleIO_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
  ## @brief Original motoros2_interfaces/srv/ReadSingleIO_Response.success field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_success*: bool
  ## @brief Original motoros2_interfaces/srv/ReadSingleIO_Response.value field.
  ## @details Original type int32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_value*: int32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvReadSingleIO_ResponseMinimumWireBytes* = 13
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvReadSingleIO_ResponseMaximumWireBytes* = 525
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesSrvReadSingleIO_ResponseCodecIdentity* = "UWVMROS1_b42013571274e85769ffac4d47129de8b76e4a675bdef3efefebc9ee19e92082"
## @brief Encode every field of complete motoros2_interfaces/srv/ReadSingleIO_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesSrvReadSingleIO_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 525, written)
## @brief Decode every field of complete motoros2_interfaces/srv/ReadSingleIO_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesSrvReadSingleIO_Response*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesSrvReadSingleIO_Response): uint32 =
  wire.decode(bytes, 13, 525, value)

## @brief Complete motoros2_interfaces/srv/ResetError_Request value.
## @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesSrvResetError_Request* = object
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvResetError_RequestMinimumWireBytes* = 0
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvResetError_RequestMaximumWireBytes* = 0
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesSrvResetError_RequestCodecIdentity* = "UWVMROS1_2737855d0608478946e2d9ab7f06c92585199c1082ec8406a012f50ad56beae3"
## @brief Encode every field of complete motoros2_interfaces/srv/ResetError_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesSrvResetError_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 0, written)
## @brief Decode every field of complete motoros2_interfaces/srv/ResetError_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesSrvResetError_Request*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesSrvResetError_Request): uint32 =
  wire.decode(bytes, 0, 0, value)

## @brief Complete motoros2_interfaces/srv/ResetError_Response value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesSrvResetError_Response* = object
  ## @brief Original motoros2_interfaces/srv/ResetError_Response.result_code field.
  ## @details Original type motoros2_interfaces/msg/MotionReadyEnum. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_result_code*: Ros2Motoros2_interfacesMsgMotionReadyEnum
  ## @brief Original motoros2_interfaces/srv/ResetError_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvResetError_ResponseMinimumWireBytes* = 6
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvResetError_ResponseMaximumWireBytes* = 518
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesSrvResetError_ResponseCodecIdentity* = "UWVMROS1_0af14ee02c157ecc39b143225a580e475473306389ccc3ba198cf22ca47d82f3"
## @brief Encode every field of complete motoros2_interfaces/srv/ResetError_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesSrvResetError_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 518, written)
## @brief Decode every field of complete motoros2_interfaces/srv/ResetError_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesSrvResetError_Response*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesSrvResetError_Response): uint32 =
  wire.decode(bytes, 6, 518, value)

## @brief Complete motoros2_interfaces/srv/SelectMotionTool_Request value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesSrvSelectMotionTool_Request* = object
  ## @brief Original motoros2_interfaces/srv/SelectMotionTool_Request.group_number field.
  ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_group_number*: uint32
  ## @brief Original motoros2_interfaces/srv/SelectMotionTool_Request.tool_number field.
  ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_tool_number*: uint32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvSelectMotionTool_RequestMinimumWireBytes* = 8
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvSelectMotionTool_RequestMaximumWireBytes* = 8
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesSrvSelectMotionTool_RequestCodecIdentity* = "UWVMROS1_e6c884ae0a97337c1e441efe099b7869dc95205fcbca0a8082d4d9b06f5b438c"
## @brief Encode every field of complete motoros2_interfaces/srv/SelectMotionTool_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesSrvSelectMotionTool_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 8, written)
## @brief Decode every field of complete motoros2_interfaces/srv/SelectMotionTool_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesSrvSelectMotionTool_Request*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesSrvSelectMotionTool_Request): uint32 =
  wire.decode(bytes, 8, 8, value)

## @brief Complete motoros2_interfaces/srv/SelectMotionTool_Response value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 9..521 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesSrvSelectMotionTool_Response* = object
  ## @brief Original motoros2_interfaces/srv/SelectMotionTool_Response.result_code field.
  ## @details Original type motoros2_interfaces/msg/SelectionResultCodes. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_result_code*: Ros2Motoros2_interfacesMsgSelectionResultCodes
  ## @brief Original motoros2_interfaces/srv/SelectMotionTool_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
  ## @brief Original motoros2_interfaces/srv/SelectMotionTool_Response.success field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_success*: bool
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvSelectMotionTool_ResponseMinimumWireBytes* = 9
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvSelectMotionTool_ResponseMaximumWireBytes* = 521
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesSrvSelectMotionTool_ResponseCodecIdentity* = "UWVMROS1_088349a49c14c52282c25b428628462c48618c3b5202df560dcc5c9bed742640"
## @brief Encode every field of complete motoros2_interfaces/srv/SelectMotionTool_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesSrvSelectMotionTool_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 521, written)
## @brief Decode every field of complete motoros2_interfaces/srv/SelectMotionTool_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesSrvSelectMotionTool_Response*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesSrvSelectMotionTool_Response): uint32 =
  wire.decode(bytes, 9, 521, value)

## @brief Complete motoros2_interfaces/srv/StartPointQueueMode_Request value.
## @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesSrvStartPointQueueMode_Request* = object
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvStartPointQueueMode_RequestMinimumWireBytes* = 0
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvStartPointQueueMode_RequestMaximumWireBytes* = 0
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesSrvStartPointQueueMode_RequestCodecIdentity* = "UWVMROS1_58a4827fc6535ef0ffc64ee25c5c4af75aa0fe199fa0350a88a95d2e991164a1"
## @brief Encode every field of complete motoros2_interfaces/srv/StartPointQueueMode_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesSrvStartPointQueueMode_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 0, written)
## @brief Decode every field of complete motoros2_interfaces/srv/StartPointQueueMode_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesSrvStartPointQueueMode_Request*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesSrvStartPointQueueMode_Request): uint32 =
  wire.decode(bytes, 0, 0, value)

## @brief Complete motoros2_interfaces/srv/StartPointQueueMode_Response value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesSrvStartPointQueueMode_Response* = object
  ## @brief Original motoros2_interfaces/srv/StartPointQueueMode_Response.result_code field.
  ## @details Original type motoros2_interfaces/msg/MotionReadyEnum. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_result_code*: Ros2Motoros2_interfacesMsgMotionReadyEnum
  ## @brief Original motoros2_interfaces/srv/StartPointQueueMode_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvStartPointQueueMode_ResponseMinimumWireBytes* = 6
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvStartPointQueueMode_ResponseMaximumWireBytes* = 518
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesSrvStartPointQueueMode_ResponseCodecIdentity* = "UWVMROS1_bc553d5640e1c4644a5d5bdc2dfcefc9dbe789ef1e2a23dd620f08963467b6ff"
## @brief Encode every field of complete motoros2_interfaces/srv/StartPointQueueMode_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesSrvStartPointQueueMode_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 518, written)
## @brief Decode every field of complete motoros2_interfaces/srv/StartPointQueueMode_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesSrvStartPointQueueMode_Response*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesSrvStartPointQueueMode_Response): uint32 =
  wire.decode(bytes, 6, 518, value)

## @brief Complete motoros2_interfaces/srv/StartTrajMode_Request value.
## @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesSrvStartTrajMode_Request* = object
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvStartTrajMode_RequestMinimumWireBytes* = 0
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvStartTrajMode_RequestMaximumWireBytes* = 0
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesSrvStartTrajMode_RequestCodecIdentity* = "UWVMROS1_0b8b2ad5db5901047035e1070b675618afc516a1ae8c3308cfdcad1174d34789"
## @brief Encode every field of complete motoros2_interfaces/srv/StartTrajMode_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesSrvStartTrajMode_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 0, written)
## @brief Decode every field of complete motoros2_interfaces/srv/StartTrajMode_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesSrvStartTrajMode_Request*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesSrvStartTrajMode_Request): uint32 =
  wire.decode(bytes, 0, 0, value)

## @brief Complete motoros2_interfaces/srv/StartTrajMode_Response value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesSrvStartTrajMode_Response* = object
  ## @brief Original motoros2_interfaces/srv/StartTrajMode_Response.result_code field.
  ## @details Original type motoros2_interfaces/msg/MotionReadyEnum. Preserve declared units, frame,
  ## signedness and field order. Backing storage belongs to this value; constructing or copying it
  ## creates no native ROS owner.
  field_result_code*: Ros2Motoros2_interfacesMsgMotionReadyEnum
  ## @brief Original motoros2_interfaces/srv/StartTrajMode_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvStartTrajMode_ResponseMinimumWireBytes* = 6
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvStartTrajMode_ResponseMaximumWireBytes* = 518
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesSrvStartTrajMode_ResponseCodecIdentity* = "UWVMROS1_170e25737e6a2b06f5d5d9f331d748c97cf0306284271757953a4a801c722939"
## @brief Encode every field of complete motoros2_interfaces/srv/StartTrajMode_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesSrvStartTrajMode_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 518, written)
## @brief Decode every field of complete motoros2_interfaces/srv/StartTrajMode_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesSrvStartTrajMode_Response*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesSrvStartTrajMode_Response): uint32 =
  wire.decode(bytes, 6, 518, value)

## @brief Complete motoros2_interfaces/srv/WriteGroupIO_Request value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 5..5 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesSrvWriteGroupIO_Request* = object
  ## @brief Original motoros2_interfaces/srv/WriteGroupIO_Request.address field.
  ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_address*: uint32
  ## @brief Original motoros2_interfaces/srv/WriteGroupIO_Request.value field.
  ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_value*: uint8
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvWriteGroupIO_RequestMinimumWireBytes* = 5
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvWriteGroupIO_RequestMaximumWireBytes* = 5
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesSrvWriteGroupIO_RequestCodecIdentity* = "UWVMROS1_2d348ed71408a0dd1dd28ee2ed2ca1db56bb07a14546d0fe13ccf64e8553d52c"
## @brief Encode every field of complete motoros2_interfaces/srv/WriteGroupIO_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesSrvWriteGroupIO_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 5, written)
## @brief Decode every field of complete motoros2_interfaces/srv/WriteGroupIO_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesSrvWriteGroupIO_Request*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesSrvWriteGroupIO_Request): uint32 =
  wire.decode(bytes, 5, 5, value)

## @brief Complete motoros2_interfaces/srv/WriteGroupIO_Response value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 9..521 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesSrvWriteGroupIO_Response* = object
  ## @brief Original motoros2_interfaces/srv/WriteGroupIO_Response.result_code field.
  ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint32
  ## @brief Original motoros2_interfaces/srv/WriteGroupIO_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
  ## @brief Original motoros2_interfaces/srv/WriteGroupIO_Response.success field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_success*: bool
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvWriteGroupIO_ResponseMinimumWireBytes* = 9
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvWriteGroupIO_ResponseMaximumWireBytes* = 521
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesSrvWriteGroupIO_ResponseCodecIdentity* = "UWVMROS1_06769934711b27fd32cdcbf849504e160189ee82ea32e0e71a2903af47c5d766"
## @brief Encode every field of complete motoros2_interfaces/srv/WriteGroupIO_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesSrvWriteGroupIO_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 521, written)
## @brief Decode every field of complete motoros2_interfaces/srv/WriteGroupIO_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesSrvWriteGroupIO_Response*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesSrvWriteGroupIO_Response): uint32 =
  wire.decode(bytes, 9, 521, value)

## @brief Complete motoros2_interfaces/srv/WriteMRegister_Request value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 6..6 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesSrvWriteMRegister_Request* = object
  ## @brief Original motoros2_interfaces/srv/WriteMRegister_Request.address field.
  ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_address*: uint32
  ## @brief Original motoros2_interfaces/srv/WriteMRegister_Request.value field.
  ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_value*: uint16
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvWriteMRegister_RequestMinimumWireBytes* = 6
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvWriteMRegister_RequestMaximumWireBytes* = 6
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesSrvWriteMRegister_RequestCodecIdentity* = "UWVMROS1_8df4536be27f0632052725d5616fd5b047f49fc306fc7735854d9de4fb15d4ef"
## @brief Encode every field of complete motoros2_interfaces/srv/WriteMRegister_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesSrvWriteMRegister_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 6, written)
## @brief Decode every field of complete motoros2_interfaces/srv/WriteMRegister_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesSrvWriteMRegister_Request*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesSrvWriteMRegister_Request): uint32 =
  wire.decode(bytes, 6, 6, value)

## @brief Complete motoros2_interfaces/srv/WriteMRegister_Response value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 9..521 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesSrvWriteMRegister_Response* = object
  ## @brief Original motoros2_interfaces/srv/WriteMRegister_Response.result_code field.
  ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint32
  ## @brief Original motoros2_interfaces/srv/WriteMRegister_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
  ## @brief Original motoros2_interfaces/srv/WriteMRegister_Response.success field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_success*: bool
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvWriteMRegister_ResponseMinimumWireBytes* = 9
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvWriteMRegister_ResponseMaximumWireBytes* = 521
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesSrvWriteMRegister_ResponseCodecIdentity* = "UWVMROS1_a61cc0596a7545ef4836bdc64dc9d6b4ed99b0abd18a726eb37e6215f51c729a"
## @brief Encode every field of complete motoros2_interfaces/srv/WriteMRegister_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesSrvWriteMRegister_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 521, written)
## @brief Decode every field of complete motoros2_interfaces/srv/WriteMRegister_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesSrvWriteMRegister_Response*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesSrvWriteMRegister_Response): uint32 =
  wire.decode(bytes, 9, 521, value)

## @brief Complete motoros2_interfaces/srv/WriteSingleIO_Request value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesSrvWriteSingleIO_Request* = object
  ## @brief Original motoros2_interfaces/srv/WriteSingleIO_Request.address field.
  ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_address*: uint32
  ## @brief Original motoros2_interfaces/srv/WriteSingleIO_Request.value field.
  ## @details Original type int32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_value*: int32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvWriteSingleIO_RequestMinimumWireBytes* = 8
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvWriteSingleIO_RequestMaximumWireBytes* = 8
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesSrvWriteSingleIO_RequestCodecIdentity* = "UWVMROS1_6361affcd8b7ebaaa1fe6b5806e64a7c18f7a96a1178614cfce487de813a6392"
## @brief Encode every field of complete motoros2_interfaces/srv/WriteSingleIO_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesSrvWriteSingleIO_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 8, written)
## @brief Decode every field of complete motoros2_interfaces/srv/WriteSingleIO_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesSrvWriteSingleIO_Request*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesSrvWriteSingleIO_Request): uint32 =
  wire.decode(bytes, 8, 8, value)

## @brief Complete motoros2_interfaces/srv/WriteSingleIO_Response value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 9..521 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Motoros2_interfacesSrvWriteSingleIO_Response* = object
  ## @brief Original motoros2_interfaces/srv/WriteSingleIO_Response.result_code field.
  ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_result_code*: uint32
  ## @brief Original motoros2_interfaces/srv/WriteSingleIO_Response.message field.
  ## @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  ## frame, signedness and field order. Backing storage belongs to this value; constructing or
  ## copying it creates no native ROS owner.
  field_message*: NativeText[512, false]
  ## @brief Original motoros2_interfaces/srv/WriteSingleIO_Response.success field.
  ## @details Original type bool. Preserve declared units, frame, signedness and field order.
  ## Backing storage belongs to this value; constructing or copying it creates no native ROS owner.
  field_success*: bool
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvWriteSingleIO_ResponseMinimumWireBytes* = 9
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Motoros2_interfacesSrvWriteSingleIO_ResponseMaximumWireBytes* = 521
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Motoros2_interfacesSrvWriteSingleIO_ResponseCodecIdentity* = "UWVMROS1_12328db372a572fe9b0c7207331a7971d5d7c9033376e3be410db579b85fb794"
## @brief Encode every field of complete motoros2_interfaces/srv/WriteSingleIO_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Motoros2_interfacesSrvWriteSingleIO_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 521, written)
## @brief Decode every field of complete motoros2_interfaces/srv/WriteSingleIO_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Motoros2_interfacesSrvWriteSingleIO_Response*(bytes: openArray[byte]; value: var Ros2Motoros2_interfacesSrvWriteSingleIO_Response): uint32 =
  wire.decode(bytes, 9, 521, value)

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

## @brief Complete tf2_msgs/msg/TFMessage value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 4..10372 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Tf2_msgsMsgTFMessage* = object
  ## @brief Original tf2_msgs/msg/TFMessage.transforms field.
  ## @details Original type geometry_msgs/msg/TransformStamped. Shape sequence; bound/count 16
  ## elements. Preserve declared units, frame, signedness and field order. Backing storage belongs
  ## to this value; constructing or copying it creates no native ROS owner.
  field_transforms*: NativeSequence[Ros2Geometry_msgsMsgTransformStamped, 16]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Tf2_msgsMsgTFMessageMinimumWireBytes* = 4
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Tf2_msgsMsgTFMessageMaximumWireBytes* = 10372
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Tf2_msgsMsgTFMessageCodecIdentity* = "UWVMROS1_4428597a9c2783fd8f0f083a16e8fd1b3d286487f4800c55fcc5571e7f79e65a"
## @brief Encode every field of complete tf2_msgs/msg/TFMessage.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Tf2_msgsMsgTFMessage; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 10372, written)
## @brief Decode every field of complete tf2_msgs/msg/TFMessage.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Tf2_msgsMsgTFMessage*(bytes: openArray[byte]; value: var Ros2Tf2_msgsMsgTFMessage): uint32 =
  wire.decode(bytes, 4, 10372, value)


# DEFAULT_FACTORIES_BEGIN

proc initRos2Builtin_interfacesMsgDuration*(value: var Ros2Builtin_interfacesMsgDuration): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Builtin_interfacesMsgDuration(bytes, value)

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

proc initRos2Geometry_msgsMsgTransformStamped*(value: var Ros2Geometry_msgsMsgTransformStamped): uint32 =
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
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 240'u8, 63'u8
    ]
  decodeRos2Geometry_msgsMsgTransformStamped(bytes, value)

proc initRos2Industrial_msgsMsgDebugLevel*(value: var Ros2Industrial_msgsMsgDebugLevel): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8]
  decodeRos2Industrial_msgsMsgDebugLevel(bytes, value)

proc initRos2Industrial_msgsMsgDeviceInfo*(value: var Ros2Industrial_msgsMsgDeviceInfo): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos2Industrial_msgsMsgDeviceInfo(bytes, value)

proc initRos2Industrial_msgsMsgRobotMode*(value: var Ros2Industrial_msgsMsgRobotMode): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8]
  decodeRos2Industrial_msgsMsgRobotMode(bytes, value)

proc initRos2Industrial_msgsMsgTriState*(value: var Ros2Industrial_msgsMsgTriState): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8]
  decodeRos2Industrial_msgsMsgTriState(bytes, value)

proc initRos2Industrial_msgsMsgRobotStatus*(value: var Ros2Industrial_msgsMsgRobotStatus): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos2Industrial_msgsMsgRobotStatus(bytes, value)

proc initRos2Industrial_msgsMsgServiceReturnCode*(value: var Ros2Industrial_msgsMsgServiceReturnCode): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8]
  decodeRos2Industrial_msgsMsgServiceReturnCode(bytes, value)

proc initRos2Industrial_msgsSrvCmdJointTrajectory_Request*(value: var Ros2Industrial_msgsSrvCmdJointTrajectory_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos2Industrial_msgsSrvCmdJointTrajectory_Request(bytes, value)

proc initRos2Industrial_msgsSrvCmdJointTrajectory_Response*(value: var Ros2Industrial_msgsSrvCmdJointTrajectory_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8]
  decodeRos2Industrial_msgsSrvCmdJointTrajectory_Response(bytes, value)

proc initRos2Industrial_msgsSrvGetRobotInfo_Request*(value: var Ros2Industrial_msgsSrvGetRobotInfo_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes: array[0, byte] = []
  decodeRos2Industrial_msgsSrvGetRobotInfo_Request(bytes, value)

proc initRos2Industrial_msgsSrvGetRobotInfo_Response*(value: var Ros2Industrial_msgsSrvGetRobotInfo_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8
    ]
  decodeRos2Industrial_msgsSrvGetRobotInfo_Response(bytes, value)

proc initRos2Industrial_msgsSrvSetDrivePower_Request*(value: var Ros2Industrial_msgsSrvSetDrivePower_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8]
  decodeRos2Industrial_msgsSrvSetDrivePower_Request(bytes, value)

proc initRos2Industrial_msgsSrvSetDrivePower_Response*(value: var Ros2Industrial_msgsSrvSetDrivePower_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8]
  decodeRos2Industrial_msgsSrvSetDrivePower_Response(bytes, value)

proc initRos2Industrial_msgsSrvSetRemoteLoggerLevel_Request*(value: var Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8]
  decodeRos2Industrial_msgsSrvSetRemoteLoggerLevel_Request(bytes, value)

proc initRos2Industrial_msgsSrvSetRemoteLoggerLevel_Response*(value: var Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8]
  decodeRos2Industrial_msgsSrvSetRemoteLoggerLevel_Response(bytes, value)

proc initRos2Industrial_msgsSrvStartMotion_Request*(value: var Ros2Industrial_msgsSrvStartMotion_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes: array[0, byte] = []
  decodeRos2Industrial_msgsSrvStartMotion_Request(bytes, value)

proc initRos2Industrial_msgsSrvStartMotion_Response*(value: var Ros2Industrial_msgsSrvStartMotion_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8]
  decodeRos2Industrial_msgsSrvStartMotion_Response(bytes, value)

proc initRos2Industrial_msgsSrvStopMotion_Request*(value: var Ros2Industrial_msgsSrvStopMotion_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes: array[0, byte] = []
  decodeRos2Industrial_msgsSrvStopMotion_Request(bytes, value)

proc initRos2Industrial_msgsSrvStopMotion_Response*(value: var Ros2Industrial_msgsSrvStopMotion_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8]
  decodeRos2Industrial_msgsSrvStopMotion_Response(bytes, value)

proc initRos2Motoros2_interfacesMsgAlarmCauseRemedy*(value: var Ros2Motoros2_interfacesMsgAlarmCauseRemedy): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Motoros2_interfacesMsgAlarmCauseRemedy(bytes, value)

proc initRos2Motoros2_interfacesMsgAlarmInfo*(value: var Ros2Motoros2_interfacesMsgAlarmInfo): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos2Motoros2_interfacesMsgAlarmInfo(bytes, value)

proc initRos2Motoros2_interfacesMsgErrorInfo*(value: var Ros2Motoros2_interfacesMsgErrorInfo): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos2Motoros2_interfacesMsgErrorInfo(bytes, value)

proc initRos2Motoros2_interfacesMsgInformJobCrudResultCodes*(value: var Ros2Motoros2_interfacesMsgInformJobCrudResultCodes): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes: array[0, byte] = []
  decodeRos2Motoros2_interfacesMsgInformJobCrudResultCodes(bytes, value)

proc initRos2Motoros2_interfacesMsgInitTrajEnum*(value: var Ros2Motoros2_interfacesMsgInitTrajEnum): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8]
  decodeRos2Motoros2_interfacesMsgInitTrajEnum(bytes, value)

proc initRos2Motoros2_interfacesMsgIoResultCodes*(value: var Ros2Motoros2_interfacesMsgIoResultCodes): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes: array[0, byte] = []
  decodeRos2Motoros2_interfacesMsgIoResultCodes(bytes, value)

proc initRos2Motoros2_interfacesMsgMotionReadyEnum*(value: var Ros2Motoros2_interfacesMsgMotionReadyEnum): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8]
  decodeRos2Motoros2_interfacesMsgMotionReadyEnum(bytes, value)

proc initRos2Motoros2_interfacesMsgQueueResultEnum*(value: var Ros2Motoros2_interfacesMsgQueueResultEnum): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8]
  decodeRos2Motoros2_interfacesMsgQueueResultEnum(bytes, value)

proc initRos2Motoros2_interfacesMsgSelectionResultCodes*(value: var Ros2Motoros2_interfacesMsgSelectionResultCodes): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Motoros2_interfacesMsgSelectionResultCodes(bytes, value)

proc initRos2Motoros2_interfacesSrvGetActiveAlarmInfo_Request*(value: var Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes: array[0, byte] = []
  decodeRos2Motoros2_interfacesSrvGetActiveAlarmInfo_Request(bytes, value)

proc initRos2Motoros2_interfacesSrvGetActiveAlarmInfo_Response*(value: var Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Motoros2_interfacesSrvGetActiveAlarmInfo_Response(bytes, value)

proc initRos2Motoros2_interfacesSrvListInformJobs_Request*(value: var Ros2Motoros2_interfacesSrvListInformJobs_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes: array[0, byte] = []
  decodeRos2Motoros2_interfacesSrvListInformJobs_Request(bytes, value)

proc initRos2Motoros2_interfacesSrvListInformJobs_Response*(value: var Ros2Motoros2_interfacesSrvListInformJobs_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Motoros2_interfacesSrvListInformJobs_Response(bytes, value)

proc initRos2Motoros2_interfacesSrvQueueTrajPoint_Request*(value: var Ros2Motoros2_interfacesSrvQueueTrajPoint_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8,
        0'u8, 0'u8, 0'u8, 0'u8
    ]
  decodeRos2Motoros2_interfacesSrvQueueTrajPoint_Request(bytes, value)

proc initRos2Motoros2_interfacesSrvQueueTrajPoint_Response*(value: var Ros2Motoros2_interfacesSrvQueueTrajPoint_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Motoros2_interfacesSrvQueueTrajPoint_Response(bytes, value)

proc initRos2Motoros2_interfacesSrvReadGroupIO_Request*(value: var Ros2Motoros2_interfacesSrvReadGroupIO_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Motoros2_interfacesSrvReadGroupIO_Request(bytes, value)

proc initRos2Motoros2_interfacesSrvReadGroupIO_Response*(value: var Ros2Motoros2_interfacesSrvReadGroupIO_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Motoros2_interfacesSrvReadGroupIO_Response(bytes, value)

proc initRos2Motoros2_interfacesSrvReadMRegister_Request*(value: var Ros2Motoros2_interfacesSrvReadMRegister_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Motoros2_interfacesSrvReadMRegister_Request(bytes, value)

proc initRos2Motoros2_interfacesSrvReadMRegister_Response*(value: var Ros2Motoros2_interfacesSrvReadMRegister_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Motoros2_interfacesSrvReadMRegister_Response(bytes, value)

proc initRos2Motoros2_interfacesSrvReadSingleIO_Request*(value: var Ros2Motoros2_interfacesSrvReadSingleIO_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Motoros2_interfacesSrvReadSingleIO_Request(bytes, value)

proc initRos2Motoros2_interfacesSrvReadSingleIO_Response*(value: var Ros2Motoros2_interfacesSrvReadSingleIO_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Motoros2_interfacesSrvReadSingleIO_Response(bytes, value)

proc initRos2Motoros2_interfacesSrvResetError_Request*(value: var Ros2Motoros2_interfacesSrvResetError_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes: array[0, byte] = []
  decodeRos2Motoros2_interfacesSrvResetError_Request(bytes, value)

proc initRos2Motoros2_interfacesSrvResetError_Response*(value: var Ros2Motoros2_interfacesSrvResetError_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Motoros2_interfacesSrvResetError_Response(bytes, value)

proc initRos2Motoros2_interfacesSrvSelectMotionTool_Request*(value: var Ros2Motoros2_interfacesSrvSelectMotionTool_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Motoros2_interfacesSrvSelectMotionTool_Request(bytes, value)

proc initRos2Motoros2_interfacesSrvSelectMotionTool_Response*(value: var Ros2Motoros2_interfacesSrvSelectMotionTool_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Motoros2_interfacesSrvSelectMotionTool_Response(bytes, value)

proc initRos2Motoros2_interfacesSrvStartPointQueueMode_Request*(value: var Ros2Motoros2_interfacesSrvStartPointQueueMode_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes: array[0, byte] = []
  decodeRos2Motoros2_interfacesSrvStartPointQueueMode_Request(bytes, value)

proc initRos2Motoros2_interfacesSrvStartPointQueueMode_Response*(value: var Ros2Motoros2_interfacesSrvStartPointQueueMode_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Motoros2_interfacesSrvStartPointQueueMode_Response(bytes, value)

proc initRos2Motoros2_interfacesSrvStartTrajMode_Request*(value: var Ros2Motoros2_interfacesSrvStartTrajMode_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes: array[0, byte] = []
  decodeRos2Motoros2_interfacesSrvStartTrajMode_Request(bytes, value)

proc initRos2Motoros2_interfacesSrvStartTrajMode_Response*(value: var Ros2Motoros2_interfacesSrvStartTrajMode_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Motoros2_interfacesSrvStartTrajMode_Response(bytes, value)

proc initRos2Motoros2_interfacesSrvWriteGroupIO_Request*(value: var Ros2Motoros2_interfacesSrvWriteGroupIO_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Motoros2_interfacesSrvWriteGroupIO_Request(bytes, value)

proc initRos2Motoros2_interfacesSrvWriteGroupIO_Response*(value: var Ros2Motoros2_interfacesSrvWriteGroupIO_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Motoros2_interfacesSrvWriteGroupIO_Response(bytes, value)

proc initRos2Motoros2_interfacesSrvWriteMRegister_Request*(value: var Ros2Motoros2_interfacesSrvWriteMRegister_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Motoros2_interfacesSrvWriteMRegister_Request(bytes, value)

proc initRos2Motoros2_interfacesSrvWriteMRegister_Response*(value: var Ros2Motoros2_interfacesSrvWriteMRegister_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Motoros2_interfacesSrvWriteMRegister_Response(bytes, value)

proc initRos2Motoros2_interfacesSrvWriteSingleIO_Request*(value: var Ros2Motoros2_interfacesSrvWriteSingleIO_Request): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Motoros2_interfacesSrvWriteSingleIO_Request(bytes, value)

proc initRos2Motoros2_interfacesSrvWriteSingleIO_Response*(value: var Ros2Motoros2_interfacesSrvWriteSingleIO_Response): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Motoros2_interfacesSrvWriteSingleIO_Response(bytes, value)

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

proc initRos2Tf2_msgsMsgTFMessage*(value: var Ros2Tf2_msgsMsgTFMessage): uint32 =
  ## @brief Construct every original native default through the complete pure codec.
  ## @param value Caller-owned complete output; usable only on zero.
  ## @return Zero after independent initialization or the original codec error.
  ## @details Source-derived default bytes preserve nonzero scalars, strings and nested values.
  const bytes = [0'u8, 0'u8, 0'u8, 0'u8]
  decodeRos2Tf2_msgsMsgTFMessage(bytes, value)
