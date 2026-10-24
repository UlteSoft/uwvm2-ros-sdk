//! @file records.zig
//! @brief Complete owned original agilex ROS 2 native records and codecs.
//! @details Generated from the admitted source-pinned catalog; no ROS authority is created.
const std = @import("std");
const wire = @import("native_wire");

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
    /// @brief Validate every original complete-value semantic constraint.
    /// @details Preserve normalized time and all six optional JointState array pairs without
    /// changing fields.
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

/// @brief Complete geometry_msgs/msg/Point value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 24..24 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Geometry_msgsMsgPoint = struct {
    /// @brief Original geometry_msgs/msg/Point.x field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_x: f64 = 0,
    /// @brief Original geometry_msgs/msg/Point.y field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_y: f64 = 0,
    /// @brief Original geometry_msgs/msg/Point.z field.
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
    pub const codec_identity = "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616";
};
/// @brief Encode every field of complete geometry_msgs/msg/Point.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Geometry_msgsMsgPoint(value: *Ros2Geometry_msgsMsgPoint, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete geometry_msgs/msg/Point.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Geometry_msgsMsgPoint(bytes: []const u8) wire.Error!Ros2Geometry_msgsMsgPoint {
    return wire.decode(Ros2Geometry_msgsMsgPoint, bytes);
}

/// @brief Complete geometry_msgs/msg/Quaternion value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 32..32 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Geometry_msgsMsgQuaternion = struct {
    /// @brief Original geometry_msgs/msg/Quaternion.x field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_x: f64 = @as(f64,@bitCast(@as(u64,0x0))),
    /// @brief Original geometry_msgs/msg/Quaternion.y field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_y: f64 = @as(f64,@bitCast(@as(u64,0x0))),
    /// @brief Original geometry_msgs/msg/Quaternion.z field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_z: f64 = @as(f64,@bitCast(@as(u64,0x0))),
    /// @brief Original geometry_msgs/msg/Quaternion.w field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_w: f64 = @as(f64,@bitCast(@as(u64,0x3ff0000000000000))),
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

/// @brief Complete geometry_msgs/msg/Pose value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 56..56 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Geometry_msgsMsgPose = struct {
    /// @brief Original geometry_msgs/msg/Pose.position field.
    /// @details Original type geometry_msgs/msg/Point. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_position: Ros2Geometry_msgsMsgPoint = .{},
    /// @brief Original geometry_msgs/msg/Pose.orientation field.
    /// @details Original type geometry_msgs/msg/Quaternion. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_orientation: Ros2Geometry_msgsMsgQuaternion = .{},
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
    pub const codec_identity = "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777";
};
/// @brief Encode every field of complete geometry_msgs/msg/Pose.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Geometry_msgsMsgPose(value: *Ros2Geometry_msgsMsgPose, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete geometry_msgs/msg/Pose.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Geometry_msgsMsgPose(bytes: []const u8) wire.Error!Ros2Geometry_msgsMsgPose {
    return wire.decode(Ros2Geometry_msgsMsgPose, bytes);
}

/// @brief Complete geometry_msgs/msg/PoseWithCovariance value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 344..344 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Geometry_msgsMsgPoseWithCovariance = struct {
    /// @brief Original geometry_msgs/msg/PoseWithCovariance.pose field.
    /// @details Original type geometry_msgs/msg/Pose. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_pose: Ros2Geometry_msgsMsgPose = .{},
    /// @brief Original geometry_msgs/msg/PoseWithCovariance.covariance field.
    /// @details Original type float64. Shape array; bound/count 36 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_covariance: [36]f64 = @splat(@as(f64, 0)),
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 344;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 344;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2";
};
/// @brief Encode every field of complete geometry_msgs/msg/PoseWithCovariance.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Geometry_msgsMsgPoseWithCovariance(value: *Ros2Geometry_msgsMsgPoseWithCovariance, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete geometry_msgs/msg/PoseWithCovariance.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Geometry_msgsMsgPoseWithCovariance(bytes: []const u8) wire.Error!Ros2Geometry_msgsMsgPoseWithCovariance {
    return wire.decode(Ros2Geometry_msgsMsgPoseWithCovariance, bytes);
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

