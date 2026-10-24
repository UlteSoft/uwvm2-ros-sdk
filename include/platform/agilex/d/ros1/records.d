/// @file records.d
/// @brief Complete owned original agilex ROS 1 native records and codecs.
/// @details Generated from the admitted source-pinned catalog; no ROS authority is created.
module agilex.d.ros1.records;
import native.d.wire;

/// @brief Complete geometry_msgs/Point value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 24..24 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Geometry_msgsPoint
{
    /// @brief Original geometry_msgs/Point.x field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_x = 0;
    /// @brief Original geometry_msgs/Point.y field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_y = 0;
    /// @brief Original geometry_msgs/Point.z field.
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
    enum codecIdentity = "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b";

}
/// @brief Encode every field of complete geometry_msgs/Point.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Geometry_msgsPoint(ref Ros1Geometry_msgsPoint value, ubyte[] output, out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete geometry_msgs/Point.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Geometry_msgsPoint(const(ubyte)[] bytes, out Ros1Geometry_msgsPoint value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete geometry_msgs/Quaternion value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 32..32 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Geometry_msgsQuaternion
{
    /// @brief Original geometry_msgs/Quaternion.x field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_x = 0;
    /// @brief Original geometry_msgs/Quaternion.y field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_y = 0;
    /// @brief Original geometry_msgs/Quaternion.z field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_z = 0;
    /// @brief Original geometry_msgs/Quaternion.w field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_w = 0;
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
    enum codecIdentity = "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934";

}
/// @brief Encode every field of complete geometry_msgs/Quaternion.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Geometry_msgsQuaternion(ref Ros1Geometry_msgsQuaternion value, ubyte[] output, out size_t written)
    @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete geometry_msgs/Quaternion.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Geometry_msgsQuaternion(const(ubyte)[] bytes, out Ros1Geometry_msgsQuaternion value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete geometry_msgs/Pose value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 56..56 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Geometry_msgsPose
{
    /// @brief Original geometry_msgs/Pose.position field.
    /// @details Original type geometry_msgs/Point. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros1Geometry_msgsPoint field_position;
    /// @brief Original geometry_msgs/Pose.orientation field.
    /// @details Original type geometry_msgs/Quaternion. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros1Geometry_msgsQuaternion field_orientation;
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
    enum codecIdentity = "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471";

}
/// @brief Encode every field of complete geometry_msgs/Pose.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Geometry_msgsPose(ref Ros1Geometry_msgsPose value, ubyte[] output, out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete geometry_msgs/Pose.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Geometry_msgsPose(const(ubyte)[] bytes, out Ros1Geometry_msgsPose value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete geometry_msgs/PoseWithCovariance value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 344..344 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Geometry_msgsPoseWithCovariance
{
    /// @brief Original geometry_msgs/PoseWithCovariance.pose field.
    /// @details Original type geometry_msgs/Pose. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros1Geometry_msgsPose field_pose;
    /// @brief Original geometry_msgs/PoseWithCovariance.covariance field.
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
    enum codecIdentity = "UWVMROS1_17b25963aafb3adfd0432febe040c9b38a531a7a667949b89e0f3937585ef8cf";

}
/// @brief Encode every field of complete geometry_msgs/PoseWithCovariance.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Geometry_msgsPoseWithCovariance(ref Ros1Geometry_msgsPoseWithCovariance value,
                                               ubyte[] output,
                                               out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete geometry_msgs/PoseWithCovariance.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Geometry_msgsPoseWithCovariance(const(ubyte)[] bytes, out Ros1Geometry_msgsPoseWithCovariance value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete geometry_msgs/Vector3 value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 24..24 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Geometry_msgsVector3
{
    /// @brief Original geometry_msgs/Vector3.x field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_x = 0;
    /// @brief Original geometry_msgs/Vector3.y field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_y = 0;
    /// @brief Original geometry_msgs/Vector3.z field.
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
    enum codecIdentity = "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc";

}
/// @brief Encode every field of complete geometry_msgs/Vector3.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Geometry_msgsVector3(ref Ros1Geometry_msgsVector3 value, ubyte[] output, out size_t written)
    @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete geometry_msgs/Vector3.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Geometry_msgsVector3(const(ubyte)[] bytes, out Ros1Geometry_msgsVector3 value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete geometry_msgs/Twist value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 48..48 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Geometry_msgsTwist
{
    /// @brief Original geometry_msgs/Twist.linear field.
    /// @details Original type geometry_msgs/Vector3. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros1Geometry_msgsVector3 field_linear;
    /// @brief Original geometry_msgs/Twist.angular field.
    /// @details Original type geometry_msgs/Vector3. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros1Geometry_msgsVector3 field_angular;
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
    enum codecIdentity = "UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921";

}
/// @brief Encode every field of complete geometry_msgs/Twist.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Geometry_msgsTwist(ref Ros1Geometry_msgsTwist value, ubyte[] output, out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete geometry_msgs/Twist.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Geometry_msgsTwist(const(ubyte)[] bytes, out Ros1Geometry_msgsTwist value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete geometry_msgs/TwistWithCovariance value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 336..336 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Geometry_msgsTwistWithCovariance
{
    /// @brief Original geometry_msgs/TwistWithCovariance.twist field.
    /// @details Original type geometry_msgs/Twist. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros1Geometry_msgsTwist field_twist;
    /// @brief Original geometry_msgs/TwistWithCovariance.covariance field.
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
    enum codecIdentity = "UWVMROS1_ff6790d181503b424d84726c8f4a7852cef14c6dd93e6d32cf3c37023f74bcdf";

}
/// @brief Encode every field of complete geometry_msgs/TwistWithCovariance.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Geometry_msgsTwistWithCovariance(ref Ros1Geometry_msgsTwistWithCovariance value,
                                                ubyte[] output,
                                                out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete geometry_msgs/TwistWithCovariance.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Geometry_msgsTwistWithCovariance(const(ubyte)[] bytes, out Ros1Geometry_msgsTwistWithCovariance value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete time value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Time
{
    /// @brief Original time.sec field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_sec;
    /// @brief Original time.nsec field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_nsec;
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
    enum codecIdentity = "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0";

    /// @brief Validate every original complete-value semantic constraint.
    /// @details Preserve normalized time and all six optional JointState array pairs without
    /// changing fields.
    /// @return Zero or canonical error 22.
    uint validate() const @nogc nothrow
    {
        if (this.field_nsec >= 1000000000)
            return 22;
        return 0;
    }

}
/// @brief Encode every field of complete time.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Time(ref Ros1Time value, ubyte[] output, out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete time.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Time(const(ubyte)[] bytes, out Ros1Time value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete std_msgs/Header value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 16..144 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Std_msgsHeader
{
    /// @brief Original std_msgs/Header.seq field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_seq;
    /// @brief Original std_msgs/Header.stamp field.
    /// @details Original type time. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    Ros1Time field_stamp;
    /// @brief Original std_msgs/Header.frame_id field.
    /// @details Original type string. String bound 128 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text !(128, false)field_frame_id;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 16;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 144;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435";

}
/// @brief Encode every field of complete std_msgs/Header.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Std_msgsHeader(ref Ros1Std_msgsHeader value, ubyte[] output, out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete std_msgs/Header.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Std_msgsHeader(const(ubyte)[] bytes, out Ros1Std_msgsHeader value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete nav_msgs/Odometry value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 700..956 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Nav_msgsOdometry
{
    /// @brief Original nav_msgs/Odometry.header field.
    /// @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
    /// order. Backing storage belongs to this value; constructing or copying it creates no native
    /// ROS owner.
    Ros1Std_msgsHeader field_header;
    /// @brief Original nav_msgs/Odometry.child_frame_id field.
    /// @details Original type string. String bound 128 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text !(128, false)field_child_frame_id;
    /// @brief Original nav_msgs/Odometry.pose field.
    /// @details Original type geometry_msgs/PoseWithCovariance. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros1Geometry_msgsPoseWithCovariance field_pose;
    /// @brief Original nav_msgs/Odometry.twist field.
    /// @details Original type geometry_msgs/TwistWithCovariance. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros1Geometry_msgsTwistWithCovariance field_twist;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 700;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 956;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_c10d3ce1f2824c33d728d0006fb83134330d0332af122f179cf2dac32181a2ca";

}
/// @brief Encode every field of complete nav_msgs/Odometry.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Nav_msgsOdometry(ref Ros1Nav_msgsOdometry value, ubyte[] output, out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete nav_msgs/Odometry.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Nav_msgsOdometry(const(ubyte)[] bytes, out Ros1Nav_msgsOdometry value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete scout_msgs/ScoutBmsStatus value.
/// @details Retain all 9 original fields and 0 constants. Canonical extent 44..44 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Scout_msgsScoutBmsStatus
{
    /// @brief Original scout_msgs/ScoutBmsStatus.SOC field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_SOC = 0;
    /// @brief Original scout_msgs/ScoutBmsStatus.SOH field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_SOH = 0;
    /// @brief Original scout_msgs/ScoutBmsStatus.battery_voltage field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_battery_voltage = 0;
    /// @brief Original scout_msgs/ScoutBmsStatus.battery_current field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_battery_current = 0;
    /// @brief Original scout_msgs/ScoutBmsStatus.battery_temperature field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_battery_temperature = 0;
    /// @brief Original scout_msgs/ScoutBmsStatus.Alarm_Status_1 field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_Alarm_Status_1;
    /// @brief Original scout_msgs/ScoutBmsStatus.Alarm_Status_2 field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_Alarm_Status_2;
    /// @brief Original scout_msgs/ScoutBmsStatus.Warning_Status_1 field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_Warning_Status_1;
    /// @brief Original scout_msgs/ScoutBmsStatus.Warning_Status_2 field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_Warning_Status_2;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 44;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 44;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_6921538c08e86ab5b9ecdbf974c6cb5b580488f4ed96ccbdb8b7824d51e9cf95";

}
/// @brief Encode every field of complete scout_msgs/ScoutBmsStatus.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Scout_msgsScoutBmsStatus(ref Ros1Scout_msgsScoutBmsStatus value, ubyte[] output, out size_t written)
    @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete scout_msgs/ScoutBmsStatus.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Scout_msgsScoutBmsStatus(const(ubyte)[] bytes, out Ros1Scout_msgsScoutBmsStatus value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete scout_msgs/ScoutDriverState value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 17..17 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Scout_msgsScoutDriverState
{
    /// @brief Original scout_msgs/ScoutDriverState.driver_voltage field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_driver_voltage = 0;
    /// @brief Original scout_msgs/ScoutDriverState.driver_temperature field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_driver_temperature = 0;
    /// @brief Original scout_msgs/ScoutDriverState.driver_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_driver_state;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 17;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 17;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_4c56c71ae621b2b8822d742894d19946492002453c93b72faccb4f2abc9d4275";

}
/// @brief Encode every field of complete scout_msgs/ScoutDriverState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Scout_msgsScoutDriverState(ref Ros1Scout_msgsScoutDriverState value, ubyte[] output, out size_t written)
    @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete scout_msgs/ScoutDriverState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Scout_msgsScoutDriverState(const(ubyte)[] bytes, out Ros1Scout_msgsScoutDriverState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete scout_msgs/ScoutLightCmd value.
/// @details Retain all 5 original fields and 4 constants. Canonical extent 5..5 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Scout_msgsScoutLightCmd
{
    /// @brief Original scout_msgs/ScoutLightCmd.enable_cmd_light_control field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_enable_cmd_light_control;
    /// @brief Original scout_msgs/ScoutLightCmd.front_mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_front_mode;
    /// @brief Original scout_msgs/ScoutLightCmd.front_custom_value field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_front_custom_value;
    /// @brief Original scout_msgs/ScoutLightCmd.rear_mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_rear_mode;
    /// @brief Original scout_msgs/ScoutLightCmd.rear_custom_value field.
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
    enum codecIdentity = "UWVMROS1_cf08cccf454f88111d5cc4a4b1ace08de72cf1ae9a9400c23a148126da95942a";
    /// @brief Original scout_msgs/ScoutLightCmd.LIGHT_CONST_OFF constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_LIGHT_CONST_OFF = 0;
    /// @brief Original scout_msgs/ScoutLightCmd.LIGHT_CONST_ON constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_LIGHT_CONST_ON = 1;
    /// @brief Original scout_msgs/ScoutLightCmd.LIGHT_BREATH constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_LIGHT_BREATH = 2;
    /// @brief Original scout_msgs/ScoutLightCmd.LIGHT_CUSTOM constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_LIGHT_CUSTOM = 3;

}
/// @brief Encode every field of complete scout_msgs/ScoutLightCmd.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Scout_msgsScoutLightCmd(ref Ros1Scout_msgsScoutLightCmd value, ubyte[] output, out size_t written)
    @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete scout_msgs/ScoutLightCmd.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Scout_msgsScoutLightCmd(const(ubyte)[] bytes, out Ros1Scout_msgsScoutLightCmd value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete scout_msgs/ScoutLightState value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 2..2 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Scout_msgsScoutLightState
{
    /// @brief Original scout_msgs/ScoutLightState.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_mode;
    /// @brief Original scout_msgs/ScoutLightState.custom_value field.
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
    enum codecIdentity = "UWVMROS1_af55048f9200cfa80fc419664204a515f628cc610a352ab3ed8443dd7ac0ae51";

}
/// @brief Encode every field of complete scout_msgs/ScoutLightState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Scout_msgsScoutLightState(ref Ros1Scout_msgsScoutLightState value, ubyte[] output, out size_t written)
    @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete scout_msgs/ScoutLightState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Scout_msgsScoutLightState(const(ubyte)[] bytes, out Ros1Scout_msgsScoutLightState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete scout_msgs/ScoutMotorState value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 32..32 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Scout_msgsScoutMotorState
{
    /// @brief Original scout_msgs/ScoutMotorState.current field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_current = 0;
    /// @brief Original scout_msgs/ScoutMotorState.rpm field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_rpm = 0;
    /// @brief Original scout_msgs/ScoutMotorState.temperature field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_temperature = 0;
    /// @brief Original scout_msgs/ScoutMotorState.motor_pose field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_motor_pose = 0;
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
    enum codecIdentity = "UWVMROS1_ca67a704d7bb4ba6b2839db1fdb8a75bc753868ec871d101c24c85d8202a79b7";

}
/// @brief Encode every field of complete scout_msgs/ScoutMotorState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Scout_msgsScoutMotorState(ref Ros1Scout_msgsScoutMotorState value, ubyte[] output, out size_t written)
    @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete scout_msgs/ScoutMotorState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Scout_msgsScoutMotorState(const(ubyte)[] bytes, out Ros1Scout_msgsScoutMotorState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete scout_msgs/ScoutRsStatus value.
/// @details Retain all 10 original fields and 0 constants. Canonical extent 25..153 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Scout_msgsScoutRsStatus
{
    /// @brief Original scout_msgs/ScoutRsStatus.header field.
    /// @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
    /// order. Backing storage belongs to this value; constructing or copying it creates no native
    /// ROS owner.
    Ros1Std_msgsHeader field_header;
    /// @brief Original scout_msgs/ScoutRsStatus.stick_left_h field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_stick_left_h;
    /// @brief Original scout_msgs/ScoutRsStatus.stick_left_v field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_stick_left_v;
    /// @brief Original scout_msgs/ScoutRsStatus.stick_right_h field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_stick_right_h;
    /// @brief Original scout_msgs/ScoutRsStatus.stick_right_v field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_stick_right_v;
    /// @brief Original scout_msgs/ScoutRsStatus.swa field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_swa;
    /// @brief Original scout_msgs/ScoutRsStatus.swb field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_swb;
    /// @brief Original scout_msgs/ScoutRsStatus.swc field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_swc;
    /// @brief Original scout_msgs/ScoutRsStatus.swd field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_swd;
    /// @brief Original scout_msgs/ScoutRsStatus.var_a field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_var_a;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 25;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 153;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_deb068b75fb629df3724c141ed3be9f6ee8a4aac7727cdaa28769cb61211f7de";

}
/// @brief Encode every field of complete scout_msgs/ScoutRsStatus.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Scout_msgsScoutRsStatus(ref Ros1Scout_msgsScoutRsStatus value, ubyte[] output, out size_t written)
    @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete scout_msgs/ScoutRsStatus.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Scout_msgsScoutRsStatus(const(ubyte)[] bytes, out Ros1Scout_msgsScoutRsStatus value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete scout_msgs/ScoutStatus value.
/// @details Retain all 13 original fields and 6 constants. Canonical extent 253..381 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Scout_msgsScoutStatus
{
    /// @brief Original scout_msgs/ScoutStatus.header field.
    /// @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
    /// order. Backing storage belongs to this value; constructing or copying it creates no native
    /// ROS owner.
    Ros1Std_msgsHeader field_header;
    /// @brief Original scout_msgs/ScoutStatus.linear_velocity field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_linear_velocity = 0;
    /// @brief Original scout_msgs/ScoutStatus.angular_velocity field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_angular_velocity = 0;
    /// @brief Original scout_msgs/ScoutStatus.lateral_velocity field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_lateral_velocity = 0;
    /// @brief Original scout_msgs/ScoutStatus.base_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_base_state;
    /// @brief Original scout_msgs/ScoutStatus.control_mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_control_mode;
    /// @brief Original scout_msgs/ScoutStatus.fault_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_fault_code;
    /// @brief Original scout_msgs/ScoutStatus.battery_voltage field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_battery_voltage = 0;
    /// @brief Original scout_msgs/ScoutStatus.motor_states field.
    /// @details Original type scout_msgs/ScoutMotorState. Shape array; bound/count 4 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Ros1Scout_msgsScoutMotorState[4] field_motor_states;
    /// @brief Original scout_msgs/ScoutStatus.driver_states field.
    /// @details Original type scout_msgs/ScoutDriverState. Shape array; bound/count 4 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Ros1Scout_msgsScoutDriverState[4] field_driver_states;
    /// @brief Original scout_msgs/ScoutStatus.light_control_enabled field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_light_control_enabled;
    /// @brief Original scout_msgs/ScoutStatus.front_light_state field.
    /// @details Original type scout_msgs/ScoutLightState. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros1Scout_msgsScoutLightState field_front_light_state;
    /// @brief Original scout_msgs/ScoutStatus.rear_light_state field.
    /// @details Original type scout_msgs/ScoutLightState. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros1Scout_msgsScoutLightState field_rear_light_state;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 253;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 381;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_ff62854d4de0aae3dfbbc312822c6f912294f0feb04a7fff943df602d40bcbe2";
    /// @brief Original scout_msgs/ScoutStatus.MOTOR_ID_FRONT_RIGHT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum byte constant_MOTOR_ID_FRONT_RIGHT = 0;
    /// @brief Original scout_msgs/ScoutStatus.MOTOR_ID_FRONT_LEFT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum byte constant_MOTOR_ID_FRONT_LEFT = 1;
    /// @brief Original scout_msgs/ScoutStatus.MOTOR_ID_REAR_RIGHT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum byte constant_MOTOR_ID_REAR_RIGHT = 2;
    /// @brief Original scout_msgs/ScoutStatus.MOTOR_ID_REAR_LEFT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum byte constant_MOTOR_ID_REAR_LEFT = 3;
    /// @brief Original scout_msgs/ScoutStatus.LIGHT_ID_FRONT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum byte constant_LIGHT_ID_FRONT = 0;
    /// @brief Original scout_msgs/ScoutStatus.LIGHT_ID_REAR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum byte constant_LIGHT_ID_REAR = 1;

}
/// @brief Encode every field of complete scout_msgs/ScoutStatus.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Scout_msgsScoutStatus(ref Ros1Scout_msgsScoutStatus value, ubyte[] output, out size_t written)
    @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete scout_msgs/ScoutStatus.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Scout_msgsScoutStatus(const(ubyte)[] bytes, out Ros1Scout_msgsScoutStatus value) @nogc nothrow
{
    return decode(bytes, value);
}
