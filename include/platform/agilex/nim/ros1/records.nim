## @file records.nim
## @brief Complete owned original agilex ROS 1 native records and codecs.
## @details Generated from the admitted source-pinned catalog; no ROS authority is created.
import native/nim/wire

## @brief Complete geometry_msgs/Point value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 24..24 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Geometry_msgsPoint* = object
    ## @brief Original geometry_msgs/Point.x field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_x*: float64
    ## @brief Original geometry_msgs/Point.y field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_y*: float64
    ## @brief Original geometry_msgs/Point.z field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_z*: float64
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos1Geometry_msgsPoint*(): Ros1Geometry_msgsPoint =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Geometry_msgsPointMinimumWireBytes* = 24
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Geometry_msgsPointMaximumWireBytes* = 24
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Geometry_msgsPointCodecIdentity* = "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b"
## @brief Encode every field of complete geometry_msgs/Point.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Geometry_msgsPoint; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 24, written)
## @brief Decode every field of complete geometry_msgs/Point.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Geometry_msgsPoint*(bytes: openArray[byte]; value: var Ros1Geometry_msgsPoint): uint32 =
  wire.decode(bytes, 24, 24, value)

## @brief Complete geometry_msgs/Quaternion value.
## @details Retain all 4 original fields and 0 constants. Canonical extent 32..32 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Geometry_msgsQuaternion* = object
    ## @brief Original geometry_msgs/Quaternion.x field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_x*: float64
    ## @brief Original geometry_msgs/Quaternion.y field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_y*: float64
    ## @brief Original geometry_msgs/Quaternion.z field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_z*: float64
    ## @brief Original geometry_msgs/Quaternion.w field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_w*: float64
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos1Geometry_msgsQuaternion*(): Ros1Geometry_msgsQuaternion =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Geometry_msgsQuaternionMinimumWireBytes* = 32
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Geometry_msgsQuaternionMaximumWireBytes* = 32
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Geometry_msgsQuaternionCodecIdentity* = "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934"
## @brief Encode every field of complete geometry_msgs/Quaternion.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Geometry_msgsQuaternion; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 32, written)
## @brief Decode every field of complete geometry_msgs/Quaternion.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Geometry_msgsQuaternion*(bytes: openArray[byte]; value: var Ros1Geometry_msgsQuaternion): uint32 =
  wire.decode(bytes, 32, 32, value)

## @brief Complete geometry_msgs/Pose value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 56..56 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Geometry_msgsPose* = object
    ## @brief Original geometry_msgs/Pose.position field.
    ## @details Original type geometry_msgs/Point. Preserve declared units, frame, signedness and
    ## field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_position*: Ros1Geometry_msgsPoint
    ## @brief Original geometry_msgs/Pose.orientation field.
    ## @details Original type geometry_msgs/Quaternion. Preserve declared units, frame, signedness
    ## and field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_orientation*: Ros1Geometry_msgsQuaternion
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos1Geometry_msgsPose*(): Ros1Geometry_msgsPose =
    result.field_position = initRos1Geometry_msgsPoint()
    result.field_orientation = initRos1Geometry_msgsQuaternion()
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Geometry_msgsPoseMinimumWireBytes* = 56
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Geometry_msgsPoseMaximumWireBytes* = 56
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Geometry_msgsPoseCodecIdentity* = "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471"
## @brief Encode every field of complete geometry_msgs/Pose.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Geometry_msgsPose; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 56, written)
## @brief Decode every field of complete geometry_msgs/Pose.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Geometry_msgsPose*(bytes: openArray[byte]; value: var Ros1Geometry_msgsPose): uint32 =
  wire.decode(bytes, 56, 56, value)