/// @brief Complete geometry_msgs/msg/TwistWithCovariance value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 336..336 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Geometry_msgsMsgTwistWithCovariance = struct {
    /// @brief Original geometry_msgs/msg/TwistWithCovariance.twist field.
    /// @details Original type geometry_msgs/msg/Twist. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_twist: Ros2Geometry_msgsMsgTwist = .{},
    /// @brief Original geometry_msgs/msg/TwistWithCovariance.covariance field.
    /// @details Original type float64. Shape array; bound/count 36 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_covariance: [36]f64 = @splat(@as(f64, 0)),
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 336;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 336;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_96c9fddad7b7c240e850d8c27ddb5f8343764cac791ef9e210196f7941aaf404";
};
/// @brief Encode every field of complete geometry_msgs/msg/TwistWithCovariance.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Geometry_msgsMsgTwistWithCovariance(value: *Ros2Geometry_msgsMsgTwistWithCovariance, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete geometry_msgs/msg/TwistWithCovariance.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Geometry_msgsMsgTwistWithCovariance(bytes: []const u8) wire.Error!Ros2Geometry_msgsMsgTwistWithCovariance {
    return wire.decode(Ros2Geometry_msgsMsgTwistWithCovariance, bytes);
}

/// @brief Complete std_msgs/msg/Header value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 12..140 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Std_msgsMsgHeader = struct {
    /// @brief Original std_msgs/msg/Header.stamp field.
    /// @details Original type builtin_interfaces/msg/Time. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_stamp: Ros2Builtin_interfacesMsgTime = .{},
    /// @brief Original std_msgs/msg/Header.frame_id field.
    /// @details Original type string. String bound 128 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_frame_id: wire.Text(128, false) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 12;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 140;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96";
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

/// @brief Complete nav_msgs/msg/Odometry value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 696..952 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Nav_msgsMsgOdometry = struct {
    /// @brief Original nav_msgs/msg/Odometry.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader = .{},
    /// @brief Original nav_msgs/msg/Odometry.child_frame_id field.
    /// @details Original type string. String bound 128 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_child_frame_id: wire.Text(128, false) = .{},
    /// @brief Original nav_msgs/msg/Odometry.pose field.
    /// @details Original type geometry_msgs/msg/PoseWithCovariance. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_pose: Ros2Geometry_msgsMsgPoseWithCovariance = .{},
    /// @brief Original nav_msgs/msg/Odometry.twist field.
    /// @details Original type geometry_msgs/msg/TwistWithCovariance. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_twist: Ros2Geometry_msgsMsgTwistWithCovariance = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 696;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 952;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_fdfdd74c211c22bfd167c3e33a098fe21198cb095bbd0313fc765f38b1f334ec";
};
/// @brief Encode every field of complete nav_msgs/msg/Odometry.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Nav_msgsMsgOdometry(value: *Ros2Nav_msgsMsgOdometry, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete nav_msgs/msg/Odometry.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Nav_msgsMsgOdometry(bytes: []const u8) wire.Error!Ros2Nav_msgsMsgOdometry {
    return wire.decode(Ros2Nav_msgsMsgOdometry, bytes);
}

/// @brief Complete scout_msgs/msg/ScoutActuatorState value.
/// @details Retain all 5 original fields and 0 constants. Canonical extent 19..19 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Scout_msgsMsgScoutActuatorState = struct {
    /// @brief Original scout_msgs/msg/ScoutActuatorState.rpm field.
    /// @details Original type int16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_rpm: i16 = 0,
    /// @brief Original scout_msgs/msg/ScoutActuatorState.current field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_current: f64 = 0,
    /// @brief Original scout_msgs/msg/ScoutActuatorState.driver_voltage field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_driver_voltage: f32 = 0,
    /// @brief Original scout_msgs/msg/ScoutActuatorState.driver_temperature field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_driver_temperature: f32 = 0,
    /// @brief Original scout_msgs/msg/ScoutActuatorState.motor_temperature field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_motor_temperature: i8 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 19;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 19;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_e7955c07aedaf42f8d97f873d60ae5c0dfc562faa1d64848f11b333f797350c6";
};
/// @brief Encode every field of complete scout_msgs/msg/ScoutActuatorState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Scout_msgsMsgScoutActuatorState(value: *Ros2Scout_msgsMsgScoutActuatorState, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete scout_msgs/msg/ScoutActuatorState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Scout_msgsMsgScoutActuatorState(bytes: []const u8) wire.Error!Ros2Scout_msgsMsgScoutActuatorState {
    return wire.decode(Ros2Scout_msgsMsgScoutActuatorState, bytes);
}

