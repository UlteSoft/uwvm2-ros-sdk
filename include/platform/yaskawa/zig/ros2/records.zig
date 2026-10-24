//! @file records.zig
//! @brief Complete owned original YASKAWA ROS 2 native records and codecs.
//! @details Generated from the admitted source-pinned catalog; no ROS authority is created.
const std = @import("std");
const wire = @import("roswire");

/// @brief Complete builtin_interfaces/msg/Duration value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Builtin_interfacesMsgDuration = struct {
    /// @brief Original builtin_interfaces/msg/Duration.sec field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_sec: i32 = 0,
    /// @brief Original builtin_interfaces/msg/Duration.nanosec field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_nanosec: u32 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 8;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 8;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4";
    /// @brief Validate the complete original time-domain invariant.
    /// @details Nanoseconds stay in the original normalized domain; no clock or unit conversion
    /// occurs.
    /// @param self Complete immutable owned value.
    /// @return Void success or Invalid.
    pub fn validate(self: *const @This()) wire.Error!void {
        if (self.field_nanosec >= 1000000000) return error.Invalid;
    }
};
/// @brief Encode every field of complete builtin_interfaces/msg/Duration.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Builtin_interfacesMsgDuration(value: *Ros2Builtin_interfacesMsgDuration, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete builtin_interfaces/msg/Duration.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Builtin_interfacesMsgDuration(bytes: []const u8) wire.Error!Ros2Builtin_interfacesMsgDuration {
    return wire.decode(Ros2Builtin_interfacesMsgDuration, bytes);
}

/// @brief Complete builtin_interfaces/msg/Time value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Builtin_interfacesMsgTime = struct {
    /// @brief Original builtin_interfaces/msg/Time.sec field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_sec: i32 = 0,
    /// @brief Original builtin_interfaces/msg/Time.nanosec field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_nanosec: u32 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 8;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 8;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7";
    /// @brief Validate the complete original time-domain invariant.
    /// @details Nanoseconds stay in the original normalized domain; no clock or unit conversion
    /// occurs.
    /// @param self Complete immutable owned value.
    /// @return Void success or Invalid.
    pub fn validate(self: *const @This()) wire.Error!void {
        if (self.field_nanosec >= 1000000000) return error.Invalid;
    }
};
/// @brief Encode every field of complete builtin_interfaces/msg/Time.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Builtin_interfacesMsgTime(value: *Ros2Builtin_interfacesMsgTime, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete builtin_interfaces/msg/Time.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Builtin_interfacesMsgTime(bytes: []const u8) wire.Error!Ros2Builtin_interfacesMsgTime {
    return wire.decode(Ros2Builtin_interfacesMsgTime, bytes);
}

/// @brief Complete std_msgs/msg/Header value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 12..76 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Std_msgsMsgHeader = struct {
    /// @brief Original std_msgs/msg/Header.stamp field.
    /// @details Original type builtin_interfaces/msg/Time. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_stamp: Ros2Builtin_interfacesMsgTime = .{},
    /// @brief Original std_msgs/msg/Header.frame_id field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_frame_id: wire.Text(64, false) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 12;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 76;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396";
};
/// @brief Encode every field of complete std_msgs/msg/Header.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Std_msgsMsgHeader(value: *Ros2Std_msgsMsgHeader, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete std_msgs/msg/Header.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Std_msgsMsgHeader(bytes: []const u8) wire.Error!Ros2Std_msgsMsgHeader {
    return wire.decode(Ros2Std_msgsMsgHeader, bytes);
}

/// @brief Complete trajectory_msgs/msg/JointTrajectoryPoint value.
/// @details Retain all 5 original fields and 0 constants. Canonical extent 24..408 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Trajectory_msgsMsgJointTrajectoryPoint = struct {
    /// @brief Original trajectory_msgs/msg/JointTrajectoryPoint.positions field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_positions: wire.Sequence(f64, 12) = .{},
    /// @brief Original trajectory_msgs/msg/JointTrajectoryPoint.velocities field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_velocities: wire.Sequence(f64, 12) = .{},
    /// @brief Original trajectory_msgs/msg/JointTrajectoryPoint.accelerations field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_accelerations: wire.Sequence(f64, 12) = .{},
    /// @brief Original trajectory_msgs/msg/JointTrajectoryPoint.effort field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_effort: wire.Sequence(f64, 12) = .{},
    /// @brief Original trajectory_msgs/msg/JointTrajectoryPoint.time_from_start field.
    /// @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_time_from_start: Ros2Builtin_interfacesMsgDuration = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 24;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 408;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5";
};
/// @brief Encode every field of complete trajectory_msgs/msg/JointTrajectoryPoint.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Trajectory_msgsMsgJointTrajectoryPoint(value: *Ros2Trajectory_msgsMsgJointTrajectoryPoint, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete trajectory_msgs/msg/JointTrajectoryPoint.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Trajectory_msgsMsgJointTrajectoryPoint(bytes: []const u8) wire.Error!Ros2Trajectory_msgsMsgJointTrajectoryPoint {
    return wire.decode(Ros2Trajectory_msgsMsgJointTrajectoryPoint, bytes);
}

/// @brief Complete trajectory_msgs/msg/JointTrajectory value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 20..4164 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Trajectory_msgsMsgJointTrajectory = struct {
    /// @brief Original trajectory_msgs/msg/JointTrajectory.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader = .{},
    /// @brief Original trajectory_msgs/msg/JointTrajectory.joint_names field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
    /// bound/count 12 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    field_joint_names: wire.Sequence(wire.Text(64, false), 12) = .{},
    /// @brief Original trajectory_msgs/msg/JointTrajectory.points field.
    /// @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Shape sequence; bound/count
    /// 8 elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_points: wire.Sequence(Ros2Trajectory_msgsMsgJointTrajectoryPoint, 8) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 20;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 4164;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0";
};
/// @brief Encode every field of complete trajectory_msgs/msg/JointTrajectory.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Trajectory_msgsMsgJointTrajectory(value: *Ros2Trajectory_msgsMsgJointTrajectory, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete trajectory_msgs/msg/JointTrajectory.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Trajectory_msgsMsgJointTrajectory(bytes: []const u8) wire.Error!Ros2Trajectory_msgsMsgJointTrajectory {
    return wire.decode(Ros2Trajectory_msgsMsgJointTrajectory, bytes);
}

/// @brief Complete geometry_msgs/msg/Vector3 value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 24..24 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Geometry_msgsMsgVector3 = struct {
    /// @brief Original geometry_msgs/msg/Vector3.x field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_x: f64 = 0,
    /// @brief Original geometry_msgs/msg/Vector3.y field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_y: f64 = 0,
    /// @brief Original geometry_msgs/msg/Vector3.z field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_z: f64 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 24;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 24;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e";
};
/// @brief Encode every field of complete geometry_msgs/msg/Vector3.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Geometry_msgsMsgVector3(value: *Ros2Geometry_msgsMsgVector3, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete geometry_msgs/msg/Vector3.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Geometry_msgsMsgVector3(bytes: []const u8) wire.Error!Ros2Geometry_msgsMsgVector3 {
    return wire.decode(Ros2Geometry_msgsMsgVector3, bytes);
}

/// @brief Complete geometry_msgs/msg/Quaternion value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 32..32 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Geometry_msgsMsgQuaternion = struct {
    /// @brief Original geometry_msgs/msg/Quaternion.x field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_x: f64 = 0.0,
    /// @brief Original geometry_msgs/msg/Quaternion.y field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_y: f64 = 0.0,
    /// @brief Original geometry_msgs/msg/Quaternion.z field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_z: f64 = 0.0,
    /// @brief Original geometry_msgs/msg/Quaternion.w field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_w: f64 = 1.0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 32;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 32;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672";
};
/// @brief Encode every field of complete geometry_msgs/msg/Quaternion.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Geometry_msgsMsgQuaternion(value: *Ros2Geometry_msgsMsgQuaternion, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete geometry_msgs/msg/Quaternion.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Geometry_msgsMsgQuaternion(bytes: []const u8) wire.Error!Ros2Geometry_msgsMsgQuaternion {
    return wire.decode(Ros2Geometry_msgsMsgQuaternion, bytes);
}

/// @brief Complete geometry_msgs/msg/Transform value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 56..56 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Geometry_msgsMsgTransform = struct {
    /// @brief Original geometry_msgs/msg/Transform.translation field.
    /// @details Original type geometry_msgs/msg/Vector3. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_translation: Ros2Geometry_msgsMsgVector3 = .{},
    /// @brief Original geometry_msgs/msg/Transform.rotation field.
    /// @details Original type geometry_msgs/msg/Quaternion. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_rotation: Ros2Geometry_msgsMsgQuaternion = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 56;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 56;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b";
};
/// @brief Encode every field of complete geometry_msgs/msg/Transform.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Geometry_msgsMsgTransform(value: *Ros2Geometry_msgsMsgTransform, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete geometry_msgs/msg/Transform.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Geometry_msgsMsgTransform(bytes: []const u8) wire.Error!Ros2Geometry_msgsMsgTransform {
    return wire.decode(Ros2Geometry_msgsMsgTransform, bytes);
}

/// @brief Complete geometry_msgs/msg/Twist value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 48..48 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Geometry_msgsMsgTwist = struct {
    /// @brief Original geometry_msgs/msg/Twist.linear field.
    /// @details Original type geometry_msgs/msg/Vector3. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_linear: Ros2Geometry_msgsMsgVector3 = .{},
    /// @brief Original geometry_msgs/msg/Twist.angular field.
    /// @details Original type geometry_msgs/msg/Vector3. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_angular: Ros2Geometry_msgsMsgVector3 = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 48;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 48;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e";
};
/// @brief Encode every field of complete geometry_msgs/msg/Twist.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Geometry_msgsMsgTwist(value: *Ros2Geometry_msgsMsgTwist, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete geometry_msgs/msg/Twist.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Geometry_msgsMsgTwist(bytes: []const u8) wire.Error!Ros2Geometry_msgsMsgTwist {
    return wire.decode(Ros2Geometry_msgsMsgTwist, bytes);
}

/// @brief Complete trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 20..324 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint = struct {
    /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.transforms field.
    /// @details Original type geometry_msgs/msg/Transform. Shape sequence; bound/count 2 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_transforms: wire.Sequence(Ros2Geometry_msgsMsgTransform, 2) = .{},
    /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.velocities field.
    /// @details Original type geometry_msgs/msg/Twist. Shape sequence; bound/count 2 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_velocities: wire.Sequence(Ros2Geometry_msgsMsgTwist, 2) = .{},
    /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.accelerations field.
    /// @details Original type geometry_msgs/msg/Twist. Shape sequence; bound/count 2 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_accelerations: wire.Sequence(Ros2Geometry_msgsMsgTwist, 2) = .{},
    /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.time_from_start field.
    /// @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_time_from_start: Ros2Builtin_interfacesMsgDuration = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 20;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 324;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242";
};
/// @brief Encode every field of complete trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(value: *Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(bytes: []const u8) wire.Error!Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint {
    return wire.decode(Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint, bytes);
}

/// @brief Complete trajectory_msgs/msg/MultiDOFJointTrajectory value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 20..1516 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Trajectory_msgsMsgMultiDOFJointTrajectory = struct {
    /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectory.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader = .{},
    /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectory.joint_names field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
    /// bound/count 2 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    field_joint_names: wire.Sequence(wire.Text(64, false), 2) = .{},
    /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectory.points field.
    /// @details Original type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Shape sequence;
    /// bound/count 4 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    field_points: wire.Sequence(Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint, 4) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 20;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 1516;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401";
};
/// @brief Encode every field of complete trajectory_msgs/msg/MultiDOFJointTrajectory.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectory(value: *Ros2Trajectory_msgsMsgMultiDOFJointTrajectory, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete trajectory_msgs/msg/MultiDOFJointTrajectory.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Trajectory_msgsMsgMultiDOFJointTrajectory(bytes: []const u8) wire.Error!Ros2Trajectory_msgsMsgMultiDOFJointTrajectory {
    return wire.decode(Ros2Trajectory_msgsMsgMultiDOFJointTrajectory, bytes);
}