## @brief Complete geometry_msgs/PoseWithCovariance value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 344..344 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Geometry_msgsPoseWithCovariance* = object
    ## @brief Original geometry_msgs/PoseWithCovariance.pose field.
    ## @details Original type geometry_msgs/Pose. Preserve declared units, frame, signedness and
    ## field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_pose*: Ros1Geometry_msgsPose
    ## @brief Original geometry_msgs/PoseWithCovariance.covariance field.
    ## @details Original type float64. Shape array; bound/count 36 elements. Preserve declared
    ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
    ## or copying it creates no native ROS owner.
    field_covariance*: array[36, float64]
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos1Geometry_msgsPoseWithCovariance*(): Ros1Geometry_msgsPoseWithCovariance =
    result.field_pose = initRos1Geometry_msgsPose()
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Geometry_msgsPoseWithCovarianceMinimumWireBytes* = 344
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Geometry_msgsPoseWithCovarianceMaximumWireBytes* = 344
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Geometry_msgsPoseWithCovarianceCodecIdentity* = "UWVMROS1_17b25963aafb3adfd0432febe040c9b38a531a7a667949b89e0f3937585ef8cf"
## @brief Encode every field of complete geometry_msgs/PoseWithCovariance.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Geometry_msgsPoseWithCovariance; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 344, written)
## @brief Decode every field of complete geometry_msgs/PoseWithCovariance.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Geometry_msgsPoseWithCovariance*(bytes: openArray[byte]; value: var Ros1Geometry_msgsPoseWithCovariance): uint32 =
  wire.decode(bytes, 344, 344, value)

## @brief Complete geometry_msgs/Vector3 value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 24..24 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Geometry_msgsVector3* = object
    ## @brief Original geometry_msgs/Vector3.x field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_x*: float64
    ## @brief Original geometry_msgs/Vector3.y field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_y*: float64
    ## @brief Original geometry_msgs/Vector3.z field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_z*: float64
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos1Geometry_msgsVector3*(): Ros1Geometry_msgsVector3 =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Geometry_msgsVector3MinimumWireBytes* = 24
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Geometry_msgsVector3MaximumWireBytes* = 24
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Geometry_msgsVector3CodecIdentity* = "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc"
## @brief Encode every field of complete geometry_msgs/Vector3.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Geometry_msgsVector3; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 24, written)
## @brief Decode every field of complete geometry_msgs/Vector3.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Geometry_msgsVector3*(bytes: openArray[byte]; value: var Ros1Geometry_msgsVector3): uint32 =
  wire.decode(bytes, 24, 24, value)

## @brief Complete geometry_msgs/Twist value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 48..48 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Geometry_msgsTwist* = object
    ## @brief Original geometry_msgs/Twist.linear field.
    ## @details Original type geometry_msgs/Vector3. Preserve declared units, frame, signedness and
    ## field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_linear*: Ros1Geometry_msgsVector3
    ## @brief Original geometry_msgs/Twist.angular field.
    ## @details Original type geometry_msgs/Vector3. Preserve declared units, frame, signedness and
    ## field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_angular*: Ros1Geometry_msgsVector3
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos1Geometry_msgsTwist*(): Ros1Geometry_msgsTwist =
    result.field_linear = initRos1Geometry_msgsVector3()
    result.field_angular = initRos1Geometry_msgsVector3()
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Geometry_msgsTwistMinimumWireBytes* = 48
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Geometry_msgsTwistMaximumWireBytes* = 48
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Geometry_msgsTwistCodecIdentity* = "UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921"
## @brief Encode every field of complete geometry_msgs/Twist.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Geometry_msgsTwist; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 48, written)
## @brief Decode every field of complete geometry_msgs/Twist.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Geometry_msgsTwist*(bytes: openArray[byte]; value: var Ros1Geometry_msgsTwist): uint32 =
  wire.decode(bytes, 48, 48, value)

