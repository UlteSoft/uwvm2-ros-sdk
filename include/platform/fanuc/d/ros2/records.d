/// @file records.d
/// @brief Complete owned original FANUC ROS 2 native records and codecs.
/// @details Generated from the admitted source-pinned catalog; no ROS authority is created.
module fanuc.d.ros2.records;
import ros.d.wire;

/// @brief Complete builtin_interfaces/msg/Duration value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Builtin_interfacesMsgDuration
{
    /// @brief Original builtin_interfaces/msg/Duration.sec field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_sec;
    /// @brief Original builtin_interfaces/msg/Duration.nanosec field.
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
    enum codecIdentity = "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4";
    /// @brief Validate the complete original time-domain invariant.
    /// @details Nanoseconds stay in the original normalized domain; no clock or unit conversion
    /// occurs.
    /// @return Zero or canonical error 22.
    uint validate() const @nogc nothrow
    {
        return this.field_nanosec >= 1000000000 ? 22 : 0;
    }
}
/// @brief Encode every field of complete builtin_interfaces/msg/Duration.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Builtin_interfacesMsgDuration(ref Ros2Builtin_interfacesMsgDuration value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete builtin_interfaces/msg/Duration.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Builtin_interfacesMsgDuration(const(ubyte)[] bytes, out Ros2Builtin_interfacesMsgDuration value) @nogc nothrow
{
    return decode(bytes, value);
}

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
    /// @brief Validate the complete original time-domain invariant.
    /// @details Nanoseconds stay in the original normalized domain; no clock or unit conversion
    /// occurs.
    /// @return Zero or canonical error 22.
    uint validate() const @nogc nothrow
    {
        return this.field_nanosec >= 1000000000 ? 22 : 0;
    }
}
/// @brief Encode every field of complete builtin_interfaces/msg/Time.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Builtin_interfacesMsgTime(ref Ros2Builtin_interfacesMsgTime value, ubyte[] output, out size_t written) @nogc nothrow
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

