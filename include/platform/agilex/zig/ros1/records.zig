//! @file records.zig
//! @brief Complete owned original agilex ROS 1 native records and codecs.
//! @details Generated from the admitted source-pinned catalog; no ROS authority is created.
const std = @import("std");
const wire = @import("native_wire");

/// @brief Complete geometry_msgs/Point value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 24..24 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros1Geometry_msgsPoint = struct {
    /// @brief Original geometry_msgs/Point.x field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_x: f64 = 0,
    /// @brief Original geometry_msgs/Point.y field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_y: f64 = 0,
    /// @brief Original geometry_msgs/Point.z field.
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
    pub const codec_identity = "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b";
};
/// @brief Encode every field of complete geometry_msgs/Point.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos1Geometry_msgsPoint(value: *Ros1Geometry_msgsPoint, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete geometry_msgs/Point.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos1Geometry_msgsPoint(bytes: []const u8) wire.Error!Ros1Geometry_msgsPoint {
    return wire.decode(Ros1Geometry_msgsPoint, bytes);
}

/// @brief Complete geometry_msgs/Quaternion value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 32..32 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros1Geometry_msgsQuaternion = struct {
    /// @brief Original geometry_msgs/Quaternion.x field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_x: f64 = 0,
    /// @brief Original geometry_msgs/Quaternion.y field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_y: f64 = 0,
    /// @brief Original geometry_msgs/Quaternion.z field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_z: f64 = 0,
    /// @brief Original geometry_msgs/Quaternion.w field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_w: f64 = 0,
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
    pub const codec_identity = "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934";
};
/// @brief Encode every field of complete geometry_msgs/Quaternion.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos1Geometry_msgsQuaternion(value: *Ros1Geometry_msgsQuaternion, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete geometry_msgs/Quaternion.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos1Geometry_msgsQuaternion(bytes: []const u8) wire.Error!Ros1Geometry_msgsQuaternion {
    return wire.decode(Ros1Geometry_msgsQuaternion, bytes);
}

/// @brief Complete geometry_msgs/Pose value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 56..56 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros1Geometry_msgsPose = struct {
    /// @brief Original geometry_msgs/Pose.position field.
    /// @details Original type geometry_msgs/Point. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_position: Ros1Geometry_msgsPoint = .{},
    /// @brief Original geometry_msgs/Pose.orientation field.
    /// @details Original type geometry_msgs/Quaternion. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_orientation: Ros1Geometry_msgsQuaternion = .{},
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
    pub const codec_identity = "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471";
};
/// @brief Encode every field of complete geometry_msgs/Pose.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos1Geometry_msgsPose(value: *Ros1Geometry_msgsPose, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete geometry_msgs/Pose.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos1Geometry_msgsPose(bytes: []const u8) wire.Error!Ros1Geometry_msgsPose {
    return wire.decode(Ros1Geometry_msgsPose, bytes);
}

/// @brief Complete geometry_msgs/PoseWithCovariance value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 344..344 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros1Geometry_msgsPoseWithCovariance = struct {
    /// @brief Original geometry_msgs/PoseWithCovariance.pose field.
    /// @details Original type geometry_msgs/Pose. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_pose: Ros1Geometry_msgsPose = .{},
    /// @brief Original geometry_msgs/PoseWithCovariance.covariance field.
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
    pub const codec_identity = "UWVMROS1_17b25963aafb3adfd0432febe040c9b38a531a7a667949b89e0f3937585ef8cf";
};
/// @brief Encode every field of complete geometry_msgs/PoseWithCovariance.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos1Geometry_msgsPoseWithCovariance(value: *Ros1Geometry_msgsPoseWithCovariance, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete geometry_msgs/PoseWithCovariance.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos1Geometry_msgsPoseWithCovariance(bytes: []const u8) wire.Error!Ros1Geometry_msgsPoseWithCovariance {
    return wire.decode(Ros1Geometry_msgsPoseWithCovariance, bytes);
}

/// @brief Complete geometry_msgs/Vector3 value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 24..24 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros1Geometry_msgsVector3 = struct {
    /// @brief Original geometry_msgs/Vector3.x field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_x: f64 = 0,
    /// @brief Original geometry_msgs/Vector3.y field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_y: f64 = 0,
    /// @brief Original geometry_msgs/Vector3.z field.
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
    pub const codec_identity = "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc";
};
/// @brief Encode every field of complete geometry_msgs/Vector3.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos1Geometry_msgsVector3(value: *Ros1Geometry_msgsVector3, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete geometry_msgs/Vector3.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos1Geometry_msgsVector3(bytes: []const u8) wire.Error!Ros1Geometry_msgsVector3 {
    return wire.decode(Ros1Geometry_msgsVector3, bytes);
}