## @brief Complete geometry_msgs/TwistWithCovariance value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 336..336 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Geometry_msgsTwistWithCovariance* = object
    ## @brief Original geometry_msgs/TwistWithCovariance.twist field.
    ## @details Original type geometry_msgs/Twist. Preserve declared units, frame, signedness and
    ## field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_twist*: Ros1Geometry_msgsTwist
    ## @brief Original geometry_msgs/TwistWithCovariance.covariance field.
    ## @details Original type float64. Shape array; bound/count 36 elements. Preserve declared
    ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
    ## or copying it creates no native ROS owner.
    field_covariance*: array[36, float64]
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos1Geometry_msgsTwistWithCovariance*(): Ros1Geometry_msgsTwistWithCovariance =
    result.field_twist = initRos1Geometry_msgsTwist()
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Geometry_msgsTwistWithCovarianceMinimumWireBytes* = 336
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Geometry_msgsTwistWithCovarianceMaximumWireBytes* = 336
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Geometry_msgsTwistWithCovarianceCodecIdentity* = "UWVMROS1_ff6790d181503b424d84726c8f4a7852cef14c6dd93e6d32cf3c37023f74bcdf"
## @brief Encode every field of complete geometry_msgs/TwistWithCovariance.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Geometry_msgsTwistWithCovariance; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 336, written)
## @brief Decode every field of complete geometry_msgs/TwistWithCovariance.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Geometry_msgsTwistWithCovariance*(bytes: openArray[byte]; value: var Ros1Geometry_msgsTwistWithCovariance): uint32 =
  wire.decode(bytes, 336, 336, value)

## @brief Complete time value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Time* = object
    ## @brief Original time.sec field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_sec*: uint32
    ## @brief Original time.nsec field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_nsec*: uint32
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos1Time*(): Ros1Time =
    discard
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
## @brief Validate every original complete-value semantic constraint.
## @details Retain normalized time and all six optional JointState array pairs without altering any
## field.
## @param value Complete immutable owned record.
## @return Zero or canonical error 22.
proc validate*(value: Ros1Time): uint32 =
  if value.field_nsec >= 1000000000: return 22'u32
  0'u32
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
## @details Retain all 3 original fields and 0 constants. Canonical extent 16..144 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Std_msgsHeader* = object
    ## @brief Original std_msgs/Header.seq field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_seq*: uint32
    ## @brief Original std_msgs/Header.stamp field.
    ## @details Original type time. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_stamp*: Ros1Time
    ## @brief Original std_msgs/Header.frame_id field.
    ## @details Original type string. String bound 128 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_frame_id*: NativeText[128, false]
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos1Std_msgsHeader*(): Ros1Std_msgsHeader =
    result.field_stamp = initRos1Time()
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Std_msgsHeaderMinimumWireBytes* = 16
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Std_msgsHeaderMaximumWireBytes* = 144
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Std_msgsHeaderCodecIdentity* = "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435"
## @brief Encode every field of complete std_msgs/Header.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Std_msgsHeader; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 144, written)
## @brief Decode every field of complete std_msgs/Header.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Std_msgsHeader*(bytes: openArray[byte]; value: var Ros1Std_msgsHeader): uint32 =
  wire.decode(bytes, 16, 144, value)

## @brief Complete nav_msgs/Odometry value.
## @details Retain all 4 original fields and 0 constants. Canonical extent 700..956 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Nav_msgsOdometry* = object
    ## @brief Original nav_msgs/Odometry.header field.
    ## @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
    ## order. Backing storage belongs to this value; constructing or copying it creates no native
    ## ROS owner.
    field_header*: Ros1Std_msgsHeader
    ## @brief Original nav_msgs/Odometry.child_frame_id field.
    ## @details Original type string. String bound 128 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_child_frame_id*: NativeText[128, false]
    ## @brief Original nav_msgs/Odometry.pose field.
    ## @details Original type geometry_msgs/PoseWithCovariance. Preserve declared units, frame,
    ## signedness and field order. Backing storage belongs to this value; constructing or copying it
    ## creates no native ROS owner.
    field_pose*: Ros1Geometry_msgsPoseWithCovariance
    ## @brief Original nav_msgs/Odometry.twist field.
    ## @details Original type geometry_msgs/TwistWithCovariance. Preserve declared units, frame,
    ## signedness and field order. Backing storage belongs to this value; constructing or copying it
    ## creates no native ROS owner.
    field_twist*: Ros1Geometry_msgsTwistWithCovariance
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos1Nav_msgsOdometry*(): Ros1Nav_msgsOdometry =
    result.field_header = initRos1Std_msgsHeader()
    result.field_pose = initRos1Geometry_msgsPoseWithCovariance()
    result.field_twist = initRos1Geometry_msgsTwistWithCovariance()
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Nav_msgsOdometryMinimumWireBytes* = 700
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Nav_msgsOdometryMaximumWireBytes* = 956
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Nav_msgsOdometryCodecIdentity* = "UWVMROS1_c10d3ce1f2824c33d728d0006fb83134330d0332af122f179cf2dac32181a2ca"
## @brief Encode every field of complete nav_msgs/Odometry.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Nav_msgsOdometry; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 956, written)
## @brief Decode every field of complete nav_msgs/Odometry.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Nav_msgsOdometry*(bytes: openArray[byte]; value: var Ros1Nav_msgsOdometry): uint32 =
  wire.decode(bytes, 700, 956, value)

