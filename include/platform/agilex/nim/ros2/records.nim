## @file records.nim
## @brief Complete owned original agilex ROS 2 native records and codecs.
## @details Generated from the admitted source-pinned catalog; no ROS authority is created.
import native/nim/wire

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

## @brief Complete geometry_msgs/msg/Point value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 24..24 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Geometry_msgsMsgPoint* = object
    ## @brief Original geometry_msgs/msg/Point.x field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_x*: float64
    ## @brief Original geometry_msgs/msg/Point.y field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_y*: float64
    ## @brief Original geometry_msgs/msg/Point.z field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_z*: float64
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Geometry_msgsMsgPoint*(): Ros2Geometry_msgsMsgPoint =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Geometry_msgsMsgPointMinimumWireBytes* = 24
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Geometry_msgsMsgPointMaximumWireBytes* = 24
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Geometry_msgsMsgPointCodecIdentity* = "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616"
## @brief Encode every field of complete geometry_msgs/msg/Point.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Geometry_msgsMsgPoint; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 24, written)
## @brief Decode every field of complete geometry_msgs/msg/Point.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Geometry_msgsMsgPoint*(bytes: openArray[byte]; value: var Ros2Geometry_msgsMsgPoint): uint32 =
  wire.decode(bytes, 24, 24, value)