/// @brief Complete std_msgs/msg/Header value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 12..76 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Std_msgsMsgHeader
{
    /// @brief Original std_msgs/msg/Header.stamp field.
    /// @details Original type builtin_interfaces/msg/Time. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Builtin_interfacesMsgTime field_stamp;
    /// @brief Original std_msgs/msg/Header.frame_id field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(64, false) field_frame_id;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 12;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 76;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396";
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

/// @brief Complete trajectory_msgs/msg/JointTrajectoryPoint value.
/// @details Retain all 5 original fields and 0 constants. Canonical extent 24..408 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Trajectory_msgsMsgJointTrajectoryPoint
{
    /// @brief Original trajectory_msgs/msg/JointTrajectoryPoint.positions field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence!(double, 12) field_positions;
    /// @brief Original trajectory_msgs/msg/JointTrajectoryPoint.velocities field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence!(double, 12) field_velocities;
    /// @brief Original trajectory_msgs/msg/JointTrajectoryPoint.accelerations field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence!(double, 12) field_accelerations;
    /// @brief Original trajectory_msgs/msg/JointTrajectoryPoint.effort field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence!(double, 12) field_effort;
    /// @brief Original trajectory_msgs/msg/JointTrajectoryPoint.time_from_start field.
    /// @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Builtin_interfacesMsgDuration field_time_from_start;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 24;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 408;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5";
}
/// @brief Encode every field of complete trajectory_msgs/msg/JointTrajectoryPoint.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Trajectory_msgsMsgJointTrajectoryPoint(ref Ros2Trajectory_msgsMsgJointTrajectoryPoint value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete trajectory_msgs/msg/JointTrajectoryPoint.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Trajectory_msgsMsgJointTrajectoryPoint(const(ubyte)[] bytes, out Ros2Trajectory_msgsMsgJointTrajectoryPoint value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete trajectory_msgs/msg/JointTrajectory value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 20..4164 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Trajectory_msgsMsgJointTrajectory
{
    /// @brief Original trajectory_msgs/msg/JointTrajectory.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Std_msgsMsgHeader field_header;
    /// @brief Original trajectory_msgs/msg/JointTrajectory.joint_names field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
    /// bound/count 12 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Text!(64, false), 12) field_joint_names;
    /// @brief Original trajectory_msgs/msg/JointTrajectory.points field.
    /// @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Shape sequence; bound/count
    /// 8 elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros2Trajectory_msgsMsgJointTrajectoryPoint, 8) field_points;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 20;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 4164;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0";
}
/// @brief Encode every field of complete trajectory_msgs/msg/JointTrajectory.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Trajectory_msgsMsgJointTrajectory(ref Ros2Trajectory_msgsMsgJointTrajectory value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete trajectory_msgs/msg/JointTrajectory.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Trajectory_msgsMsgJointTrajectory(const(ubyte)[] bytes, out Ros2Trajectory_msgsMsgJointTrajectory value) @nogc nothrow
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
uint encodeRos2Geometry_msgsMsgVector3(ref Ros2Geometry_msgsMsgVector3 value, ubyte[] output, out size_t written) @nogc nothrow
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

/// @brief Complete geometry_msgs/msg/Quaternion value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 32..32 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Geometry_msgsMsgQuaternion
{
    /// @brief Original geometry_msgs/msg/Quaternion.x field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_x = 0.0;
    /// @brief Original geometry_msgs/msg/Quaternion.y field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_y = 0.0;
    /// @brief Original geometry_msgs/msg/Quaternion.z field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_z = 0.0;
    /// @brief Original geometry_msgs/msg/Quaternion.w field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_w = 1.0;
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
uint encodeRos2Geometry_msgsMsgQuaternion(ref Ros2Geometry_msgsMsgQuaternion value, ubyte[] output, out size_t written) @nogc nothrow
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

/// @brief Complete geometry_msgs/msg/Transform value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 56..56 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Geometry_msgsMsgTransform
{
    /// @brief Original geometry_msgs/msg/Transform.translation field.
    /// @details Original type geometry_msgs/msg/Vector3. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros2Geometry_msgsMsgVector3 field_translation;
    /// @brief Original geometry_msgs/msg/Transform.rotation field.
    /// @details Original type geometry_msgs/msg/Quaternion. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Geometry_msgsMsgQuaternion field_rotation;
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
    enum codecIdentity = "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b";
}
/// @brief Encode every field of complete geometry_msgs/msg/Transform.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Geometry_msgsMsgTransform(ref Ros2Geometry_msgsMsgTransform value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete geometry_msgs/msg/Transform.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Geometry_msgsMsgTransform(const(ubyte)[] bytes, out Ros2Geometry_msgsMsgTransform value) @nogc nothrow
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
uint encodeRos2Geometry_msgsMsgTwist(ref Ros2Geometry_msgsMsgTwist value, ubyte[] output, out size_t written) @nogc nothrow
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

/// @brief Complete trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 20..324 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
{
    /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.transforms field.
    /// @details Original type geometry_msgs/msg/Transform. Shape sequence; bound/count 2 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros2Geometry_msgsMsgTransform, 2) field_transforms;
    /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.velocities field.
    /// @details Original type geometry_msgs/msg/Twist. Shape sequence; bound/count 2 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros2Geometry_msgsMsgTwist, 2) field_velocities;
    /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.accelerations field.
    /// @details Original type geometry_msgs/msg/Twist. Shape sequence; bound/count 2 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros2Geometry_msgsMsgTwist, 2) field_accelerations;
    /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.time_from_start field.
    /// @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Builtin_interfacesMsgDuration field_time_from_start;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 20;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 324;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242";
}
/// @brief Encode every field of complete trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(ref Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(const(ubyte)[] bytes, out Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete trajectory_msgs/msg/MultiDOFJointTrajectory value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 20..1516 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
{
    /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectory.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Std_msgsMsgHeader field_header;
    /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectory.joint_names field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
    /// bound/count 2 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Text!(64, false), 2) field_joint_names;
    /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectory.points field.
    /// @details Original type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Shape sequence;
    /// bound/count 4 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint, 4) field_points;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 20;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1516;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401";
}
/// @brief Encode every field of complete trajectory_msgs/msg/MultiDOFJointTrajectory.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectory(ref Ros2Trajectory_msgsMsgMultiDOFJointTrajectory value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete trajectory_msgs/msg/MultiDOFJointTrajectory.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Trajectory_msgsMsgMultiDOFJointTrajectory(const(ubyte)[] bytes, out Ros2Trajectory_msgsMsgMultiDOFJointTrajectory value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete control_msgs/msg/JointTolerance value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 28..92 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Control_msgsMsgJointTolerance
{
    /// @brief Original control_msgs/msg/JointTolerance.name field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(64, false) field_name;
    /// @brief Original control_msgs/msg/JointTolerance.position field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_position = 0;
    /// @brief Original control_msgs/msg/JointTolerance.velocity field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_velocity = 0;
    /// @brief Original control_msgs/msg/JointTolerance.acceleration field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_acceleration = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 28;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 92;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2";
}
/// @brief Encode every field of complete control_msgs/msg/JointTolerance.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Control_msgsMsgJointTolerance(ref Ros2Control_msgsMsgJointTolerance value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete control_msgs/msg/JointTolerance.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Control_msgsMsgJointTolerance(const(ubyte)[] bytes, out Ros2Control_msgsMsgJointTolerance value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete control_msgs/msg/JointComponentTolerance value.
/// @details Retain all 5 original fields and 5 constants. Canonical extent 30..542 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Control_msgsMsgJointComponentTolerance
{
    /// @brief Original control_msgs/msg/JointComponentTolerance.joint_name field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_joint_name;
    /// @brief Original control_msgs/msg/JointComponentTolerance.component field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_component;
    /// @brief Original control_msgs/msg/JointComponentTolerance.position field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_position = 0;
    /// @brief Original control_msgs/msg/JointComponentTolerance.velocity field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_velocity = 0;
    /// @brief Original control_msgs/msg/JointComponentTolerance.acceleration field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_acceleration = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 30;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 542;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342";
    /// @brief Original control_msgs/msg/JointComponentTolerance.X_AXIS constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_X_AXIS = 1;
    /// @brief Original control_msgs/msg/JointComponentTolerance.Y_AXIS constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_Y_AXIS = 2;
    /// @brief Original control_msgs/msg/JointComponentTolerance.Z_AXIS constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_Z_AXIS = 3;
    /// @brief Original control_msgs/msg/JointComponentTolerance.TRANSLATION constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_TRANSLATION = 4;
    /// @brief Original control_msgs/msg/JointComponentTolerance.ROTATION constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_ROTATION = 5;
}
/// @brief Encode every field of complete control_msgs/msg/JointComponentTolerance.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Control_msgsMsgJointComponentTolerance(ref Ros2Control_msgsMsgJointComponentTolerance value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete control_msgs/msg/JointComponentTolerance.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Control_msgsMsgJointComponentTolerance(const(ubyte)[] bytes, out Ros2Control_msgsMsgJointComponentTolerance value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete control_msgs/action/FollowJointTrajectory_Goal value.
/// @details Retain all 7 original fields and 0 constants. Canonical extent 64..20920 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Control_msgsActionFollowJointTrajectory_Goal
{
    /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.trajectory field.
    /// @details Original type trajectory_msgs/msg/JointTrajectory. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Trajectory_msgsMsgJointTrajectory field_trajectory;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.multi_dof_trajectory field.
    /// @details Original type trajectory_msgs/msg/MultiDOFJointTrajectory. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Ros2Trajectory_msgsMsgMultiDOFJointTrajectory field_multi_dof_trajectory;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.path_tolerance field.
    /// @details Original type control_msgs/msg/JointTolerance. Shape sequence; bound/count 12
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros2Control_msgsMsgJointTolerance, 12) field_path_tolerance;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.component_path_tolerance
    /// field.
    /// @details Original type control_msgs/msg/JointComponentTolerance. Shape sequence; bound/count
    /// 12 elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros2Control_msgsMsgJointComponentTolerance, 12) field_component_path_tolerance;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.goal_tolerance field.
    /// @details Original type control_msgs/msg/JointTolerance. Shape sequence; bound/count 12
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros2Control_msgsMsgJointTolerance, 12) field_goal_tolerance;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.component_goal_tolerance
    /// field.
    /// @details Original type control_msgs/msg/JointComponentTolerance. Shape sequence; bound/count
    /// 12 elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros2Control_msgsMsgJointComponentTolerance, 12) field_component_goal_tolerance;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.goal_time_tolerance field.
    /// @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Builtin_interfacesMsgDuration field_goal_time_tolerance;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 64;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 20920;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16";
}
/// @brief Encode every field of complete control_msgs/action/FollowJointTrajectory_Goal.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Control_msgsActionFollowJointTrajectory_Goal(ref Ros2Control_msgsActionFollowJointTrajectory_Goal value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete control_msgs/action/FollowJointTrajectory_Goal.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Control_msgsActionFollowJointTrajectory_Goal(const(ubyte)[] bytes, out Ros2Control_msgsActionFollowJointTrajectory_Goal value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete control_msgs/action/FollowJointTrajectory_Result value.
/// @details Retain all 2 original fields and 6 constants. Canonical extent 8..4104 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Control_msgsActionFollowJointTrajectory_Result
{
    /// @brief Original control_msgs/action/FollowJointTrajectory_Result.error_code field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_error_code;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Result.error_string field.
    /// @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Text!(4096, false) field_error_string;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 8;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 4104;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70";
    /// @brief Original control_msgs/action/FollowJointTrajectory_Result.SUCCESSFUL constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum int constant_SUCCESSFUL = 0;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Result.INVALID_GOAL constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum int constant_INVALID_GOAL = -1;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Result.INVALID_JOINTS constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum int constant_INVALID_JOINTS = -2;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Result.OLD_HEADER_TIMESTAMP
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum int constant_OLD_HEADER_TIMESTAMP = -3;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Result.PATH_TOLERANCE_VIOLATED
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum int constant_PATH_TOLERANCE_VIOLATED = -4;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Result.GOAL_TOLERANCE_VIOLATED
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum int constant_GOAL_TOLERANCE_VIOLATED = -5;
}
/// @brief Encode every field of complete control_msgs/action/FollowJointTrajectory_Result.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Control_msgsActionFollowJointTrajectory_Result(ref Ros2Control_msgsActionFollowJointTrajectory_Result value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete control_msgs/action/FollowJointTrajectory_Result.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Control_msgsActionFollowJointTrajectory_Result(const(ubyte)[] bytes, out Ros2Control_msgsActionFollowJointTrajectory_Result value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete control_msgs/action/FollowJointTrajectory_Feedback value.
/// @details Retain all 9 original fields and 0 constants. Canonical extent 152..4128 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Control_msgsActionFollowJointTrajectory_Feedback
{
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Std_msgsMsgHeader field_header;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.joint_names field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
    /// bound/count 12 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Text!(64, false), 12) field_joint_names;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.desired field.
    /// @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Ros2Trajectory_msgsMsgJointTrajectoryPoint field_desired;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.actual field.
    /// @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Ros2Trajectory_msgsMsgJointTrajectoryPoint field_actual;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.error field.
    /// @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Ros2Trajectory_msgsMsgJointTrajectoryPoint field_error;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_joint_names
    /// field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Shape sequence;
    /// bound/count 2 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Text!(512, false), 2) field_multi_dof_joint_names;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_desired field.
    /// @details Original type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint field_multi_dof_desired;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_actual field.
    /// @details Original type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint field_multi_dof_actual;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_error field.
    /// @details Original type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint field_multi_dof_error;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 152;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 4128;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb";
}
/// @brief Encode every field of complete control_msgs/action/FollowJointTrajectory_Feedback.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Control_msgsActionFollowJointTrajectory_Feedback(ref Ros2Control_msgsActionFollowJointTrajectory_Feedback value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete control_msgs/action/FollowJointTrajectory_Feedback.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Control_msgsActionFollowJointTrajectory_Feedback(const(ubyte)[] bytes, out Ros2Control_msgsActionFollowJointTrajectory_Feedback value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/msg/IOType value.
/// @details Retain all 1 original fields and 18 constants. Canonical extent 4..68 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsMsgIOType
{
    /// @brief Original fanuc_msgs/msg/IOType.type field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(64, false) field_type;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 68;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_1815aa6b1bcab1efe21de0e31570ca650553b5c70f0793301f82c0ca7934c586";
    /// @brief Original fanuc_msgs/msg/IOType.AI constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_AI = "AI";
    /// @brief Original fanuc_msgs/msg/IOType.AO constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_AO = "AO";
    /// @brief Original fanuc_msgs/msg/IOType.DI constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_DI = "DI";
    /// @brief Original fanuc_msgs/msg/IOType.DO constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_DO = "DO";
    /// @brief Original fanuc_msgs/msg/IOType.RI constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_RI = "RI";
    /// @brief Original fanuc_msgs/msg/IOType.RO constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_RO = "RO";
    /// @brief Original fanuc_msgs/msg/IOType.SI constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_SI = "SI";
    /// @brief Original fanuc_msgs/msg/IOType.SO constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_SO = "SO";
    /// @brief Original fanuc_msgs/msg/IOType.WI constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_WI = "WI";
    /// @brief Original fanuc_msgs/msg/IOType.WO constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_WO = "WO";
    /// @brief Original fanuc_msgs/msg/IOType.UI constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_UI = "UI";
    /// @brief Original fanuc_msgs/msg/IOType.UO constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_UO = "UO";
    /// @brief Original fanuc_msgs/msg/IOType.WSI constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_WSI = "WSI";
    /// @brief Original fanuc_msgs/msg/IOType.WSO constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_WSO = "WSO";
    /// @brief Original fanuc_msgs/msg/IOType.F constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_F = "F";
    /// @brief Original fanuc_msgs/msg/IOType.M constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_M = "M";
    /// @brief Original fanuc_msgs/msg/IOType.GI constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_GI = "GI";
    /// @brief Original fanuc_msgs/msg/IOType.GO constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_GO = "GO";
}
/// @brief Encode every field of complete fanuc_msgs/msg/IOType.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsMsgIOType(ref Ros2Fanuc_msgsMsgIOType value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/msg/IOType.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsMsgIOType(const(ubyte)[] bytes, out Ros2Fanuc_msgsMsgIOType value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/msg/AnalogIO value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 10..74 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsMsgAnalogIO
{
    /// @brief Original fanuc_msgs/msg/AnalogIO.io_type field.
    /// @details Original type fanuc_msgs/msg/IOType. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Fanuc_msgsMsgIOType field_io_type;
    /// @brief Original fanuc_msgs/msg/AnalogIO.index field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_index;
    /// @brief Original fanuc_msgs/msg/AnalogIO.value field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_value = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 10;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 74;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_d62097527ba99bf6e803283350161cd1415173a22eb3cb20331a232366076d00";
}
/// @brief Encode every field of complete fanuc_msgs/msg/AnalogIO.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsMsgAnalogIO(ref Ros2Fanuc_msgsMsgAnalogIO value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/msg/AnalogIO.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsMsgAnalogIO(const(ubyte)[] bytes, out Ros2Fanuc_msgsMsgAnalogIO value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/msg/AnalogIOCmd value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..2372 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsMsgAnalogIOCmd
{
    /// @brief Original fanuc_msgs/msg/AnalogIOCmd.values field.
    /// @details Original type fanuc_msgs/msg/AnalogIO. Shape sequence; bound/count 32 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros2Fanuc_msgsMsgAnalogIO, 32) field_values;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 2372;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_62f38a088ed23f8daf7163f26514ae1aabd7b1b64845ccdbc281cb7839d857ba";
}
/// @brief Encode every field of complete fanuc_msgs/msg/AnalogIOCmd.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsMsgAnalogIOCmd(ref Ros2Fanuc_msgsMsgAnalogIOCmd value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/msg/AnalogIOCmd.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsMsgAnalogIOCmd(const(ubyte)[] bytes, out Ros2Fanuc_msgsMsgAnalogIOCmd value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/msg/AnalogIOState value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..2372 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsMsgAnalogIOState
{
    /// @brief Original fanuc_msgs/msg/AnalogIOState.values field.
    /// @details Original type fanuc_msgs/msg/AnalogIO. Shape sequence; bound/count 32 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros2Fanuc_msgsMsgAnalogIO, 32) field_values;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 2372;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_820b41fecbf6db8e2b2e67d60cd1167cf474b22ca6c489f4d2d64dd33eaac9a4";
}
/// @brief Encode every field of complete fanuc_msgs/msg/AnalogIOState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsMsgAnalogIOState(ref Ros2Fanuc_msgsMsgAnalogIOState value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/msg/AnalogIOState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsMsgAnalogIOState(const(ubyte)[] bytes, out Ros2Fanuc_msgsMsgAnalogIOState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/msg/BoolIO value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 7..71 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsMsgBoolIO
{
    /// @brief Original fanuc_msgs/msg/BoolIO.io_type field.
    /// @details Original type fanuc_msgs/msg/IOType. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Fanuc_msgsMsgIOType field_io_type;
    /// @brief Original fanuc_msgs/msg/BoolIO.index field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_index;
    /// @brief Original fanuc_msgs/msg/BoolIO.value field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_value;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 7;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 71;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_9209ae1b8f5407a31beface0a3286f58bd823aabdc560c2a4bf4a9b1ca125aa7";
}
/// @brief Encode every field of complete fanuc_msgs/msg/BoolIO.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsMsgBoolIO(ref Ros2Fanuc_msgsMsgBoolIO value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/msg/BoolIO.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsMsgBoolIO(const(ubyte)[] bytes, out Ros2Fanuc_msgsMsgBoolIO value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/msg/CollaborativeSpeedScaling value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 8..8 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsMsgCollaborativeSpeedScaling
{
    /// @brief Original fanuc_msgs/msg/CollaborativeSpeedScaling.collaborative_speed_scaling field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_collaborative_speed_scaling = 0;
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
    enum codecIdentity = "UWVMROS1_693a3b581527d2eaf0f697f31e87ca2da428d1f51b821d42d6b06af387a2fb45";
}
/// @brief Encode every field of complete fanuc_msgs/msg/CollaborativeSpeedScaling.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsMsgCollaborativeSpeedScaling(ref Ros2Fanuc_msgsMsgCollaborativeSpeedScaling value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/msg/CollaborativeSpeedScaling.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsMsgCollaborativeSpeedScaling(const(ubyte)[] bytes, out Ros2Fanuc_msgsMsgCollaborativeSpeedScaling value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/msg/ConnectionStatus value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 1..1 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsMsgConnectionStatus
{
    /// @brief Original fanuc_msgs/msg/ConnectionStatus.is_connected field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_is_connected;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 1;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_8ce24fb87538922b1f3c0ae856eb223d716143064eb46a6cfce5fec01b45b078";
}
/// @brief Encode every field of complete fanuc_msgs/msg/ConnectionStatus.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsMsgConnectionStatus(ref Ros2Fanuc_msgsMsgConnectionStatus value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/msg/ConnectionStatus.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsMsgConnectionStatus(const(ubyte)[] bytes, out Ros2Fanuc_msgsMsgConnectionStatus value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/msg/ForceSensor value.
/// @details Retain all 7 original fields and 0 constants. Canonical extent 28..28 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsMsgForceSensor
{
    /// @brief Original fanuc_msgs/msg/ForceSensor.force_x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_force_x = 0;
    /// @brief Original fanuc_msgs/msg/ForceSensor.force_y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_force_y = 0;
    /// @brief Original fanuc_msgs/msg/ForceSensor.force_z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_force_z = 0;
    /// @brief Original fanuc_msgs/msg/ForceSensor.moment_x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_moment_x = 0;
    /// @brief Original fanuc_msgs/msg/ForceSensor.moment_y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_moment_y = 0;
    /// @brief Original fanuc_msgs/msg/ForceSensor.moment_z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_moment_z = 0;
    /// @brief Original fanuc_msgs/msg/ForceSensor.fs_type field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_fs_type;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 28;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 28;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_06c99b43d7347646179850f3ba79192da7ce71296667d93d88659efbc1004032";
}
/// @brief Encode every field of complete fanuc_msgs/msg/ForceSensor.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsMsgForceSensor(ref Ros2Fanuc_msgsMsgForceSensor value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/msg/ForceSensor.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsMsgForceSensor(const(ubyte)[] bytes, out Ros2Fanuc_msgsMsgForceSensor value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/msg/Frame value.
/// @details Retain all 6 original fields and 0 constants. Canonical extent 24..24 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsMsgFrame
{
    /// @brief Original fanuc_msgs/msg/Frame.x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_x = 0;
    /// @brief Original fanuc_msgs/msg/Frame.y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_y = 0;
    /// @brief Original fanuc_msgs/msg/Frame.z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_z = 0;
    /// @brief Original fanuc_msgs/msg/Frame.w field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_w = 0;
    /// @brief Original fanuc_msgs/msg/Frame.p field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_p = 0;
    /// @brief Original fanuc_msgs/msg/Frame.r field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_r = 0;
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
    enum codecIdentity = "UWVMROS1_609d1b7e49315f7f0a0fe86fa997673acd0d009e57b563690f36624b59b9effb";
}
/// @brief Encode every field of complete fanuc_msgs/msg/Frame.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsMsgFrame(ref Ros2Fanuc_msgsMsgFrame value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/msg/Frame.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsMsgFrame(const(ubyte)[] bytes, out Ros2Fanuc_msgsMsgFrame value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/msg/IOCmd value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..2276 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsMsgIOCmd
{
    /// @brief Original fanuc_msgs/msg/IOCmd.values field.
    /// @details Original type fanuc_msgs/msg/BoolIO. Shape sequence; bound/count 32 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros2Fanuc_msgsMsgBoolIO, 32) field_values;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 2276;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_462552bbaa3c9ed4caaf3108960d514e4ab61fcf2d6a84f0465b485bec1de45d";
}
/// @brief Encode every field of complete fanuc_msgs/msg/IOCmd.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsMsgIOCmd(ref Ros2Fanuc_msgsMsgIOCmd value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/msg/IOCmd.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsMsgIOCmd(const(ubyte)[] bytes, out Ros2Fanuc_msgsMsgIOCmd value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/msg/IOState value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..2276 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsMsgIOState
{
    /// @brief Original fanuc_msgs/msg/IOState.values field.
    /// @details Original type fanuc_msgs/msg/BoolIO. Shape sequence; bound/count 32 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros2Fanuc_msgsMsgBoolIO, 32) field_values;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 2276;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_332533445014c03d626a2c4dbdffd9421748aa6b73f49d407441fd6b9f2b24d8";
}
/// @brief Encode every field of complete fanuc_msgs/msg/IOState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsMsgIOState(ref Ros2Fanuc_msgsMsgIOState value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/msg/IOState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsMsgIOState(const(ubyte)[] bytes, out Ros2Fanuc_msgsMsgIOState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/msg/NumReg value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..6 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsMsgNumReg
{
    /// @brief Original fanuc_msgs/msg/NumReg.index field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_index;
    /// @brief Original fanuc_msgs/msg/NumReg.value field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_value = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 6;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 6;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_0fb9344c5768ea52ab072939f368f1e73dcc0ff83e74b4cb6d35fca47c1d29cc";
}
/// @brief Encode every field of complete fanuc_msgs/msg/NumReg.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsMsgNumReg(ref Ros2Fanuc_msgsMsgNumReg value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/msg/NumReg.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsMsgNumReg(const(ubyte)[] bytes, out Ros2Fanuc_msgsMsgNumReg value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/msg/NumRegCmd value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..196 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsMsgNumRegCmd
{
    /// @brief Original fanuc_msgs/msg/NumRegCmd.values field.
    /// @details Original type fanuc_msgs/msg/NumReg. Shape sequence; bound/count 32 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros2Fanuc_msgsMsgNumReg, 32) field_values;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 196;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_9c76500073889377525a0802c46bd96589a2639dd9534cf7ad2b9956cd95b5b6";
}
/// @brief Encode every field of complete fanuc_msgs/msg/NumRegCmd.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsMsgNumRegCmd(ref Ros2Fanuc_msgsMsgNumRegCmd value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/msg/NumRegCmd.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsMsgNumRegCmd(const(ubyte)[] bytes, out Ros2Fanuc_msgsMsgNumRegCmd value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/msg/NumRegState value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..196 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsMsgNumRegState
{
    /// @brief Original fanuc_msgs/msg/NumRegState.values field.
    /// @details Original type fanuc_msgs/msg/NumReg. Shape sequence; bound/count 32 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros2Fanuc_msgsMsgNumReg, 32) field_values;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 196;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_9c8ff4917a6dd033e6a6776ae8525e93c2924d776f05fd54e7e8d2251fc48b3a";
}
/// @brief Encode every field of complete fanuc_msgs/msg/NumRegState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsMsgNumRegState(ref Ros2Fanuc_msgsMsgNumRegState value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/msg/NumRegState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsMsgNumRegState(const(ubyte)[] bytes, out Ros2Fanuc_msgsMsgNumRegState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/msg/RMIStatus value.
/// @details Retain all 6 original fields and 0 constants. Canonical extent 24..1048 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsMsgRMIStatus
{
    /// @brief Original fanuc_msgs/msg/RMIStatus.program_status field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_program_status;
    /// @brief Original fanuc_msgs/msg/RMIStatus.next_sequence field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_next_sequence;
    /// @brief Original fanuc_msgs/msg/RMIStatus.last_sequence field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_last_sequence;
    /// @brief Original fanuc_msgs/msg/RMIStatus.last_sequence_error field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_last_sequence_error;
    /// @brief Original fanuc_msgs/msg/RMIStatus.last_sequence_instruction field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_last_sequence_instruction;
    /// @brief Original fanuc_msgs/msg/RMIStatus.last_sequence_error_message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_last_sequence_error_message;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 24;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1048;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_dc2e7eaabf44807142581905838f8951653682a6c6d61ebcf56494b16a10d5e8";
}
/// @brief Encode every field of complete fanuc_msgs/msg/RMIStatus.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsMsgRMIStatus(ref Ros2Fanuc_msgsMsgRMIStatus value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/msg/RMIStatus.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsMsgRMIStatus(const(ubyte)[] bytes, out Ros2Fanuc_msgsMsgRMIStatus value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/msg/RobotStatus value.
/// @details Retain all 5 original fields and 5 constants. Canonical extent 5..5 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsMsgRobotStatus
{
    /// @brief Original fanuc_msgs/msg/RobotStatus.in_error field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_in_error;
    /// @brief Original fanuc_msgs/msg/RobotStatus.tp_enabled field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_tp_enabled;
    /// @brief Original fanuc_msgs/msg/RobotStatus.e_stopped field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_e_stopped;
    /// @brief Original fanuc_msgs/msg/RobotStatus.motion_possible field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_motion_possible;
    /// @brief Original fanuc_msgs/msg/RobotStatus.contact_stop_mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_contact_stop_mode;
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
    enum codecIdentity = "UWVMROS1_3f31ee3631dc6f4c90eb5ded6209ccebf0f4193ddfe5f5032bdd2bcd71f8cc31";
    /// @brief Original fanuc_msgs/msg/RobotStatus.CONTACT_STOP_MODE_NONE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CONTACT_STOP_MODE_NONE = 0;
    /// @brief Original fanuc_msgs/msg/RobotStatus.CONTACT_STOP_MODE_SAFE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CONTACT_STOP_MODE_SAFE = 1;
    /// @brief Original fanuc_msgs/msg/RobotStatus.CONTACT_STOP_MODE_STOP constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CONTACT_STOP_MODE_STOP = 2;
    /// @brief Original fanuc_msgs/msg/RobotStatus.CONTACT_STOP_MODE_DSBL constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CONTACT_STOP_MODE_DSBL = 3;
    /// @brief Original fanuc_msgs/msg/RobotStatus.CONTACT_STOP_MODE_ESCP constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CONTACT_STOP_MODE_ESCP = 4;
}
/// @brief Encode every field of complete fanuc_msgs/msg/RobotStatus.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsMsgRobotStatus(ref Ros2Fanuc_msgsMsgRobotStatus value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/msg/RobotStatus.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsMsgRobotStatus(const(ubyte)[] bytes, out Ros2Fanuc_msgsMsgRobotStatus value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/msg/RobotStatusExt value.
/// @details Retain all 6 original fields and 0 constants. Canonical extent 18..1042 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsMsgRobotStatusExt
{
    /// @brief Original fanuc_msgs/msg/RobotStatusExt.error_code field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_error_code;
    /// @brief Original fanuc_msgs/msg/RobotStatusExt.in_motion field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_in_motion;
    /// @brief Original fanuc_msgs/msg/RobotStatusExt.drives_powered field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_drives_powered;
    /// @brief Original fanuc_msgs/msg/RobotStatusExt.gen_override field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_gen_override;
    /// @brief Original fanuc_msgs/msg/RobotStatusExt.speed_clamp_limit field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_speed_clamp_limit = 0;
    /// @brief Original fanuc_msgs/msg/RobotStatusExt.control_mode field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_control_mode;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 18;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1042;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_8ba47a11bfbe02026fe79b32e1ed02e5f609499ea55bb57c9f09af9fba389648";
}
/// @brief Encode every field of complete fanuc_msgs/msg/RobotStatusExt.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsMsgRobotStatusExt(ref Ros2Fanuc_msgsMsgRobotStatusExt value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/msg/RobotStatusExt.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsMsgRobotStatusExt(const(ubyte)[] bytes, out Ros2Fanuc_msgsMsgRobotStatusExt value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/CfgForceSensor_Request value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvCfgForceSensor_Request
{
    /// @brief Original fanuc_msgs/srv/CfgForceSensor_Request.do_reset field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_do_reset;
    /// @brief Original fanuc_msgs/srv/CfgForceSensor_Request.fs_type field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_fs_type;
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
    enum codecIdentity = "UWVMROS1_01973ed21546cb747ad2ce2a990a8ec4e70efb66e1c8fc8856cf1082870984ff";
}
/// @brief Encode every field of complete fanuc_msgs/srv/CfgForceSensor_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvCfgForceSensor_Request(ref Ros2Fanuc_msgsSrvCfgForceSensor_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/CfgForceSensor_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvCfgForceSensor_Request(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvCfgForceSensor_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/CfgForceSensor_Response value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..4 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvCfgForceSensor_Response
{
    /// @brief Original fanuc_msgs/srv/CfgForceSensor_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 4;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_41799ce44c937b1524889391db61e2b4d35795055cb4bbacfe5cc8bbd5b9a37b";
}
/// @brief Encode every field of complete fanuc_msgs/srv/CfgForceSensor_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvCfgForceSensor_Response(ref Ros2Fanuc_msgsSrvCfgForceSensor_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/CfgForceSensor_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvCfgForceSensor_Response(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvCfgForceSensor_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/GetAnalogIO_Request value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..70 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvGetAnalogIO_Request
{
    /// @brief Original fanuc_msgs/srv/GetAnalogIO_Request.io_type field.
    /// @details Original type fanuc_msgs/msg/IOType. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Fanuc_msgsMsgIOType field_io_type;
    /// @brief Original fanuc_msgs/srv/GetAnalogIO_Request.index field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_index;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 6;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 70;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_cd567f97de2de581975c3d4f280eec545dea37c941d316fc3708bbc4d3af94d9";
}
/// @brief Encode every field of complete fanuc_msgs/srv/GetAnalogIO_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvGetAnalogIO_Request(ref Ros2Fanuc_msgsSrvGetAnalogIO_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/GetAnalogIO_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvGetAnalogIO_Request(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvGetAnalogIO_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/GetAnalogIO_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvGetAnalogIO_Response
{
    /// @brief Original fanuc_msgs/srv/GetAnalogIO_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Original fanuc_msgs/srv/GetAnalogIO_Response.value field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_value = 0;
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
    enum codecIdentity = "UWVMROS1_3b53d3ce95d95454a782778c160fcc102ead869c5681c9c67224c373fef1b217";
}
/// @brief Encode every field of complete fanuc_msgs/srv/GetAnalogIO_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvGetAnalogIO_Response(ref Ros2Fanuc_msgsSrvGetAnalogIO_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/GetAnalogIO_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvGetAnalogIO_Response(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvGetAnalogIO_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/GetBoolIO_Request value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..70 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvGetBoolIO_Request
{
    /// @brief Original fanuc_msgs/srv/GetBoolIO_Request.io_type field.
    /// @details Original type fanuc_msgs/msg/IOType. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Fanuc_msgsMsgIOType field_io_type;
    /// @brief Original fanuc_msgs/srv/GetBoolIO_Request.index field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_index;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 6;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 70;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_ce8c4b1efd2828e92656e897baf041e8965367a236079231101807c898d4b50c";
}
/// @brief Encode every field of complete fanuc_msgs/srv/GetBoolIO_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvGetBoolIO_Request(ref Ros2Fanuc_msgsSrvGetBoolIO_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/GetBoolIO_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvGetBoolIO_Request(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvGetBoolIO_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/GetBoolIO_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 5..5 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvGetBoolIO_Response
{
    /// @brief Original fanuc_msgs/srv/GetBoolIO_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Original fanuc_msgs/srv/GetBoolIO_Response.value field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_value;
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
    enum codecIdentity = "UWVMROS1_7dbdcdde8d76c4ef422ea158551dd912273220c25a08f28fc8d19fdf8bc8a01c";
}
/// @brief Encode every field of complete fanuc_msgs/srv/GetBoolIO_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvGetBoolIO_Response(ref Ros2Fanuc_msgsSrvGetBoolIO_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/GetBoolIO_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvGetBoolIO_Response(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvGetBoolIO_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/GetCartesianPosition_Request value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 1..1 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvGetCartesianPosition_Request
{
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Request.group field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_group;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 1;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_a694a17bde88131efcadac4f134464a7777beab4b09e17624ae7b173ab62c3e4";
}
/// @brief Encode every field of complete fanuc_msgs/srv/GetCartesianPosition_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvGetCartesianPosition_Request(ref Ros2Fanuc_msgsSrvGetCartesianPosition_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/GetCartesianPosition_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvGetCartesianPosition_Request(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvGetCartesianPosition_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/GetCartesianPosition_Response value.
/// @details Retain all 21 original fields and 0 constants. Canonical extent 54..54 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvGetCartesianPosition_Response
{
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.timetag field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_timetag;
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.utool field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_utool;
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.uframe field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_uframe;
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.front field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_front;
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.up field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_up;
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.left field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_left;
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.flip field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_flip;
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.turn4 field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_turn4;
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.turn5 field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_turn5;
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.turn6 field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_turn6;
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_x = 0;
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_y = 0;
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_z = 0;
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.w field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_w = 0;
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.p field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_p = 0;
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.r field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_r = 0;
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.ext1 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_ext1 = 0;
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.ext2 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_ext2 = 0;
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.ext3 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_ext3 = 0;
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.group field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_group;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 54;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 54;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_0516f0145717b06550674e02f0b9c47f9b312f4f361c791f56257fbb79e67329";
}
/// @brief Encode every field of complete fanuc_msgs/srv/GetCartesianPosition_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvGetCartesianPosition_Response(ref Ros2Fanuc_msgsSrvGetCartesianPosition_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/GetCartesianPosition_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvGetCartesianPosition_Response(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvGetCartesianPosition_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/GetGroupIO_Request value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..70 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvGetGroupIO_Request
{
    /// @brief Original fanuc_msgs/srv/GetGroupIO_Request.io_type field.
    /// @details Original type fanuc_msgs/msg/IOType. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Fanuc_msgsMsgIOType field_io_type;
    /// @brief Original fanuc_msgs/srv/GetGroupIO_Request.index field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_index;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 6;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 70;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_dbd2e8e791e8debc745843827ed296b51bf84159f4c4fe5d912c231d621de216";
}
/// @brief Encode every field of complete fanuc_msgs/srv/GetGroupIO_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvGetGroupIO_Request(ref Ros2Fanuc_msgsSrvGetGroupIO_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/GetGroupIO_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvGetGroupIO_Request(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvGetGroupIO_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/GetGroupIO_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..6 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvGetGroupIO_Response
{
    /// @brief Original fanuc_msgs/srv/GetGroupIO_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Original fanuc_msgs/srv/GetGroupIO_Response.value field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_value;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 6;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 6;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_9e131b91f36badc90ddae54a9855095241ab86c51b419b684d62879fae0bda7f";
}
/// @brief Encode every field of complete fanuc_msgs/srv/GetGroupIO_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvGetGroupIO_Response(ref Ros2Fanuc_msgsSrvGetGroupIO_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/GetGroupIO_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvGetGroupIO_Response(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvGetGroupIO_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/GetNumReg_Request value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 2..2 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvGetNumReg_Request
{
    /// @brief Original fanuc_msgs/srv/GetNumReg_Request.index field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_index;
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
    enum codecIdentity = "UWVMROS1_727b5ff4ab9c8976280df12e80d3aee03b31288087adb94ee82161574fc8dcb5";
}
/// @brief Encode every field of complete fanuc_msgs/srv/GetNumReg_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvGetNumReg_Request(ref Ros2Fanuc_msgsSrvGetNumReg_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/GetNumReg_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvGetNumReg_Request(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvGetNumReg_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/GetNumReg_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvGetNumReg_Response
{
    /// @brief Original fanuc_msgs/srv/GetNumReg_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Original fanuc_msgs/srv/GetNumReg_Response.value field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_value = 0;
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
    enum codecIdentity = "UWVMROS1_78ae7ff82b3b2cd7d512fee8335f14a0759a71425fcf3d1b150dbe5e2a0179b3";
}
/// @brief Encode every field of complete fanuc_msgs/srv/GetNumReg_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvGetNumReg_Response(ref Ros2Fanuc_msgsSrvGetNumReg_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/GetNumReg_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvGetNumReg_Response(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvGetNumReg_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/GetPayloadComp_Request value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 2..2 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvGetPayloadComp_Request
{
    /// @brief Original fanuc_msgs/srv/GetPayloadComp_Request.payload_schedule_id field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_payload_schedule_id;
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
    enum codecIdentity = "UWVMROS1_d48b88619f4a68ceeed02336e9ef078c27905707a21d977448fbbfbd560f398d";
}
/// @brief Encode every field of complete fanuc_msgs/srv/GetPayloadComp_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvGetPayloadComp_Request(ref Ros2Fanuc_msgsSrvGetPayloadComp_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/GetPayloadComp_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvGetPayloadComp_Request(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvGetPayloadComp_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/GetPayloadComp_Response value.
/// @details Retain all 8 original fields and 0 constants. Canonical extent 32..32 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvGetPayloadComp_Response
{
    /// @brief Original fanuc_msgs/srv/GetPayloadComp_Response.mass field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_mass = 0;
    /// @brief Original fanuc_msgs/srv/GetPayloadComp_Response.cg_x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_cg_x = 0;
    /// @brief Original fanuc_msgs/srv/GetPayloadComp_Response.cg_y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_cg_y = 0;
    /// @brief Original fanuc_msgs/srv/GetPayloadComp_Response.cg_z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_cg_z = 0;
    /// @brief Original fanuc_msgs/srv/GetPayloadComp_Response.in_x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_in_x = 0;
    /// @brief Original fanuc_msgs/srv/GetPayloadComp_Response.in_y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_in_y = 0;
    /// @brief Original fanuc_msgs/srv/GetPayloadComp_Response.in_z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_in_z = 0;
    /// @brief Original fanuc_msgs/srv/GetPayloadComp_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
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
    enum codecIdentity = "UWVMROS1_012b216c949f99755a36678b6be28d032f698b472ce4fa9ba975bc6d453ae4e4";
}
/// @brief Encode every field of complete fanuc_msgs/srv/GetPayloadComp_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvGetPayloadComp_Response(ref Ros2Fanuc_msgsSrvGetPayloadComp_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/GetPayloadComp_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvGetPayloadComp_Response(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvGetPayloadComp_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/GetPayloadID_Request value.
/// @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvGetPayloadID_Request
{
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 0;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 0;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_6c943659905c8adc7aa4b73832584994c83bfe009d18dc30a11d99b9fc0d6eef";
}
/// @brief Encode every field of complete fanuc_msgs/srv/GetPayloadID_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvGetPayloadID_Request(ref Ros2Fanuc_msgsSrvGetPayloadID_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/GetPayloadID_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvGetPayloadID_Request(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvGetPayloadID_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/GetPayloadID_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..6 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvGetPayloadID_Response
{
    /// @brief Original fanuc_msgs/srv/GetPayloadID_Response.payload_schedule_id field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_payload_schedule_id;
    /// @brief Original fanuc_msgs/srv/GetPayloadID_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 6;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 6;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_5551f4eab590c87fd7679d593c9c446903bdaa02aa1ed2512b146768122a950c";
}
/// @brief Encode every field of complete fanuc_msgs/srv/GetPayloadID_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvGetPayloadID_Response(ref Ros2Fanuc_msgsSrvGetPayloadID_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/GetPayloadID_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvGetPayloadID_Response(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvGetPayloadID_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/GetPayloadValue_Request value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 2..2 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvGetPayloadValue_Request
{
    /// @brief Original fanuc_msgs/srv/GetPayloadValue_Request.payload_schedule_id field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_payload_schedule_id;
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
    enum codecIdentity = "UWVMROS1_d82667bd644873ae4fa5de0289ed94791eb2a7af49c1b8f86ed7f91cf875407a";
}
/// @brief Encode every field of complete fanuc_msgs/srv/GetPayloadValue_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvGetPayloadValue_Request(ref Ros2Fanuc_msgsSrvGetPayloadValue_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/GetPayloadValue_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvGetPayloadValue_Request(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvGetPayloadValue_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/GetPayloadValue_Response value.
/// @details Retain all 8 original fields and 0 constants. Canonical extent 32..32 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvGetPayloadValue_Response
{
    /// @brief Original fanuc_msgs/srv/GetPayloadValue_Response.mass field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_mass = 0;
    /// @brief Original fanuc_msgs/srv/GetPayloadValue_Response.cg_x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_cg_x = 0;
    /// @brief Original fanuc_msgs/srv/GetPayloadValue_Response.cg_y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_cg_y = 0;
    /// @brief Original fanuc_msgs/srv/GetPayloadValue_Response.cg_z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_cg_z = 0;
    /// @brief Original fanuc_msgs/srv/GetPayloadValue_Response.in_x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_in_x = 0;
    /// @brief Original fanuc_msgs/srv/GetPayloadValue_Response.in_y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_in_y = 0;
    /// @brief Original fanuc_msgs/srv/GetPayloadValue_Response.in_z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_in_z = 0;
    /// @brief Original fanuc_msgs/srv/GetPayloadValue_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
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
    enum codecIdentity = "UWVMROS1_c3361ceec2ccd5b4d3ef566cbd885f8cddba75b4f1dc1712144147827689f06d";
}
/// @brief Encode every field of complete fanuc_msgs/srv/GetPayloadValue_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvGetPayloadValue_Response(ref Ros2Fanuc_msgsSrvGetPayloadValue_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/GetPayloadValue_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvGetPayloadValue_Response(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvGetPayloadValue_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/GetPosReg_Request value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 2..2 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvGetPosReg_Request
{
    /// @brief Original fanuc_msgs/srv/GetPosReg_Request.index field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_index;
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
    enum codecIdentity = "UWVMROS1_f7f1391c5ea385bff615d95c5e38f01a809828b142112829dc436916b063505a";
}
/// @brief Encode every field of complete fanuc_msgs/srv/GetPosReg_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvGetPosReg_Request(ref Ros2Fanuc_msgsSrvGetPosReg_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/GetPosReg_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvGetPosReg_Request(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvGetPosReg_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/GetPosReg_Response value.
/// @details Retain all 29 original fields and 0 constants. Canonical extent 89..601 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvGetPosReg_Response
{
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.representation field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_representation;
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.utool field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_utool;
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.uframe field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_uframe;
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.front field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_front;
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.up field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_up;
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.left field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_left;
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.flip field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_flip;
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.turn4 field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_turn4;
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.turn5 field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_turn5;
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.turn6 field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_turn6;
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_x = 0;
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_y = 0;
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_z = 0;
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.w field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_w = 0;
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.p field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_p = 0;
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.r field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_r = 0;
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.ext1 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_ext1 = 0;
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.ext2 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_ext2 = 0;
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.ext3 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_ext3 = 0;
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.j1 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_j1 = 0;
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.j2 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_j2 = 0;
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.j3 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_j3 = 0;
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.j4 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_j4 = 0;
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.j5 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_j5 = 0;
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.j6 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_j6 = 0;
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.j7 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_j7 = 0;
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.j8 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_j8 = 0;
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.j9 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_j9 = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 89;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 601;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_e540225b0d532c460905582ad99ee175dd771e971c7e75f5dfb9325d39ed6b27";
}
/// @brief Encode every field of complete fanuc_msgs/srv/GetPosReg_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvGetPosReg_Response(ref Ros2Fanuc_msgsSrvGetPosReg_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/GetPosReg_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvGetPosReg_Response(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvGetPosReg_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/GetTCPSpeed_Request value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 1..1 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvGetTCPSpeed_Request
{
    /// @brief Original fanuc_msgs/srv/GetTCPSpeed_Request.group field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_group;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 1;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_6bdfd44465b75bbd4e232f802dbd3c0bfa28e90a93f9a28b3c15fb150bce7ac7";
}
/// @brief Encode every field of complete fanuc_msgs/srv/GetTCPSpeed_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvGetTCPSpeed_Request(ref Ros2Fanuc_msgsSrvGetTCPSpeed_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/GetTCPSpeed_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvGetTCPSpeed_Request(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvGetTCPSpeed_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/GetTCPSpeed_Response value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 13..13 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvGetTCPSpeed_Response
{
    /// @brief Original fanuc_msgs/srv/GetTCPSpeed_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Original fanuc_msgs/srv/GetTCPSpeed_Response.timetag field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_timetag;
    /// @brief Original fanuc_msgs/srv/GetTCPSpeed_Response.speed field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_speed = 0;
    /// @brief Original fanuc_msgs/srv/GetTCPSpeed_Response.group field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_group;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 13;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 13;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_3ec07d99342f275506452f32076f9e1ea01bf32f43662311708a9b44ca951147";
}
/// @brief Encode every field of complete fanuc_msgs/srv/GetTCPSpeed_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvGetTCPSpeed_Response(ref Ros2Fanuc_msgsSrvGetTCPSpeed_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/GetTCPSpeed_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvGetTCPSpeed_Response(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvGetTCPSpeed_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/GetUFrameData_Request value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 2..2 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvGetUFrameData_Request
{
    /// @brief Original fanuc_msgs/srv/GetUFrameData_Request.uframe_number field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_uframe_number;
    /// @brief Original fanuc_msgs/srv/GetUFrameData_Request.group field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_group;
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
    enum codecIdentity = "UWVMROS1_c1ef7077fd7f61ed8ff46931c8e39c5950658cfe1d36cffac10083ab304307be";
}
/// @brief Encode every field of complete fanuc_msgs/srv/GetUFrameData_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvGetUFrameData_Request(ref Ros2Fanuc_msgsSrvGetUFrameData_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/GetUFrameData_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvGetUFrameData_Request(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvGetUFrameData_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/GetUFrameData_Response value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 30..30 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvGetUFrameData_Response
{
    /// @brief Original fanuc_msgs/srv/GetUFrameData_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Original fanuc_msgs/srv/GetUFrameData_Response.uframe_number field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_uframe_number;
    /// @brief Original fanuc_msgs/srv/GetUFrameData_Response.frame field.
    /// @details Original type fanuc_msgs/msg/Frame. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Fanuc_msgsMsgFrame field_frame;
    /// @brief Original fanuc_msgs/srv/GetUFrameData_Response.group field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_group;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 30;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 30;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_f956e1447bd4a15f547fdf5d6775836018d50153270fe8863c4b30d83422fd2e";
}
/// @brief Encode every field of complete fanuc_msgs/srv/GetUFrameData_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvGetUFrameData_Response(ref Ros2Fanuc_msgsSrvGetUFrameData_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/GetUFrameData_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvGetUFrameData_Response(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvGetUFrameData_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/GetUFrameUTool_Request value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 1..1 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvGetUFrameUTool_Request
{
    /// @brief Original fanuc_msgs/srv/GetUFrameUTool_Request.group field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_group;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 1;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_3d57da6f8003b33b2a079d4f284eb0f182d7e088074112b7f4ee25d3113bd443";
}
/// @brief Encode every field of complete fanuc_msgs/srv/GetUFrameUTool_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvGetUFrameUTool_Request(ref Ros2Fanuc_msgsSrvGetUFrameUTool_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/GetUFrameUTool_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvGetUFrameUTool_Request(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvGetUFrameUTool_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/GetUFrameUTool_Response value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 7..7 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvGetUFrameUTool_Response
{
    /// @brief Original fanuc_msgs/srv/GetUFrameUTool_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Original fanuc_msgs/srv/GetUFrameUTool_Response.uframe_number field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_uframe_number;
    /// @brief Original fanuc_msgs/srv/GetUFrameUTool_Response.utool_number field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_utool_number;
    /// @brief Original fanuc_msgs/srv/GetUFrameUTool_Response.group field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_group;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 7;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 7;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_f9cb64b89f17b6811e4073b9f94d0fd6844d21ec4b846f78bfd13cb14a35a6b3";
}
/// @brief Encode every field of complete fanuc_msgs/srv/GetUFrameUTool_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvGetUFrameUTool_Response(ref Ros2Fanuc_msgsSrvGetUFrameUTool_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/GetUFrameUTool_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvGetUFrameUTool_Response(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvGetUFrameUTool_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/GetUToolData_Request value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 2..2 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvGetUToolData_Request
{
    /// @brief Original fanuc_msgs/srv/GetUToolData_Request.utool_number field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_utool_number;
    /// @brief Original fanuc_msgs/srv/GetUToolData_Request.group field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_group;
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
    enum codecIdentity = "UWVMROS1_10c3799dcb1b09dbcb6d1b794a00ecfaf69a8f457d95eeb92855f79dba7be1bc";
}
/// @brief Encode every field of complete fanuc_msgs/srv/GetUToolData_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvGetUToolData_Request(ref Ros2Fanuc_msgsSrvGetUToolData_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/GetUToolData_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvGetUToolData_Request(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvGetUToolData_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/GetUToolData_Response value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 30..30 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvGetUToolData_Response
{
    /// @brief Original fanuc_msgs/srv/GetUToolData_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Original fanuc_msgs/srv/GetUToolData_Response.utool_number field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_utool_number;
    /// @brief Original fanuc_msgs/srv/GetUToolData_Response.frame field.
    /// @details Original type fanuc_msgs/msg/Frame. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Fanuc_msgsMsgFrame field_frame;
    /// @brief Original fanuc_msgs/srv/GetUToolData_Response.group field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_group;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 30;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 30;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_f3a2b94f337cec9c58156b803675f38885350cc3fc3171234c0d361afc800d81";
}
/// @brief Encode every field of complete fanuc_msgs/srv/GetUToolData_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvGetUToolData_Response(ref Ros2Fanuc_msgsSrvGetUToolData_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/GetUToolData_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvGetUToolData_Response(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvGetUToolData_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/ReadError_Request value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 1..1 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvReadError_Request
{
    /// @brief Original fanuc_msgs/srv/ReadError_Request.count field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_count = 1;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 1;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_4b67ed8e2ecccefb6bdead80249f5916e6ea192d822183292db43351839fb6f9";
}
/// @brief Encode every field of complete fanuc_msgs/srv/ReadError_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvReadError_Request(ref Ros2Fanuc_msgsSrvReadError_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/ReadError_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvReadError_Request(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvReadError_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/ReadError_Response value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 25..2585 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvReadError_Response
{
    /// @brief Original fanuc_msgs/srv/ReadError_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Original fanuc_msgs/srv/ReadError_Response.count field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_count;
    /// @brief Original fanuc_msgs/srv/ReadError_Response.error_data field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Shape array; bound/count
    /// 5 elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    Text!(512, false)[5] field_error_data;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 25;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 2585;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_6e28db10c7afb06cb1256f6d74a43e26c5efa6c13fec8826ae0e623a5eb954b6";
}
/// @brief Encode every field of complete fanuc_msgs/srv/ReadError_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvReadError_Response(ref Ros2Fanuc_msgsSrvReadError_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/ReadError_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvReadError_Response(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvReadError_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/Reset_Request value.
/// @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvReset_Request
{
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 0;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 0;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_b73f661d569f6af8dad1cd6625f4c0c55ef2c14c79b3e9af0f17fdc02736abc4";
}
/// @brief Encode every field of complete fanuc_msgs/srv/Reset_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvReset_Request(ref Ros2Fanuc_msgsSrvReset_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/Reset_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvReset_Request(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvReset_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/Reset_Response value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..4 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvReset_Response
{
    /// @brief Original fanuc_msgs/srv/Reset_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 4;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_5e9b92e5a112b4934ce0893afaa09156fdb47c26b0aa6ae9a27d61920d308ab8";
}
/// @brief Encode every field of complete fanuc_msgs/srv/Reset_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvReset_Response(ref Ros2Fanuc_msgsSrvReset_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/Reset_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvReset_Response(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvReset_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/SetAnalogIO_Request value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 10..74 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvSetAnalogIO_Request
{
    /// @brief Original fanuc_msgs/srv/SetAnalogIO_Request.io_type field.
    /// @details Original type fanuc_msgs/msg/IOType. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Fanuc_msgsMsgIOType field_io_type;
    /// @brief Original fanuc_msgs/srv/SetAnalogIO_Request.index field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_index;
    /// @brief Original fanuc_msgs/srv/SetAnalogIO_Request.value field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_value = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 10;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 74;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_a6bb4acfae23db79464faff849f359657537026d7c79f8a6c60259caec5e87f4";
}
/// @brief Encode every field of complete fanuc_msgs/srv/SetAnalogIO_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvSetAnalogIO_Request(ref Ros2Fanuc_msgsSrvSetAnalogIO_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/SetAnalogIO_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvSetAnalogIO_Request(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvSetAnalogIO_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/SetAnalogIO_Response value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..4 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvSetAnalogIO_Response
{
    /// @brief Original fanuc_msgs/srv/SetAnalogIO_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 4;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_aeac383e2c4a292f1237494bff5b261cd0197542e00456b4ee0edf9b7fe8a39b";
}
/// @brief Encode every field of complete fanuc_msgs/srv/SetAnalogIO_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvSetAnalogIO_Response(ref Ros2Fanuc_msgsSrvSetAnalogIO_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/SetAnalogIO_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvSetAnalogIO_Response(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvSetAnalogIO_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/SetBoolIO_Request value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 7..71 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvSetBoolIO_Request
{
    /// @brief Original fanuc_msgs/srv/SetBoolIO_Request.io_type field.
    /// @details Original type fanuc_msgs/msg/IOType. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Fanuc_msgsMsgIOType field_io_type;
    /// @brief Original fanuc_msgs/srv/SetBoolIO_Request.index field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_index;
    /// @brief Original fanuc_msgs/srv/SetBoolIO_Request.value field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_value;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 7;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 71;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_0e8ace58c769670a2519e733d020a3ca902bff99982514d5cd9ecda391c1a4cf";
}
/// @brief Encode every field of complete fanuc_msgs/srv/SetBoolIO_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvSetBoolIO_Request(ref Ros2Fanuc_msgsSrvSetBoolIO_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/SetBoolIO_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvSetBoolIO_Request(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvSetBoolIO_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/SetBoolIO_Response value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..4 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvSetBoolIO_Response
{
    /// @brief Original fanuc_msgs/srv/SetBoolIO_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 4;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_c9c68ca577dd6e4d1743385d9c69c8f1c6e0780ae247877d823ab97a68e675a0";
}
/// @brief Encode every field of complete fanuc_msgs/srv/SetBoolIO_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvSetBoolIO_Response(ref Ros2Fanuc_msgsSrvSetBoolIO_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/SetBoolIO_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvSetBoolIO_Response(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvSetBoolIO_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/SetGenOverride_Request value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 1..1 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvSetGenOverride_Request
{
    /// @brief Original fanuc_msgs/srv/SetGenOverride_Request.value field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_value;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 1;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_7d321e33aaf6f58013c33ffc012c1ddbd27aefff3f21d7456030a1d590362039";
}
/// @brief Encode every field of complete fanuc_msgs/srv/SetGenOverride_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvSetGenOverride_Request(ref Ros2Fanuc_msgsSrvSetGenOverride_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/SetGenOverride_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvSetGenOverride_Request(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvSetGenOverride_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/SetGenOverride_Response value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..4 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvSetGenOverride_Response
{
    /// @brief Original fanuc_msgs/srv/SetGenOverride_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 4;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_1ffcb25cad7dbf51c216753dac2c117a191fb081a5a562e63d34d447e61f0a59";
}
/// @brief Encode every field of complete fanuc_msgs/srv/SetGenOverride_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvSetGenOverride_Response(ref Ros2Fanuc_msgsSrvSetGenOverride_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/SetGenOverride_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvSetGenOverride_Response(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvSetGenOverride_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/SetGroupIO_Request value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 8..72 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvSetGroupIO_Request
{
    /// @brief Original fanuc_msgs/srv/SetGroupIO_Request.io_type field.
    /// @details Original type fanuc_msgs/msg/IOType. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Fanuc_msgsMsgIOType field_io_type;
    /// @brief Original fanuc_msgs/srv/SetGroupIO_Request.index field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_index;
    /// @brief Original fanuc_msgs/srv/SetGroupIO_Request.value field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_value;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 8;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 72;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_42a76aec283e26e3a2c99bb27a23778e34effb6c3328754793f783038a2b84bd";
}
/// @brief Encode every field of complete fanuc_msgs/srv/SetGroupIO_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvSetGroupIO_Request(ref Ros2Fanuc_msgsSrvSetGroupIO_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/SetGroupIO_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvSetGroupIO_Request(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvSetGroupIO_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/SetGroupIO_Response value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..4 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvSetGroupIO_Response
{
    /// @brief Original fanuc_msgs/srv/SetGroupIO_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 4;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_aa6d2c99e8817273f8f2ab179df61d60efd8ee2cee0e1ec76c647956e22bff17";
}
/// @brief Encode every field of complete fanuc_msgs/srv/SetGroupIO_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvSetGroupIO_Response(ref Ros2Fanuc_msgsSrvSetGroupIO_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/SetGroupIO_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvSetGroupIO_Response(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvSetGroupIO_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/SetNumReg_Request value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..6 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvSetNumReg_Request
{
    /// @brief Original fanuc_msgs/srv/SetNumReg_Request.index field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_index;
    /// @brief Original fanuc_msgs/srv/SetNumReg_Request.value field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_value = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 6;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 6;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_7e362b671b8770db33f3876308c41a930863a0805771fa05fcbb170782207e36";
}
/// @brief Encode every field of complete fanuc_msgs/srv/SetNumReg_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvSetNumReg_Request(ref Ros2Fanuc_msgsSrvSetNumReg_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/SetNumReg_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvSetNumReg_Request(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvSetNumReg_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/SetNumReg_Response value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..4 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvSetNumReg_Response
{
    /// @brief Original fanuc_msgs/srv/SetNumReg_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 4;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_7c7850ad8bb5c861d9b436311a8cf985e2e029d362877be80c5a6cb19021e482";
}
/// @brief Encode every field of complete fanuc_msgs/srv/SetNumReg_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvSetNumReg_Response(ref Ros2Fanuc_msgsSrvSetNumReg_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/SetNumReg_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvSetNumReg_Response(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvSetNumReg_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/SetPayloadComp_Request value.
/// @details Retain all 8 original fields and 0 constants. Canonical extent 30..30 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvSetPayloadComp_Request
{
    /// @brief Original fanuc_msgs/srv/SetPayloadComp_Request.payload_schedule_id field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_payload_schedule_id;
    /// @brief Original fanuc_msgs/srv/SetPayloadComp_Request.mass field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_mass = 0;
    /// @brief Original fanuc_msgs/srv/SetPayloadComp_Request.cg_x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_cg_x = 0;
    /// @brief Original fanuc_msgs/srv/SetPayloadComp_Request.cg_y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_cg_y = 0;
    /// @brief Original fanuc_msgs/srv/SetPayloadComp_Request.cg_z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_cg_z = 0;
    /// @brief Original fanuc_msgs/srv/SetPayloadComp_Request.in_x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_in_x = 0;
    /// @brief Original fanuc_msgs/srv/SetPayloadComp_Request.in_y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_in_y = 0;
    /// @brief Original fanuc_msgs/srv/SetPayloadComp_Request.in_z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_in_z = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 30;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 30;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_92c495d71657249e15c172e850aa91869929a25817437567778df1b01d9037a8";
}
/// @brief Encode every field of complete fanuc_msgs/srv/SetPayloadComp_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvSetPayloadComp_Request(ref Ros2Fanuc_msgsSrvSetPayloadComp_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/SetPayloadComp_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvSetPayloadComp_Request(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvSetPayloadComp_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/SetPayloadComp_Response value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..4 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvSetPayloadComp_Response
{
    /// @brief Original fanuc_msgs/srv/SetPayloadComp_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 4;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_37a9876e2a9c514fa8c4337ff1351f778d350318bdc6d8aa5d569b4039a2f76b";
}
/// @brief Encode every field of complete fanuc_msgs/srv/SetPayloadComp_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvSetPayloadComp_Response(ref Ros2Fanuc_msgsSrvSetPayloadComp_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/SetPayloadComp_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvSetPayloadComp_Response(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvSetPayloadComp_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/SetPayloadID_Request value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 2..2 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvSetPayloadID_Request
{
    /// @brief Original fanuc_msgs/srv/SetPayloadID_Request.payload_schedule_id field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_payload_schedule_id;
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
    enum codecIdentity = "UWVMROS1_aa15b59db17d2afb7ef9e74676a9b744763954ae063efafb91a3ab3c9852a1c0";
}
/// @brief Encode every field of complete fanuc_msgs/srv/SetPayloadID_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvSetPayloadID_Request(ref Ros2Fanuc_msgsSrvSetPayloadID_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/SetPayloadID_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvSetPayloadID_Request(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvSetPayloadID_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/SetPayloadID_Response value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..4 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvSetPayloadID_Response
{
    /// @brief Original fanuc_msgs/srv/SetPayloadID_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 4;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_7b704b36da10dc71b4cfaad92ea02ed22e4966077dc0940b03b8b8e49c5769c7";
}
/// @brief Encode every field of complete fanuc_msgs/srv/SetPayloadID_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvSetPayloadID_Response(ref Ros2Fanuc_msgsSrvSetPayloadID_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/SetPayloadID_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvSetPayloadID_Response(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvSetPayloadID_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/SetPayloadValue_Request value.
/// @details Retain all 9 original fields and 0 constants. Canonical extent 31..31 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvSetPayloadValue_Request
{
    /// @brief Original fanuc_msgs/srv/SetPayloadValue_Request.payload_schedule_id field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_payload_schedule_id;
    /// @brief Original fanuc_msgs/srv/SetPayloadValue_Request.mass field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_mass = 0;
    /// @brief Original fanuc_msgs/srv/SetPayloadValue_Request.cg_x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_cg_x = 0;
    /// @brief Original fanuc_msgs/srv/SetPayloadValue_Request.cg_y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_cg_y = 0;
    /// @brief Original fanuc_msgs/srv/SetPayloadValue_Request.cg_z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_cg_z = 0;
    /// @brief Original fanuc_msgs/srv/SetPayloadValue_Request.use_in field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_use_in;
    /// @brief Original fanuc_msgs/srv/SetPayloadValue_Request.in_x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_in_x = 0;
    /// @brief Original fanuc_msgs/srv/SetPayloadValue_Request.in_y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_in_y = 0;
    /// @brief Original fanuc_msgs/srv/SetPayloadValue_Request.in_z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_in_z = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 31;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 31;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_5d56ce8f2f8df9c3450d6a5dc77e9e77861471805aa6b9c6f8815c2e7c324974";
}
/// @brief Encode every field of complete fanuc_msgs/srv/SetPayloadValue_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvSetPayloadValue_Request(ref Ros2Fanuc_msgsSrvSetPayloadValue_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/SetPayloadValue_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvSetPayloadValue_Request(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvSetPayloadValue_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/SetPayloadValue_Response value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..4 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvSetPayloadValue_Response
{
    /// @brief Original fanuc_msgs/srv/SetPayloadValue_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 4;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_09f30071b49ac57353429e8a2862ee80d3dcab9237e8192d008c12a3628cc6ab";
}
/// @brief Encode every field of complete fanuc_msgs/srv/SetPayloadValue_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvSetPayloadValue_Response(ref Ros2Fanuc_msgsSrvSetPayloadValue_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/SetPayloadValue_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvSetPayloadValue_Response(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvSetPayloadValue_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/SetPosReg_Request value.
/// @details Retain all 29 original fields and 0 constants. Canonical extent 87..599 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvSetPosReg_Request
{
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.index field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_index;
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.representation field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_representation;
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.utool field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_utool;
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.uframe field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_uframe;
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.front field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_front;
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.up field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_up;
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.left field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_left;
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.flip field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_flip;
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.turn4 field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_turn4;
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.turn5 field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_turn5;
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.turn6 field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_turn6;
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_x = 0;
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_y = 0;
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_z = 0;
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.w field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_w = 0;
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.p field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_p = 0;
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.r field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_r = 0;
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.ext1 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_ext1 = 0;
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.ext2 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_ext2 = 0;
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.ext3 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_ext3 = 0;
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.j1 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_j1 = 0;
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.j2 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_j2 = 0;
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.j3 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_j3 = 0;
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.j4 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_j4 = 0;
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.j5 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_j5 = 0;
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.j6 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_j6 = 0;
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.j7 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_j7 = 0;
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.j8 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_j8 = 0;
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.j9 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_j9 = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 87;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 599;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_f9af742e55a044a1a363a45cbe4a0a8ce4ca62fcaf43759041cef89149d96d30";
}
/// @brief Encode every field of complete fanuc_msgs/srv/SetPosReg_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvSetPosReg_Request(ref Ros2Fanuc_msgsSrvSetPosReg_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/SetPosReg_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvSetPosReg_Request(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvSetPosReg_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/SetPosReg_Response value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..4 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvSetPosReg_Response
{
    /// @brief Original fanuc_msgs/srv/SetPosReg_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 4;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_fb6f889d30c921df31f55cdc760346eb0d655816e71b52d4aac7a1e56d4e9cb2";
}
/// @brief Encode every field of complete fanuc_msgs/srv/SetPosReg_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvSetPosReg_Response(ref Ros2Fanuc_msgsSrvSetPosReg_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/SetPosReg_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvSetPosReg_Response(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvSetPosReg_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/SetUFrameData_Request value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 26..26 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvSetUFrameData_Request
{
    /// @brief Original fanuc_msgs/srv/SetUFrameData_Request.uframe_number field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_uframe_number;
    /// @brief Original fanuc_msgs/srv/SetUFrameData_Request.frame field.
    /// @details Original type fanuc_msgs/msg/Frame. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Fanuc_msgsMsgFrame field_frame;
    /// @brief Original fanuc_msgs/srv/SetUFrameData_Request.group field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_group;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 26;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 26;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_a067808d8fe5ca1418e18ac492313ad9211cc8f3bf402ad0ac51a2850a2bc169";
}
/// @brief Encode every field of complete fanuc_msgs/srv/SetUFrameData_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvSetUFrameData_Request(ref Ros2Fanuc_msgsSrvSetUFrameData_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/SetUFrameData_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvSetUFrameData_Request(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvSetUFrameData_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/SetUFrameData_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 5..5 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvSetUFrameData_Response
{
    /// @brief Original fanuc_msgs/srv/SetUFrameData_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Original fanuc_msgs/srv/SetUFrameData_Response.group field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_group;
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
    enum codecIdentity = "UWVMROS1_f436e4fe5bd06b048f4f53d2df4933ac8eac5a784f31b42ccf13f5eaf1696eee";
}
/// @brief Encode every field of complete fanuc_msgs/srv/SetUFrameData_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvSetUFrameData_Response(ref Ros2Fanuc_msgsSrvSetUFrameData_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/SetUFrameData_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvSetUFrameData_Response(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvSetUFrameData_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/SetUFrameUTool_Request value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 3..3 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvSetUFrameUTool_Request
{
    /// @brief Original fanuc_msgs/srv/SetUFrameUTool_Request.uframe_number field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_uframe_number;
    /// @brief Original fanuc_msgs/srv/SetUFrameUTool_Request.utool_number field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_utool_number;
    /// @brief Original fanuc_msgs/srv/SetUFrameUTool_Request.group field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_group;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 3;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 3;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_0b86b0a37e4dc23e0ff651df867f5958e7440bf4712b47779d69ca699af4c09f";
}
/// @brief Encode every field of complete fanuc_msgs/srv/SetUFrameUTool_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvSetUFrameUTool_Request(ref Ros2Fanuc_msgsSrvSetUFrameUTool_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/SetUFrameUTool_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvSetUFrameUTool_Request(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvSetUFrameUTool_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/SetUFrameUTool_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 5..5 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvSetUFrameUTool_Response
{
    /// @brief Original fanuc_msgs/srv/SetUFrameUTool_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Original fanuc_msgs/srv/SetUFrameUTool_Response.group field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_group;
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
    enum codecIdentity = "UWVMROS1_b77837445c9663f29f23465cc7178a183d245486f74bcff732fc2f4025b82a67";
}
/// @brief Encode every field of complete fanuc_msgs/srv/SetUFrameUTool_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvSetUFrameUTool_Response(ref Ros2Fanuc_msgsSrvSetUFrameUTool_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/SetUFrameUTool_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvSetUFrameUTool_Response(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvSetUFrameUTool_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/SetUToolData_Request value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 26..26 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvSetUToolData_Request
{
    /// @brief Original fanuc_msgs/srv/SetUToolData_Request.utool_number field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_utool_number;
    /// @brief Original fanuc_msgs/srv/SetUToolData_Request.frame field.
    /// @details Original type fanuc_msgs/msg/Frame. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Fanuc_msgsMsgFrame field_frame;
    /// @brief Original fanuc_msgs/srv/SetUToolData_Request.group field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_group;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 26;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 26;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_7d5b911133645744c8def79bc16c8b7c4ee4e87a057ea33741031d6a94e620ab";
}
/// @brief Encode every field of complete fanuc_msgs/srv/SetUToolData_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvSetUToolData_Request(ref Ros2Fanuc_msgsSrvSetUToolData_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/SetUToolData_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvSetUToolData_Request(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvSetUToolData_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/SetUToolData_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 5..5 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvSetUToolData_Response
{
    /// @brief Original fanuc_msgs/srv/SetUToolData_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Original fanuc_msgs/srv/SetUToolData_Response.group field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_group;
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
    enum codecIdentity = "UWVMROS1_b33d265f275dfcb5fe20432d5e38b55574c85260135bded477c2d5fa2c85c7cb";
}
/// @brief Encode every field of complete fanuc_msgs/srv/SetUToolData_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvSetUToolData_Response(ref Ros2Fanuc_msgsSrvSetUToolData_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/SetUToolData_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvSetUToolData_Response(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvSetUToolData_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/SwitchControlState_Request value.
/// @details Retain all 1 original fields and 2 constants. Canonical extent 4..4 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvSwitchControlState_Request
{
    /// @brief Original fanuc_msgs/srv/SwitchControlState_Request.status field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_status;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 4;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_b485b7071fe2737c7dc8f0360a15b7be30f997430142d8260454fd423172cc21";
    /// @brief Original fanuc_msgs/srv/SwitchControlState_Request.STOP constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum uint constant_STOP = 0U;
    /// @brief Original fanuc_msgs/srv/SwitchControlState_Request.START constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum uint constant_START = 1U;
}
/// @brief Encode every field of complete fanuc_msgs/srv/SwitchControlState_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvSwitchControlState_Request(ref Ros2Fanuc_msgsSrvSwitchControlState_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/SwitchControlState_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvSwitchControlState_Request(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvSwitchControlState_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete fanuc_msgs/srv/SwitchControlState_Response value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..4 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Fanuc_msgsSrvSwitchControlState_Response
{
    /// @brief Original fanuc_msgs/srv/SwitchControlState_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 4;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_8a3d7a3c1037174f4118843e34222ef8811eff3cc885a0c688d98071e1a9496c";
}
/// @brief Encode every field of complete fanuc_msgs/srv/SwitchControlState_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Fanuc_msgsSrvSwitchControlState_Response(ref Ros2Fanuc_msgsSrvSwitchControlState_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete fanuc_msgs/srv/SwitchControlState_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Fanuc_msgsSrvSwitchControlState_Response(const(ubyte)[] bytes, out Ros2Fanuc_msgsSrvSwitchControlState_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete rmi_msgs/msg/CallParam value.
/// @details Retain all 4 original fields and 10 constants. Canonical extent 16..592 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Rmi_msgsMsgCallParam
{
    /// @brief Original rmi_msgs/msg/CallParam.type field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(64, false) field_type;
    /// @brief Original rmi_msgs/msg/CallParam.int_value field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_int_value;
    /// @brief Original rmi_msgs/msg/CallParam.float_value field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_float_value = 0;
    /// @brief Original rmi_msgs/msg/CallParam.string_value field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_string_value;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 16;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 592;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_ed625d80db6c4314b8373f2d205344d6ab8d71be46182dab5a497d36564a2255";
    /// @brief Original rmi_msgs/msg/CallParam.AR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_AR = "AR";
    /// @brief Original rmi_msgs/msg/CallParam.PR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_PR = "PR";
    /// @brief Original rmi_msgs/msg/CallParam.SR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_SR = "SR";
    /// @brief Original rmi_msgs/msg/CallParam.R constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_R = "R";
    /// @brief Original rmi_msgs/msg/CallParam.P constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_P = "P";
    /// @brief Original rmi_msgs/msg/CallParam.INT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_INT = "INT";
    /// @brief Original rmi_msgs/msg/CallParam.INTEGER constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_INTEGER = "INT";
    /// @brief Original rmi_msgs/msg/CallParam.FLOAT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_FLOAT = "FLOAT";
    /// @brief Original rmi_msgs/msg/CallParam.STRING constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_STRING = "String";
    /// @brief Original rmi_msgs/msg/CallParam.STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_STR = "String";
}
/// @brief Encode every field of complete rmi_msgs/msg/CallParam.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Rmi_msgsMsgCallParam(ref Ros2Rmi_msgsMsgCallParam value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete rmi_msgs/msg/CallParam.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Rmi_msgsMsgCallParam(const(ubyte)[] bytes, out Ros2Rmi_msgsMsgCallParam value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete rmi_msgs/msg/Cartesian value.
/// @details Retain all 18 original fields and 0 constants. Canonical extent 45..45 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Rmi_msgsMsgCartesian
{
    /// @brief Original rmi_msgs/msg/Cartesian.utool field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_utool = 1;
    /// @brief Original rmi_msgs/msg/Cartesian.uframe field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_uframe = 0;
    /// @brief Original rmi_msgs/msg/Cartesian.front field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_front = 1;
    /// @brief Original rmi_msgs/msg/Cartesian.up field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_up = 1;
    /// @brief Original rmi_msgs/msg/Cartesian.left field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_left = 0;
    /// @brief Original rmi_msgs/msg/Cartesian.flip field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_flip = 0;
    /// @brief Original rmi_msgs/msg/Cartesian.turn4 field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_turn4 = 0;
    /// @brief Original rmi_msgs/msg/Cartesian.turn5 field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_turn5 = 0;
    /// @brief Original rmi_msgs/msg/Cartesian.turn6 field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_turn6 = 0;
    /// @brief Original rmi_msgs/msg/Cartesian.x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_x = 0;
    /// @brief Original rmi_msgs/msg/Cartesian.y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_y = 0;
    /// @brief Original rmi_msgs/msg/Cartesian.z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_z = 0;
    /// @brief Original rmi_msgs/msg/Cartesian.w field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_w = 0;
    /// @brief Original rmi_msgs/msg/Cartesian.p field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_p = 0;
    /// @brief Original rmi_msgs/msg/Cartesian.r field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_r = 0;
    /// @brief Original rmi_msgs/msg/Cartesian.ext1 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_ext1 = 0;
    /// @brief Original rmi_msgs/msg/Cartesian.ext2 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_ext2 = 0;
    /// @brief Original rmi_msgs/msg/Cartesian.ext3 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_ext3 = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 45;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 45;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_2a0e1fff119007499a63d55c9722f666be1436a9212d9e43b556af347e8e4b40";
}
/// @brief Encode every field of complete rmi_msgs/msg/Cartesian.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Rmi_msgsMsgCartesian(ref Ros2Rmi_msgsMsgCartesian value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete rmi_msgs/msg/Cartesian.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Rmi_msgsMsgCartesian(const(ubyte)[] bytes, out Ros2Rmi_msgsMsgCartesian value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete rmi_msgs/msg/Command value.
/// @details Retain all 1 original fields and 5 constants. Canonical extent 4..68 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Rmi_msgsMsgCommand
{
    /// @brief Original rmi_msgs/msg/Command.type field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(64, false) field_type;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 68;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_d2741856b8cdf57aa716566edfc705957611557b7da5b6099b173903bdd9960c";
    /// @brief Original rmi_msgs/msg/Command.INITIAZLIE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_INITIAZLIE = "INITIALIZE";
    /// @brief Original rmi_msgs/msg/Command.INIT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_INIT = "INITIALIZE";
    /// @brief Original rmi_msgs/msg/Command.ABORT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_ABORT = "ABORT";
    /// @brief Original rmi_msgs/msg/Command.PAUSE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_PAUSE = "PAUSE";
    /// @brief Original rmi_msgs/msg/Command.RESUME constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_RESUME = "RESUME";
}
/// @brief Encode every field of complete rmi_msgs/msg/Command.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Rmi_msgsMsgCommand(ref Ros2Rmi_msgsMsgCommand value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete rmi_msgs/msg/Command.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Rmi_msgsMsgCommand(const(ubyte)[] bytes, out Ros2Rmi_msgsMsgCommand value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete rmi_msgs/msg/CommandOptions value.
/// @details Retain all 6 original fields and 8 constants. Canonical extent 12..1036 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Rmi_msgsMsgCommandOptions
{
    /// @brief Original rmi_msgs/msg/CommandOptions.use_group_mask field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_use_group_mask = false;
    /// @brief Original rmi_msgs/msg/CommandOptions.group_mask field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_group_mask = 1;
    /// @brief Original rmi_msgs/msg/CommandOptions.use_rtsa field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_use_rtsa = false;
    /// @brief Original rmi_msgs/msg/CommandOptions.rtsa field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_rtsa = Text!(512, false)([
        79, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0
    ], 2);
    /// @brief Original rmi_msgs/msg/CommandOptions.use_pltzmode field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_use_pltzmode = false;
    /// @brief Original rmi_msgs/msg/CommandOptions.pltzmode field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_pltzmode = Text!(512, false)([
        90, 69, 82, 79, 68, 78, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0
    ], 6);
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 12;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1036;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_0be0c508035725bf9686807cb8b5267e23f709b7aa34b0910a44ff3604670147";
    /// @brief Original rmi_msgs/msg/CommandOptions.RTSA_ON constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_RTSA_ON = "ON";
    /// @brief Original rmi_msgs/msg/CommandOptions.RTSA_OFF constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_RTSA_OFF = "OFF";
    /// @brief Original rmi_msgs/msg/CommandOptions.PLTZ_ZERODN constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_PLTZ_ZERODN = "ZERODN";
    /// @brief Original rmi_msgs/msg/CommandOptions.PLTZ_ZEROUP constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_PLTZ_ZEROUP = "ZEROUP";
    /// @brief Original rmi_msgs/msg/CommandOptions.PLTZ_PSPIDN constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_PLTZ_PSPIDN = "PSPIDN";
    /// @brief Original rmi_msgs/msg/CommandOptions.PLTZ_PSPIUP constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_PLTZ_PSPIUP = "PSPIUP";
    /// @brief Original rmi_msgs/msg/CommandOptions.PLTZ_MSPIDN constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_PLTZ_MSPIDN = "MSPIDN";
    /// @brief Original rmi_msgs/msg/CommandOptions.PLTZ_MSPIUP constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_PLTZ_MSPIUP = "MSPIUP";
}
/// @brief Encode every field of complete rmi_msgs/msg/CommandOptions.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Rmi_msgsMsgCommandOptions(ref Ros2Rmi_msgsMsgCommandOptions value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete rmi_msgs/msg/CommandOptions.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Rmi_msgsMsgCommandOptions(const(ubyte)[] bytes, out Ros2Rmi_msgsMsgCommandOptions value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete rmi_msgs/msg/Joint value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 36..36 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Rmi_msgsMsgJoint
{
    /// @brief Original rmi_msgs/msg/Joint.positions field.
    /// @details Original type float32. Shape array; bound/count 9 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[9] field_positions = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 36;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 36;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_0ba90adf6cc287bc306fd2a77c52c2e4d62731cfac37bb2cc116ee846249a42d";
}
/// @brief Encode every field of complete rmi_msgs/msg/Joint.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Rmi_msgsMsgJoint(ref Ros2Rmi_msgsMsgJoint value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete rmi_msgs/msg/Joint.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Rmi_msgsMsgJoint(const(ubyte)[] bytes, out Ros2Rmi_msgsMsgJoint value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete rmi_msgs/msg/MotionInstructionOptions value.
/// @details Retain all 28 original fields and 7 constants. Canonical extent 52..2612 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Rmi_msgsMsgMotionInstructionOptions
{
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_acc field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_use_acc = false;
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.acc field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_acc;
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_offset_pr_number field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_use_offset_pr_number = false;
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.offset_pr_number field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_offset_pr_number;
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_vision_pr_number field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_use_vision_pr_number = false;
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.vision_pr_number field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_vision_pr_number;
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_wrist_joint field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_use_wrist_joint = false;
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.wrist_joint field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_wrist_joint = Text!(512, false)([
        79, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0
    ], 2);
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_mrot field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_use_mrot = false;
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.mrot field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_mrot = Text!(512, false)([
        79, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0
    ], 2);
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_lcb_type field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_use_lcb_type = false;
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.lcb_type field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_lcb_type;
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_lcb_value field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_use_lcb_value = false;
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.lcb_value field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_lcb_value;
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_port_type field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_use_port_type = false;
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.port_type field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_port_type;
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_port_number field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_use_port_number = false;
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.port_number field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_port_number;
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_port_value field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_use_port_value = false;
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.port_value field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_port_value;
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_tool_offset_pr_number field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_use_tool_offset_pr_number = false;
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.tool_offset_pr_number field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_tool_offset_pr_number;
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_alim field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_use_alim = false;
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.alim field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_alim;
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_alim_reg field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_use_alim_reg = false;
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.alim_reg field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_alim_reg;
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_no_blend field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_use_no_blend = false;
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.no_blend field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_no_blend = Text!(512, false)([
        79, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0
    ], 2);
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 52;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 2612;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_f8d9ed2e083c577b0cae8965df71aa99643d12ce5a5a6ce558894edfb756bcc6";
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.LCB_TYPE_TB constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_LCB_TYPE_TB = "TB";
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.LCB_TYPE_TA constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_LCB_TYPE_TA = "TA";
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.LCB_TYPE_DB constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_LCB_TYPE_DB = "DB";
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.PORT_TYPE_DOUT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_PORT_TYPE_DOUT = 1;
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.PORT_TYPE_DO constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_PORT_TYPE_DO = 1;
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.PORT_TYPE_ROUT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_PORT_TYPE_ROUT = 2;
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.PORT_TYPE_RO constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_PORT_TYPE_RO = 2;
}
/// @brief Encode every field of complete rmi_msgs/msg/MotionInstructionOptions.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Rmi_msgsMsgMotionInstructionOptions(ref Ros2Rmi_msgsMsgMotionInstructionOptions value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete rmi_msgs/msg/MotionInstructionOptions.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Rmi_msgsMsgMotionInstructionOptions(const(ubyte)[] bytes, out Ros2Rmi_msgsMsgMotionInstructionOptions value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete rmi_msgs/msg/MotionType value.
/// @details Retain all 1 original fields and 8 constants. Canonical extent 4..68 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Rmi_msgsMsgMotionType
{
    /// @brief Original rmi_msgs/msg/MotionType.type field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(64, false) field_type = Text!(64, false)([
        74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0
    ], 1);
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 68;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_c51cc7a32f6853d13bedaf3306dd79e445de6c0d16ae0ec39034ce0ae6d19c8a";
    /// @brief Original rmi_msgs/msg/MotionType.J constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_J = "J";
    /// @brief Original rmi_msgs/msg/MotionType.JOINT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_JOINT = "J";
    /// @brief Original rmi_msgs/msg/MotionType.L constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_L = "L";
    /// @brief Original rmi_msgs/msg/MotionType.LINEAR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_LINEAR = "L";
    /// @brief Original rmi_msgs/msg/MotionType.C constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_C = "C";
    /// @brief Original rmi_msgs/msg/MotionType.CIRCULAR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_CIRCULAR = "C";
    /// @brief Original rmi_msgs/msg/MotionType.S constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_S = "S";
    /// @brief Original rmi_msgs/msg/MotionType.SPLINE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_SPLINE = "S";
}
/// @brief Encode every field of complete rmi_msgs/msg/MotionType.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Rmi_msgsMsgMotionType(ref Ros2Rmi_msgsMsgMotionType value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete rmi_msgs/msg/MotionType.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Rmi_msgsMsgMotionType(const(ubyte)[] bytes, out Ros2Rmi_msgsMsgMotionType value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete rmi_msgs/msg/Representation value.
/// @details Retain all 1 original fields and 5 constants. Canonical extent 4..516 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Rmi_msgsMsgRepresentation
{
    /// @brief Original rmi_msgs/msg/Representation.representation field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_representation = Text!(512, false)([
        74, 79, 73, 78, 84, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0
    ], 5);
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 516;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_b439506f2dc2135bb484b3abb308dfdf5c07367af5a4d6d0f5435ad9bba8ea6f";
    /// @brief Original rmi_msgs/msg/Representation.JOINT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_JOINT = "JOINT";
    /// @brief Original rmi_msgs/msg/Representation.J constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_J = "JOINT";
    /// @brief Original rmi_msgs/msg/Representation.CARTESIAN constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_CARTESIAN = "CARTESIAN";
    /// @brief Original rmi_msgs/msg/Representation.CART constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_CART = "CARTESIAN";
    /// @brief Original rmi_msgs/msg/Representation.C constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_C = "CARTESIAN";
}
/// @brief Encode every field of complete rmi_msgs/msg/Representation.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Rmi_msgsMsgRepresentation(ref Ros2Rmi_msgsMsgRepresentation value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete rmi_msgs/msg/Representation.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Rmi_msgsMsgRepresentation(const(ubyte)[] bytes, out Ros2Rmi_msgsMsgRepresentation value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete rmi_msgs/msg/SpeedType value.
/// @details Retain all 1 original fields and 8 constants. Canonical extent 4..68 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Rmi_msgsMsgSpeedType
{
    /// @brief Original rmi_msgs/msg/SpeedType.type field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(64, false) field_type = Text!(64, false)([
        80, 101, 114, 99, 101, 110, 116, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0
    ], 7);
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 68;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_e4f4dbda84d8d8cd4d026b0beb52005663c7c4ee602c8d1e4d5853589777c282";
    /// @brief Original rmi_msgs/msg/SpeedType.PERCENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_PERCENT = "Percent";
    /// @brief Original rmi_msgs/msg/SpeedType.PERCENTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_PERCENTAGE = "Percent";
    /// @brief Original rmi_msgs/msg/SpeedType.MMSEC constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_MMSEC = "mmSec";
    /// @brief Original rmi_msgs/msg/SpeedType.INCHMIN constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_INCHMIN = "InchMin";
    /// @brief Original rmi_msgs/msg/SpeedType.TIME constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_TIME = "Time";
    /// @brief Original rmi_msgs/msg/SpeedType.SECONDS constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_SECONDS = "Time";
    /// @brief Original rmi_msgs/msg/SpeedType.SEC constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_SEC = "Time";
    /// @brief Original rmi_msgs/msg/SpeedType.MSEC constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_MSEC = "mSec";
}
/// @brief Encode every field of complete rmi_msgs/msg/SpeedType.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Rmi_msgsMsgSpeedType(ref Ros2Rmi_msgsMsgSpeedType value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete rmi_msgs/msg/SpeedType.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Rmi_msgsMsgSpeedType(const(ubyte)[] bytes, out Ros2Rmi_msgsMsgSpeedType value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete rmi_msgs/msg/TermType value.
/// @details Retain all 1 original fields and 4 constants. Canonical extent 4..68 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Rmi_msgsMsgTermType
{
    /// @brief Original rmi_msgs/msg/TermType.type field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(64, false) field_type = Text!(64, false)([
        70, 73, 78, 69, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0
    ], 4);
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 68;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_5ddbb483126e0ab5799ed865480da457179d83a271581c1471aec940bedc4535";
    /// @brief Original rmi_msgs/msg/TermType.FINE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_FINE = "FINE";
    /// @brief Original rmi_msgs/msg/TermType.CNT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_CNT = "CNT";
    /// @brief Original rmi_msgs/msg/TermType.CR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_CR = "CR";
    /// @brief Original rmi_msgs/msg/TermType.CD constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_CD = "CD";
}
/// @brief Encode every field of complete rmi_msgs/msg/TermType.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Rmi_msgsMsgTermType(ref Ros2Rmi_msgsMsgTermType value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete rmi_msgs/msg/TermType.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Rmi_msgsMsgTermType(const(ubyte)[] bytes, out Ros2Rmi_msgsMsgTermType value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete rmi_msgs/srv/AddCall_Request value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..9992 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Rmi_msgsSrvAddCall_Request
{
    /// @brief Original rmi_msgs/srv/AddCall_Request.program_name field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_program_name;
    /// @brief Original rmi_msgs/srv/AddCall_Request.params field.
    /// @details Original type rmi_msgs/msg/CallParam. Shape sequence; bound/count 16 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros2Rmi_msgsMsgCallParam, 16) field_params;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 8;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 9992;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_4d652cfbaef29487a0a688932ee926d7a4026c5e7ac8a0eace583b503c37bcd8";
}
/// @brief Encode every field of complete rmi_msgs/srv/AddCall_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Rmi_msgsSrvAddCall_Request(ref Ros2Rmi_msgsSrvAddCall_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete rmi_msgs/srv/AddCall_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Rmi_msgsSrvAddCall_Request(const(ubyte)[] bytes, out Ros2Rmi_msgsSrvAddCall_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete rmi_msgs/srv/AddCall_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Rmi_msgsSrvAddCall_Response
{
    /// @brief Original rmi_msgs/srv/AddCall_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Original rmi_msgs/srv/AddCall_Response.sequence_id field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_sequence_id;
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
    enum codecIdentity = "UWVMROS1_4f8495dfc3c69ec640444fd24843a7bb3e30008d90945bdd64817d8acb7964e1";
}
/// @brief Encode every field of complete rmi_msgs/srv/AddCall_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Rmi_msgsSrvAddCall_Response(ref Ros2Rmi_msgsSrvAddCall_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete rmi_msgs/srv/AddCall_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Rmi_msgsSrvAddCall_Response(const(ubyte)[] bytes, out Ros2Rmi_msgsSrvAddCall_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete rmi_msgs/srv/AddMotionInstruction_Request value.
/// @details Retain all 13 original fields and 0 constants. Canonical extent 238..4014 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Rmi_msgsSrvAddMotionInstruction_Request
{
    /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.motion_type field.
    /// @details Original type rmi_msgs/msg/MotionType. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros2Rmi_msgsMsgMotionType field_motion_type;
    /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.incremental field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_incremental = false;
    /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.representation field.
    /// @details Original type rmi_msgs/msg/Representation. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Rmi_msgsMsgRepresentation field_representation;
    /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.joint field.
    /// @details Original type rmi_msgs/msg/Joint. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Rmi_msgsMsgJoint field_joint;
    /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.cartesian field.
    /// @details Original type rmi_msgs/msg/Cartesian. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros2Rmi_msgsMsgCartesian field_cartesian;
    /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.speed_type field.
    /// @details Original type rmi_msgs/msg/SpeedType. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros2Rmi_msgsMsgSpeedType field_speed_type;
    /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.speed_value field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_speed_value;
    /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.term_type field.
    /// @details Original type rmi_msgs/msg/TermType. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Rmi_msgsMsgTermType field_term_type;
    /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.term_value field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_term_value;
    /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.via_representation field.
    /// @details Original type rmi_msgs/msg/Representation. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Rmi_msgsMsgRepresentation field_via_representation;
    /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.via_joint field.
    /// @details Original type rmi_msgs/msg/Joint. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Rmi_msgsMsgJoint field_via_joint;
    /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.via_cartesian field.
    /// @details Original type rmi_msgs/msg/Cartesian. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros2Rmi_msgsMsgCartesian field_via_cartesian;
    /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.options field.
    /// @details Original type rmi_msgs/msg/MotionInstructionOptions. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Ros2Rmi_msgsMsgMotionInstructionOptions field_options;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 238;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 4014;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_3f22c49cb2d32e6a8f3954f3d3cbf0021c87e0363b1f2ded4ac20a97a5b59391";
}
/// @brief Encode every field of complete rmi_msgs/srv/AddMotionInstruction_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Rmi_msgsSrvAddMotionInstruction_Request(ref Ros2Rmi_msgsSrvAddMotionInstruction_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete rmi_msgs/srv/AddMotionInstruction_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Rmi_msgsSrvAddMotionInstruction_Request(const(ubyte)[] bytes, out Ros2Rmi_msgsSrvAddMotionInstruction_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete rmi_msgs/srv/AddMotionInstruction_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Rmi_msgsSrvAddMotionInstruction_Response
{
    /// @brief Original rmi_msgs/srv/AddMotionInstruction_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Original rmi_msgs/srv/AddMotionInstruction_Response.sequence_id field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_sequence_id;
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
    enum codecIdentity = "UWVMROS1_79fee3e965fda63c3a53ad2178ff48614878acc9f6af74cc27a8c2812b68ac6b";
}
/// @brief Encode every field of complete rmi_msgs/srv/AddMotionInstruction_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Rmi_msgsSrvAddMotionInstruction_Response(ref Ros2Rmi_msgsSrvAddMotionInstruction_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete rmi_msgs/srv/AddMotionInstruction_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Rmi_msgsSrvAddMotionInstruction_Response(const(ubyte)[] bytes, out Ros2Rmi_msgsSrvAddMotionInstruction_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete rmi_msgs/srv/AddSetPayload_Request value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 1..1 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Rmi_msgsSrvAddSetPayload_Request
{
    /// @brief Original rmi_msgs/srv/AddSetPayload_Request.schedule_number field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_schedule_number;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 1;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_45da9f81e8c26f49490a4e6eba5c8be0ee67285124540eb1c3e1f2c3e0fd821b";
}
/// @brief Encode every field of complete rmi_msgs/srv/AddSetPayload_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Rmi_msgsSrvAddSetPayload_Request(ref Ros2Rmi_msgsSrvAddSetPayload_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete rmi_msgs/srv/AddSetPayload_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Rmi_msgsSrvAddSetPayload_Request(const(ubyte)[] bytes, out Ros2Rmi_msgsSrvAddSetPayload_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete rmi_msgs/srv/AddSetPayload_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Rmi_msgsSrvAddSetPayload_Response
{
    /// @brief Original rmi_msgs/srv/AddSetPayload_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Original rmi_msgs/srv/AddSetPayload_Response.sequence_id field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_sequence_id;
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
    enum codecIdentity = "UWVMROS1_bfc5bc7b92f292c2980496cb18fbe953ea1b49d45f7950f0125bbbf880bdf72a";
}
/// @brief Encode every field of complete rmi_msgs/srv/AddSetPayload_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Rmi_msgsSrvAddSetPayload_Response(ref Ros2Rmi_msgsSrvAddSetPayload_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete rmi_msgs/srv/AddSetPayload_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Rmi_msgsSrvAddSetPayload_Response(const(ubyte)[] bytes, out Ros2Rmi_msgsSrvAddSetPayload_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete rmi_msgs/srv/AddSetUFrame_Request value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 1..1 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Rmi_msgsSrvAddSetUFrame_Request
{
    /// @brief Original rmi_msgs/srv/AddSetUFrame_Request.frame_number field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_frame_number;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 1;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_64c83dd2be89b4b6dcf3b3c2ea70184971e6a359914ff1a5cd26d4b114d35475";
}
/// @brief Encode every field of complete rmi_msgs/srv/AddSetUFrame_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Rmi_msgsSrvAddSetUFrame_Request(ref Ros2Rmi_msgsSrvAddSetUFrame_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete rmi_msgs/srv/AddSetUFrame_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Rmi_msgsSrvAddSetUFrame_Request(const(ubyte)[] bytes, out Ros2Rmi_msgsSrvAddSetUFrame_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete rmi_msgs/srv/AddSetUFrame_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Rmi_msgsSrvAddSetUFrame_Response
{
    /// @brief Original rmi_msgs/srv/AddSetUFrame_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Original rmi_msgs/srv/AddSetUFrame_Response.sequence_id field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_sequence_id;
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
    enum codecIdentity = "UWVMROS1_e344ef6efacc8d569111d1c6ef4028e1a5bb54af49d3e8f486ae89b83c674647";
}
/// @brief Encode every field of complete rmi_msgs/srv/AddSetUFrame_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Rmi_msgsSrvAddSetUFrame_Response(ref Ros2Rmi_msgsSrvAddSetUFrame_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete rmi_msgs/srv/AddSetUFrame_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Rmi_msgsSrvAddSetUFrame_Response(const(ubyte)[] bytes, out Ros2Rmi_msgsSrvAddSetUFrame_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete rmi_msgs/srv/AddSetUTool_Request value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 1..1 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Rmi_msgsSrvAddSetUTool_Request
{
    /// @brief Original rmi_msgs/srv/AddSetUTool_Request.tool_number field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_tool_number;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 1;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_d1327022326cd41caed6001449517a41f589e148c38d6db30923922175f05c46";
}
/// @brief Encode every field of complete rmi_msgs/srv/AddSetUTool_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Rmi_msgsSrvAddSetUTool_Request(ref Ros2Rmi_msgsSrvAddSetUTool_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete rmi_msgs/srv/AddSetUTool_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Rmi_msgsSrvAddSetUTool_Request(const(ubyte)[] bytes, out Ros2Rmi_msgsSrvAddSetUTool_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete rmi_msgs/srv/AddSetUTool_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Rmi_msgsSrvAddSetUTool_Response
{
    /// @brief Original rmi_msgs/srv/AddSetUTool_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Original rmi_msgs/srv/AddSetUTool_Response.sequence_id field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_sequence_id;
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
    enum codecIdentity = "UWVMROS1_dd4c36458027b87559200cf5f6aa72a60af2d103f663f2fa9daca47ce8020ff6";
}
/// @brief Encode every field of complete rmi_msgs/srv/AddSetUTool_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Rmi_msgsSrvAddSetUTool_Response(ref Ros2Rmi_msgsSrvAddSetUTool_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete rmi_msgs/srv/AddSetUTool_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Rmi_msgsSrvAddSetUTool_Response(const(ubyte)[] bytes, out Ros2Rmi_msgsSrvAddSetUTool_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete rmi_msgs/srv/AddWaitDIN_Request value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Rmi_msgsSrvAddWaitDIN_Request
{
    /// @brief Original rmi_msgs/srv/AddWaitDIN_Request.port_number field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_port_number;
    /// @brief Original rmi_msgs/srv/AddWaitDIN_Request.port_value field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_port_value;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 6;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 518;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_c32214f1ff1b0b6980583fc3088f412e856efb5eaa9c336cf798ef8ad85c61ab";
}
/// @brief Encode every field of complete rmi_msgs/srv/AddWaitDIN_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Rmi_msgsSrvAddWaitDIN_Request(ref Ros2Rmi_msgsSrvAddWaitDIN_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete rmi_msgs/srv/AddWaitDIN_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Rmi_msgsSrvAddWaitDIN_Request(const(ubyte)[] bytes, out Ros2Rmi_msgsSrvAddWaitDIN_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete rmi_msgs/srv/AddWaitDIN_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Rmi_msgsSrvAddWaitDIN_Response
{
    /// @brief Original rmi_msgs/srv/AddWaitDIN_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Original rmi_msgs/srv/AddWaitDIN_Response.sequence_id field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_sequence_id;
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
    enum codecIdentity = "UWVMROS1_7d3933f573619ba49f19df7c11f1d73ef211c17581f660f8c0fbcc152cd519d4";
}
/// @brief Encode every field of complete rmi_msgs/srv/AddWaitDIN_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Rmi_msgsSrvAddWaitDIN_Response(ref Ros2Rmi_msgsSrvAddWaitDIN_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete rmi_msgs/srv/AddWaitDIN_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Rmi_msgsSrvAddWaitDIN_Response(const(ubyte)[] bytes, out Ros2Rmi_msgsSrvAddWaitDIN_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete rmi_msgs/srv/AddWaitTime_Request value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..4 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Rmi_msgsSrvAddWaitTime_Request
{
    /// @brief Original rmi_msgs/srv/AddWaitTime_Request.time field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_time = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 4;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_8487f4b7dcfb044c72f7fb62a31ffe9cdc4321a9ebdaa0550a363e32acbadc46";
}
/// @brief Encode every field of complete rmi_msgs/srv/AddWaitTime_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Rmi_msgsSrvAddWaitTime_Request(ref Ros2Rmi_msgsSrvAddWaitTime_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete rmi_msgs/srv/AddWaitTime_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Rmi_msgsSrvAddWaitTime_Request(const(ubyte)[] bytes, out Ros2Rmi_msgsSrvAddWaitTime_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete rmi_msgs/srv/AddWaitTime_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Rmi_msgsSrvAddWaitTime_Response
{
    /// @brief Original rmi_msgs/srv/AddWaitTime_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Original rmi_msgs/srv/AddWaitTime_Response.sequence_id field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_sequence_id;
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
    enum codecIdentity = "UWVMROS1_f9578c08b971f32f91d1c94b8713cafe648e25147394e20c85bb335254fa20c8";
}
/// @brief Encode every field of complete rmi_msgs/srv/AddWaitTime_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Rmi_msgsSrvAddWaitTime_Response(ref Ros2Rmi_msgsSrvAddWaitTime_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete rmi_msgs/srv/AddWaitTime_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Rmi_msgsSrvAddWaitTime_Response(const(ubyte)[] bytes, out Ros2Rmi_msgsSrvAddWaitTime_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete rmi_msgs/srv/CallCommand_Request value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 16..1104 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Rmi_msgsSrvCallCommand_Request
{
    /// @brief Original rmi_msgs/srv/CallCommand_Request.command field.
    /// @details Original type rmi_msgs/msg/Command. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Rmi_msgsMsgCommand field_command;
    /// @brief Original rmi_msgs/srv/CallCommand_Request.options field.
    /// @details Original type rmi_msgs/msg/CommandOptions. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Rmi_msgsMsgCommandOptions field_options;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 16;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1104;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_d1f890a2beec0ca9294ff4f641d1738855d576a917ed05eb34517886c73f381c";
}
/// @brief Encode every field of complete rmi_msgs/srv/CallCommand_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Rmi_msgsSrvCallCommand_Request(ref Ros2Rmi_msgsSrvCallCommand_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete rmi_msgs/srv/CallCommand_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Rmi_msgsSrvCallCommand_Request(const(ubyte)[] bytes, out Ros2Rmi_msgsSrvCallCommand_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete rmi_msgs/srv/CallCommand_Response value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..4 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Rmi_msgsSrvCallCommand_Response
{
    /// @brief Original rmi_msgs/srv/CallCommand_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_result;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 4;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_64d92e6fadc651073469318ad15d2e98ec3d059c629838cefc5820b17ab6f1bc";
}
/// @brief Encode every field of complete rmi_msgs/srv/CallCommand_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Rmi_msgsSrvCallCommand_Response(ref Ros2Rmi_msgsSrvCallCommand_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete rmi_msgs/srv/CallCommand_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Rmi_msgsSrvCallCommand_Response(const(ubyte)[] bytes, out Ros2Rmi_msgsSrvCallCommand_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete sensor_msgs/msg/JointState value.
/// @details Retain all 5 original fields and 0 constants. Canonical extent 28..1196 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Sensor_msgsMsgJointState
{
    /// @brief Original sensor_msgs/msg/JointState.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Std_msgsMsgHeader field_header;
    /// @brief Original sensor_msgs/msg/JointState.name field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
    /// bound/count 12 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Text!(64, false), 12) field_name;
    /// @brief Original sensor_msgs/msg/JointState.position field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence!(double, 12) field_position;
    /// @brief Original sensor_msgs/msg/JointState.velocity field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence!(double, 12) field_velocity;
    /// @brief Original sensor_msgs/msg/JointState.effort field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence!(double, 12) field_effort;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 28;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1196;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884";
}
/// @brief Encode every field of complete sensor_msgs/msg/JointState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Sensor_msgsMsgJointState(ref Ros2Sensor_msgsMsgJointState value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete sensor_msgs/msg/JointState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Sensor_msgsMsgJointState(const(ubyte)[] bytes, out Ros2Sensor_msgsMsgJointState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete std_srvs/srv/Trigger_Request value.
/// @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Std_srvsSrvTrigger_Request
{
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 0;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 0;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77";
}
/// @brief Encode every field of complete std_srvs/srv/Trigger_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Std_srvsSrvTrigger_Request(ref Ros2Std_srvsSrvTrigger_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete std_srvs/srv/Trigger_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Std_srvsSrvTrigger_Request(const(ubyte)[] bytes, out Ros2Std_srvsSrvTrigger_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete std_srvs/srv/Trigger_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 5..517 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Std_srvsSrvTrigger_Response
{
    /// @brief Original std_srvs/srv/Trigger_Response.success field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_success;
    /// @brief Original std_srvs/srv/Trigger_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_message;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 5;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 517;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d";
}
/// @brief Encode every field of complete std_srvs/srv/Trigger_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Std_srvsSrvTrigger_Response(ref Ros2Std_srvsSrvTrigger_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete std_srvs/srv/Trigger_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Std_srvsSrvTrigger_Response(const(ubyte)[] bytes, out Ros2Std_srvsSrvTrigger_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