## @brief Complete scout_msgs/ScoutBmsStatus value.
## @details Retain all 9 original fields and 0 constants. Canonical extent 44..44 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Scout_msgsScoutBmsStatus* = object
    ## @brief Original scout_msgs/ScoutBmsStatus.SOC field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_SOC*: float64
    ## @brief Original scout_msgs/ScoutBmsStatus.SOH field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_SOH*: float64
    ## @brief Original scout_msgs/ScoutBmsStatus.battery_voltage field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_battery_voltage*: float64
    ## @brief Original scout_msgs/ScoutBmsStatus.battery_current field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_battery_current*: float64
    ## @brief Original scout_msgs/ScoutBmsStatus.battery_temperature field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_battery_temperature*: float64
    ## @brief Original scout_msgs/ScoutBmsStatus.Alarm_Status_1 field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_Alarm_Status_1*: uint8
    ## @brief Original scout_msgs/ScoutBmsStatus.Alarm_Status_2 field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_Alarm_Status_2*: uint8
    ## @brief Original scout_msgs/ScoutBmsStatus.Warning_Status_1 field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_Warning_Status_1*: uint8
    ## @brief Original scout_msgs/ScoutBmsStatus.Warning_Status_2 field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_Warning_Status_2*: uint8
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos1Scout_msgsScoutBmsStatus*(): Ros1Scout_msgsScoutBmsStatus =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Scout_msgsScoutBmsStatusMinimumWireBytes* = 44
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Scout_msgsScoutBmsStatusMaximumWireBytes* = 44
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Scout_msgsScoutBmsStatusCodecIdentity* = "UWVMROS1_6921538c08e86ab5b9ecdbf974c6cb5b580488f4ed96ccbdb8b7824d51e9cf95"
## @brief Encode every field of complete scout_msgs/ScoutBmsStatus.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Scout_msgsScoutBmsStatus; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 44, written)
## @brief Decode every field of complete scout_msgs/ScoutBmsStatus.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Scout_msgsScoutBmsStatus*(bytes: openArray[byte]; value: var Ros1Scout_msgsScoutBmsStatus): uint32 =
  wire.decode(bytes, 44, 44, value)

## @brief Complete scout_msgs/ScoutDriverState value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 17..17 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Scout_msgsScoutDriverState* = object
    ## @brief Original scout_msgs/ScoutDriverState.driver_voltage field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_driver_voltage*: float64
    ## @brief Original scout_msgs/ScoutDriverState.driver_temperature field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_driver_temperature*: float64
    ## @brief Original scout_msgs/ScoutDriverState.driver_state field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_driver_state*: uint8
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos1Scout_msgsScoutDriverState*(): Ros1Scout_msgsScoutDriverState =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Scout_msgsScoutDriverStateMinimumWireBytes* = 17
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Scout_msgsScoutDriverStateMaximumWireBytes* = 17
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Scout_msgsScoutDriverStateCodecIdentity* = "UWVMROS1_4c56c71ae621b2b8822d742894d19946492002453c93b72faccb4f2abc9d4275"
## @brief Encode every field of complete scout_msgs/ScoutDriverState.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Scout_msgsScoutDriverState; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 17, written)
## @brief Decode every field of complete scout_msgs/ScoutDriverState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Scout_msgsScoutDriverState*(bytes: openArray[byte]; value: var Ros1Scout_msgsScoutDriverState): uint32 =
  wire.decode(bytes, 17, 17, value)

