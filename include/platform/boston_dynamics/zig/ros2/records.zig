//! @file records.zig
//! @brief Complete owned original boston_dynamics ROS 2 native records and codecs.
//! @details Generated from the admitted source-pinned catalog; no ROS authority is created.
const std = @import("std");
const wire = @import("native_wire");

/// @brief Complete uwvm_spot_bridge/srv/State_Request value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 24..24 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Uwvm_spot_bridgeSrvState_Request = struct {
    /// @brief Original uwvm_spot_bridge/srv/State_Request.token field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_token: u64 = 0,
    /// @brief Original uwvm_spot_bridge/srv/State_Request.nonce field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_nonce: u64 = 0,
    /// @brief Original uwvm_spot_bridge/srv/State_Request.budget_ns field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_budget_ns: u64 = 0,
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
    pub const codec_identity = "UWVMROS1_9becf278bc168ed6d5b15fe7f1ec35b83e274de8a5173cb2335948306bc7a47e";
};
/// @brief Encode every field of complete uwvm_spot_bridge/srv/State_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Uwvm_spot_bridgeSrvState_Request(value: *Ros2Uwvm_spot_bridgeSrvState_Request, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete uwvm_spot_bridge/srv/State_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Uwvm_spot_bridgeSrvState_Request(bytes: []const u8) wire.Error!Ros2Uwvm_spot_bridgeSrvState_Request {
    return wire.decode(Ros2Uwvm_spot_bridgeSrvState_Request, bytes);
}

/// @brief Complete uwvm_spot_bridge/srv/State_Response value.
/// @details Retain all 12 original fields and 0 constants. Canonical extent 57..21433 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Uwvm_spot_bridgeSrvState_Response = struct {
    /// @brief Original uwvm_spot_bridge/srv/State_Response.token field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_token: u64 = 0,
    /// @brief Original uwvm_spot_bridge/srv/State_Response.nonce field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_nonce: u64 = 0,
    /// @brief Original uwvm_spot_bridge/srv/State_Response.error field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_error: u32 = 0,
    /// @brief Original uwvm_spot_bridge/srv/State_Response.unknown field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_unknown: bool = false,
    /// @brief Original uwvm_spot_bridge/srv/State_Response.acquisition_sec field.
    /// @details Original type int64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_acquisition_sec: i64 = 0,
    /// @brief Original uwvm_spot_bridge/srv/State_Response.acquisition_nsec field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_acquisition_nsec: u32 = 0,
    /// @brief Original uwvm_spot_bridge/srv/State_Response.joint_names field.
    /// @details Original type string. String bound 128 bytes; domain utf8. Shape sequence;
    /// bound/count 32 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    field_joint_names: wire.Sequence(wire.Text(128, false), 32) = .{},
    /// @brief Original uwvm_spot_bridge/srv/State_Response.joint_position field.
    /// @details Original type float64. Shape sequence; bound/count 32 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_joint_position: wire.Sequence(f64, 32) = .{},
    /// @brief Original uwvm_spot_bridge/srv/State_Response.joint_velocity field.
    /// @details Original type float64. Shape sequence; bound/count 32 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_joint_velocity: wire.Sequence(f64, 32) = .{},
    /// @brief Original uwvm_spot_bridge/srv/State_Response.joint_load field.
    /// @details Original type float64. Shape sequence; bound/count 32 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_joint_load: wire.Sequence(f64, 32) = .{},
    /// @brief Original uwvm_spot_bridge/srv/State_Response.motor_power_state field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_motor_power_state: u32 = 0,
    /// @brief Original uwvm_spot_bridge/srv/State_Response.native_proto field.
    /// @details Original type uint8. Shape sequence; bound/count 16384 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_native_proto: wire.Sequence(u8, 16384) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 57;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 21433;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_ab07340e952c2ff63f35dad37e9d4837a280eee9ce477ac5be4a05f82408ce0a";
};
/// @brief Encode every field of complete uwvm_spot_bridge/srv/State_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Uwvm_spot_bridgeSrvState_Response(value: *Ros2Uwvm_spot_bridgeSrvState_Response, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete uwvm_spot_bridge/srv/State_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Uwvm_spot_bridgeSrvState_Response(bytes: []const u8) wire.Error!Ros2Uwvm_spot_bridgeSrvState_Response {
    return wire.decode(Ros2Uwvm_spot_bridgeSrvState_Response, bytes);
}