/// @brief Complete control_msgs/msg/JointTolerance value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 28..92 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Control_msgsMsgJointTolerance = struct {
    /// @brief Original control_msgs/msg/JointTolerance.name field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_name: wire.Text(64, false) = .{},
    /// @brief Original control_msgs/msg/JointTolerance.position field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_position: f64 = 0,
    /// @brief Original control_msgs/msg/JointTolerance.velocity field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_velocity: f64 = 0,
    /// @brief Original control_msgs/msg/JointTolerance.acceleration field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_acceleration: f64 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 28;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 92;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2";
};
/// @brief Encode every field of complete control_msgs/msg/JointTolerance.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Control_msgsMsgJointTolerance(value: *Ros2Control_msgsMsgJointTolerance, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete control_msgs/msg/JointTolerance.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Control_msgsMsgJointTolerance(bytes: []const u8) wire.Error!Ros2Control_msgsMsgJointTolerance {
    return wire.decode(Ros2Control_msgsMsgJointTolerance, bytes);
}

/// @brief Complete control_msgs/msg/JointComponentTolerance value.
/// @details Retain all 5 original fields and 5 constants. Canonical extent 30..542 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Control_msgsMsgJointComponentTolerance = struct {
    /// @brief Original control_msgs/msg/JointComponentTolerance.joint_name field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_joint_name: wire.Text(512, false) = .{},
    /// @brief Original control_msgs/msg/JointComponentTolerance.component field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_component: u16 = 0,
    /// @brief Original control_msgs/msg/JointComponentTolerance.position field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_position: f64 = 0,
    /// @brief Original control_msgs/msg/JointComponentTolerance.velocity field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_velocity: f64 = 0,
    /// @brief Original control_msgs/msg/JointComponentTolerance.acceleration field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_acceleration: f64 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 30;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 542;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342";
    /// @brief Original control_msgs/msg/JointComponentTolerance.X_AXIS constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_X_AXIS: u16 = 1;
    /// @brief Original control_msgs/msg/JointComponentTolerance.Y_AXIS constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_Y_AXIS: u16 = 2;
    /// @brief Original control_msgs/msg/JointComponentTolerance.Z_AXIS constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_Z_AXIS: u16 = 3;
    /// @brief Original control_msgs/msg/JointComponentTolerance.TRANSLATION constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_TRANSLATION: u16 = 4;
    /// @brief Original control_msgs/msg/JointComponentTolerance.ROTATION constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ROTATION: u16 = 5;
};
/// @brief Encode every field of complete control_msgs/msg/JointComponentTolerance.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Control_msgsMsgJointComponentTolerance(value: *Ros2Control_msgsMsgJointComponentTolerance, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete control_msgs/msg/JointComponentTolerance.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Control_msgsMsgJointComponentTolerance(bytes: []const u8) wire.Error!Ros2Control_msgsMsgJointComponentTolerance {
    return wire.decode(Ros2Control_msgsMsgJointComponentTolerance, bytes);
}

/// @brief Complete control_msgs/action/FollowJointTrajectory_Goal value.
/// @details Retain all 7 original fields and 0 constants. Canonical extent 64..20920 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Control_msgsActionFollowJointTrajectory_Goal = struct {
    /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.trajectory field.
    /// @details Original type trajectory_msgs/msg/JointTrajectory. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_trajectory: Ros2Trajectory_msgsMsgJointTrajectory = .{},
    /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.multi_dof_trajectory field.
    /// @details Original type trajectory_msgs/msg/MultiDOFJointTrajectory. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_multi_dof_trajectory: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory = .{},
    /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.path_tolerance field.
    /// @details Original type control_msgs/msg/JointTolerance. Shape sequence; bound/count 12
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_path_tolerance: wire.Sequence(Ros2Control_msgsMsgJointTolerance, 12) = .{},
    /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.component_path_tolerance
    /// field.
    /// @details Original type control_msgs/msg/JointComponentTolerance. Shape sequence; bound/count
    /// 12 elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_component_path_tolerance: wire.Sequence(Ros2Control_msgsMsgJointComponentTolerance, 12) = .{},
    /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.goal_tolerance field.
    /// @details Original type control_msgs/msg/JointTolerance. Shape sequence; bound/count 12
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_goal_tolerance: wire.Sequence(Ros2Control_msgsMsgJointTolerance, 12) = .{},
    /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.component_goal_tolerance
    /// field.
    /// @details Original type control_msgs/msg/JointComponentTolerance. Shape sequence; bound/count
    /// 12 elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_component_goal_tolerance: wire.Sequence(Ros2Control_msgsMsgJointComponentTolerance, 12) = .{},
    /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.goal_time_tolerance field.
    /// @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_goal_time_tolerance: Ros2Builtin_interfacesMsgDuration = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 64;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 20920;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16";
};
/// @brief Encode every field of complete control_msgs/action/FollowJointTrajectory_Goal.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Control_msgsActionFollowJointTrajectory_Goal(value: *Ros2Control_msgsActionFollowJointTrajectory_Goal, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete control_msgs/action/FollowJointTrajectory_Goal.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Control_msgsActionFollowJointTrajectory_Goal(bytes: []const u8) wire.Error!Ros2Control_msgsActionFollowJointTrajectory_Goal {
    return wire.decode(Ros2Control_msgsActionFollowJointTrajectory_Goal, bytes);
}

/// @brief Complete control_msgs/action/FollowJointTrajectory_Result value.
/// @details Retain all 2 original fields and 6 constants. Canonical extent 8..4104 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Control_msgsActionFollowJointTrajectory_Result = struct {
    /// @brief Original control_msgs/action/FollowJointTrajectory_Result.error_code field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_error_code: i32 = 0,
    /// @brief Original control_msgs/action/FollowJointTrajectory_Result.error_string field.
    /// @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_error_string: wire.Text(4096, false) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 8;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 4104;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70";
    /// @brief Original control_msgs/action/FollowJointTrajectory_Result.SUCCESSFUL constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_SUCCESSFUL: i32 = 0;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Result.INVALID_GOAL constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INVALID_GOAL: i32 = -1;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Result.INVALID_JOINTS constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INVALID_JOINTS: i32 = -2;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Result.OLD_HEADER_TIMESTAMP
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_OLD_HEADER_TIMESTAMP: i32 = -3;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Result.PATH_TOLERANCE_VIOLATED
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_PATH_TOLERANCE_VIOLATED: i32 = -4;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Result.GOAL_TOLERANCE_VIOLATED
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_GOAL_TOLERANCE_VIOLATED: i32 = -5;
};
/// @brief Encode every field of complete control_msgs/action/FollowJointTrajectory_Result.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Control_msgsActionFollowJointTrajectory_Result(value: *Ros2Control_msgsActionFollowJointTrajectory_Result, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete control_msgs/action/FollowJointTrajectory_Result.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Control_msgsActionFollowJointTrajectory_Result(bytes: []const u8) wire.Error!Ros2Control_msgsActionFollowJointTrajectory_Result {
    return wire.decode(Ros2Control_msgsActionFollowJointTrajectory_Result, bytes);
}

/// @brief Complete control_msgs/action/FollowJointTrajectory_Feedback value.
/// @details Retain all 9 original fields and 0 constants. Canonical extent 152..4128 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Control_msgsActionFollowJointTrajectory_Feedback = struct {
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader = .{},
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.joint_names field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
    /// bound/count 12 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    field_joint_names: wire.Sequence(wire.Text(64, false), 12) = .{},
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.desired field.
    /// @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_desired: Ros2Trajectory_msgsMsgJointTrajectoryPoint = .{},
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.actual field.
    /// @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_actual: Ros2Trajectory_msgsMsgJointTrajectoryPoint = .{},
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.error field.
    /// @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_error: Ros2Trajectory_msgsMsgJointTrajectoryPoint = .{},
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_joint_names
    /// field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Shape sequence;
    /// bound/count 2 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    field_multi_dof_joint_names: wire.Sequence(wire.Text(512, false), 2) = .{},
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_desired field.
    /// @details Original type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_multi_dof_desired: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint = .{},
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_actual field.
    /// @details Original type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_multi_dof_actual: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint = .{},
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_error field.
    /// @details Original type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_multi_dof_error: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 152;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 4128;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb";
};
/// @brief Encode every field of complete control_msgs/action/FollowJointTrajectory_Feedback.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Control_msgsActionFollowJointTrajectory_Feedback(value: *Ros2Control_msgsActionFollowJointTrajectory_Feedback, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete control_msgs/action/FollowJointTrajectory_Feedback.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Control_msgsActionFollowJointTrajectory_Feedback(bytes: []const u8) wire.Error!Ros2Control_msgsActionFollowJointTrajectory_Feedback {
    return wire.decode(Ros2Control_msgsActionFollowJointTrajectory_Feedback, bytes);
}

/// @brief Complete geometry_msgs/msg/TransformStamped value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 72..648 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Geometry_msgsMsgTransformStamped = struct {
    /// @brief Original geometry_msgs/msg/TransformStamped.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader = .{},
    /// @brief Original geometry_msgs/msg/TransformStamped.child_frame_id field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_child_frame_id: wire.Text(512, false) = .{},
    /// @brief Original geometry_msgs/msg/TransformStamped.transform field.
    /// @details Original type geometry_msgs/msg/Transform. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_transform: Ros2Geometry_msgsMsgTransform = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 72;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 648;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_be553b5a9c73b687cde56ff1c381e3c67168fd2c0366830be3c65382c5bbd792";
};
/// @brief Encode every field of complete geometry_msgs/msg/TransformStamped.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Geometry_msgsMsgTransformStamped(value: *Ros2Geometry_msgsMsgTransformStamped, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete geometry_msgs/msg/TransformStamped.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Geometry_msgsMsgTransformStamped(bytes: []const u8) wire.Error!Ros2Geometry_msgsMsgTransformStamped {
    return wire.decode(Ros2Geometry_msgsMsgTransformStamped, bytes);
}

/// @brief Complete industrial_msgs/msg/DebugLevel value.
/// @details Retain all 1 original fields and 6 constants. Canonical extent 1..1 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Industrial_msgsMsgDebugLevel = struct {
    /// @brief Original industrial_msgs/msg/DebugLevel.val field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_val: u8 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 1;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 1;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_989475cc5d981d8c5ab91fb091235871f7a1c7d87d246eb2250086e6c3c37c79";
    /// @brief Original industrial_msgs/msg/DebugLevel.DEBUG constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_DEBUG: u8 = 5;
    /// @brief Original industrial_msgs/msg/DebugLevel.INFO constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INFO: u8 = 4;
    /// @brief Original industrial_msgs/msg/DebugLevel.WARN constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_WARN: u8 = 3;
    /// @brief Original industrial_msgs/msg/DebugLevel.ERROR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ERROR: u8 = 2;
    /// @brief Original industrial_msgs/msg/DebugLevel.FATAL constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_FATAL: u8 = 1;
    /// @brief Original industrial_msgs/msg/DebugLevel.NONE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NONE: u8 = 0;
};
/// @brief Encode every field of complete industrial_msgs/msg/DebugLevel.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Industrial_msgsMsgDebugLevel(value: *Ros2Industrial_msgsMsgDebugLevel, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete industrial_msgs/msg/DebugLevel.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Industrial_msgsMsgDebugLevel(bytes: []const u8) wire.Error!Ros2Industrial_msgsMsgDebugLevel {
    return wire.decode(Ros2Industrial_msgsMsgDebugLevel, bytes);
}