## @brief Complete geometry_msgs/msg/Quaternion value.
## @details Retain all 4 original fields and 0 constants. Canonical extent 32..32 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Geometry_msgsMsgQuaternion* = object
    ## @brief Original geometry_msgs/msg/Quaternion.x field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_x*: float64
    ## @brief Original geometry_msgs/msg/Quaternion.y field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_y*: float64
    ## @brief Original geometry_msgs/msg/Quaternion.z field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_z*: float64
    ## @brief Original geometry_msgs/msg/Quaternion.w field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_w*: float64
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Geometry_msgsMsgQuaternion*(): Ros2Geometry_msgsMsgQuaternion =
    result.field_x = cast[float64](0x0'u64)
    result.field_y = cast[float64](0x0'u64)
    result.field_z = cast[float64](0x0'u64)
    result.field_w = cast[float64](0x3ff0000000000000'u64)
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

## @brief Complete geometry_msgs/msg/Pose value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 56..56 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Geometry_msgsMsgPose* = object
    ## @brief Original geometry_msgs/msg/Pose.position field.
    ## @details Original type geometry_msgs/msg/Point. Preserve declared units, frame, signedness
    ## and field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_position*: Ros2Geometry_msgsMsgPoint
    ## @brief Original geometry_msgs/msg/Pose.orientation field.
    ## @details Original type geometry_msgs/msg/Quaternion. Preserve declared units, frame,
    ## signedness and field order. Backing storage belongs to this value; constructing or copying it
    ## creates no native ROS owner.
    field_orientation*: Ros2Geometry_msgsMsgQuaternion
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Geometry_msgsMsgPose*(): Ros2Geometry_msgsMsgPose =
    result.field_position = initRos2Geometry_msgsMsgPoint()
    result.field_orientation = initRos2Geometry_msgsMsgQuaternion()
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Geometry_msgsMsgPoseMinimumWireBytes* = 56
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Geometry_msgsMsgPoseMaximumWireBytes* = 56
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Geometry_msgsMsgPoseCodecIdentity* = "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777"
## @brief Encode every field of complete geometry_msgs/msg/Pose.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Geometry_msgsMsgPose; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 56, written)
## @brief Decode every field of complete geometry_msgs/msg/Pose.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Geometry_msgsMsgPose*(bytes: openArray[byte]; value: var Ros2Geometry_msgsMsgPose): uint32 =
  wire.decode(bytes, 56, 56, value)

## @brief Complete geometry_msgs/msg/PoseWithCovariance value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 344..344 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Geometry_msgsMsgPoseWithCovariance* = object
    ## @brief Original geometry_msgs/msg/PoseWithCovariance.pose field.
    ## @details Original type geometry_msgs/msg/Pose. Preserve declared units, frame, signedness and
    ## field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_pose*: Ros2Geometry_msgsMsgPose
    ## @brief Original geometry_msgs/msg/PoseWithCovariance.covariance field.
    ## @details Original type float64. Shape array; bound/count 36 elements. Preserve declared
    ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
    ## or copying it creates no native ROS owner.
    field_covariance*: array[36, float64]
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Geometry_msgsMsgPoseWithCovariance*(): Ros2Geometry_msgsMsgPoseWithCovariance =
    result.field_pose = initRos2Geometry_msgsMsgPose()
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Geometry_msgsMsgPoseWithCovarianceMinimumWireBytes* = 344
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Geometry_msgsMsgPoseWithCovarianceMaximumWireBytes* = 344
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Geometry_msgsMsgPoseWithCovarianceCodecIdentity* = "UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2"
## @brief Encode every field of complete geometry_msgs/msg/PoseWithCovariance.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Geometry_msgsMsgPoseWithCovariance; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 344, written)
## @brief Decode every field of complete geometry_msgs/msg/PoseWithCovariance.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Geometry_msgsMsgPoseWithCovariance*(bytes: openArray[byte]; value: var Ros2Geometry_msgsMsgPoseWithCovariance): uint32 =
  wire.decode(bytes, 344, 344, value)

## @brief Complete geometry_msgs/msg/Vector3 value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 24..24 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Geometry_msgsMsgVector3* = object
    ## @brief Original geometry_msgs/msg/Vector3.x field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_x*: float64
    ## @brief Original geometry_msgs/msg/Vector3.y field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_y*: float64
    ## @brief Original geometry_msgs/msg/Vector3.z field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_z*: float64
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Geometry_msgsMsgVector3*(): Ros2Geometry_msgsMsgVector3 =
    discard
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
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Geometry_msgsMsgTwist*(): Ros2Geometry_msgsMsgTwist =
    result.field_linear = initRos2Geometry_msgsMsgVector3()
    result.field_angular = initRos2Geometry_msgsMsgVector3()
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

## @brief Complete geometry_msgs/msg/TwistWithCovariance value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 336..336 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Geometry_msgsMsgTwistWithCovariance* = object
    ## @brief Original geometry_msgs/msg/TwistWithCovariance.twist field.
    ## @details Original type geometry_msgs/msg/Twist. Preserve declared units, frame, signedness
    ## and field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_twist*: Ros2Geometry_msgsMsgTwist
    ## @brief Original geometry_msgs/msg/TwistWithCovariance.covariance field.
    ## @details Original type float64. Shape array; bound/count 36 elements. Preserve declared
    ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
    ## or copying it creates no native ROS owner.
    field_covariance*: array[36, float64]
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Geometry_msgsMsgTwistWithCovariance*(): Ros2Geometry_msgsMsgTwistWithCovariance =
    result.field_twist = initRos2Geometry_msgsMsgTwist()
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Geometry_msgsMsgTwistWithCovarianceMinimumWireBytes* = 336
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Geometry_msgsMsgTwistWithCovarianceMaximumWireBytes* = 336
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Geometry_msgsMsgTwistWithCovarianceCodecIdentity* = "UWVMROS1_96c9fddad7b7c240e850d8c27ddb5f8343764cac791ef9e210196f7941aaf404"
## @brief Encode every field of complete geometry_msgs/msg/TwistWithCovariance.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Geometry_msgsMsgTwistWithCovariance; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 336, written)
## @brief Decode every field of complete geometry_msgs/msg/TwistWithCovariance.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Geometry_msgsMsgTwistWithCovariance*(bytes: openArray[byte]; value: var Ros2Geometry_msgsMsgTwistWithCovariance): uint32 =
  wire.decode(bytes, 336, 336, value)

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

## @brief Complete nav_msgs/msg/Odometry value.
## @details Retain all 4 original fields and 0 constants. Canonical extent 696..952 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Nav_msgsMsgOdometry* = object
    ## @brief Original nav_msgs/msg/Odometry.header field.
    ## @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    ## field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_header*: Ros2Std_msgsMsgHeader
    ## @brief Original nav_msgs/msg/Odometry.child_frame_id field.
    ## @details Original type string. String bound 128 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_child_frame_id*: NativeText[128, false]
    ## @brief Original nav_msgs/msg/Odometry.pose field.
    ## @details Original type geometry_msgs/msg/PoseWithCovariance. Preserve declared units, frame,
    ## signedness and field order. Backing storage belongs to this value; constructing or copying it
    ## creates no native ROS owner.
    field_pose*: Ros2Geometry_msgsMsgPoseWithCovariance
    ## @brief Original nav_msgs/msg/Odometry.twist field.
    ## @details Original type geometry_msgs/msg/TwistWithCovariance. Preserve declared units, frame,
    ## signedness and field order. Backing storage belongs to this value; constructing or copying it
    ## creates no native ROS owner.
    field_twist*: Ros2Geometry_msgsMsgTwistWithCovariance
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Nav_msgsMsgOdometry*(): Ros2Nav_msgsMsgOdometry =
    result.field_header = initRos2Std_msgsMsgHeader()
    result.field_pose = initRos2Geometry_msgsMsgPoseWithCovariance()
    result.field_twist = initRos2Geometry_msgsMsgTwistWithCovariance()
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Nav_msgsMsgOdometryMinimumWireBytes* = 696
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Nav_msgsMsgOdometryMaximumWireBytes* = 952
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Nav_msgsMsgOdometryCodecIdentity* = "UWVMROS1_fdfdd74c211c22bfd167c3e33a098fe21198cb095bbd0313fc765f38b1f334ec"
## @brief Encode every field of complete nav_msgs/msg/Odometry.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Nav_msgsMsgOdometry; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 952, written)
## @brief Decode every field of complete nav_msgs/msg/Odometry.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Nav_msgsMsgOdometry*(bytes: openArray[byte]; value: var Ros2Nav_msgsMsgOdometry): uint32 =
  wire.decode(bytes, 696, 952, value)

## @brief Complete scout_msgs/msg/ScoutActuatorState value.
## @details Retain all 5 original fields and 0 constants. Canonical extent 19..19 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Scout_msgsMsgScoutActuatorState* = object
    ## @brief Original scout_msgs/msg/ScoutActuatorState.rpm field.
    ## @details Original type int16. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_rpm*: int16
    ## @brief Original scout_msgs/msg/ScoutActuatorState.current field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_current*: float64
    ## @brief Original scout_msgs/msg/ScoutActuatorState.driver_voltage field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_driver_voltage*: float32
    ## @brief Original scout_msgs/msg/ScoutActuatorState.driver_temperature field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_driver_temperature*: float32
    ## @brief Original scout_msgs/msg/ScoutActuatorState.motor_temperature field.
    ## @details Original type int8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_motor_temperature*: int8
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Scout_msgsMsgScoutActuatorState*(): Ros2Scout_msgsMsgScoutActuatorState =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Scout_msgsMsgScoutActuatorStateMinimumWireBytes* = 19
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Scout_msgsMsgScoutActuatorStateMaximumWireBytes* = 19
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Scout_msgsMsgScoutActuatorStateCodecIdentity* = "UWVMROS1_e7955c07aedaf42f8d97f873d60ae5c0dfc562faa1d64848f11b333f797350c6"
## @brief Encode every field of complete scout_msgs/msg/ScoutActuatorState.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Scout_msgsMsgScoutActuatorState; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 19, written)
## @brief Decode every field of complete scout_msgs/msg/ScoutActuatorState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Scout_msgsMsgScoutActuatorState*(bytes: openArray[byte]; value: var Ros2Scout_msgsMsgScoutActuatorState): uint32 =
  wire.decode(bytes, 19, 19, value)

## @brief Complete scout_msgs/msg/ScoutLightCmd value.
## @details Retain all 5 original fields and 4 constants. Canonical extent 5..5 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Scout_msgsMsgScoutLightCmd* = object
    ## @brief Original scout_msgs/msg/ScoutLightCmd.cmd_ctrl_allowed field.
    ## @details Original type bool. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_cmd_ctrl_allowed*: bool
    ## @brief Original scout_msgs/msg/ScoutLightCmd.front_mode field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_front_mode*: uint8
    ## @brief Original scout_msgs/msg/ScoutLightCmd.front_custom_value field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_front_custom_value*: uint8
    ## @brief Original scout_msgs/msg/ScoutLightCmd.rear_mode field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_rear_mode*: uint8
    ## @brief Original scout_msgs/msg/ScoutLightCmd.rear_custom_value field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_rear_custom_value*: uint8
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Scout_msgsMsgScoutLightCmd*(): Ros2Scout_msgsMsgScoutLightCmd =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Scout_msgsMsgScoutLightCmdMinimumWireBytes* = 5
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Scout_msgsMsgScoutLightCmdMaximumWireBytes* = 5
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Scout_msgsMsgScoutLightCmdCodecIdentity* = "UWVMROS1_a82206813682fbf1a6b41009c12191ad9ce47c98444d8ea9792e7b212ee602d7"
## @brief Original scout_msgs/msg/ScoutLightCmd.LIGHT_CONST_OFF constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Scout_msgsMsgScoutLightCmd_LIGHT_CONST_OFF*: uint8 = 0'u8
## @brief Original scout_msgs/msg/ScoutLightCmd.LIGHT_CONST_ON constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Scout_msgsMsgScoutLightCmd_LIGHT_CONST_ON*: uint8 = 1'u8
## @brief Original scout_msgs/msg/ScoutLightCmd.LIGHT_BREATH constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Scout_msgsMsgScoutLightCmd_LIGHT_BREATH*: uint8 = 2'u8
## @brief Original scout_msgs/msg/ScoutLightCmd.LIGHT_CUSTOM constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Scout_msgsMsgScoutLightCmd_LIGHT_CUSTOM*: uint8 = 3'u8
## @brief Encode every field of complete scout_msgs/msg/ScoutLightCmd.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Scout_msgsMsgScoutLightCmd; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 5, written)
## @brief Decode every field of complete scout_msgs/msg/ScoutLightCmd.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Scout_msgsMsgScoutLightCmd*(bytes: openArray[byte]; value: var Ros2Scout_msgsMsgScoutLightCmd): uint32 =
  wire.decode(bytes, 5, 5, value)

## @brief Complete scout_msgs/msg/ScoutLightState value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 2..2 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Scout_msgsMsgScoutLightState* = object
    ## @brief Original scout_msgs/msg/ScoutLightState.mode field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_mode*: uint8
    ## @brief Original scout_msgs/msg/ScoutLightState.custom_value field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_custom_value*: uint8
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Scout_msgsMsgScoutLightState*(): Ros2Scout_msgsMsgScoutLightState =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Scout_msgsMsgScoutLightStateMinimumWireBytes* = 2
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Scout_msgsMsgScoutLightStateMaximumWireBytes* = 2
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Scout_msgsMsgScoutLightStateCodecIdentity* = "UWVMROS1_4f42b9365cc76673b156e725aac9448e0f0d806105d3717cdb2628c384a6d76a"
## @brief Encode every field of complete scout_msgs/msg/ScoutLightState.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Scout_msgsMsgScoutLightState; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 2, written)
## @brief Decode every field of complete scout_msgs/msg/ScoutLightState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Scout_msgsMsgScoutLightState*(bytes: openArray[byte]; value: var Ros2Scout_msgsMsgScoutLightState): uint32 =
  wire.decode(bytes, 2, 2, value)

## @brief Complete scout_msgs/msg/ScoutRCState value.
## @details Retain all 9 original fields and 0 constants. Canonical extent 9..9 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Scout_msgsMsgScoutRCState* = object
    ## @brief Original scout_msgs/msg/ScoutRCState.swa field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_swa*: uint8
    ## @brief Original scout_msgs/msg/ScoutRCState.swb field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_swb*: uint8
    ## @brief Original scout_msgs/msg/ScoutRCState.swc field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_swc*: uint8
    ## @brief Original scout_msgs/msg/ScoutRCState.swd field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_swd*: uint8
    ## @brief Original scout_msgs/msg/ScoutRCState.stick_right_v field.
    ## @details Original type int8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_stick_right_v*: int8
    ## @brief Original scout_msgs/msg/ScoutRCState.stick_right_h field.
    ## @details Original type int8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_stick_right_h*: int8
    ## @brief Original scout_msgs/msg/ScoutRCState.stick_left_v field.
    ## @details Original type int8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_stick_left_v*: int8
    ## @brief Original scout_msgs/msg/ScoutRCState.stick_left_h field.
    ## @details Original type int8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_stick_left_h*: int8
    ## @brief Original scout_msgs/msg/ScoutRCState.var_a field.
    ## @details Original type int8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_var_a*: int8
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Scout_msgsMsgScoutRCState*(): Ros2Scout_msgsMsgScoutRCState =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Scout_msgsMsgScoutRCStateMinimumWireBytes* = 9
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Scout_msgsMsgScoutRCStateMaximumWireBytes* = 9
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Scout_msgsMsgScoutRCStateCodecIdentity* = "UWVMROS1_ba13e4c728041d14352c021fe5c1c5eee5d531c84ac64c61d944d6192dcd4298"
## @brief Encode every field of complete scout_msgs/msg/ScoutRCState.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Scout_msgsMsgScoutRCState; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 9, written)
## @brief Decode every field of complete scout_msgs/msg/ScoutRCState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Scout_msgsMsgScoutRCState*(bytes: openArray[byte]; value: var Ros2Scout_msgsMsgScoutRCState): uint32 =
  wire.decode(bytes, 9, 9, value)

## @brief Complete scout_msgs/msg/ScoutStatus value.
## @details Retain all 11 original fields and 6 constants. Canonical extent 121..249 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Scout_msgsMsgScoutStatus* = object
    ## @brief Original scout_msgs/msg/ScoutStatus.header field.
    ## @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    ## field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_header*: Ros2Std_msgsMsgHeader
    ## @brief Original scout_msgs/msg/ScoutStatus.linear_velocity field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_linear_velocity*: float64
    ## @brief Original scout_msgs/msg/ScoutStatus.angular_velocity field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_angular_velocity*: float64
    ## @brief Original scout_msgs/msg/ScoutStatus.vehicle_state field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_vehicle_state*: uint8
    ## @brief Original scout_msgs/msg/ScoutStatus.control_mode field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_control_mode*: uint8
    ## @brief Original scout_msgs/msg/ScoutStatus.error_code field.
    ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_error_code*: uint16
    ## @brief Original scout_msgs/msg/ScoutStatus.battery_voltage field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_battery_voltage*: float64
    ## @brief Original scout_msgs/msg/ScoutStatus.actuator_states field.
    ## @details Original type scout_msgs/msg/ScoutActuatorState. Shape array; bound/count 4
    ## elements. Preserve declared units, frame, signedness and field order. Backing storage belongs
    ## to this value; constructing or copying it creates no native ROS owner.
    field_actuator_states*: array[4, Ros2Scout_msgsMsgScoutActuatorState]
    ## @brief Original scout_msgs/msg/ScoutStatus.light_control_enabled field.
    ## @details Original type bool. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_light_control_enabled*: bool
    ## @brief Original scout_msgs/msg/ScoutStatus.front_light_state field.
    ## @details Original type scout_msgs/msg/ScoutLightState. Preserve declared units, frame,
    ## signedness and field order. Backing storage belongs to this value; constructing or copying it
    ## creates no native ROS owner.
    field_front_light_state*: Ros2Scout_msgsMsgScoutLightState
    ## @brief Original scout_msgs/msg/ScoutStatus.rear_light_state field.
    ## @details Original type scout_msgs/msg/ScoutLightState. Preserve declared units, frame,
    ## signedness and field order. Backing storage belongs to this value; constructing or copying it
    ## creates no native ROS owner.
    field_rear_light_state*: Ros2Scout_msgsMsgScoutLightState
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Scout_msgsMsgScoutStatus*(): Ros2Scout_msgsMsgScoutStatus =
    result.field_header = initRos2Std_msgsMsgHeader()
    for index in 0 ..< 4:
        result.field_actuator_states[index] = initRos2Scout_msgsMsgScoutActuatorState()
    result.field_front_light_state = initRos2Scout_msgsMsgScoutLightState()
    result.field_rear_light_state = initRos2Scout_msgsMsgScoutLightState()
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Scout_msgsMsgScoutStatusMinimumWireBytes* = 121
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Scout_msgsMsgScoutStatusMaximumWireBytes* = 249
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Scout_msgsMsgScoutStatusCodecIdentity* = "UWVMROS1_75db4db1dcc07210d543b8e6bd6b6a7aadbf23db8043ff372a3b224c5c235b86"
## @brief Original scout_msgs/msg/ScoutStatus.MOTOR_ID_FRONT_RIGHT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Scout_msgsMsgScoutStatus_MOTOR_ID_FRONT_RIGHT*: int8 = 0'i8
## @brief Original scout_msgs/msg/ScoutStatus.MOTOR_ID_FRONT_LEFT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Scout_msgsMsgScoutStatus_MOTOR_ID_FRONT_LEFT*: int8 = 1'i8
## @brief Original scout_msgs/msg/ScoutStatus.MOTOR_ID_REAR_RIGHT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Scout_msgsMsgScoutStatus_MOTOR_ID_REAR_RIGHT*: int8 = 2'i8
## @brief Original scout_msgs/msg/ScoutStatus.MOTOR_ID_REAR_LEFT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Scout_msgsMsgScoutStatus_MOTOR_ID_REAR_LEFT*: int8 = 3'i8
## @brief Original scout_msgs/msg/ScoutStatus.LIGHT_ID_FRONT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Scout_msgsMsgScoutStatus_LIGHT_ID_FRONT*: int8 = 0'i8
## @brief Original scout_msgs/msg/ScoutStatus.LIGHT_ID_REAR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros2Scout_msgsMsgScoutStatus_LIGHT_ID_REAR*: int8 = 1'i8
## @brief Encode every field of complete scout_msgs/msg/ScoutStatus.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Scout_msgsMsgScoutStatus; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 249, written)
## @brief Decode every field of complete scout_msgs/msg/ScoutStatus.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Scout_msgsMsgScoutStatus*(bytes: openArray[byte]; value: var Ros2Scout_msgsMsgScoutStatus): uint32 =
  wire.decode(bytes, 121, 249, value)