## @brief Complete scout_msgs/ScoutLightCmd value.
## @details Retain all 5 original fields and 4 constants. Canonical extent 5..5 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Scout_msgsScoutLightCmd* = object
    ## @brief Original scout_msgs/ScoutLightCmd.enable_cmd_light_control field.
    ## @details Original type bool. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_enable_cmd_light_control*: bool
    ## @brief Original scout_msgs/ScoutLightCmd.front_mode field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_front_mode*: uint8
    ## @brief Original scout_msgs/ScoutLightCmd.front_custom_value field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_front_custom_value*: uint8
    ## @brief Original scout_msgs/ScoutLightCmd.rear_mode field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_rear_mode*: uint8
    ## @brief Original scout_msgs/ScoutLightCmd.rear_custom_value field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_rear_custom_value*: uint8
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos1Scout_msgsScoutLightCmd*(): Ros1Scout_msgsScoutLightCmd =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Scout_msgsScoutLightCmdMinimumWireBytes* = 5
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Scout_msgsScoutLightCmdMaximumWireBytes* = 5
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Scout_msgsScoutLightCmdCodecIdentity* = "UWVMROS1_cf08cccf454f88111d5cc4a4b1ace08de72cf1ae9a9400c23a148126da95942a"
## @brief Original scout_msgs/ScoutLightCmd.LIGHT_CONST_OFF constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Scout_msgsScoutLightCmd_LIGHT_CONST_OFF*: uint8 = 0'u8
## @brief Original scout_msgs/ScoutLightCmd.LIGHT_CONST_ON constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Scout_msgsScoutLightCmd_LIGHT_CONST_ON*: uint8 = 1'u8
## @brief Original scout_msgs/ScoutLightCmd.LIGHT_BREATH constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Scout_msgsScoutLightCmd_LIGHT_BREATH*: uint8 = 2'u8
## @brief Original scout_msgs/ScoutLightCmd.LIGHT_CUSTOM constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Scout_msgsScoutLightCmd_LIGHT_CUSTOM*: uint8 = 3'u8
## @brief Encode every field of complete scout_msgs/ScoutLightCmd.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Scout_msgsScoutLightCmd; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 5, written)
## @brief Decode every field of complete scout_msgs/ScoutLightCmd.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Scout_msgsScoutLightCmd*(bytes: openArray[byte]; value: var Ros1Scout_msgsScoutLightCmd): uint32 =
  wire.decode(bytes, 5, 5, value)

## @brief Complete scout_msgs/ScoutLightState value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 2..2 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Scout_msgsScoutLightState* = object
    ## @brief Original scout_msgs/ScoutLightState.mode field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_mode*: uint8
    ## @brief Original scout_msgs/ScoutLightState.custom_value field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_custom_value*: uint8
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos1Scout_msgsScoutLightState*(): Ros1Scout_msgsScoutLightState =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Scout_msgsScoutLightStateMinimumWireBytes* = 2
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Scout_msgsScoutLightStateMaximumWireBytes* = 2
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Scout_msgsScoutLightStateCodecIdentity* = "UWVMROS1_af55048f9200cfa80fc419664204a515f628cc610a352ab3ed8443dd7ac0ae51"
## @brief Encode every field of complete scout_msgs/ScoutLightState.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Scout_msgsScoutLightState; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 2, written)
## @brief Decode every field of complete scout_msgs/ScoutLightState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Scout_msgsScoutLightState*(bytes: openArray[byte]; value: var Ros1Scout_msgsScoutLightState): uint32 =
  wire.decode(bytes, 2, 2, value)