/// @brief Complete industrial_msgs/msg/DeviceInfo value.
/// @details Retain all 5 original fields and 0 constants. Canonical extent 20..2580 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Industrial_msgsMsgDeviceInfo = struct {
    /// @brief Original industrial_msgs/msg/DeviceInfo.model field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_model: wire.Text(512, false) = .{},
    /// @brief Original industrial_msgs/msg/DeviceInfo.serial_number field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_serial_number: wire.Text(512, false) = .{},
    /// @brief Original industrial_msgs/msg/DeviceInfo.hw_version field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_hw_version: wire.Text(512, false) = .{},
    /// @brief Original industrial_msgs/msg/DeviceInfo.sw_version field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_sw_version: wire.Text(512, false) = .{},
    /// @brief Original industrial_msgs/msg/DeviceInfo.address field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_address: wire.Text(512, false) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 20;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 2580;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_f9a5962800e17495f34dbb73f37373df22f900e528c630497417f78cdecb283b";
};
/// @brief Encode every field of complete industrial_msgs/msg/DeviceInfo.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Industrial_msgsMsgDeviceInfo(value: *Ros2Industrial_msgsMsgDeviceInfo, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete industrial_msgs/msg/DeviceInfo.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Industrial_msgsMsgDeviceInfo(bytes: []const u8) wire.Error!Ros2Industrial_msgsMsgDeviceInfo {
    return wire.decode(Ros2Industrial_msgsMsgDeviceInfo, bytes);
}

/// @brief Complete industrial_msgs/msg/RobotMode value.
/// @details Retain all 1 original fields and 3 constants. Canonical extent 1..1 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Industrial_msgsMsgRobotMode = struct {
    /// @brief Original industrial_msgs/msg/RobotMode.val field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_val: i8 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 1;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 1;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_4f9173c5e27815ca33be603b8645a22420bda3ab308962127060d2413d092c4c";
    /// @brief Original industrial_msgs/msg/RobotMode.UNKNOWN constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_UNKNOWN: i8 = -1;
    /// @brief Original industrial_msgs/msg/RobotMode.MANUAL constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_MANUAL: i8 = 1;
    /// @brief Original industrial_msgs/msg/RobotMode.AUTO constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_AUTO: i8 = 2;
};
/// @brief Encode every field of complete industrial_msgs/msg/RobotMode.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Industrial_msgsMsgRobotMode(value: *Ros2Industrial_msgsMsgRobotMode, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete industrial_msgs/msg/RobotMode.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Industrial_msgsMsgRobotMode(bytes: []const u8) wire.Error!Ros2Industrial_msgsMsgRobotMode {
    return wire.decode(Ros2Industrial_msgsMsgRobotMode, bytes);
}

/// @brief Complete industrial_msgs/msg/TriState value.
/// @details Retain all 1 original fields and 11 constants. Canonical extent 1..1 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Industrial_msgsMsgTriState = struct {
    /// @brief Original industrial_msgs/msg/TriState.val field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_val: i8 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 1;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 1;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_b7ae62ce19d642ad46e962ffb50cd76c43c96ac673ac36d690f99c1dd8d2a841";
    /// @brief Original industrial_msgs/msg/TriState.UNKNOWN constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_UNKNOWN: i8 = -1;
    /// @brief Original industrial_msgs/msg/TriState.TRUE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_TRUE: i8 = 1;
    /// @brief Original industrial_msgs/msg/TriState.ON constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ON: i8 = 1;
    /// @brief Original industrial_msgs/msg/TriState.ENABLED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ENABLED: i8 = 1;
    /// @brief Original industrial_msgs/msg/TriState.HIGH constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_HIGH: i8 = 1;
    /// @brief Original industrial_msgs/msg/TriState.CLOSED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CLOSED: i8 = 1;
    /// @brief Original industrial_msgs/msg/TriState.FALSE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_FALSE: i8 = 0;
    /// @brief Original industrial_msgs/msg/TriState.OFF constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_OFF: i8 = 0;
    /// @brief Original industrial_msgs/msg/TriState.DISABLED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_DISABLED: i8 = 0;
    /// @brief Original industrial_msgs/msg/TriState.LOW constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_LOW: i8 = 0;
    /// @brief Original industrial_msgs/msg/TriState.OPEN constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_OPEN: i8 = 0;
};
/// @brief Encode every field of complete industrial_msgs/msg/TriState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Industrial_msgsMsgTriState(value: *Ros2Industrial_msgsMsgTriState, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete industrial_msgs/msg/TriState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Industrial_msgsMsgTriState(bytes: []const u8) wire.Error!Ros2Industrial_msgsMsgTriState {
    return wire.decode(Ros2Industrial_msgsMsgTriState, bytes);
}

/// @brief Complete industrial_msgs/msg/RobotStatus value.
/// @details Retain all 8 original fields and 0 constants. Canonical extent 22..150 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Industrial_msgsMsgRobotStatus = struct {
    /// @brief Original industrial_msgs/msg/RobotStatus.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader = .{},
    /// @brief Original industrial_msgs/msg/RobotStatus.mode field.
    /// @details Original type industrial_msgs/msg/RobotMode. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_mode: Ros2Industrial_msgsMsgRobotMode = .{},
    /// @brief Original industrial_msgs/msg/RobotStatus.e_stopped field.
    /// @details Original type industrial_msgs/msg/TriState. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_e_stopped: Ros2Industrial_msgsMsgTriState = .{},
    /// @brief Original industrial_msgs/msg/RobotStatus.drives_powered field.
    /// @details Original type industrial_msgs/msg/TriState. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_drives_powered: Ros2Industrial_msgsMsgTriState = .{},
    /// @brief Original industrial_msgs/msg/RobotStatus.motion_possible field.
    /// @details Original type industrial_msgs/msg/TriState. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_motion_possible: Ros2Industrial_msgsMsgTriState = .{},
    /// @brief Original industrial_msgs/msg/RobotStatus.in_motion field.
    /// @details Original type industrial_msgs/msg/TriState. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_in_motion: Ros2Industrial_msgsMsgTriState = .{},
    /// @brief Original industrial_msgs/msg/RobotStatus.in_error field.
    /// @details Original type industrial_msgs/msg/TriState. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_in_error: Ros2Industrial_msgsMsgTriState = .{},
    /// @brief Original industrial_msgs/msg/RobotStatus.error_codes field.
    /// @details Original type int32. Shape sequence; bound/count 16 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_error_codes: wire.Sequence(i32, 16) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 22;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 150;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_1086f16ba5d614f3d87c3ab195240b5a0683ef490f2e92434e4ea3bdbe7554ba";
};
/// @brief Encode every field of complete industrial_msgs/msg/RobotStatus.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Industrial_msgsMsgRobotStatus(value: *Ros2Industrial_msgsMsgRobotStatus, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete industrial_msgs/msg/RobotStatus.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Industrial_msgsMsgRobotStatus(bytes: []const u8) wire.Error!Ros2Industrial_msgsMsgRobotStatus {
    return wire.decode(Ros2Industrial_msgsMsgRobotStatus, bytes);
}

/// @brief Complete industrial_msgs/msg/ServiceReturnCode value.
/// @details Retain all 1 original fields and 2 constants. Canonical extent 1..1 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Industrial_msgsMsgServiceReturnCode = struct {
    /// @brief Original industrial_msgs/msg/ServiceReturnCode.val field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_val: i8 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 1;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 1;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_62eb4415a63d7686f16ea343193238838c78aa8e9b9786a65c92fb227e03d3e5";
    /// @brief Original industrial_msgs/msg/ServiceReturnCode.SUCCESS constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_SUCCESS: i8 = 1;
    /// @brief Original industrial_msgs/msg/ServiceReturnCode.FAILURE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_FAILURE: i8 = -1;
};
/// @brief Encode every field of complete industrial_msgs/msg/ServiceReturnCode.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Industrial_msgsMsgServiceReturnCode(value: *Ros2Industrial_msgsMsgServiceReturnCode, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete industrial_msgs/msg/ServiceReturnCode.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Industrial_msgsMsgServiceReturnCode(bytes: []const u8) wire.Error!Ros2Industrial_msgsMsgServiceReturnCode {
    return wire.decode(Ros2Industrial_msgsMsgServiceReturnCode, bytes);
}

/// @brief Complete industrial_msgs/srv/CmdJointTrajectory_Request value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 20..4164 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Industrial_msgsSrvCmdJointTrajectory_Request = struct {
    /// @brief Original industrial_msgs/srv/CmdJointTrajectory_Request.trajectory field.
    /// @details Original type trajectory_msgs/msg/JointTrajectory. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_trajectory: Ros2Trajectory_msgsMsgJointTrajectory = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 20;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 4164;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_1def3934b243546a4591b7be1ef2eb27002fbd9d3725302016e3b1846805149d";
};
/// @brief Encode every field of complete industrial_msgs/srv/CmdJointTrajectory_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Industrial_msgsSrvCmdJointTrajectory_Request(value: *Ros2Industrial_msgsSrvCmdJointTrajectory_Request, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete industrial_msgs/srv/CmdJointTrajectory_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Industrial_msgsSrvCmdJointTrajectory_Request(bytes: []const u8) wire.Error!Ros2Industrial_msgsSrvCmdJointTrajectory_Request {
    return wire.decode(Ros2Industrial_msgsSrvCmdJointTrajectory_Request, bytes);
}

/// @brief Complete industrial_msgs/srv/CmdJointTrajectory_Response value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 1..1 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Industrial_msgsSrvCmdJointTrajectory_Response = struct {
    /// @brief Original industrial_msgs/srv/CmdJointTrajectory_Response.code field.
    /// @details Original type industrial_msgs/msg/ServiceReturnCode. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_code: Ros2Industrial_msgsMsgServiceReturnCode = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 1;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 1;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_1e4d064ef659e5d1cc73bdd90f82657a16087c96e0f75b632e2be2be884bca8b";
};
/// @brief Encode every field of complete industrial_msgs/srv/CmdJointTrajectory_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Industrial_msgsSrvCmdJointTrajectory_Response(value: *Ros2Industrial_msgsSrvCmdJointTrajectory_Response, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete industrial_msgs/srv/CmdJointTrajectory_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Industrial_msgsSrvCmdJointTrajectory_Response(bytes: []const u8) wire.Error!Ros2Industrial_msgsSrvCmdJointTrajectory_Response {
    return wire.decode(Ros2Industrial_msgsSrvCmdJointTrajectory_Response, bytes);
}

/// @brief Complete industrial_msgs/srv/GetRobotInfo_Request value.
/// @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Industrial_msgsSrvGetRobotInfo_Request = struct {
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 0;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 0;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_688a272f6ee39921013c6c39a7b0b0c4e2cda5119787088234103518ba25c1d2";
};
/// @brief Encode every field of complete industrial_msgs/srv/GetRobotInfo_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Industrial_msgsSrvGetRobotInfo_Request(value: *Ros2Industrial_msgsSrvGetRobotInfo_Request, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete industrial_msgs/srv/GetRobotInfo_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Industrial_msgsSrvGetRobotInfo_Request(bytes: []const u8) wire.Error!Ros2Industrial_msgsSrvGetRobotInfo_Request {
    return wire.decode(Ros2Industrial_msgsSrvGetRobotInfo_Request, bytes);
}