/// @brief Complete uwvm_spot_bridge/srv/Lease_Request value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 24..24 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Uwvm_spot_bridgeSrvLease_Request = struct {
    /// @brief Original uwvm_spot_bridge/srv/Lease_Request.token field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_token: u64 = 0,
    /// @brief Original uwvm_spot_bridge/srv/Lease_Request.nonce field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_nonce: u64 = 0,
    /// @brief Original uwvm_spot_bridge/srv/Lease_Request.budget_ns field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_budget_ns: u64 = 0,
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
    pub const codec_identity = "UWVMROS1_a9aacd78dc6ae9d18fb6bb0d185797c6463c882edadf251eb5c21e3aa3c538a1";
};
/// @brief Encode every field of complete uwvm_spot_bridge/srv/Lease_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Uwvm_spot_bridgeSrvLease_Request(value: *Ros2Uwvm_spot_bridgeSrvLease_Request, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete uwvm_spot_bridge/srv/Lease_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Uwvm_spot_bridgeSrvLease_Request(bytes: []const u8) wire.Error!Ros2Uwvm_spot_bridgeSrvLease_Request {
    return wire.decode(Ros2Uwvm_spot_bridgeSrvLease_Request, bytes);
}

/// @brief Complete uwvm_spot_bridge/srv/Lease_Response value.
/// @details Retain all 5 original fields and 0 constants. Canonical extent 22..22 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Uwvm_spot_bridgeSrvLease_Response = struct {
    /// @brief Original uwvm_spot_bridge/srv/Lease_Response.token field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_token: u64 = 0,
    /// @brief Original uwvm_spot_bridge/srv/Lease_Response.nonce field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_nonce: u64 = 0,
    /// @brief Original uwvm_spot_bridge/srv/Lease_Response.error field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_error: u32 = 0,
    /// @brief Original uwvm_spot_bridge/srv/Lease_Response.unknown field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_unknown: bool = false,
    /// @brief Original uwvm_spot_bridge/srv/Lease_Response.provider_holds_body_lease field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_provider_holds_body_lease: bool = false,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 22;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 22;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_ce875eb701b607c01f8a19dc8fcff607829824ad99276f906c7fc8fc5567f6d3";
};
/// @brief Encode every field of complete uwvm_spot_bridge/srv/Lease_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Uwvm_spot_bridgeSrvLease_Response(value: *Ros2Uwvm_spot_bridgeSrvLease_Response, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete uwvm_spot_bridge/srv/Lease_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Uwvm_spot_bridgeSrvLease_Response(bytes: []const u8) wire.Error!Ros2Uwvm_spot_bridgeSrvLease_Response {
    return wire.decode(Ros2Uwvm_spot_bridgeSrvLease_Response, bytes);
}

/// @brief Complete uwvm_spot_bridge/srv/Command_Request value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 24..24 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Uwvm_spot_bridgeSrvCommand_Request = struct {
    /// @brief Original uwvm_spot_bridge/srv/Command_Request.token field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_token: u64 = 0,
    /// @brief Original uwvm_spot_bridge/srv/Command_Request.nonce field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_nonce: u64 = 0,
    /// @brief Original uwvm_spot_bridge/srv/Command_Request.budget_ns field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_budget_ns: u64 = 0,
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
    pub const codec_identity = "UWVMROS1_29996d4dacb4ea847c5d629cb634d4aa5e2451627d2469d6cdf301cc007968f8";
};
/// @brief Encode every field of complete uwvm_spot_bridge/srv/Command_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Uwvm_spot_bridgeSrvCommand_Request(value: *Ros2Uwvm_spot_bridgeSrvCommand_Request, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete uwvm_spot_bridge/srv/Command_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Uwvm_spot_bridgeSrvCommand_Request(bytes: []const u8) wire.Error!Ros2Uwvm_spot_bridgeSrvCommand_Request {
    return wire.decode(Ros2Uwvm_spot_bridgeSrvCommand_Request, bytes);
}