## @brief Complete scout_msgs/ScoutMotorState value.
## @details Retain all 4 original fields and 0 constants. Canonical extent 32..32 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Scout_msgsScoutMotorState* = object
    ## @brief Original scout_msgs/ScoutMotorState.current field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_current*: float64
    ## @brief Original scout_msgs/ScoutMotorState.rpm field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_rpm*: float64
    ## @brief Original scout_msgs/ScoutMotorState.temperature field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_temperature*: float64
    ## @brief Original scout_msgs/ScoutMotorState.motor_pose field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_motor_pose*: float64
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos1Scout_msgsScoutMotorState*(): Ros1Scout_msgsScoutMotorState =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Scout_msgsScoutMotorStateMinimumWireBytes* = 32
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Scout_msgsScoutMotorStateMaximumWireBytes* = 32
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Scout_msgsScoutMotorStateCodecIdentity* = "UWVMROS1_ca67a704d7bb4ba6b2839db1fdb8a75bc753868ec871d101c24c85d8202a79b7"
## @brief Encode every field of complete scout_msgs/ScoutMotorState.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Scout_msgsScoutMotorState; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 32, written)
## @brief Decode every field of complete scout_msgs/ScoutMotorState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Scout_msgsScoutMotorState*(bytes: openArray[byte]; value: var Ros1Scout_msgsScoutMotorState): uint32 =
  wire.decode(bytes, 32, 32, value)

## @brief Complete scout_msgs/ScoutRsStatus value.
## @details Retain all 10 original fields and 0 constants. Canonical extent 25..153 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Scout_msgsScoutRsStatus* = object
    ## @brief Original scout_msgs/ScoutRsStatus.header field.
    ## @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
    ## order. Backing storage belongs to this value; constructing or copying it creates no native
    ## ROS owner.
    field_header*: Ros1Std_msgsHeader
    ## @brief Original scout_msgs/ScoutRsStatus.stick_left_h field.
    ## @details Original type int8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_stick_left_h*: int8
    ## @brief Original scout_msgs/ScoutRsStatus.stick_left_v field.
    ## @details Original type int8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_stick_left_v*: int8
    ## @brief Original scout_msgs/ScoutRsStatus.stick_right_h field.
    ## @details Original type int8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_stick_right_h*: int8
    ## @brief Original scout_msgs/ScoutRsStatus.stick_right_v field.
    ## @details Original type int8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_stick_right_v*: int8
    ## @brief Original scout_msgs/ScoutRsStatus.swa field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_swa*: uint8
    ## @brief Original scout_msgs/ScoutRsStatus.swb field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_swb*: uint8
    ## @brief Original scout_msgs/ScoutRsStatus.swc field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_swc*: uint8
    ## @brief Original scout_msgs/ScoutRsStatus.swd field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_swd*: uint8
    ## @brief Original scout_msgs/ScoutRsStatus.var_a field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_var_a*: uint8
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos1Scout_msgsScoutRsStatus*(): Ros1Scout_msgsScoutRsStatus =
    result.field_header = initRos1Std_msgsHeader()
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Scout_msgsScoutRsStatusMinimumWireBytes* = 25
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Scout_msgsScoutRsStatusMaximumWireBytes* = 153
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Scout_msgsScoutRsStatusCodecIdentity* = "UWVMROS1_deb068b75fb629df3724c141ed3be9f6ee8a4aac7727cdaa28769cb61211f7de"
## @brief Encode every field of complete scout_msgs/ScoutRsStatus.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Scout_msgsScoutRsStatus; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 153, written)
## @brief Decode every field of complete scout_msgs/ScoutRsStatus.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Scout_msgsScoutRsStatus*(bytes: openArray[byte]; value: var Ros1Scout_msgsScoutRsStatus): uint32 =
  wire.decode(bytes, 25, 153, value)