/// @brief Complete industrial_msgs/srv/GetRobotInfo_Response value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 25..32768 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Industrial_msgsSrvGetRobotInfo_Response = struct {
    /// @brief Original industrial_msgs/srv/GetRobotInfo_Response.controller field.
    /// @details Original type industrial_msgs/msg/DeviceInfo. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_controller: Ros2Industrial_msgsMsgDeviceInfo = .{},
    /// @brief Original industrial_msgs/srv/GetRobotInfo_Response.robots field.
    /// @details Original type industrial_msgs/msg/DeviceInfo. Shape sequence; bound/count 16
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_robots: wire.Sequence(Ros2Industrial_msgsMsgDeviceInfo, 16) = .{},
    /// @brief Original industrial_msgs/srv/GetRobotInfo_Response.code field.
    /// @details Original type industrial_msgs/msg/ServiceReturnCode. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_code: Ros2Industrial_msgsMsgServiceReturnCode = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 25;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 32768;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_6d37cdcd8afc918329d7856e682d7fcdae2931832474a9194143c21079ed4152";
};
/// @brief Encode every field of complete industrial_msgs/srv/GetRobotInfo_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Industrial_msgsSrvGetRobotInfo_Response(value: *Ros2Industrial_msgsSrvGetRobotInfo_Response, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete industrial_msgs/srv/GetRobotInfo_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Industrial_msgsSrvGetRobotInfo_Response(bytes: []const u8) wire.Error!Ros2Industrial_msgsSrvGetRobotInfo_Response {
    return wire.decode(Ros2Industrial_msgsSrvGetRobotInfo_Response, bytes);
}

/// @brief Complete industrial_msgs/srv/SetDrivePower_Request value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 1..1 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Industrial_msgsSrvSetDrivePower_Request = struct {
    /// @brief Original industrial_msgs/srv/SetDrivePower_Request.drive_power field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_drive_power: bool = false,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 1;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 1;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_b4fc5e109e131a97820ab5856b34839c572ac0b0c256d70457c176e401844f96";
};
/// @brief Encode every field of complete industrial_msgs/srv/SetDrivePower_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Industrial_msgsSrvSetDrivePower_Request(value: *Ros2Industrial_msgsSrvSetDrivePower_Request, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete industrial_msgs/srv/SetDrivePower_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Industrial_msgsSrvSetDrivePower_Request(bytes: []const u8) wire.Error!Ros2Industrial_msgsSrvSetDrivePower_Request {
    return wire.decode(Ros2Industrial_msgsSrvSetDrivePower_Request, bytes);
}

/// @brief Complete industrial_msgs/srv/SetDrivePower_Response value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 1..1 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Industrial_msgsSrvSetDrivePower_Response = struct {
    /// @brief Original industrial_msgs/srv/SetDrivePower_Response.code field.
    /// @details Original type industrial_msgs/msg/ServiceReturnCode. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_code: Ros2Industrial_msgsMsgServiceReturnCode = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 1;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 1;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_050fb9a727ebedd240e9023b9a2379a5d72e0d9fa335bead0c40d783abb22cff";
};
/// @brief Encode every field of complete industrial_msgs/srv/SetDrivePower_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Industrial_msgsSrvSetDrivePower_Response(value: *Ros2Industrial_msgsSrvSetDrivePower_Response, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete industrial_msgs/srv/SetDrivePower_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Industrial_msgsSrvSetDrivePower_Response(bytes: []const u8) wire.Error!Ros2Industrial_msgsSrvSetDrivePower_Response {
    return wire.decode(Ros2Industrial_msgsSrvSetDrivePower_Response, bytes);
}

/// @brief Complete industrial_msgs/srv/SetRemoteLoggerLevel_Request value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 1..1 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request = struct {
    /// @brief Original industrial_msgs/srv/SetRemoteLoggerLevel_Request.level field.
    /// @details Original type industrial_msgs/msg/DebugLevel. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_level: Ros2Industrial_msgsMsgDebugLevel = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 1;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 1;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_bbadd39c05cab90b14f4b1fad23ff05ac83325f6cc57810cd649e04fa29fe014";
};
/// @brief Encode every field of complete industrial_msgs/srv/SetRemoteLoggerLevel_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Industrial_msgsSrvSetRemoteLoggerLevel_Request(value: *Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete industrial_msgs/srv/SetRemoteLoggerLevel_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Industrial_msgsSrvSetRemoteLoggerLevel_Request(bytes: []const u8) wire.Error!Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request {
    return wire.decode(Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request, bytes);
}

/// @brief Complete industrial_msgs/srv/SetRemoteLoggerLevel_Response value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 1..1 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response = struct {
    /// @brief Original industrial_msgs/srv/SetRemoteLoggerLevel_Response.code field.
    /// @details Original type industrial_msgs/msg/ServiceReturnCode. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_code: Ros2Industrial_msgsMsgServiceReturnCode = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 1;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 1;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_b8681d031a4bb5a67b842277af2e2156e8339bdef23be88d2b64e296a7e3d63b";
};
/// @brief Encode every field of complete industrial_msgs/srv/SetRemoteLoggerLevel_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Industrial_msgsSrvSetRemoteLoggerLevel_Response(value: *Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete industrial_msgs/srv/SetRemoteLoggerLevel_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Industrial_msgsSrvSetRemoteLoggerLevel_Response(bytes: []const u8) wire.Error!Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response {
    return wire.decode(Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response, bytes);
}

/// @brief Complete industrial_msgs/srv/StartMotion_Request value.
/// @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Industrial_msgsSrvStartMotion_Request = struct {
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 0;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 0;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_0a96fb9489f863612a91bf82f995f2f28bcb7fb403bde74c617925c789e4dcd8";
};
/// @brief Encode every field of complete industrial_msgs/srv/StartMotion_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Industrial_msgsSrvStartMotion_Request(value: *Ros2Industrial_msgsSrvStartMotion_Request, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete industrial_msgs/srv/StartMotion_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Industrial_msgsSrvStartMotion_Request(bytes: []const u8) wire.Error!Ros2Industrial_msgsSrvStartMotion_Request {
    return wire.decode(Ros2Industrial_msgsSrvStartMotion_Request, bytes);
}

/// @brief Complete industrial_msgs/srv/StartMotion_Response value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 1..1 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Industrial_msgsSrvStartMotion_Response = struct {
    /// @brief Original industrial_msgs/srv/StartMotion_Response.code field.
    /// @details Original type industrial_msgs/msg/ServiceReturnCode. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_code: Ros2Industrial_msgsMsgServiceReturnCode = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 1;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 1;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_3bb3650fbe638a6d300bcd9fcd5acf574bd54d00a7368edd3014bf44dcf66c16";
};
/// @brief Encode every field of complete industrial_msgs/srv/StartMotion_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Industrial_msgsSrvStartMotion_Response(value: *Ros2Industrial_msgsSrvStartMotion_Response, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete industrial_msgs/srv/StartMotion_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Industrial_msgsSrvStartMotion_Response(bytes: []const u8) wire.Error!Ros2Industrial_msgsSrvStartMotion_Response {
    return wire.decode(Ros2Industrial_msgsSrvStartMotion_Response, bytes);
}

/// @brief Complete industrial_msgs/srv/StopMotion_Request value.
/// @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Industrial_msgsSrvStopMotion_Request = struct {
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 0;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 0;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_fe5a7cf0da30270eab5cfb1ab8c1fbd37d2b4c4f91ef29662a0ddcac39e6ef49";
};
/// @brief Encode every field of complete industrial_msgs/srv/StopMotion_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Industrial_msgsSrvStopMotion_Request(value: *Ros2Industrial_msgsSrvStopMotion_Request, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete industrial_msgs/srv/StopMotion_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Industrial_msgsSrvStopMotion_Request(bytes: []const u8) wire.Error!Ros2Industrial_msgsSrvStopMotion_Request {
    return wire.decode(Ros2Industrial_msgsSrvStopMotion_Request, bytes);
}

/// @brief Complete industrial_msgs/srv/StopMotion_Response value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 1..1 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Industrial_msgsSrvStopMotion_Response = struct {
    /// @brief Original industrial_msgs/srv/StopMotion_Response.code field.
    /// @details Original type industrial_msgs/msg/ServiceReturnCode. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_code: Ros2Industrial_msgsMsgServiceReturnCode = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 1;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 1;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_c26bda240d86becc5b8b4ea80380eba3602092a5ec4a06818dbfbd38c24015b5";
};
/// @brief Encode every field of complete industrial_msgs/srv/StopMotion_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Industrial_msgsSrvStopMotion_Response(value: *Ros2Industrial_msgsSrvStopMotion_Response, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete industrial_msgs/srv/StopMotion_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Industrial_msgsSrvStopMotion_Response(bytes: []const u8) wire.Error!Ros2Industrial_msgsSrvStopMotion_Response {
    return wire.decode(Ros2Industrial_msgsSrvStopMotion_Response, bytes);
}

/// @brief Complete motoros2_interfaces/msg/AlarmCauseRemedy value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..1032 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesMsgAlarmCauseRemedy = struct {
    /// @brief Original motoros2_interfaces/msg/AlarmCauseRemedy.cause field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_cause: wire.Text(512, false) = .{},
    /// @brief Original motoros2_interfaces/msg/AlarmCauseRemedy.remedy field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_remedy: wire.Text(512, false) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 8;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 1032;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_f977609022f4ca593b9089d0038d1c28d1bc4b533e272f38c3379495f326ddf5";
};
/// @brief Encode every field of complete motoros2_interfaces/msg/AlarmCauseRemedy.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesMsgAlarmCauseRemedy(value: *Ros2Motoros2_interfacesMsgAlarmCauseRemedy, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/msg/AlarmCauseRemedy.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesMsgAlarmCauseRemedy(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesMsgAlarmCauseRemedy {
    return wire.decode(Ros2Motoros2_interfacesMsgAlarmCauseRemedy, bytes);
}

/// @brief Complete motoros2_interfaces/msg/AlarmInfo value.
/// @details Retain all 7 original fields and 0 constants. Canonical extent 32..25248 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesMsgAlarmInfo = struct {
    /// @brief Original motoros2_interfaces/msg/AlarmInfo.number field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_number: u32 = 0,
    /// @brief Original motoros2_interfaces/msg/AlarmInfo.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false) = .{},
    /// @brief Original motoros2_interfaces/msg/AlarmInfo.sub_code field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_sub_code: i32 = 0,
    /// @brief Original motoros2_interfaces/msg/AlarmInfo.datetime field.
    /// @details Original type builtin_interfaces/msg/Time. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_datetime: Ros2Builtin_interfacesMsgTime = .{},
    /// @brief Original motoros2_interfaces/msg/AlarmInfo.contents field.
    /// @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_contents: wire.Text(4096, false) = .{},
    /// @brief Original motoros2_interfaces/msg/AlarmInfo.description field.
    /// @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_description: wire.Text(4096, false) = .{},
    /// @brief Original motoros2_interfaces/msg/AlarmInfo.help field.
    /// @details Original type motoros2_interfaces/msg/AlarmCauseRemedy. Shape sequence; bound/count
    /// 16 elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_help: wire.Sequence(Ros2Motoros2_interfacesMsgAlarmCauseRemedy, 16) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 32;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 25248;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_7cf3fa3037f28f295dd62009e708ea3e46a80f83471d0a0f9fb55af125c0c27f";
};
/// @brief Encode every field of complete motoros2_interfaces/msg/AlarmInfo.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesMsgAlarmInfo(value: *Ros2Motoros2_interfacesMsgAlarmInfo, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/msg/AlarmInfo.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesMsgAlarmInfo(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesMsgAlarmInfo {
    return wire.decode(Ros2Motoros2_interfacesMsgAlarmInfo, bytes);
}

/// @brief Complete motoros2_interfaces/msg/ErrorInfo value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 20..532 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesMsgErrorInfo = struct {
    /// @brief Original motoros2_interfaces/msg/ErrorInfo.number field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_number: u32 = 0,
    /// @brief Original motoros2_interfaces/msg/ErrorInfo.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false) = .{},
    /// @brief Original motoros2_interfaces/msg/ErrorInfo.sub_code field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_sub_code: i32 = 0,
    /// @brief Original motoros2_interfaces/msg/ErrorInfo.datetime field.
    /// @details Original type builtin_interfaces/msg/Time. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_datetime: Ros2Builtin_interfacesMsgTime = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 20;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 532;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_1cfe60c0af6bc157db84c4d9e0b20a8f2e5c78fd4afd6908d32b3217f3734b67";
};
/// @brief Encode every field of complete motoros2_interfaces/msg/ErrorInfo.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesMsgErrorInfo(value: *Ros2Motoros2_interfacesMsgErrorInfo, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/msg/ErrorInfo.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesMsgErrorInfo(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesMsgErrorInfo {
    return wire.decode(Ros2Motoros2_interfacesMsgErrorInfo, bytes);
}