/// @brief Complete uwvm_spot_bridge/srv/Command_Response value.
/// @details Retain all 6 original fields and 0 constants. Canonical extent 26..26 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Uwvm_spot_bridgeSrvCommand_Response = struct {
    /// @brief Original uwvm_spot_bridge/srv/Command_Response.token field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_token: u64 = 0,
    /// @brief Original uwvm_spot_bridge/srv/Command_Response.nonce field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_nonce: u64 = 0,
    /// @brief Original uwvm_spot_bridge/srv/Command_Response.error field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_error: u32 = 0,
    /// @brief Original uwvm_spot_bridge/srv/Command_Response.unknown field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_unknown: bool = false,
    /// @brief Original uwvm_spot_bridge/srv/Command_Response.native_accepted field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_native_accepted: bool = false,
    /// @brief Original uwvm_spot_bridge/srv/Command_Response.native_command_id field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_native_command_id: u32 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 26;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 26;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_e35556e7439c8d5ca79cb0f4ad23cf73c85a8a79d1382cde398dd85082dd1733";
};
/// @brief Encode every field of complete uwvm_spot_bridge/srv/Command_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Uwvm_spot_bridgeSrvCommand_Response(value: *Ros2Uwvm_spot_bridgeSrvCommand_Response, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete uwvm_spot_bridge/srv/Command_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Uwvm_spot_bridgeSrvCommand_Response(bytes: []const u8) wire.Error!Ros2Uwvm_spot_bridgeSrvCommand_Response {
    return wire.decode(Ros2Uwvm_spot_bridgeSrvCommand_Response, bytes);
}

/// @brief Complete uwvm_spot_bridge/srv/Velocity_Request value.
/// @details Retain all 7 original fields and 0 constants. Canonical extent 56..56 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Uwvm_spot_bridgeSrvVelocity_Request = struct {
    /// @brief Original uwvm_spot_bridge/srv/Velocity_Request.token field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_token: u64 = 0,
    /// @brief Original uwvm_spot_bridge/srv/Velocity_Request.nonce field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_nonce: u64 = 0,
    /// @brief Original uwvm_spot_bridge/srv/Velocity_Request.budget_ns field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_budget_ns: u64 = 0,
    /// @brief Original uwvm_spot_bridge/srv/Velocity_Request.x_mps field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_x_mps: f64 = 0,
    /// @brief Original uwvm_spot_bridge/srv/Velocity_Request.y_mps field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_y_mps: f64 = 0,
    /// @brief Original uwvm_spot_bridge/srv/Velocity_Request.yaw_rps field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_yaw_rps: f64 = 0,
    /// @brief Original uwvm_spot_bridge/srv/Velocity_Request.duration_ns field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_duration_ns: u64 = 0,
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
    pub const codec_identity = "UWVMROS1_ffe3b1dec91a25cd84d221ba4ebeae576bd7d6b96f258579c0b3d280cad79f8d";
};
/// @brief Encode every field of complete uwvm_spot_bridge/srv/Velocity_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Uwvm_spot_bridgeSrvVelocity_Request(value: *Ros2Uwvm_spot_bridgeSrvVelocity_Request, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete uwvm_spot_bridge/srv/Velocity_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Uwvm_spot_bridgeSrvVelocity_Request(bytes: []const u8) wire.Error!Ros2Uwvm_spot_bridgeSrvVelocity_Request {
    return wire.decode(Ros2Uwvm_spot_bridgeSrvVelocity_Request, bytes);
}