## @brief Complete scout_msgs/ScoutStatus value.
## @details Retain all 13 original fields and 6 constants. Canonical extent 253..381 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros1Scout_msgsScoutStatus* = object
    ## @brief Original scout_msgs/ScoutStatus.header field.
    ## @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
    ## order. Backing storage belongs to this value; constructing or copying it creates no native
    ## ROS owner.
    field_header*: Ros1Std_msgsHeader
    ## @brief Original scout_msgs/ScoutStatus.linear_velocity field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_linear_velocity*: float64
    ## @brief Original scout_msgs/ScoutStatus.angular_velocity field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_angular_velocity*: float64
    ## @brief Original scout_msgs/ScoutStatus.lateral_velocity field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_lateral_velocity*: float64
    ## @brief Original scout_msgs/ScoutStatus.base_state field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_base_state*: uint8
    ## @brief Original scout_msgs/ScoutStatus.control_mode field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_control_mode*: uint8
    ## @brief Original scout_msgs/ScoutStatus.fault_code field.
    ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_fault_code*: uint16
    ## @brief Original scout_msgs/ScoutStatus.battery_voltage field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_battery_voltage*: float64
    ## @brief Original scout_msgs/ScoutStatus.motor_states field.
    ## @details Original type scout_msgs/ScoutMotorState. Shape array; bound/count 4 elements.
    ## Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    ## value; constructing or copying it creates no native ROS owner.
    field_motor_states*: array[4, Ros1Scout_msgsScoutMotorState]
    ## @brief Original scout_msgs/ScoutStatus.driver_states field.
    ## @details Original type scout_msgs/ScoutDriverState. Shape array; bound/count 4 elements.
    ## Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    ## value; constructing or copying it creates no native ROS owner.
    field_driver_states*: array[4, Ros1Scout_msgsScoutDriverState]
    ## @brief Original scout_msgs/ScoutStatus.light_control_enabled field.
    ## @details Original type bool. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_light_control_enabled*: bool
    ## @brief Original scout_msgs/ScoutStatus.front_light_state field.
    ## @details Original type scout_msgs/ScoutLightState. Preserve declared units, frame, signedness
    ## and field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_front_light_state*: Ros1Scout_msgsScoutLightState
    ## @brief Original scout_msgs/ScoutStatus.rear_light_state field.
    ## @details Original type scout_msgs/ScoutLightState. Preserve declared units, frame, signedness
    ## and field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_rear_light_state*: Ros1Scout_msgsScoutLightState
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos1Scout_msgsScoutStatus*(): Ros1Scout_msgsScoutStatus =
    result.field_header = initRos1Std_msgsHeader()
    for index in 0 ..< 4:
        result.field_motor_states[index] = initRos1Scout_msgsScoutMotorState()
    for index in 0 ..< 4:
        result.field_driver_states[index] = initRos1Scout_msgsScoutDriverState()
    result.field_front_light_state = initRos1Scout_msgsScoutLightState()
    result.field_rear_light_state = initRos1Scout_msgsScoutLightState()
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Scout_msgsScoutStatusMinimumWireBytes* = 253
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros1Scout_msgsScoutStatusMaximumWireBytes* = 381
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros1Scout_msgsScoutStatusCodecIdentity* = "UWVMROS1_ff62854d4de0aae3dfbbc312822c6f912294f0feb04a7fff943df602d40bcbe2"
## @brief Original scout_msgs/ScoutStatus.MOTOR_ID_FRONT_RIGHT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Scout_msgsScoutStatus_MOTOR_ID_FRONT_RIGHT*: int8 = 0'i8
## @brief Original scout_msgs/ScoutStatus.MOTOR_ID_FRONT_LEFT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Scout_msgsScoutStatus_MOTOR_ID_FRONT_LEFT*: int8 = 1'i8
## @brief Original scout_msgs/ScoutStatus.MOTOR_ID_REAR_RIGHT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Scout_msgsScoutStatus_MOTOR_ID_REAR_RIGHT*: int8 = 2'i8
## @brief Original scout_msgs/ScoutStatus.MOTOR_ID_REAR_LEFT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Scout_msgsScoutStatus_MOTOR_ID_REAR_LEFT*: int8 = 3'i8
## @brief Original scout_msgs/ScoutStatus.LIGHT_ID_FRONT constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Scout_msgsScoutStatus_LIGHT_ID_FRONT*: int8 = 0'i8
## @brief Original scout_msgs/ScoutStatus.LIGHT_ID_REAR constant.
## @details An immutable original constant consumes no canonical instance field.
const Ros1Scout_msgsScoutStatus_LIGHT_ID_REAR*: int8 = 1'i8
## @brief Encode every field of complete scout_msgs/ScoutStatus.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros1Scout_msgsScoutStatus; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 381, written)
## @brief Decode every field of complete scout_msgs/ScoutStatus.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos1Scout_msgsScoutStatus*(bytes: openArray[byte]; value: var Ros1Scout_msgsScoutStatus): uint32 =
  wire.decode(bytes, 253, 381, value)