/// @brief Complete scout_msgs/msg/ScoutLightCmd value.
/// @details Retain all 5 original fields and 4 constants. Canonical extent 5..5 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Scout_msgsMsgScoutLightCmd = struct {
    /// @brief Original scout_msgs/msg/ScoutLightCmd.cmd_ctrl_allowed field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cmd_ctrl_allowed: bool = false,
    /// @brief Original scout_msgs/msg/ScoutLightCmd.front_mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_front_mode: u8 = 0,
    /// @brief Original scout_msgs/msg/ScoutLightCmd.front_custom_value field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_front_custom_value: u8 = 0,
    /// @brief Original scout_msgs/msg/ScoutLightCmd.rear_mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_rear_mode: u8 = 0,
    /// @brief Original scout_msgs/msg/ScoutLightCmd.rear_custom_value field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_rear_custom_value: u8 = 0,
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
    pub const codec_identity = "UWVMROS1_a82206813682fbf1a6b41009c12191ad9ce47c98444d8ea9792e7b212ee602d7";
    /// @brief Original scout_msgs/msg/ScoutLightCmd.LIGHT_CONST_OFF constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_LIGHT_CONST_OFF: u8 = 0;
    /// @brief Original scout_msgs/msg/ScoutLightCmd.LIGHT_CONST_ON constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_LIGHT_CONST_ON: u8 = 1;
    /// @brief Original scout_msgs/msg/ScoutLightCmd.LIGHT_BREATH constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_LIGHT_BREATH: u8 = 2;
    /// @brief Original scout_msgs/msg/ScoutLightCmd.LIGHT_CUSTOM constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_LIGHT_CUSTOM: u8 = 3;
};
/// @brief Encode every field of complete scout_msgs/msg/ScoutLightCmd.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Scout_msgsMsgScoutLightCmd(value: *Ros2Scout_msgsMsgScoutLightCmd, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete scout_msgs/msg/ScoutLightCmd.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Scout_msgsMsgScoutLightCmd(bytes: []const u8) wire.Error!Ros2Scout_msgsMsgScoutLightCmd {
    return wire.decode(Ros2Scout_msgsMsgScoutLightCmd, bytes);
}

/// @brief Complete scout_msgs/msg/ScoutLightState value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 2..2 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Scout_msgsMsgScoutLightState = struct {
    /// @brief Original scout_msgs/msg/ScoutLightState.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode: u8 = 0,
    /// @brief Original scout_msgs/msg/ScoutLightState.custom_value field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_custom_value: u8 = 0,
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
    pub const codec_identity = "UWVMROS1_4f42b9365cc76673b156e725aac9448e0f0d806105d3717cdb2628c384a6d76a";
};
/// @brief Encode every field of complete scout_msgs/msg/ScoutLightState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Scout_msgsMsgScoutLightState(value: *Ros2Scout_msgsMsgScoutLightState, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete scout_msgs/msg/ScoutLightState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Scout_msgsMsgScoutLightState(bytes: []const u8) wire.Error!Ros2Scout_msgsMsgScoutLightState {
    return wire.decode(Ros2Scout_msgsMsgScoutLightState, bytes);
}

/// @brief Complete scout_msgs/msg/ScoutRCState value.
/// @details Retain all 9 original fields and 0 constants. Canonical extent 9..9 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Scout_msgsMsgScoutRCState = struct {
    /// @brief Original scout_msgs/msg/ScoutRCState.swa field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_swa: u8 = 0,
    /// @brief Original scout_msgs/msg/ScoutRCState.swb field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_swb: u8 = 0,
    /// @brief Original scout_msgs/msg/ScoutRCState.swc field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_swc: u8 = 0,
    /// @brief Original scout_msgs/msg/ScoutRCState.swd field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_swd: u8 = 0,
    /// @brief Original scout_msgs/msg/ScoutRCState.stick_right_v field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_stick_right_v: i8 = 0,
    /// @brief Original scout_msgs/msg/ScoutRCState.stick_right_h field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_stick_right_h: i8 = 0,
    /// @brief Original scout_msgs/msg/ScoutRCState.stick_left_v field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_stick_left_v: i8 = 0,
    /// @brief Original scout_msgs/msg/ScoutRCState.stick_left_h field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_stick_left_h: i8 = 0,
    /// @brief Original scout_msgs/msg/ScoutRCState.var_a field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_var_a: i8 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 9;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 9;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_ba13e4c728041d14352c021fe5c1c5eee5d531c84ac64c61d944d6192dcd4298";
};
/// @brief Encode every field of complete scout_msgs/msg/ScoutRCState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Scout_msgsMsgScoutRCState(value: *Ros2Scout_msgsMsgScoutRCState, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete scout_msgs/msg/ScoutRCState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Scout_msgsMsgScoutRCState(bytes: []const u8) wire.Error!Ros2Scout_msgsMsgScoutRCState {
    return wire.decode(Ros2Scout_msgsMsgScoutRCState, bytes);
}