/// @brief Complete uwvm_spot_bridge/srv/Velocity_Response value.
/// @details Retain all 6 original fields and 0 constants. Canonical extent 26..26 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Uwvm_spot_bridgeSrvVelocity_Response = struct {
    /// @brief Original uwvm_spot_bridge/srv/Velocity_Response.token field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_token: u64 = 0,
    /// @brief Original uwvm_spot_bridge/srv/Velocity_Response.nonce field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_nonce: u64 = 0,
    /// @brief Original uwvm_spot_bridge/srv/Velocity_Response.error field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_error: u32 = 0,
    /// @brief Original uwvm_spot_bridge/srv/Velocity_Response.unknown field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_unknown: bool = false,
    /// @brief Original uwvm_spot_bridge/srv/Velocity_Response.native_accepted field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_native_accepted: bool = false,
    /// @brief Original uwvm_spot_bridge/srv/Velocity_Response.native_command_id field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_native_command_id: u32 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 26;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 26;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_031f37beeb5a03c4e65d4be8fd70bc680408d110a020e066bea593d86498401a";
};
/// @brief Encode every field of complete uwvm_spot_bridge/srv/Velocity_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Uwvm_spot_bridgeSrvVelocity_Response(value: *Ros2Uwvm_spot_bridgeSrvVelocity_Response, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete uwvm_spot_bridge/srv/Velocity_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Uwvm_spot_bridgeSrvVelocity_Response(bytes: []const u8) wire.Error!Ros2Uwvm_spot_bridgeSrvVelocity_Response {
    return wire.decode(Ros2Uwvm_spot_bridgeSrvVelocity_Response, bytes);
}

/// @brief Complete uwvm_spot_bridge/srv/Feedback_Request value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 32..32 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Uwvm_spot_bridgeSrvFeedback_Request = struct {
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Request.token field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_token: u64 = 0,
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Request.nonce field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_nonce: u64 = 0,
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Request.budget_ns field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_budget_ns: u64 = 0,
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Request.command_token field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_command_token: u64 = 0,
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
    pub const codec_identity = "UWVMROS1_de64ce283f49f5c324912ec262f7d15b6fd828879c01039d455c765743c45ba3";
};
/// @brief Encode every field of complete uwvm_spot_bridge/srv/Feedback_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Uwvm_spot_bridgeSrvFeedback_Request(value: *Ros2Uwvm_spot_bridgeSrvFeedback_Request, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete uwvm_spot_bridge/srv/Feedback_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Uwvm_spot_bridgeSrvFeedback_Request(bytes: []const u8) wire.Error!Ros2Uwvm_spot_bridgeSrvFeedback_Request {
    return wire.decode(Ros2Uwvm_spot_bridgeSrvFeedback_Request, bytes);
}

/// @brief Complete uwvm_spot_bridge/srv/Feedback_Response value.
/// @details Retain all 13 original fields and 0 constants. Canonical extent 45..16429 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Uwvm_spot_bridgeSrvFeedback_Response = struct {
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.token field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_token: u64 = 0,
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.nonce field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_nonce: u64 = 0,
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.error field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_error: u32 = 0,
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.unknown field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_unknown: bool = false,
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.native_command_id field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_native_command_id: u32 = 0,
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.has_full_body_feedback field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_has_full_body_feedback: bool = false,
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.full_body_status field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_full_body_status: u32 = 0,
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.has_mobility_feedback field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_has_mobility_feedback: bool = false,
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.mobility_status field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mobility_status: u32 = 0,
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.feedback_kind field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_feedback_kind: u8 = 0,
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.has_subcommand_status field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_has_subcommand_status: bool = false,
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.subcommand_status field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_subcommand_status: u32 = 0,
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.native_proto field.
    /// @details Original type uint8. Shape sequence; bound/count 16384 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_native_proto: wire.Sequence(u8, 16384) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 45;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 16429;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_4a19efe7f64fe0d7f6f13abe8980fb55503d3b897af64abc73bbd236587adfe8";
};
/// @brief Encode every field of complete uwvm_spot_bridge/srv/Feedback_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Uwvm_spot_bridgeSrvFeedback_Response(value: *Ros2Uwvm_spot_bridgeSrvFeedback_Response, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete uwvm_spot_bridge/srv/Feedback_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Uwvm_spot_bridgeSrvFeedback_Response(bytes: []const u8) wire.Error!Ros2Uwvm_spot_bridgeSrvFeedback_Response {
    return wire.decode(Ros2Uwvm_spot_bridgeSrvFeedback_Response, bytes);
}