/// @brief Complete motoros2_interfaces/msg/InformJobCrudResultCodes value.
/// @details Retain all 0 original fields and 12 constants. Canonical extent 0..0 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesMsgInformJobCrudResultCodes = struct {
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 0;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 0;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_f5ed037b83926b48a88fa486ed8db5f5d3e39e4a486d4a90190ffd6a70452613";
    /// @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.RC_OK constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_RC_OK: u32 = 1;
    /// @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.STR_OK constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_STR_OK: []const u8 = "Success";
    /// @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_REFRESHING_JOB_LIST
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_RC_ERR_REFRESHING_JOB_LIST: u32 = 10;
    /// @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_REFRESHING_JOB_LIST
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_STR_ERR_REFRESHING_JOB_LIST: []const u8 = "Error refreshing job list";
    /// @brief Original
    /// motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_RETRIEVING_FILE_COUNT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_RC_ERR_RETRIEVING_FILE_COUNT: u32 = 11;
    /// @brief Original
    /// motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_RETRIEVING_FILE_COUNT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_STR_ERR_RETRIEVING_FILE_COUNT: []const u8 = "Error retrieving file count";
    /// @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_TOO_MANY_JOBS
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_RC_ERR_TOO_MANY_JOBS: u32 = 12;
    /// @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_TOO_MANY_JOBS
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_STR_ERR_TOO_MANY_JOBS: []const u8 = "Too many jobs";
    /// @brief Original
    /// motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_RETRIEVING_JOB_NAME_FROM_LIST
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_RC_ERR_RETRIEVING_JOB_NAME_FROM_LIST: u32 = 13;
    /// @brief Original
    /// motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_RETRIEVING_JOB_NAME_FROM_LIST
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_STR_ERR_RETRIEVING_JOB_NAME_FROM_LIST: []const u8 = "Failed retrieving job name from list";
    /// @brief Original
    /// motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_RC_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE: u32 = 14;
    /// @brief Original
    /// motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_STR_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE: []const u8 = "Error adding job name to service response";
};
/// @brief Encode every field of complete motoros2_interfaces/msg/InformJobCrudResultCodes.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesMsgInformJobCrudResultCodes(value: *Ros2Motoros2_interfacesMsgInformJobCrudResultCodes, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/msg/InformJobCrudResultCodes.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesMsgInformJobCrudResultCodes(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesMsgInformJobCrudResultCodes {
    return wire.decode(Ros2Motoros2_interfacesMsgInformJobCrudResultCodes, bytes);
}

/// @brief Complete motoros2_interfaces/msg/InitTrajEnum value.
/// @details Retain all 1 original fields and 34 constants. Canonical extent 2..2 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesMsgInitTrajEnum = struct {
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.value field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: u16 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 2;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 2;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_9279979f9e3570f48d6e23bf812a4680e3deed9af3309019efdff5464d7b7763";
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_OK constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_OK: u16 = 0;
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_OK_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_OK_STR: []const u8 = "OK";
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_UNSPECIFIED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_UNSPECIFIED: u16 = 200;
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_UNSPECIFIED_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_UNSPECIFIED_STR: []const u8 = "Unspecified failure";
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_TOO_SMALL constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_TOO_SMALL: u16 = 201;
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_TOO_SMALL_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_TOO_SMALL_STR: []const u8 = "Trajectory must contain at least two points.";
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_TOO_BIG constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_TOO_BIG: u16 = 202;
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_TOO_BIG_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_TOO_BIG_STR: []const u8 = "Trajectory contains too many points (Not enough memory).";
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_ALREADY_IN_MOTION constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_ALREADY_IN_MOTION: u16 = 203;
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_ALREADY_IN_MOTION_STR
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_ALREADY_IN_MOTION_STR: []const u8 = "Already running a trajectory.";
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_STARTING_POS
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_INVALID_STARTING_POS: u16 = 204;
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_STARTING_POS_STR
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_INVALID_STARTING_POS_STR: []const u8 = "The first point must match the robot's current position.";
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_VELOCITY constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_INVALID_VELOCITY: u16 = 205;
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_VELOCITY_STR
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_INVALID_VELOCITY_STR: []const u8 = "The commanded velocity is too high.";
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_JOINTNAME constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_INVALID_JOINTNAME: u16 = 206;
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_JOINTNAME_STR
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_INVALID_JOINTNAME_STR: []const u8 = "Invalid joint name specified. Check motoros2_config.yaml.";
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INCOMPLETE_JOINTLIST
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_INCOMPLETE_JOINTLIST: u16 = 207;
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INCOMPLETE_JOINTLIST_STR
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_INCOMPLETE_JOINTLIST_STR: []const u8 = "Trajectory must contain data for all joints.";
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_TIME constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_INVALID_TIME: u16 = 208;
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_TIME_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_INVALID_TIME_STR: []const u8 = "Invalid time in trajectory.";
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_MODE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_WRONG_MODE: u16 = 209;
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_MODE_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_WRONG_MODE_STR: []const u8 = "Must call start_traj_mode service";
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_BACKWARD_TIME constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_BACKWARD_TIME: u16 = 210;
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_BACKWARD_TIME_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_BACKWARD_TIME_STR: []const u8 = "Trajectory message contains waypoints that are not strictly increasing in time.";
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS: u16 = 211;
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS_STR
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS_STR: []const u8 = "Trajectory did not contain position data for all axes.";
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES: u16 = 212;
    /// @brief Original
    /// motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES_STR: []const u8 = "Trajectory did not contain velocity data for all axes.";
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_ENDING_VELOCITY
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_INVALID_ENDING_VELOCITY: u16 = 213;
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_ENDING_VELOCITY_STR
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_INVALID_ENDING_VELOCITY_STR: []const u8 = "The final point in the trajectory must have zero velocity.";
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_ENDING_ACCELERATION
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_INVALID_ENDING_ACCELERATION: u16 = 214;
    /// @brief Original
    /// motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_ENDING_ACCELERATION_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_INVALID_ENDING_ACCELERATION_STR: []const u8 = "The final point in the trajectory must have zero acceleration.";
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_DUPLICATE_JOINT_NAME
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_DUPLICATE_JOINT_NAME: u16 = 215;
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_DUPLICATE_JOINT_NAME_STR
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_TRAJ_DUPLICATE_JOINT_NAME_STR: []const u8 = "The trajectory contains duplicate joint names.";
};
/// @brief Encode every field of complete motoros2_interfaces/msg/InitTrajEnum.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesMsgInitTrajEnum(value: *Ros2Motoros2_interfacesMsgInitTrajEnum, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/msg/InitTrajEnum.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesMsgInitTrajEnum(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesMsgInitTrajEnum {
    return wire.decode(Ros2Motoros2_interfacesMsgInitTrajEnum, bytes);
}

/// @brief Complete motoros2_interfaces/msg/IoResultCodes value.
/// @details Retain all 0 original fields and 13 constants. Canonical extent 0..0 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesMsgIoResultCodes = struct {
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 0;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 0;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_ef9ab829ae79d4e58336a56259b6beb2ad26a8b1b4070013d9004ac4ab269915";
    /// @brief Original motoros2_interfaces/msg/IoResultCodes.OK constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_OK: u32 = 0;
    /// @brief Original motoros2_interfaces/msg/IoResultCodes.OK_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_OK_STR: []const u8 = "Success";
    /// @brief Original motoros2_interfaces/msg/IoResultCodes.READ_ADDRESS_INVALID constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_READ_ADDRESS_INVALID: u32 = 1001;
    /// @brief Original motoros2_interfaces/msg/IoResultCodes.READ_ADDRESS_INVALID_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_READ_ADDRESS_INVALID_STR: []const u8 = "Address cannot be read from (out of readable range)";
    /// @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_ADDRESS_INVALID constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_WRITE_ADDRESS_INVALID: u32 = 1002;
    /// @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_ADDRESS_INVALID_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_WRITE_ADDRESS_INVALID_STR: []const u8 = "Address cannot be written to (out of writable range)";
    /// @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_VALUE_INVALID constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_WRITE_VALUE_INVALID: u32 = 1003;
    /// @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_VALUE_INVALID_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_WRITE_VALUE_INVALID_STR: []const u8 = "Illegal value for the type of IO element addressed";
    /// @brief Original motoros2_interfaces/msg/IoResultCodes.READ_API_ERROR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_READ_API_ERROR: u32 = 1004;
    /// @brief Original motoros2_interfaces/msg/IoResultCodes.READ_API_ERROR_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_READ_API_ERROR_STR: []const u8 = "The MotoPlus function mpReadIO returned -1. No further information is available";
    /// @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_API_ERROR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_WRITE_API_ERROR: u32 = 1005;
    /// @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_API_ERROR_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_WRITE_API_ERROR_STR: []const u8 = "The MotoPlus function mpWriteIO returned -1. No further information is available";
    /// @brief Original motoros2_interfaces/msg/IoResultCodes.UNKNOWN_API_ERROR_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_UNKNOWN_API_ERROR_STR: []const u8 = "Unknown error accessing I/O. No further information is available";
};
/// @brief Encode every field of complete motoros2_interfaces/msg/IoResultCodes.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesMsgIoResultCodes(value: *Ros2Motoros2_interfacesMsgIoResultCodes, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/msg/IoResultCodes.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesMsgIoResultCodes(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesMsgIoResultCodes {
    return wire.decode(Ros2Motoros2_interfacesMsgIoResultCodes, bytes);
}