/// @brief Complete scout_msgs/msg/ScoutStatus value.
/// @details Retain all 11 original fields and 6 constants. Canonical extent 121..249 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Scout_msgsMsgScoutStatus = struct {
    /// @brief Original scout_msgs/msg/ScoutStatus.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader = .{},
    /// @brief Original scout_msgs/msg/ScoutStatus.linear_velocity field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_linear_velocity: f64 = 0,
    /// @brief Original scout_msgs/msg/ScoutStatus.angular_velocity field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_angular_velocity: f64 = 0,
    /// @brief Original scout_msgs/msg/ScoutStatus.vehicle_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_vehicle_state: u8 = 0,
    /// @brief Original scout_msgs/msg/ScoutStatus.control_mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_control_mode: u8 = 0,
    /// @brief Original scout_msgs/msg/ScoutStatus.error_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_error_code: u16 = 0,
    /// @brief Original scout_msgs/msg/ScoutStatus.battery_voltage field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_battery_voltage: f64 = 0,
    /// @brief Original scout_msgs/msg/ScoutStatus.actuator_states field.
    /// @details Original type scout_msgs/msg/ScoutActuatorState. Shape array; bound/count 4
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_actuator_states: [4]Ros2Scout_msgsMsgScoutActuatorState = @splat(@as(
        Ros2Scout_msgsMsgScoutActuatorState, .{},
    )),
    /// @brief Original scout_msgs/msg/ScoutStatus.light_control_enabled field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_light_control_enabled: bool = false,
    /// @brief Original scout_msgs/msg/ScoutStatus.front_light_state field.
    /// @details Original type scout_msgs/msg/ScoutLightState. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_front_light_state: Ros2Scout_msgsMsgScoutLightState = .{},
    /// @brief Original scout_msgs/msg/ScoutStatus.rear_light_state field.
    /// @details Original type scout_msgs/msg/ScoutLightState. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_rear_light_state: Ros2Scout_msgsMsgScoutLightState = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 121;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 249;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_75db4db1dcc07210d543b8e6bd6b6a7aadbf23db8043ff372a3b224c5c235b86";
    /// @brief Original scout_msgs/msg/ScoutStatus.MOTOR_ID_FRONT_RIGHT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_MOTOR_ID_FRONT_RIGHT: i8 = 0;
    /// @brief Original scout_msgs/msg/ScoutStatus.MOTOR_ID_FRONT_LEFT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_MOTOR_ID_FRONT_LEFT: i8 = 1;
    /// @brief Original scout_msgs/msg/ScoutStatus.MOTOR_ID_REAR_RIGHT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_MOTOR_ID_REAR_RIGHT: i8 = 2;
    /// @brief Original scout_msgs/msg/ScoutStatus.MOTOR_ID_REAR_LEFT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_MOTOR_ID_REAR_LEFT: i8 = 3;
    /// @brief Original scout_msgs/msg/ScoutStatus.LIGHT_ID_FRONT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_LIGHT_ID_FRONT: i8 = 0;
    /// @brief Original scout_msgs/msg/ScoutStatus.LIGHT_ID_REAR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_LIGHT_ID_REAR: i8 = 1;
};
/// @brief Encode every field of complete scout_msgs/msg/ScoutStatus.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Scout_msgsMsgScoutStatus(value: *Ros2Scout_msgsMsgScoutStatus, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete scout_msgs/msg/ScoutStatus.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Scout_msgsMsgScoutStatus(bytes: []const u8) wire.Error!Ros2Scout_msgsMsgScoutStatus {
    return wire.decode(Ros2Scout_msgsMsgScoutStatus, bytes);
}