/// @brief Complete geometry_msgs/Twist value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 48..48 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros1Geometry_msgsTwist = struct {
    /// @brief Original geometry_msgs/Twist.linear field.
    /// @details Original type geometry_msgs/Vector3. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_linear: Ros1Geometry_msgsVector3 = .{},
    /// @brief Original geometry_msgs/Twist.angular field.
    /// @details Original type geometry_msgs/Vector3. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_angular: Ros1Geometry_msgsVector3 = .{},
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
    pub const codec_identity = "UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921";
};
/// @brief Encode every field of complete geometry_msgs/Twist.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos1Geometry_msgsTwist(value: *Ros1Geometry_msgsTwist, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete geometry_msgs/Twist.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos1Geometry_msgsTwist(bytes: []const u8) wire.Error!Ros1Geometry_msgsTwist {
    return wire.decode(Ros1Geometry_msgsTwist, bytes);
}

/// @brief Complete geometry_msgs/TwistWithCovariance value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 336..336 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros1Geometry_msgsTwistWithCovariance = struct {
    /// @brief Original geometry_msgs/TwistWithCovariance.twist field.
    /// @details Original type geometry_msgs/Twist. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_twist: Ros1Geometry_msgsTwist = .{},
    /// @brief Original geometry_msgs/TwistWithCovariance.covariance field.
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
    pub const codec_identity = "UWVMROS1_ff6790d181503b424d84726c8f4a7852cef14c6dd93e6d32cf3c37023f74bcdf";
};
/// @brief Encode every field of complete geometry_msgs/TwistWithCovariance.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos1Geometry_msgsTwistWithCovariance(value: *Ros1Geometry_msgsTwistWithCovariance, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete geometry_msgs/TwistWithCovariance.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos1Geometry_msgsTwistWithCovariance(bytes: []const u8) wire.Error!Ros1Geometry_msgsTwistWithCovariance {
    return wire.decode(Ros1Geometry_msgsTwistWithCovariance, bytes);
}

/// @brief Complete time value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros1Time = struct {
    /// @brief Original time.sec field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_sec: u32 = 0,
    /// @brief Original time.nsec field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_nsec: u32 = 0,
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
    pub const codec_identity = "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0";
    /// @brief Validate every original complete-value semantic constraint.
    /// @details Preserve normalized time and all six optional JointState array pairs without
    /// changing fields.
    /// @param self Complete immutable owned value.
    /// @return Void success or Invalid.
    pub fn validate(self: *const @This()) wire.Error!void {
        if (self.field_nsec >= 1000000000) return error.Invalid;
    }
};
/// @brief Encode every field of complete time.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos1Time(value: *Ros1Time, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete time.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos1Time(bytes: []const u8) wire.Error!Ros1Time {
    return wire.decode(Ros1Time, bytes);
}

/// @brief Complete std_msgs/Header value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 16..144 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros1Std_msgsHeader = struct {
    /// @brief Original std_msgs/Header.seq field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_seq: u32 = 0,
    /// @brief Original std_msgs/Header.stamp field.
    /// @details Original type time. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_stamp: Ros1Time = .{},
    /// @brief Original std_msgs/Header.frame_id field.
    /// @details Original type string. String bound 128 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_frame_id: wire.Text(128, false) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 16;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 144;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435";
};
/// @brief Encode every field of complete std_msgs/Header.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos1Std_msgsHeader(value: *Ros1Std_msgsHeader, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete std_msgs/Header.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos1Std_msgsHeader(bytes: []const u8) wire.Error!Ros1Std_msgsHeader {
    return wire.decode(Ros1Std_msgsHeader, bytes);
}

/// @brief Complete nav_msgs/Odometry value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 700..956 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros1Nav_msgsOdometry = struct {
    /// @brief Original nav_msgs/Odometry.header field.
    /// @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
    /// order. Backing storage belongs to this value; constructing or copying it creates no native
    /// ROS owner.
    field_header: Ros1Std_msgsHeader = .{},
    /// @brief Original nav_msgs/Odometry.child_frame_id field.
    /// @details Original type string. String bound 128 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_child_frame_id: wire.Text(128, false) = .{},
    /// @brief Original nav_msgs/Odometry.pose field.
    /// @details Original type geometry_msgs/PoseWithCovariance. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_pose: Ros1Geometry_msgsPoseWithCovariance = .{},
    /// @brief Original nav_msgs/Odometry.twist field.
    /// @details Original type geometry_msgs/TwistWithCovariance. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_twist: Ros1Geometry_msgsTwistWithCovariance = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 700;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 956;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_c10d3ce1f2824c33d728d0006fb83134330d0332af122f179cf2dac32181a2ca";
};
/// @brief Encode every field of complete nav_msgs/Odometry.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos1Nav_msgsOdometry(value: *Ros1Nav_msgsOdometry, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete nav_msgs/Odometry.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos1Nav_msgsOdometry(bytes: []const u8) wire.Error!Ros1Nav_msgsOdometry {
    return wire.decode(Ros1Nav_msgsOdometry, bytes);
}