/// @brief Complete motoros2_interfaces/msg/MotionReadyEnum value.
/// @details Retain all 1 original fields and 38 constants. Canonical extent 2..2 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesMsgMotionReadyEnum = struct {
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.value field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: u16 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 2;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 2;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_c8d4c2b0eba665e01cddc730421a3a42c5b344f4de35ae0a32204891603326d6";
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.READY constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_READY: u16 = 1;
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.READY_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_READY_STR: []const u8 = "Ready";
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_UNSPECIFIED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_UNSPECIFIED: u16 = 100;
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_UNSPECIFIED_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_UNSPECIFIED_STR: []const u8 = "Unspecified";
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ALARM constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_ALARM: u16 = 101;
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ALARM_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_ALARM_STR: []const u8 = "The controller has an active Alarm";
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ERROR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_ERROR: u16 = 102;
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ERROR_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_ERROR_STR: []const u8 = "The controller has an active Error";
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ESTOP constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_ESTOP: u16 = 103;
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ESTOP_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_ESTOP_STR: []const u8 = "The controller is in E-Stop";
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_PLAY constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_NOT_PLAY: u16 = 104;
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_PLAY_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_NOT_PLAY_STR: []const u8 = "The teach pendant must not be in TEACH mode";
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_REMOTE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_NOT_REMOTE: u16 = 105;
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_REMOTE_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_NOT_REMOTE_STR: []const u8 = "The teach pendant must be in REMOTE mode";
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_SERVO_OFF constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_SERVO_OFF: u16 = 106;
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_SERVO_OFF_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_SERVO_OFF_STR: []const u8 = "Servo power is OFF. Please call start_traj_mode or start_point_queue_mode service";
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_HOLD constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_HOLD: u16 = 107;
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_HOLD_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_HOLD_STR: []const u8 = "The controller is in HOLD";
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_JOB_NOT_STARTED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_JOB_NOT_STARTED: u16 = 108;
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_JOB_NOT_STARTED_STR
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_JOB_NOT_STARTED_STR: []const u8 = "The INIT_ROS job has not started. Please call start_traj_mode or start_point_queue_mode service";
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_ON_WAIT_CMD constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_NOT_ON_WAIT_CMD: u16 = 109;
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_ON_WAIT_CMD_STR
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_NOT_ON_WAIT_CMD_STR: []const u8 = "INFORM job is not on a WAIT command. Check the format of INIT_ROS";
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_PFL_ACTIVE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_PFL_ACTIVE: u16 = 111;
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_PFL_ACTIVE_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_PFL_ACTIVE_STR: []const u8 = "A PFL event has occurred. Please return the robot to a safe state";
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_INC_MOVE_ERROR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_INC_MOVE_ERROR: u16 = 112;
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_INC_MOVE_ERROR_STR
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_INC_MOVE_ERROR_STR: []const u8 = "The controller is in an error state. Please call reset_error to attempt to clear the error";
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_OTHER_PROGRAM_RUNNING
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_OTHER_PROGRAM_RUNNING: u16 = 113;
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_OTHER_PROGRAM_RUNNING_STR
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_OTHER_PROGRAM_RUNNING_STR: []const u8 = "Controller is running another job";
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_OTHER_TRAJ_MODE_ACTIVE
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_OTHER_TRAJ_MODE_ACTIVE: u16 = 114;
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_OTHER_TRAJ_MODE_ACTIVE_STR
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_OTHER_TRAJ_MODE_ACTIVE_STR: []const u8 = "Another trajectory mode is already active. Please call stop_traj_mode service";
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_CONT_CYCLE_MODE
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_NOT_CONT_CYCLE_MODE: u16 = 115;
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_CONT_CYCLE_MODE_STR
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_NOT_CONT_CYCLE_MODE_STR: []const u8 = "AUTO cycle mode not set. Please set the cycle mode to AUTO";
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_MAJOR_ALARM constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_MAJOR_ALARM: u16 = 116;
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_MAJOR_ALARM_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_MAJOR_ALARM_STR: []const u8 = "Major Alarms can't be reset. Please check the teach pendant";
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ECO_MODE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_ECO_MODE: u16 = 117;
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ECO_MODE_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_ECO_MODE_STR: []const u8 = "Couldn't disable eco mode";
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_SERVO_ON_TIMEOUT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_SERVO_ON_TIMEOUT: u16 = 118;
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_SERVO_ON_TIMEOUT_STR
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_READY_SERVO_ON_TIMEOUT_STR: []const u8 = "Timed out while waiting for servo on";
};
/// @brief Encode every field of complete motoros2_interfaces/msg/MotionReadyEnum.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesMsgMotionReadyEnum(value: *Ros2Motoros2_interfacesMsgMotionReadyEnum, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/msg/MotionReadyEnum.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesMsgMotionReadyEnum(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesMsgMotionReadyEnum {
    return wire.decode(Ros2Motoros2_interfacesMsgMotionReadyEnum, bytes);
}

/// @brief Complete motoros2_interfaces/msg/QueueResultEnum value.
/// @details Retain all 1 original fields and 12 constants. Canonical extent 2..2 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesMsgQueueResultEnum = struct {
    /// @brief Original motoros2_interfaces/msg/QueueResultEnum.value field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: u16 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 2;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 2;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_146c6ce3f275b9e4a81622d73cca3d2298cf9f7bb95a783c0dea6279cb5b4f23";
    /// @brief Original motoros2_interfaces/msg/QueueResultEnum.SUCCESS constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_SUCCESS: u16 = 1;
    /// @brief Original motoros2_interfaces/msg/QueueResultEnum.SUCCESS_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_SUCCESS_STR: []const u8 = "";
    /// @brief Original motoros2_interfaces/msg/QueueResultEnum.WRONG_MODE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_WRONG_MODE: u16 = 2;
    /// @brief Original motoros2_interfaces/msg/QueueResultEnum.WRONG_MODE_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_WRONG_MODE_STR: []const u8 = "Must call start_point_queue_mode service";
    /// @brief Original motoros2_interfaces/msg/QueueResultEnum.INIT_FAILURE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_FAILURE: u16 = 3;
    /// @brief Original motoros2_interfaces/msg/QueueResultEnum.INIT_FAILURE_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INIT_FAILURE_STR: []const u8 = "Failed to initialize the streaming trajectory";
    /// @brief Original motoros2_interfaces/msg/QueueResultEnum.BUSY constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_BUSY: u16 = 4;
    /// @brief Original motoros2_interfaces/msg/QueueResultEnum.BUSY_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_BUSY_STR: []const u8 = "Busy processing the previous trajectory point. Please resend the next point shortly";
    /// @brief Original motoros2_interfaces/msg/QueueResultEnum.INVALID_JOINT_LIST constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INVALID_JOINT_LIST: u16 = 5;
    /// @brief Original motoros2_interfaces/msg/QueueResultEnum.INVALID_JOINT_LIST_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INVALID_JOINT_LIST_STR: []const u8 = "Point must contain data for all joints";
    /// @brief Original motoros2_interfaces/msg/QueueResultEnum.UNABLE_TO_PROCESS_POINT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_UNABLE_TO_PROCESS_POINT: u16 = 6;
    /// @brief Original motoros2_interfaces/msg/QueueResultEnum.UNABLE_TO_PROCESS_POINT_STR
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_UNABLE_TO_PROCESS_POINT_STR: []const u8 = "Error while processing the trajectory point. Check debug log for more details";
};
/// @brief Encode every field of complete motoros2_interfaces/msg/QueueResultEnum.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesMsgQueueResultEnum(value: *Ros2Motoros2_interfacesMsgQueueResultEnum, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/msg/QueueResultEnum.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesMsgQueueResultEnum(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesMsgQueueResultEnum {
    return wire.decode(Ros2Motoros2_interfacesMsgQueueResultEnum, bytes);
}

/// @brief Complete motoros2_interfaces/msg/SelectionResultCodes value.
/// @details Retain all 1 original fields and 8 constants. Canonical extent 4..4 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesMsgSelectionResultCodes = struct {
    /// @brief Original motoros2_interfaces/msg/SelectionResultCodes.value field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: u32 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 4;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_46168b1f851163985e75842d9d795c5715160864a7736e7f92f95818c9435602";
    /// @brief Original motoros2_interfaces/msg/SelectionResultCodes.OK constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_OK: u32 = 0;
    /// @brief Original motoros2_interfaces/msg/SelectionResultCodes.OK_STR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_OK_STR: []const u8 = "";
    /// @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_CONTROLLER_STATE
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INVALID_CONTROLLER_STATE: u32 = 400;
    /// @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_CONTROLLER_STATE_STR
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INVALID_CONTROLLER_STATE_STR: []const u8 = "Pendant is not in REMOTE mode";
    /// @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_CONTROL_GROUP constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INVALID_CONTROL_GROUP: u32 = 401;
    /// @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_CONTROL_GROUP_STR
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INVALID_CONTROL_GROUP_STR: []const u8 = "Invalid control group";
    /// @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_SELECTION_INDEX
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INVALID_SELECTION_INDEX: u32 = 402;
    /// @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_SELECTION_INDEX_STR
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_INVALID_SELECTION_INDEX_STR: []const u8 = "Invalid tool selection";
};
/// @brief Encode every field of complete motoros2_interfaces/msg/SelectionResultCodes.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesMsgSelectionResultCodes(value: *Ros2Motoros2_interfacesMsgSelectionResultCodes, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/msg/SelectionResultCodes.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesMsgSelectionResultCodes(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesMsgSelectionResultCodes {
    return wire.decode(Ros2Motoros2_interfacesMsgSelectionResultCodes, bytes);
}

/// @brief Complete motoros2_interfaces/srv/GetActiveAlarmInfo_Request value.
/// @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request = struct {
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 0;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 0;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_aadcd63f3bc47424c38767afdc1589561e3c90e8aeae9bdceef88b1033d57a7e";
};
/// @brief Encode every field of complete motoros2_interfaces/srv/GetActiveAlarmInfo_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesSrvGetActiveAlarmInfo_Request(value: *Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/srv/GetActiveAlarmInfo_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesSrvGetActiveAlarmInfo_Request(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request {
    return wire.decode(Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request, bytes);
}

/// @brief Complete motoros2_interfaces/srv/GetActiveAlarmInfo_Response value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 16..32768 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response = struct {
    /// @brief Original motoros2_interfaces/srv/GetActiveAlarmInfo_Response.result_code field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u32 = 0,
    /// @brief Original motoros2_interfaces/srv/GetActiveAlarmInfo_Response.result_message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_result_message: wire.Text(512, false) = .{},
    /// @brief Original motoros2_interfaces/srv/GetActiveAlarmInfo_Response.alarms field.
    /// @details Original type motoros2_interfaces/msg/AlarmInfo. Shape sequence; bound/count 16
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_alarms: wire.Sequence(Ros2Motoros2_interfacesMsgAlarmInfo, 16) = .{},
    /// @brief Original motoros2_interfaces/srv/GetActiveAlarmInfo_Response.errors field.
    /// @details Original type motoros2_interfaces/msg/ErrorInfo. Shape sequence; bound/count 16
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_errors: wire.Sequence(Ros2Motoros2_interfacesMsgErrorInfo, 16) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 16;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 32768;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_e11bdbb95b6ded88d035696260c58dad32bcf3604aa4e89dd41c0dab26541567";
};
/// @brief Encode every field of complete motoros2_interfaces/srv/GetActiveAlarmInfo_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesSrvGetActiveAlarmInfo_Response(value: *Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/srv/GetActiveAlarmInfo_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesSrvGetActiveAlarmInfo_Response(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response {
    return wire.decode(Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response, bytes);
}

/// @brief Complete motoros2_interfaces/srv/ListInformJobs_Request value.
/// @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesSrvListInformJobs_Request = struct {
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 0;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 0;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_e77eedadef98d98321b1757b88284022afcdb1ffef52b98820b0c4ba596d643c";
};
/// @brief Encode every field of complete motoros2_interfaces/srv/ListInformJobs_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesSrvListInformJobs_Request(value: *Ros2Motoros2_interfacesSrvListInformJobs_Request, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/srv/ListInformJobs_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesSrvListInformJobs_Request(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesSrvListInformJobs_Request {
    return wire.decode(Ros2Motoros2_interfacesSrvListInformJobs_Request, bytes);
}

/// @brief Complete motoros2_interfaces/srv/ListInformJobs_Response value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 12..8780 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesSrvListInformJobs_Response = struct {
    /// @brief Original motoros2_interfaces/srv/ListInformJobs_Response.result_code field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u32 = 0,
    /// @brief Original motoros2_interfaces/srv/ListInformJobs_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false) = .{},
    /// @brief Original motoros2_interfaces/srv/ListInformJobs_Response.names field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Shape sequence;
    /// bound/count 16 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    field_names: wire.Sequence(wire.Text(512, false), 16) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 12;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 8780;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_49021f0abc00f8df1ef49605a244cb6bba8d8b45ece5365ae35d747d2506eadc";
};
/// @brief Encode every field of complete motoros2_interfaces/srv/ListInformJobs_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesSrvListInformJobs_Response(value: *Ros2Motoros2_interfacesSrvListInformJobs_Response, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/srv/ListInformJobs_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesSrvListInformJobs_Response(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesSrvListInformJobs_Response {
    return wire.decode(Ros2Motoros2_interfacesSrvListInformJobs_Response, bytes);
}

/// @brief Complete motoros2_interfaces/srv/QueueTrajPoint_Request value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 28..1228 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesSrvQueueTrajPoint_Request = struct {
    /// @brief Original motoros2_interfaces/srv/QueueTrajPoint_Request.joint_names field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
    /// bound/count 12 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    field_joint_names: wire.Sequence(wire.Text(64, false), 12) = .{},
    /// @brief Original motoros2_interfaces/srv/QueueTrajPoint_Request.point field.
    /// @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_point: Ros2Trajectory_msgsMsgJointTrajectoryPoint = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 28;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 1228;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_3d37f9981d6abaca33ec0b5378fa3a1ac301791cc9be94d5bdcf4ea6aa81b8d0";
};
/// @brief Encode every field of complete motoros2_interfaces/srv/QueueTrajPoint_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesSrvQueueTrajPoint_Request(value: *Ros2Motoros2_interfacesSrvQueueTrajPoint_Request, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/srv/QueueTrajPoint_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesSrvQueueTrajPoint_Request(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesSrvQueueTrajPoint_Request {
    return wire.decode(Ros2Motoros2_interfacesSrvQueueTrajPoint_Request, bytes);
}

