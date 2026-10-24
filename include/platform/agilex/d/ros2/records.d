/// @file records.d
/// @brief Complete owned original agilex ROS 2 native records and codecs.
/// @details Generated from the admitted source-pinned catalog; no ROS authority is created.
module agilex.d.ros2.records;
import native.d.wire;

/// @brief Complete builtin_interfaces/msg/Time value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Builtin_interfacesMsgTime
{
    /// @brief Original builtin_interfaces/msg/Time.sec field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_sec;
    /// @brief Original builtin_interfaces/msg/Time.nanosec field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_nanosec;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 8;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 8;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7";

    /// @brief Validate every original complete-value semantic constraint.
    /// @details Preserve normalized time and all six optional JointState array pairs without
    /// changing fields.
    /// @return Zero or canonical error 22.
    uint validate() const @nogc nothrow
    {
        if (this.field_nanosec >= 1000000000)
            return 22;
        return 0;
    }

}
/// @brief Encode every field of complete builtin_interfaces/msg/Time.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Builtin_interfacesMsgTime(ref Ros2Builtin_interfacesMsgTime value, ubyte[] output, out size_t written)
    @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete builtin_interfaces/msg/Time.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Builtin_interfacesMsgTime(const(ubyte)[] bytes, out Ros2Builtin_interfacesMsgTime value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete geometry_msgs/msg/Point value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 24..24 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Geometry_msgsMsgPoint
{
    /// @brief Original geometry_msgs/msg/Point.x field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_x = 0;
    /// @brief Original geometry_msgs/msg/Point.y field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_y = 0;
    /// @brief Original geometry_msgs/msg/Point.z field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_z = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 24;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 24;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616";

}
/// @brief Encode every field of complete geometry_msgs/msg/Point.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Geometry_msgsMsgPoint(ref Ros2Geometry_msgsMsgPoint value, ubyte[] output, out size_t written)
    @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete geometry_msgs/msg/Point.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Geometry_msgsMsgPoint(const(ubyte)[] bytes, out Ros2Geometry_msgsMsgPoint value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete geometry_msgs/msg/Quaternion value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 32..32 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Geometry_msgsMsgQuaternion
{
    /// @brief Original geometry_msgs/msg/Quaternion.x field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_x = 0x0.0p+0;
    /// @brief Original geometry_msgs/msg/Quaternion.y field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_y = 0x0.0p+0;
    /// @brief Original geometry_msgs/msg/Quaternion.z field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_z = 0x0.0p+0;
    /// @brief Original geometry_msgs/msg/Quaternion.w field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_w = 0x1.0000000000000p+0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 32;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 32;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672";

}
/// @brief Encode every field of complete geometry_msgs/msg/Quaternion.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Geometry_msgsMsgQuaternion(ref Ros2Geometry_msgsMsgQuaternion value, ubyte[] output, out size_t written)
    @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete geometry_msgs/msg/Quaternion.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Geometry_msgsMsgQuaternion(const(ubyte)[] bytes, out Ros2Geometry_msgsMsgQuaternion value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete geometry_msgs/msg/Pose value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 56..56 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Geometry_msgsMsgPose
{
    /// @brief Original geometry_msgs/msg/Pose.position field.
    /// @details Original type geometry_msgs/msg/Point. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros2Geometry_msgsMsgPoint field_position;
    /// @brief Original geometry_msgs/msg/Pose.orientation field.
    /// @details Original type geometry_msgs/msg/Quaternion. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Geometry_msgsMsgQuaternion field_orientation;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 56;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 56;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777";

}
/// @brief Encode every field of complete geometry_msgs/msg/Pose.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Geometry_msgsMsgPose(ref Ros2Geometry_msgsMsgPose value, ubyte[] output, out size_t written)
    @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete geometry_msgs/msg/Pose.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Geometry_msgsMsgPose(const(ubyte)[] bytes, out Ros2Geometry_msgsMsgPose value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete geometry_msgs/msg/PoseWithCovariance value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 344..344 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Geometry_msgsMsgPoseWithCovariance
{
    /// @brief Original geometry_msgs/msg/PoseWithCovariance.pose field.
    /// @details Original type geometry_msgs/msg/Pose. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros2Geometry_msgsMsgPose field_pose;
    /// @brief Original geometry_msgs/msg/PoseWithCovariance.covariance field.
    /// @details Original type float64. Shape array; bound/count 36 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    double[36] field_covariance = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 344;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 344;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2";

}
/// @brief Encode every field of complete geometry_msgs/msg/PoseWithCovariance.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Geometry_msgsMsgPoseWithCovariance(ref Ros2Geometry_msgsMsgPoseWithCovariance value,
                                                  ubyte[] output,
                                                  out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete geometry_msgs/msg/PoseWithCovariance.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Geometry_msgsMsgPoseWithCovariance(const(ubyte)[] bytes,
                                                  out Ros2Geometry_msgsMsgPoseWithCovariance value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete geometry_msgs/msg/Vector3 value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 24..24 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Geometry_msgsMsgVector3
{
    /// @brief Original geometry_msgs/msg/Vector3.x field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_x = 0;
    /// @brief Original geometry_msgs/msg/Vector3.y field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_y = 0;
    /// @brief Original geometry_msgs/msg/Vector3.z field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_z = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 24;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 24;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e";

}
/// @brief Encode every field of complete geometry_msgs/msg/Vector3.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Geometry_msgsMsgVector3(ref Ros2Geometry_msgsMsgVector3 value, ubyte[] output, out size_t written)
    @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete geometry_msgs/msg/Vector3.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Geometry_msgsMsgVector3(const(ubyte)[] bytes, out Ros2Geometry_msgsMsgVector3 value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete geometry_msgs/msg/Twist value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 48..48 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Geometry_msgsMsgTwist
{
    /// @brief Original geometry_msgs/msg/Twist.linear field.
    /// @details Original type geometry_msgs/msg/Vector3. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros2Geometry_msgsMsgVector3 field_linear;
    /// @brief Original geometry_msgs/msg/Twist.angular field.
    /// @details Original type geometry_msgs/msg/Vector3. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros2Geometry_msgsMsgVector3 field_angular;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 48;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 48;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e";

}
/// @brief Encode every field of complete geometry_msgs/msg/Twist.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Geometry_msgsMsgTwist(ref Ros2Geometry_msgsMsgTwist value, ubyte[] output, out size_t written)
    @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete geometry_msgs/msg/Twist.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Geometry_msgsMsgTwist(const(ubyte)[] bytes, out Ros2Geometry_msgsMsgTwist value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete geometry_msgs/msg/TwistWithCovariance value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 336..336 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Geometry_msgsMsgTwistWithCovariance
{
    /// @brief Original geometry_msgs/msg/TwistWithCovariance.twist field.
    /// @details Original type geometry_msgs/msg/Twist. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros2Geometry_msgsMsgTwist field_twist;
    /// @brief Original geometry_msgs/msg/TwistWithCovariance.covariance field.
    /// @details Original type float64. Shape array; bound/count 36 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    double[36] field_covariance = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 336;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 336;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_96c9fddad7b7c240e850d8c27ddb5f8343764cac791ef9e210196f7941aaf404";

}
/// @brief Encode every field of complete geometry_msgs/msg/TwistWithCovariance.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Geometry_msgsMsgTwistWithCovariance(ref Ros2Geometry_msgsMsgTwistWithCovariance value,
                                                   ubyte[] output,
                                                   out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete geometry_msgs/msg/TwistWithCovariance.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Geometry_msgsMsgTwistWithCovariance(const(ubyte)[] bytes,
                                                   out Ros2Geometry_msgsMsgTwistWithCovariance value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete std_msgs/msg/Header value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 12..140 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Std_msgsMsgHeader
{
    /// @brief Original std_msgs/msg/Header.stamp field.
    /// @details Original type builtin_interfaces/msg/Time. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Builtin_interfacesMsgTime field_stamp;
    /// @brief Original std_msgs/msg/Header.frame_id field.
    /// @details Original type string. String bound 128 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text !(128, false)field_frame_id;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 12;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 140;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96";

}
/// @brief Encode every field of complete std_msgs/msg/Header.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Std_msgsMsgHeader(ref Ros2Std_msgsMsgHeader value, ubyte[] output, out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete std_msgs/msg/Header.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Std_msgsMsgHeader(const(ubyte)[] bytes, out Ros2Std_msgsMsgHeader value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete nav_msgs/msg/Odometry value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 696..952 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Nav_msgsMsgOdometry
{
    /// @brief Original nav_msgs/msg/Odometry.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Std_msgsMsgHeader field_header;
    /// @brief Original nav_msgs/msg/Odometry.child_frame_id field.
    /// @details Original type string. String bound 128 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text !(128, false)field_child_frame_id;
    /// @brief Original nav_msgs/msg/Odometry.pose field.
    /// @details Original type geometry_msgs/msg/PoseWithCovariance. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Geometry_msgsMsgPoseWithCovariance field_pose;
    /// @brief Original nav_msgs/msg/Odometry.twist field.
    /// @details Original type geometry_msgs/msg/TwistWithCovariance. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Ros2Geometry_msgsMsgTwistWithCovariance field_twist;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 696;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 952;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_fdfdd74c211c22bfd167c3e33a098fe21198cb095bbd0313fc765f38b1f334ec";

}
/// @brief Encode every field of complete nav_msgs/msg/Odometry.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Nav_msgsMsgOdometry(ref Ros2Nav_msgsMsgOdometry value, ubyte[] output, out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete nav_msgs/msg/Odometry.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Nav_msgsMsgOdometry(const(ubyte)[] bytes, out Ros2Nav_msgsMsgOdometry value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete scout_msgs/msg/ScoutActuatorState value.
/// @details Retain all 5 original fields and 0 constants. Canonical extent 19..19 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Scout_msgsMsgScoutActuatorState
{
    /// @brief Original scout_msgs/msg/ScoutActuatorState.rpm field.
    /// @details Original type int16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    short field_rpm;
    /// @brief Original scout_msgs/msg/ScoutActuatorState.current field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_current = 0;
    /// @brief Original scout_msgs/msg/ScoutActuatorState.driver_voltage field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_driver_voltage = 0;
    /// @brief Original scout_msgs/msg/ScoutActuatorState.driver_temperature field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_driver_temperature = 0;
    /// @brief Original scout_msgs/msg/ScoutActuatorState.motor_temperature field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_motor_temperature;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 19;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 19;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_e7955c07aedaf42f8d97f873d60ae5c0dfc562faa1d64848f11b333f797350c6";

}
/// @brief Encode every field of complete scout_msgs/msg/ScoutActuatorState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Scout_msgsMsgScoutActuatorState(ref Ros2Scout_msgsMsgScoutActuatorState value,
                                               ubyte[] output,
                                               out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete scout_msgs/msg/ScoutActuatorState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Scout_msgsMsgScoutActuatorState(const(ubyte)[] bytes, out Ros2Scout_msgsMsgScoutActuatorState value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete scout_msgs/msg/ScoutLightCmd value.
/// @details Retain all 5 original fields and 4 constants. Canonical extent 5..5 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Scout_msgsMsgScoutLightCmd
{
    /// @brief Original scout_msgs/msg/ScoutLightCmd.cmd_ctrl_allowed field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_cmd_ctrl_allowed;
    /// @brief Original scout_msgs/msg/ScoutLightCmd.front_mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_front_mode;
    /// @brief Original scout_msgs/msg/ScoutLightCmd.front_custom_value field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_front_custom_value;
    /// @brief Original scout_msgs/msg/ScoutLightCmd.rear_mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_rear_mode;
    /// @brief Original scout_msgs/msg/ScoutLightCmd.rear_custom_value field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_rear_custom_value;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 5;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 5;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_a82206813682fbf1a6b41009c12191ad9ce47c98444d8ea9792e7b212ee602d7";
    /// @brief Original scout_msgs/msg/ScoutLightCmd.LIGHT_CONST_OFF constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_LIGHT_CONST_OFF = 0;
    /// @brief Original scout_msgs/msg/ScoutLightCmd.LIGHT_CONST_ON constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_LIGHT_CONST_ON = 1;
    /// @brief Original scout_msgs/msg/ScoutLightCmd.LIGHT_BREATH constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_LIGHT_BREATH = 2;
    /// @brief Original scout_msgs/msg/ScoutLightCmd.LIGHT_CUSTOM constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_LIGHT_CUSTOM = 3;

}
/// @brief Encode every field of complete scout_msgs/msg/ScoutLightCmd.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Scout_msgsMsgScoutLightCmd(ref Ros2Scout_msgsMsgScoutLightCmd value, ubyte[] output, out size_t written)
    @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete scout_msgs/msg/ScoutLightCmd.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Scout_msgsMsgScoutLightCmd(const(ubyte)[] bytes, out Ros2Scout_msgsMsgScoutLightCmd value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete scout_msgs/msg/ScoutLightState value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 2..2 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Scout_msgsMsgScoutLightState
{
    /// @brief Original scout_msgs/msg/ScoutLightState.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_mode;
    /// @brief Original scout_msgs/msg/ScoutLightState.custom_value field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_custom_value;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 2;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 2;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_4f42b9365cc76673b156e725aac9448e0f0d806105d3717cdb2628c384a6d76a";

}
/// @brief Encode every field of complete scout_msgs/msg/ScoutLightState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Scout_msgsMsgScoutLightState(ref Ros2Scout_msgsMsgScoutLightState value,
                                            ubyte[] output,
                                            out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete scout_msgs/msg/ScoutLightState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Scout_msgsMsgScoutLightState(const(ubyte)[] bytes, out Ros2Scout_msgsMsgScoutLightState value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete scout_msgs/msg/ScoutRCState value.
/// @details Retain all 9 original fields and 0 constants. Canonical extent 9..9 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Scout_msgsMsgScoutRCState
{
    /// @brief Original scout_msgs/msg/ScoutRCState.swa field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_swa;
    /// @brief Original scout_msgs/msg/ScoutRCState.swb field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_swb;
    /// @brief Original scout_msgs/msg/ScoutRCState.swc field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_swc;
    /// @brief Original scout_msgs/msg/ScoutRCState.swd field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_swd;
    /// @brief Original scout_msgs/msg/ScoutRCState.stick_right_v field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_stick_right_v;
    /// @brief Original scout_msgs/msg/ScoutRCState.stick_right_h field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_stick_right_h;
    /// @brief Original scout_msgs/msg/ScoutRCState.stick_left_v field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_stick_left_v;
    /// @brief Original scout_msgs/msg/ScoutRCState.stick_left_h field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_stick_left_h;
    /// @brief Original scout_msgs/msg/ScoutRCState.var_a field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_var_a;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 9;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 9;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_ba13e4c728041d14352c021fe5c1c5eee5d531c84ac64c61d944d6192dcd4298";

}
/// @brief Encode every field of complete scout_msgs/msg/ScoutRCState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Scout_msgsMsgScoutRCState(ref Ros2Scout_msgsMsgScoutRCState value, ubyte[] output, out size_t written)
    @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete scout_msgs/msg/ScoutRCState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Scout_msgsMsgScoutRCState(const(ubyte)[] bytes, out Ros2Scout_msgsMsgScoutRCState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete scout_msgs/msg/ScoutStatus value.
/// @details Retain all 11 original fields and 6 constants. Canonical extent 121..249 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Scout_msgsMsgScoutStatus
{
    /// @brief Original scout_msgs/msg/ScoutStatus.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Std_msgsMsgHeader field_header;
    /// @brief Original scout_msgs/msg/ScoutStatus.linear_velocity field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_linear_velocity = 0;
    /// @brief Original scout_msgs/msg/ScoutStatus.angular_velocity field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_angular_velocity = 0;
    /// @brief Original scout_msgs/msg/ScoutStatus.vehicle_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_vehicle_state;
    /// @brief Original scout_msgs/msg/ScoutStatus.control_mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_control_mode;
    /// @brief Original scout_msgs/msg/ScoutStatus.error_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_error_code;
    /// @brief Original scout_msgs/msg/ScoutStatus.battery_voltage field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_battery_voltage = 0;
    /// @brief Original scout_msgs/msg/ScoutStatus.actuator_states field.
    /// @details Original type scout_msgs/msg/ScoutActuatorState. Shape array; bound/count 4
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    Ros2Scout_msgsMsgScoutActuatorState[4] field_actuator_states;
    /// @brief Original scout_msgs/msg/ScoutStatus.light_control_enabled field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_light_control_enabled;
    /// @brief Original scout_msgs/msg/ScoutStatus.front_light_state field.
    /// @details Original type scout_msgs/msg/ScoutLightState. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Scout_msgsMsgScoutLightState field_front_light_state;
    /// @brief Original scout_msgs/msg/ScoutStatus.rear_light_state field.
    /// @details Original type scout_msgs/msg/ScoutLightState. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Scout_msgsMsgScoutLightState field_rear_light_state;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 121;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 249;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_75db4db1dcc07210d543b8e6bd6b6a7aadbf23db8043ff372a3b224c5c235b86";
    /// @brief Original scout_msgs/msg/ScoutStatus.MOTOR_ID_FRONT_RIGHT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum byte constant_MOTOR_ID_FRONT_RIGHT = 0;
    /// @brief Original scout_msgs/msg/ScoutStatus.MOTOR_ID_FRONT_LEFT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum byte constant_MOTOR_ID_FRONT_LEFT = 1;
    /// @brief Original scout_msgs/msg/ScoutStatus.MOTOR_ID_REAR_RIGHT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum byte constant_MOTOR_ID_REAR_RIGHT = 2;
    /// @brief Original scout_msgs/msg/ScoutStatus.MOTOR_ID_REAR_LEFT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum byte constant_MOTOR_ID_REAR_LEFT = 3;
    /// @brief Original scout_msgs/msg/ScoutStatus.LIGHT_ID_FRONT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum byte constant_LIGHT_ID_FRONT = 0;
    /// @brief Original scout_msgs/msg/ScoutStatus.LIGHT_ID_REAR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum byte constant_LIGHT_ID_REAR = 1;

}
/// @brief Encode every field of complete scout_msgs/msg/ScoutStatus.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Scout_msgsMsgScoutStatus(ref Ros2Scout_msgsMsgScoutStatus value, ubyte[] output, out size_t written)
    @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete scout_msgs/msg/ScoutStatus.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Scout_msgsMsgScoutStatus(const(ubyte)[] bytes, out Ros2Scout_msgsMsgScoutStatus value) @nogc nothrow
{
    return decode(bytes, value);
}