/// @brief Complete scout_msgs/ScoutBmsStatus value.
/// @details Retain all 9 original fields and 0 constants. Canonical extent 44..44 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros1Scout_msgsScoutBmsStatus = struct {
    /// @brief Original scout_msgs/ScoutBmsStatus.SOC field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_SOC: f64 = 0,
    /// @brief Original scout_msgs/ScoutBmsStatus.SOH field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_SOH: f64 = 0,
    /// @brief Original scout_msgs/ScoutBmsStatus.battery_voltage field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_battery_voltage: f64 = 0,
    /// @brief Original scout_msgs/ScoutBmsStatus.battery_current field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_battery_current: f64 = 0,
    /// @brief Original scout_msgs/ScoutBmsStatus.battery_temperature field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_battery_temperature: f64 = 0,
    /// @brief Original scout_msgs/ScoutBmsStatus.Alarm_Status_1 field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_Alarm_Status_1: u8 = 0,
    /// @brief Original scout_msgs/ScoutBmsStatus.Alarm_Status_2 field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_Alarm_Status_2: u8 = 0,
    /// @brief Original scout_msgs/ScoutBmsStatus.Warning_Status_1 field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_Warning_Status_1: u8 = 0,
    /// @brief Original scout_msgs/ScoutBmsStatus.Warning_Status_2 field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_Warning_Status_2: u8 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 44;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 44;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_6921538c08e86ab5b9ecdbf974c6cb5b580488f4ed96ccbdb8b7824d51e9cf95";
};
/// @brief Encode every field of complete scout_msgs/ScoutBmsStatus.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos1Scout_msgsScoutBmsStatus(value: *Ros1Scout_msgsScoutBmsStatus, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete scout_msgs/ScoutBmsStatus.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos1Scout_msgsScoutBmsStatus(bytes: []const u8) wire.Error!Ros1Scout_msgsScoutBmsStatus {
    return wire.decode(Ros1Scout_msgsScoutBmsStatus, bytes);
}

/// @brief Complete scout_msgs/ScoutDriverState value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 17..17 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros1Scout_msgsScoutDriverState = struct {
    /// @brief Original scout_msgs/ScoutDriverState.driver_voltage field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_driver_voltage: f64 = 0,
    /// @brief Original scout_msgs/ScoutDriverState.driver_temperature field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_driver_temperature: f64 = 0,
    /// @brief Original scout_msgs/ScoutDriverState.driver_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_driver_state: u8 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 17;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 17;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_4c56c71ae621b2b8822d742894d19946492002453c93b72faccb4f2abc9d4275";
};
/// @brief Encode every field of complete scout_msgs/ScoutDriverState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos1Scout_msgsScoutDriverState(value: *Ros1Scout_msgsScoutDriverState, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete scout_msgs/ScoutDriverState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos1Scout_msgsScoutDriverState(bytes: []const u8) wire.Error!Ros1Scout_msgsScoutDriverState {
    return wire.decode(Ros1Scout_msgsScoutDriverState, bytes);
}