/// @brief Complete motoros2_interfaces/srv/QueueTrajPoint_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesSrvQueueTrajPoint_Response = struct {
    /// @brief Original motoros2_interfaces/srv/QueueTrajPoint_Response.result_code field.
    /// @details Original type motoros2_interfaces/msg/QueueResultEnum. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_result_code: Ros2Motoros2_interfacesMsgQueueResultEnum = .{},
    /// @brief Original motoros2_interfaces/srv/QueueTrajPoint_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 6;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 518;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_d4887ed24d39332a5ccfd4a3d072004dd8f314fe5c166bf0bd57520a826cbccd";
};
/// @brief Encode every field of complete motoros2_interfaces/srv/QueueTrajPoint_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesSrvQueueTrajPoint_Response(value: *Ros2Motoros2_interfacesSrvQueueTrajPoint_Response, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/srv/QueueTrajPoint_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesSrvQueueTrajPoint_Response(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesSrvQueueTrajPoint_Response {
    return wire.decode(Ros2Motoros2_interfacesSrvQueueTrajPoint_Response, bytes);
}

/// @brief Complete motoros2_interfaces/srv/ReadGroupIO_Request value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..4 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesSrvReadGroupIO_Request = struct {
    /// @brief Original motoros2_interfaces/srv/ReadGroupIO_Request.address field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_address: u32 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 4;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_6ee09ac379e169fc23b81a551e9a9ed21c3f82b5010859984e911b17152beb7f";
};
/// @brief Encode every field of complete motoros2_interfaces/srv/ReadGroupIO_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesSrvReadGroupIO_Request(value: *Ros2Motoros2_interfacesSrvReadGroupIO_Request, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/srv/ReadGroupIO_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesSrvReadGroupIO_Request(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesSrvReadGroupIO_Request {
    return wire.decode(Ros2Motoros2_interfacesSrvReadGroupIO_Request, bytes);
}

/// @brief Complete motoros2_interfaces/srv/ReadGroupIO_Response value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 10..522 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesSrvReadGroupIO_Response = struct {
    /// @brief Original motoros2_interfaces/srv/ReadGroupIO_Response.result_code field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u32 = 0,
    /// @brief Original motoros2_interfaces/srv/ReadGroupIO_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false) = .{},
    /// @brief Original motoros2_interfaces/srv/ReadGroupIO_Response.success field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_success: bool = false,
    /// @brief Original motoros2_interfaces/srv/ReadGroupIO_Response.value field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: u8 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 10;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 522;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_292fcf6e8c46a2509ee4cc5238d443157f37fed0de898367248b967e9001ea0d";
};
/// @brief Encode every field of complete motoros2_interfaces/srv/ReadGroupIO_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesSrvReadGroupIO_Response(value: *Ros2Motoros2_interfacesSrvReadGroupIO_Response, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/srv/ReadGroupIO_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesSrvReadGroupIO_Response(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesSrvReadGroupIO_Response {
    return wire.decode(Ros2Motoros2_interfacesSrvReadGroupIO_Response, bytes);
}

/// @brief Complete motoros2_interfaces/srv/ReadMRegister_Request value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..4 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesSrvReadMRegister_Request = struct {
    /// @brief Original motoros2_interfaces/srv/ReadMRegister_Request.address field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_address: u32 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 4;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_f31f0983466054f5ac5dcb2ab80ab7721d606a681b833ebb376cc87f96054f6f";
};
/// @brief Encode every field of complete motoros2_interfaces/srv/ReadMRegister_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesSrvReadMRegister_Request(value: *Ros2Motoros2_interfacesSrvReadMRegister_Request, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/srv/ReadMRegister_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesSrvReadMRegister_Request(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesSrvReadMRegister_Request {
    return wire.decode(Ros2Motoros2_interfacesSrvReadMRegister_Request, bytes);
}

/// @brief Complete motoros2_interfaces/srv/ReadMRegister_Response value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 11..523 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesSrvReadMRegister_Response = struct {
    /// @brief Original motoros2_interfaces/srv/ReadMRegister_Response.result_code field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u32 = 0,
    /// @brief Original motoros2_interfaces/srv/ReadMRegister_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false) = .{},
    /// @brief Original motoros2_interfaces/srv/ReadMRegister_Response.success field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_success: bool = false,
    /// @brief Original motoros2_interfaces/srv/ReadMRegister_Response.value field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: u16 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 11;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 523;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_8d6ded2876adfa2079711205cb0110a82ead6f51db05f266bf285308cd815a04";
};
/// @brief Encode every field of complete motoros2_interfaces/srv/ReadMRegister_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesSrvReadMRegister_Response(value: *Ros2Motoros2_interfacesSrvReadMRegister_Response, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/srv/ReadMRegister_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesSrvReadMRegister_Response(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesSrvReadMRegister_Response {
    return wire.decode(Ros2Motoros2_interfacesSrvReadMRegister_Response, bytes);
}

/// @brief Complete motoros2_interfaces/srv/ReadSingleIO_Request value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..4 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesSrvReadSingleIO_Request = struct {
    /// @brief Original motoros2_interfaces/srv/ReadSingleIO_Request.address field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_address: u32 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 4;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_30e28db303b772f26b2b3cf6165a0ff79037d037d60e8115b4ee8e177f17e8bb";
};
/// @brief Encode every field of complete motoros2_interfaces/srv/ReadSingleIO_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesSrvReadSingleIO_Request(value: *Ros2Motoros2_interfacesSrvReadSingleIO_Request, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/srv/ReadSingleIO_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesSrvReadSingleIO_Request(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesSrvReadSingleIO_Request {
    return wire.decode(Ros2Motoros2_interfacesSrvReadSingleIO_Request, bytes);
}

/// @brief Complete motoros2_interfaces/srv/ReadSingleIO_Response value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 13..525 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesSrvReadSingleIO_Response = struct {
    /// @brief Original motoros2_interfaces/srv/ReadSingleIO_Response.result_code field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u32 = 0,
    /// @brief Original motoros2_interfaces/srv/ReadSingleIO_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false) = .{},
    /// @brief Original motoros2_interfaces/srv/ReadSingleIO_Response.success field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_success: bool = false,
    /// @brief Original motoros2_interfaces/srv/ReadSingleIO_Response.value field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: i32 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 13;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 525;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_b42013571274e85769ffac4d47129de8b76e4a675bdef3efefebc9ee19e92082";
};
/// @brief Encode every field of complete motoros2_interfaces/srv/ReadSingleIO_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesSrvReadSingleIO_Response(value: *Ros2Motoros2_interfacesSrvReadSingleIO_Response, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/srv/ReadSingleIO_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesSrvReadSingleIO_Response(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesSrvReadSingleIO_Response {
    return wire.decode(Ros2Motoros2_interfacesSrvReadSingleIO_Response, bytes);
}

/// @brief Complete motoros2_interfaces/srv/ResetError_Request value.
/// @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesSrvResetError_Request = struct {
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 0;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 0;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_2737855d0608478946e2d9ab7f06c92585199c1082ec8406a012f50ad56beae3";
};
/// @brief Encode every field of complete motoros2_interfaces/srv/ResetError_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesSrvResetError_Request(value: *Ros2Motoros2_interfacesSrvResetError_Request, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/srv/ResetError_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesSrvResetError_Request(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesSrvResetError_Request {
    return wire.decode(Ros2Motoros2_interfacesSrvResetError_Request, bytes);
}

/// @brief Complete motoros2_interfaces/srv/ResetError_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesSrvResetError_Response = struct {
    /// @brief Original motoros2_interfaces/srv/ResetError_Response.result_code field.
    /// @details Original type motoros2_interfaces/msg/MotionReadyEnum. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_result_code: Ros2Motoros2_interfacesMsgMotionReadyEnum = .{},
    /// @brief Original motoros2_interfaces/srv/ResetError_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 6;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 518;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_0af14ee02c157ecc39b143225a580e475473306389ccc3ba198cf22ca47d82f3";
};
/// @brief Encode every field of complete motoros2_interfaces/srv/ResetError_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesSrvResetError_Response(value: *Ros2Motoros2_interfacesSrvResetError_Response, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/srv/ResetError_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesSrvResetError_Response(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesSrvResetError_Response {
    return wire.decode(Ros2Motoros2_interfacesSrvResetError_Response, bytes);
}

/// @brief Complete motoros2_interfaces/srv/SelectMotionTool_Request value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesSrvSelectMotionTool_Request = struct {
    /// @brief Original motoros2_interfaces/srv/SelectMotionTool_Request.group_number field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_group_number: u32 = 0,
    /// @brief Original motoros2_interfaces/srv/SelectMotionTool_Request.tool_number field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_tool_number: u32 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 8;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 8;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_e6c884ae0a97337c1e441efe099b7869dc95205fcbca0a8082d4d9b06f5b438c";
};
/// @brief Encode every field of complete motoros2_interfaces/srv/SelectMotionTool_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesSrvSelectMotionTool_Request(value: *Ros2Motoros2_interfacesSrvSelectMotionTool_Request, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/srv/SelectMotionTool_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesSrvSelectMotionTool_Request(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesSrvSelectMotionTool_Request {
    return wire.decode(Ros2Motoros2_interfacesSrvSelectMotionTool_Request, bytes);
}

/// @brief Complete motoros2_interfaces/srv/SelectMotionTool_Response value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 9..521 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesSrvSelectMotionTool_Response = struct {
    /// @brief Original motoros2_interfaces/srv/SelectMotionTool_Response.result_code field.
    /// @details Original type motoros2_interfaces/msg/SelectionResultCodes. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_result_code: Ros2Motoros2_interfacesMsgSelectionResultCodes = .{},
    /// @brief Original motoros2_interfaces/srv/SelectMotionTool_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false) = .{},
    /// @brief Original motoros2_interfaces/srv/SelectMotionTool_Response.success field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_success: bool = false,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 9;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 521;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_088349a49c14c52282c25b428628462c48618c3b5202df560dcc5c9bed742640";
};
/// @brief Encode every field of complete motoros2_interfaces/srv/SelectMotionTool_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesSrvSelectMotionTool_Response(value: *Ros2Motoros2_interfacesSrvSelectMotionTool_Response, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/srv/SelectMotionTool_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesSrvSelectMotionTool_Response(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesSrvSelectMotionTool_Response {
    return wire.decode(Ros2Motoros2_interfacesSrvSelectMotionTool_Response, bytes);
}

/// @brief Complete motoros2_interfaces/srv/StartPointQueueMode_Request value.
/// @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesSrvStartPointQueueMode_Request = struct {
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 0;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 0;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_58a4827fc6535ef0ffc64ee25c5c4af75aa0fe199fa0350a88a95d2e991164a1";
};
/// @brief Encode every field of complete motoros2_interfaces/srv/StartPointQueueMode_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesSrvStartPointQueueMode_Request(value: *Ros2Motoros2_interfacesSrvStartPointQueueMode_Request, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/srv/StartPointQueueMode_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesSrvStartPointQueueMode_Request(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesSrvStartPointQueueMode_Request {
    return wire.decode(Ros2Motoros2_interfacesSrvStartPointQueueMode_Request, bytes);
}

/// @brief Complete motoros2_interfaces/srv/StartPointQueueMode_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesSrvStartPointQueueMode_Response = struct {
    /// @brief Original motoros2_interfaces/srv/StartPointQueueMode_Response.result_code field.
    /// @details Original type motoros2_interfaces/msg/MotionReadyEnum. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_result_code: Ros2Motoros2_interfacesMsgMotionReadyEnum = .{},
    /// @brief Original motoros2_interfaces/srv/StartPointQueueMode_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 6;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 518;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_bc553d5640e1c4644a5d5bdc2dfcefc9dbe789ef1e2a23dd620f08963467b6ff";
};
/// @brief Encode every field of complete motoros2_interfaces/srv/StartPointQueueMode_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesSrvStartPointQueueMode_Response(value: *Ros2Motoros2_interfacesSrvStartPointQueueMode_Response, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/srv/StartPointQueueMode_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesSrvStartPointQueueMode_Response(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesSrvStartPointQueueMode_Response {
    return wire.decode(Ros2Motoros2_interfacesSrvStartPointQueueMode_Response, bytes);
}

/// @brief Complete motoros2_interfaces/srv/StartTrajMode_Request value.
/// @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesSrvStartTrajMode_Request = struct {
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 0;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 0;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_0b8b2ad5db5901047035e1070b675618afc516a1ae8c3308cfdcad1174d34789";
};
/// @brief Encode every field of complete motoros2_interfaces/srv/StartTrajMode_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesSrvStartTrajMode_Request(value: *Ros2Motoros2_interfacesSrvStartTrajMode_Request, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/srv/StartTrajMode_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesSrvStartTrajMode_Request(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesSrvStartTrajMode_Request {
    return wire.decode(Ros2Motoros2_interfacesSrvStartTrajMode_Request, bytes);
}

/// @brief Complete motoros2_interfaces/srv/StartTrajMode_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesSrvStartTrajMode_Response = struct {
    /// @brief Original motoros2_interfaces/srv/StartTrajMode_Response.result_code field.
    /// @details Original type motoros2_interfaces/msg/MotionReadyEnum. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_result_code: Ros2Motoros2_interfacesMsgMotionReadyEnum = .{},
    /// @brief Original motoros2_interfaces/srv/StartTrajMode_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 6;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 518;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_170e25737e6a2b06f5d5d9f331d748c97cf0306284271757953a4a801c722939";
};
/// @brief Encode every field of complete motoros2_interfaces/srv/StartTrajMode_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesSrvStartTrajMode_Response(value: *Ros2Motoros2_interfacesSrvStartTrajMode_Response, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/srv/StartTrajMode_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesSrvStartTrajMode_Response(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesSrvStartTrajMode_Response {
    return wire.decode(Ros2Motoros2_interfacesSrvStartTrajMode_Response, bytes);
}

/// @brief Complete motoros2_interfaces/srv/WriteGroupIO_Request value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 5..5 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesSrvWriteGroupIO_Request = struct {
    /// @brief Original motoros2_interfaces/srv/WriteGroupIO_Request.address field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_address: u32 = 0,
    /// @brief Original motoros2_interfaces/srv/WriteGroupIO_Request.value field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: u8 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 5;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 5;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_2d348ed71408a0dd1dd28ee2ed2ca1db56bb07a14546d0fe13ccf64e8553d52c";
};
/// @brief Encode every field of complete motoros2_interfaces/srv/WriteGroupIO_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesSrvWriteGroupIO_Request(value: *Ros2Motoros2_interfacesSrvWriteGroupIO_Request, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/srv/WriteGroupIO_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesSrvWriteGroupIO_Request(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesSrvWriteGroupIO_Request {
    return wire.decode(Ros2Motoros2_interfacesSrvWriteGroupIO_Request, bytes);
}

/// @brief Complete motoros2_interfaces/srv/WriteGroupIO_Response value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 9..521 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesSrvWriteGroupIO_Response = struct {
    /// @brief Original motoros2_interfaces/srv/WriteGroupIO_Response.result_code field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u32 = 0,
    /// @brief Original motoros2_interfaces/srv/WriteGroupIO_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false) = .{},
    /// @brief Original motoros2_interfaces/srv/WriteGroupIO_Response.success field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_success: bool = false,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 9;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 521;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_06769934711b27fd32cdcbf849504e160189ee82ea32e0e71a2903af47c5d766";
};
/// @brief Encode every field of complete motoros2_interfaces/srv/WriteGroupIO_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesSrvWriteGroupIO_Response(value: *Ros2Motoros2_interfacesSrvWriteGroupIO_Response, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/srv/WriteGroupIO_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesSrvWriteGroupIO_Response(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesSrvWriteGroupIO_Response {
    return wire.decode(Ros2Motoros2_interfacesSrvWriteGroupIO_Response, bytes);
}

/// @brief Complete motoros2_interfaces/srv/WriteMRegister_Request value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..6 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesSrvWriteMRegister_Request = struct {
    /// @brief Original motoros2_interfaces/srv/WriteMRegister_Request.address field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_address: u32 = 0,
    /// @brief Original motoros2_interfaces/srv/WriteMRegister_Request.value field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: u16 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 6;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 6;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_8df4536be27f0632052725d5616fd5b047f49fc306fc7735854d9de4fb15d4ef";
};
/// @brief Encode every field of complete motoros2_interfaces/srv/WriteMRegister_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesSrvWriteMRegister_Request(value: *Ros2Motoros2_interfacesSrvWriteMRegister_Request, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/srv/WriteMRegister_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesSrvWriteMRegister_Request(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesSrvWriteMRegister_Request {
    return wire.decode(Ros2Motoros2_interfacesSrvWriteMRegister_Request, bytes);
}

/// @brief Complete motoros2_interfaces/srv/WriteMRegister_Response value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 9..521 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesSrvWriteMRegister_Response = struct {
    /// @brief Original motoros2_interfaces/srv/WriteMRegister_Response.result_code field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u32 = 0,
    /// @brief Original motoros2_interfaces/srv/WriteMRegister_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false) = .{},
    /// @brief Original motoros2_interfaces/srv/WriteMRegister_Response.success field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_success: bool = false,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 9;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 521;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_a61cc0596a7545ef4836bdc64dc9d6b4ed99b0abd18a726eb37e6215f51c729a";
};
/// @brief Encode every field of complete motoros2_interfaces/srv/WriteMRegister_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesSrvWriteMRegister_Response(value: *Ros2Motoros2_interfacesSrvWriteMRegister_Response, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/srv/WriteMRegister_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesSrvWriteMRegister_Response(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesSrvWriteMRegister_Response {
    return wire.decode(Ros2Motoros2_interfacesSrvWriteMRegister_Response, bytes);
}

/// @brief Complete motoros2_interfaces/srv/WriteSingleIO_Request value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesSrvWriteSingleIO_Request = struct {
    /// @brief Original motoros2_interfaces/srv/WriteSingleIO_Request.address field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_address: u32 = 0,
    /// @brief Original motoros2_interfaces/srv/WriteSingleIO_Request.value field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: i32 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 8;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 8;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_6361affcd8b7ebaaa1fe6b5806e64a7c18f7a96a1178614cfce487de813a6392";
};
/// @brief Encode every field of complete motoros2_interfaces/srv/WriteSingleIO_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesSrvWriteSingleIO_Request(value: *Ros2Motoros2_interfacesSrvWriteSingleIO_Request, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/srv/WriteSingleIO_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesSrvWriteSingleIO_Request(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesSrvWriteSingleIO_Request {
    return wire.decode(Ros2Motoros2_interfacesSrvWriteSingleIO_Request, bytes);
}

/// @brief Complete motoros2_interfaces/srv/WriteSingleIO_Response value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 9..521 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Motoros2_interfacesSrvWriteSingleIO_Response = struct {
    /// @brief Original motoros2_interfaces/srv/WriteSingleIO_Response.result_code field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u32 = 0,
    /// @brief Original motoros2_interfaces/srv/WriteSingleIO_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false) = .{},
    /// @brief Original motoros2_interfaces/srv/WriteSingleIO_Response.success field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_success: bool = false,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 9;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 521;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_12328db372a572fe9b0c7207331a7971d5d7c9033376e3be410db579b85fb794";
};
/// @brief Encode every field of complete motoros2_interfaces/srv/WriteSingleIO_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Motoros2_interfacesSrvWriteSingleIO_Response(value: *Ros2Motoros2_interfacesSrvWriteSingleIO_Response, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete motoros2_interfaces/srv/WriteSingleIO_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Motoros2_interfacesSrvWriteSingleIO_Response(bytes: []const u8) wire.Error!Ros2Motoros2_interfacesSrvWriteSingleIO_Response {
    return wire.decode(Ros2Motoros2_interfacesSrvWriteSingleIO_Response, bytes);
}

/// @brief Complete sensor_msgs/msg/JointState value.
/// @details Retain all 5 original fields and 0 constants. Canonical extent 28..1196 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Sensor_msgsMsgJointState = struct {
    /// @brief Original sensor_msgs/msg/JointState.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader = .{},
    /// @brief Original sensor_msgs/msg/JointState.name field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
    /// bound/count 12 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    field_name: wire.Sequence(wire.Text(64, false), 12) = .{},
    /// @brief Original sensor_msgs/msg/JointState.position field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_position: wire.Sequence(f64, 12) = .{},
    /// @brief Original sensor_msgs/msg/JointState.velocity field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_velocity: wire.Sequence(f64, 12) = .{},
    /// @brief Original sensor_msgs/msg/JointState.effort field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_effort: wire.Sequence(f64, 12) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 28;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 1196;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884";
};
/// @brief Encode every field of complete sensor_msgs/msg/JointState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Sensor_msgsMsgJointState(value: *Ros2Sensor_msgsMsgJointState, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete sensor_msgs/msg/JointState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Sensor_msgsMsgJointState(bytes: []const u8) wire.Error!Ros2Sensor_msgsMsgJointState {
    return wire.decode(Ros2Sensor_msgsMsgJointState, bytes);
}

/// @brief Complete std_srvs/srv/Trigger_Request value.
/// @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Std_srvsSrvTrigger_Request = struct {
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 0;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 0;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77";
};
/// @brief Encode every field of complete std_srvs/srv/Trigger_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Std_srvsSrvTrigger_Request(value: *Ros2Std_srvsSrvTrigger_Request, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete std_srvs/srv/Trigger_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Std_srvsSrvTrigger_Request(bytes: []const u8) wire.Error!Ros2Std_srvsSrvTrigger_Request {
    return wire.decode(Ros2Std_srvsSrvTrigger_Request, bytes);
}

/// @brief Complete std_srvs/srv/Trigger_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 5..517 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Std_srvsSrvTrigger_Response = struct {
    /// @brief Original std_srvs/srv/Trigger_Response.success field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_success: bool = false,
    /// @brief Original std_srvs/srv/Trigger_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 5;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 517;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d";
};
/// @brief Encode every field of complete std_srvs/srv/Trigger_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Std_srvsSrvTrigger_Response(value: *Ros2Std_srvsSrvTrigger_Response, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete std_srvs/srv/Trigger_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Std_srvsSrvTrigger_Response(bytes: []const u8) wire.Error!Ros2Std_srvsSrvTrigger_Response {
    return wire.decode(Ros2Std_srvsSrvTrigger_Response, bytes);
}

/// @brief Complete tf2_msgs/msg/TFMessage value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..10372 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Tf2_msgsMsgTFMessage = struct {
    /// @brief Original tf2_msgs/msg/TFMessage.transforms field.
    /// @details Original type geometry_msgs/msg/TransformStamped. Shape sequence; bound/count 16
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_transforms: wire.Sequence(Ros2Geometry_msgsMsgTransformStamped, 16) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 10372;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_4428597a9c2783fd8f0f083a16e8fd1b3d286487f4800c55fcc5571e7f79e65a";
};
/// @brief Encode every field of complete tf2_msgs/msg/TFMessage.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Tf2_msgsMsgTFMessage(value: *Ros2Tf2_msgsMsgTFMessage, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete tf2_msgs/msg/TFMessage.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Tf2_msgsMsgTFMessage(bytes: []const u8) wire.Error!Ros2Tf2_msgsMsgTFMessage {
    return wire.decode(Ros2Tf2_msgsMsgTFMessage, bytes);
}