/// @brief Complete scout_msgs/ScoutLightCmd value.
/// @details Retain all 5 original fields and 4 constants. Canonical extent 5..5 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros1Scout_msgsScoutLightCmd = struct {
    /// @brief Original scout_msgs/ScoutLightCmd.enable_cmd_light_control field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_enable_cmd_light_control: bool = false,
    /// @brief Original scout_msgs/ScoutLightCmd.front_mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_front_mode: u8 = 0,
    /// @brief Original scout_msgs/ScoutLightCmd.front_custom_value field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_front_custom_value: u8 = 0,
    /// @brief Original scout_msgs/ScoutLightCmd.rear_mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_rear_mode: u8 = 0,
    /// @brief Original scout_msgs/ScoutLightCmd.rear_custom_value field.
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
    pub const codec_identity = "UWVMROS1_cf08cccf454f88111d5cc4a4b1ace08de72cf1ae9a9400c23a148126da95942a";
    /// @brief Original scout_msgs/ScoutLightCmd.LIGHT_CONST_OFF constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_LIGHT_CONST_OFF: u8 = 0;
    /// @brief Original scout_msgs/ScoutLightCmd.LIGHT_CONST_ON constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_LIGHT_CONST_ON: u8 = 1;
    /// @brief Original scout_msgs/ScoutLightCmd.LIGHT_BREATH constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_LIGHT_BREATH: u8 = 2;
    /// @brief Original scout_msgs/ScoutLightCmd.LIGHT_CUSTOM constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_LIGHT_CUSTOM: u8 = 3;
};
/// @brief Encode every field of complete scout_msgs/ScoutLightCmd.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos1Scout_msgsScoutLightCmd(value: *Ros1Scout_msgsScoutLightCmd, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete scout_msgs/ScoutLightCmd.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos1Scout_msgsScoutLightCmd(bytes: []const u8) wire.Error!Ros1Scout_msgsScoutLightCmd {
    return wire.decode(Ros1Scout_msgsScoutLightCmd, bytes);
}

/// @brief Complete scout_msgs/ScoutLightState value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 2..2 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros1Scout_msgsScoutLightState = struct {
    /// @brief Original scout_msgs/ScoutLightState.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode: u8 = 0,
    /// @brief Original scout_msgs/ScoutLightState.custom_value field.
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
    pub const codec_identity = "UWVMROS1_af55048f9200cfa80fc419664204a515f628cc610a352ab3ed8443dd7ac0ae51";
};
/// @brief Encode every field of complete scout_msgs/ScoutLightState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos1Scout_msgsScoutLightState(value: *Ros1Scout_msgsScoutLightState, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete scout_msgs/ScoutLightState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos1Scout_msgsScoutLightState(bytes: []const u8) wire.Error!Ros1Scout_msgsScoutLightState {
    return wire.decode(Ros1Scout_msgsScoutLightState, bytes);
}

/// @brief Complete scout_msgs/ScoutMotorState value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 32..32 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros1Scout_msgsScoutMotorState = struct {
    /// @brief Original scout_msgs/ScoutMotorState.current field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_current: f64 = 0,
    /// @brief Original scout_msgs/ScoutMotorState.rpm field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_rpm: f64 = 0,
    /// @brief Original scout_msgs/ScoutMotorState.temperature field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_temperature: f64 = 0,
    /// @brief Original scout_msgs/ScoutMotorState.motor_pose field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_motor_pose: f64 = 0,
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
    pub const codec_identity = "UWVMROS1_ca67a704d7bb4ba6b2839db1fdb8a75bc753868ec871d101c24c85d8202a79b7";
};
/// @brief Encode every field of complete scout_msgs/ScoutMotorState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos1Scout_msgsScoutMotorState(value: *Ros1Scout_msgsScoutMotorState, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete scout_msgs/ScoutMotorState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos1Scout_msgsScoutMotorState(bytes: []const u8) wire.Error!Ros1Scout_msgsScoutMotorState {
    return wire.decode(Ros1Scout_msgsScoutMotorState, bytes);
}

/// @brief Complete scout_msgs/ScoutRsStatus value.
/// @details Retain all 10 original fields and 0 constants. Canonical extent 25..153 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros1Scout_msgsScoutRsStatus = struct {
    /// @brief Original scout_msgs/ScoutRsStatus.header field.
    /// @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
    /// order. Backing storage belongs to this value; constructing or copying it creates no native
    /// ROS owner.
    field_header: Ros1Std_msgsHeader = .{},
    /// @brief Original scout_msgs/ScoutRsStatus.stick_left_h field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_stick_left_h: i8 = 0,
    /// @brief Original scout_msgs/ScoutRsStatus.stick_left_v field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_stick_left_v: i8 = 0,
    /// @brief Original scout_msgs/ScoutRsStatus.stick_right_h field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_stick_right_h: i8 = 0,
    /// @brief Original scout_msgs/ScoutRsStatus.stick_right_v field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_stick_right_v: i8 = 0,
    /// @brief Original scout_msgs/ScoutRsStatus.swa field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_swa: u8 = 0,
    /// @brief Original scout_msgs/ScoutRsStatus.swb field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_swb: u8 = 0,
    /// @brief Original scout_msgs/ScoutRsStatus.swc field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_swc: u8 = 0,
    /// @brief Original scout_msgs/ScoutRsStatus.swd field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_swd: u8 = 0,
    /// @brief Original scout_msgs/ScoutRsStatus.var_a field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_var_a: u8 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 25;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 153;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_deb068b75fb629df3724c141ed3be9f6ee8a4aac7727cdaa28769cb61211f7de";
};
/// @brief Encode every field of complete scout_msgs/ScoutRsStatus.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos1Scout_msgsScoutRsStatus(value: *Ros1Scout_msgsScoutRsStatus, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete scout_msgs/ScoutRsStatus.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos1Scout_msgsScoutRsStatus(bytes: []const u8) wire.Error!Ros1Scout_msgsScoutRsStatus {
    return wire.decode(Ros1Scout_msgsScoutRsStatus, bytes);
}

/// @brief Complete scout_msgs/ScoutStatus value.
/// @details Retain all 13 original fields and 6 constants. Canonical extent 253..381 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros1Scout_msgsScoutStatus = struct {
    /// @brief Original scout_msgs/ScoutStatus.header field.
    /// @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
    /// order. Backing storage belongs to this value; constructing or copying it creates no native
    /// ROS owner.
    field_header: Ros1Std_msgsHeader = .{},
    /// @brief Original scout_msgs/ScoutStatus.linear_velocity field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_linear_velocity: f64 = 0,
    /// @brief Original scout_msgs/ScoutStatus.angular_velocity field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_angular_velocity: f64 = 0,
    /// @brief Original scout_msgs/ScoutStatus.lateral_velocity field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_lateral_velocity: f64 = 0,
    /// @brief Original scout_msgs/ScoutStatus.base_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_base_state: u8 = 0,
    /// @brief Original scout_msgs/ScoutStatus.control_mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_control_mode: u8 = 0,
    /// @brief Original scout_msgs/ScoutStatus.fault_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_fault_code: u16 = 0,
    /// @brief Original scout_msgs/ScoutStatus.battery_voltage field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_battery_voltage: f64 = 0,
    /// @brief Original scout_msgs/ScoutStatus.motor_states field.
    /// @details Original type scout_msgs/ScoutMotorState. Shape array; bound/count 4 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_motor_states: [4]Ros1Scout_msgsScoutMotorState = @splat(@as(Ros1Scout_msgsScoutMotorState, .{})),
    /// @brief Original scout_msgs/ScoutStatus.driver_states field.
    /// @details Original type scout_msgs/ScoutDriverState. Shape array; bound/count 4 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_driver_states: [4]Ros1Scout_msgsScoutDriverState = @splat(@as(Ros1Scout_msgsScoutDriverState, .{})),
    /// @brief Original scout_msgs/ScoutStatus.light_control_enabled field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_light_control_enabled: bool = false,
    /// @brief Original scout_msgs/ScoutStatus.front_light_state field.
    /// @details Original type scout_msgs/ScoutLightState. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_front_light_state: Ros1Scout_msgsScoutLightState = .{},
    /// @brief Original scout_msgs/ScoutStatus.rear_light_state field.
    /// @details Original type scout_msgs/ScoutLightState. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_rear_light_state: Ros1Scout_msgsScoutLightState = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 253;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 381;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_ff62854d4de0aae3dfbbc312822c6f912294f0feb04a7fff943df602d40bcbe2";
    /// @brief Original scout_msgs/ScoutStatus.MOTOR_ID_FRONT_RIGHT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_MOTOR_ID_FRONT_RIGHT: i8 = 0;
    /// @brief Original scout_msgs/ScoutStatus.MOTOR_ID_FRONT_LEFT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_MOTOR_ID_FRONT_LEFT: i8 = 1;
    /// @brief Original scout_msgs/ScoutStatus.MOTOR_ID_REAR_RIGHT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_MOTOR_ID_REAR_RIGHT: i8 = 2;
    /// @brief Original scout_msgs/ScoutStatus.MOTOR_ID_REAR_LEFT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_MOTOR_ID_REAR_LEFT: i8 = 3;
    /// @brief Original scout_msgs/ScoutStatus.LIGHT_ID_FRONT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_LIGHT_ID_FRONT: i8 = 0;
    /// @brief Original scout_msgs/ScoutStatus.LIGHT_ID_REAR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_LIGHT_ID_REAR: i8 = 1;
};
/// @brief Encode every field of complete scout_msgs/ScoutStatus.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos1Scout_msgsScoutStatus(value: *Ros1Scout_msgsScoutStatus, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete scout_msgs/ScoutStatus.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos1Scout_msgsScoutStatus(bytes: []const u8) wire.Error!Ros1Scout_msgsScoutStatus {
    return wire.decode(Ros1Scout_msgsScoutStatus, bytes);
}

