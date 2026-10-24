//! @file records.zig
//! @brief Complete owned original clearpath ROS 2 native records and codecs.
//! @details Generated from the admitted source-pinned catalog; no ROS authority is created.
const std = @import("std");
const wire = @import("native_wire");

/// @brief Complete clearpath_motor_msgs/action/LynxCalibrate_Goal value.
/// @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal = struct {
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
    pub const codec_identity = "UWVMROS1_61b01a6234b41f96464de9449b3e8d1b955decf6afa12aa3ba94062c98cec681";
};
/// @brief Encode every field of complete clearpath_motor_msgs/action/LynxCalibrate_Goal.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_motor_msgsActionLynxCalibrate_Goal(value: *Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_motor_msgs/action/LynxCalibrate_Goal.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_motor_msgsActionLynxCalibrate_Goal(bytes: []const u8) wire.Error!Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal {
    return wire.decode(Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal, bytes);
}

/// @brief Complete clearpath_motor_msgs/action/LynxCalibrate_Result value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..12 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_motor_msgsActionLynxCalibrate_Result = struct {
    /// @brief Original clearpath_motor_msgs/action/LynxCalibrate_Result.offset field.
    /// @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_offset: wire.Sequence(f32, 2) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 12;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_686450363b8b15eba1e9e9e9ff05c9aacfb95bb0d113eaa7c443e4c70d55d41f";
};
/// @brief Encode every field of complete clearpath_motor_msgs/action/LynxCalibrate_Result.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_motor_msgsActionLynxCalibrate_Result(value: *Ros2Clearpath_motor_msgsActionLynxCalibrate_Result, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_motor_msgs/action/LynxCalibrate_Result.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_motor_msgsActionLynxCalibrate_Result(bytes: []const u8) wire.Error!Ros2Clearpath_motor_msgsActionLynxCalibrate_Result {
    return wire.decode(Ros2Clearpath_motor_msgsActionLynxCalibrate_Result, bytes);
}

/// @brief Complete clearpath_motor_msgs/action/LynxCalibrate_Feedback value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..8 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback = struct {
    /// @brief Original clearpath_motor_msgs/action/LynxCalibrate_Feedback.iteration field.
    /// @details Original type uint16. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_iteration: wire.Sequence(u16, 2) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 8;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_ebe7badd3f72982079911d8aa72c4ddd27ff0a12d2f948e5970649317a592b53";
};
/// @brief Encode every field of complete clearpath_motor_msgs/action/LynxCalibrate_Feedback.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_motor_msgsActionLynxCalibrate_Feedback(value: *Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_motor_msgs/action/LynxCalibrate_Feedback.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_motor_msgsActionLynxCalibrate_Feedback(bytes: []const u8) wire.Error!Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback {
    return wire.decode(Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback, bytes);
}

/// @brief Complete clearpath_motor_msgs/action/LynxUpdate_Goal value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..260 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_motor_msgsActionLynxUpdate_Goal = struct {
    /// @brief Original clearpath_motor_msgs/action/LynxUpdate_Goal.file field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_file: wire.Text(256, false) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 260;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_f0362f8a90391e8ffda2e8f3b798769b644091058361882c4e9457196f007565";
};
/// @brief Encode every field of complete clearpath_motor_msgs/action/LynxUpdate_Goal.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_motor_msgsActionLynxUpdate_Goal(value: *Ros2Clearpath_motor_msgsActionLynxUpdate_Goal, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_motor_msgs/action/LynxUpdate_Goal.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_motor_msgsActionLynxUpdate_Goal(bytes: []const u8) wire.Error!Ros2Clearpath_motor_msgsActionLynxUpdate_Goal {
    return wire.decode(Ros2Clearpath_motor_msgsActionLynxUpdate_Goal, bytes);
}

/// @brief Complete clearpath_motor_msgs/action/LynxUpdate_Result value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..6 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_motor_msgsActionLynxUpdate_Result = struct {
    /// @brief Original clearpath_motor_msgs/action/LynxUpdate_Result.success field.
    /// @details Original type bool. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_success: wire.Sequence(bool, 2) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 6;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_126fe871dbcb036e485d20e8ccdc8e9fb7be01757f539bfba895aabf44d341d8";
};
/// @brief Encode every field of complete clearpath_motor_msgs/action/LynxUpdate_Result.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_motor_msgsActionLynxUpdate_Result(value: *Ros2Clearpath_motor_msgsActionLynxUpdate_Result, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_motor_msgs/action/LynxUpdate_Result.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_motor_msgsActionLynxUpdate_Result(bytes: []const u8) wire.Error!Ros2Clearpath_motor_msgsActionLynxUpdate_Result {
    return wire.decode(Ros2Clearpath_motor_msgsActionLynxUpdate_Result, bytes);
}

/// @brief Complete clearpath_motor_msgs/action/LynxUpdate_Feedback value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..12 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback = struct {
    /// @brief Original clearpath_motor_msgs/action/LynxUpdate_Feedback.progress field.
    /// @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_progress: wire.Sequence(f32, 2) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 12;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_2179ec9dee627234a1a31e9681ff214cc45ca837349cd8e407e019a354121b19";
};
/// @brief Encode every field of complete clearpath_motor_msgs/action/LynxUpdate_Feedback.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_motor_msgsActionLynxUpdate_Feedback(value: *Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_motor_msgs/action/LynxUpdate_Feedback.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_motor_msgsActionLynxUpdate_Feedback(bytes: []const u8) wire.Error!Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback {
    return wire.decode(Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback, bytes);
}

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
    /// @brief Validate every original complete-value semantic constraint.
    /// @details Preserve normalized time and all six optional JointState array pairs without
    /// changing fields.
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

/// @brief Complete clearpath_control_msgs/msg/DeviceInfo value.
/// @details Retain all 7 original fields and 0 constants. Canonical extent 28..1820 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_control_msgsMsgDeviceInfo = struct {
    /// @brief Original clearpath_control_msgs/msg/DeviceInfo.device_id field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_device_id: wire.Text(256, false) = .{},
    /// @brief Original clearpath_control_msgs/msg/DeviceInfo.device_class field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_device_class: wire.Text(256, false) = .{},
    /// @brief Original clearpath_control_msgs/msg/DeviceInfo.model field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_model: wire.Text(256, false) = .{},
    /// @brief Original clearpath_control_msgs/msg/DeviceInfo.manufacturer field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_manufacturer: wire.Text(256, false) = .{},
    /// @brief Original clearpath_control_msgs/msg/DeviceInfo.firmware_version field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_firmware_version: wire.Text(256, false) = .{},
    /// @brief Original clearpath_control_msgs/msg/DeviceInfo.hardware_version field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_hardware_version: wire.Text(256, false) = .{},
    /// @brief Original clearpath_control_msgs/msg/DeviceInfo.serial_number field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_serial_number: wire.Text(256, false) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 28;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 1820;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_9111f5d4b5324c36eb85f01e6fdbc3c589479ff5b64a8fa7b9d467aa14675c3e";
};
/// @brief Encode every field of complete clearpath_control_msgs/msg/DeviceInfo.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_control_msgsMsgDeviceInfo(value: *Ros2Clearpath_control_msgsMsgDeviceInfo, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_control_msgs/msg/DeviceInfo.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_control_msgsMsgDeviceInfo(bytes: []const u8) wire.Error!Ros2Clearpath_control_msgsMsgDeviceInfo {
    return wire.decode(Ros2Clearpath_control_msgsMsgDeviceInfo, bytes);
}

/// @brief Complete clearpath_control_msgs/msg/StreamControl value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 5..261 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_control_msgsMsgStreamControl = struct {
    /// @brief Original clearpath_control_msgs/msg/StreamControl.stream field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_stream: wire.Text(256, false) = .{},
    /// @brief Original clearpath_control_msgs/msg/StreamControl.enabled field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_enabled: bool = false,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 5;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 261;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_26208e266c9185bfb0e715407ab0fe313f2d47e6bc9f54594a102c3a09d34734";
};
/// @brief Encode every field of complete clearpath_control_msgs/msg/StreamControl.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_control_msgsMsgStreamControl(value: *Ros2Clearpath_control_msgsMsgStreamControl, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_control_msgs/msg/StreamControl.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_control_msgsMsgStreamControl(bytes: []const u8) wire.Error!Ros2Clearpath_control_msgsMsgStreamControl {
    return wire.decode(Ros2Clearpath_control_msgsMsgStreamControl, bytes);
}

/// @brief Complete clearpath_motor_msgs/msg/LynxDebug value.
/// @details Retain all 6 original fields and 33 constants. Canonical extent 19..291 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_motor_msgsMsgLynxDebug = struct {
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.can_id field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_can_id: u8 = 0,
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.joint_name field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_joint_name: wire.Text(256, false) = .{},
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.fault_frequency field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_fault_frequency: u16 = 0,
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.accumulator_flags field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_accumulator_flags: u32 = 0,
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.accumulators field.
    /// @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_accumulators: wire.Sequence(f32, 2) = .{},
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.currents field.
    /// @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_currents: wire.Sequence(f32, 2) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 19;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 291;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_0341ae040f1e8a1f980bde84498c4a4f8b9c55c3806839a73727c1579ab4416e";
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_ABOVE_RATED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ACCUMULATOR_FLAG_ABOVE_RATED: u8 = 0;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ACCUMULATOR_FLAG_CONTINUOUS_1_1: u8 = 1;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ACCUMULATOR_FLAG_CONTINUOUS_1_2: u8 = 2;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ACCUMULATOR_FLAG_CONTINUOUS_1_3: u8 = 3;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_4 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ACCUMULATOR_FLAG_CONTINUOUS_1_4: u8 = 4;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_5 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ACCUMULATOR_FLAG_CONTINUOUS_1_5: u8 = 5;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_6 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ACCUMULATOR_FLAG_CONTINUOUS_1_6: u8 = 6;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_7 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ACCUMULATOR_FLAG_CONTINUOUS_1_7: u8 = 7;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_8 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ACCUMULATOR_FLAG_CONTINUOUS_1_8: u8 = 8;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_9 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ACCUMULATOR_FLAG_CONTINUOUS_1_9: u8 = 9;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_0 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ACCUMULATOR_FLAG_CONTINUOUS_2_0: u8 = 10;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ACCUMULATOR_FLAG_CONTINUOUS_2_1: u8 = 11;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ACCUMULATOR_FLAG_CONTINUOUS_2_2: u8 = 12;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ACCUMULATOR_FLAG_CONTINUOUS_2_3: u8 = 13;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_4 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ACCUMULATOR_FLAG_CONTINUOUS_2_4: u8 = 14;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_5 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ACCUMULATOR_FLAG_CONTINUOUS_2_5: u8 = 15;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_6 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ACCUMULATOR_FLAG_CONTINUOUS_2_6: u8 = 16;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_7 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ACCUMULATOR_FLAG_CONTINUOUS_2_7: u8 = 17;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_8 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ACCUMULATOR_FLAG_CONTINUOUS_2_8: u8 = 18;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_9 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ACCUMULATOR_FLAG_CONTINUOUS_2_9: u8 = 19;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_3_0 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ACCUMULATOR_FLAG_CONTINUOUS_3_0: u8 = 20;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_ABOVE_RATED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ACCUMULATOR_ABOVE_RATED: u8 = 0;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_CONTINUOUS_1_1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ACCUMULATOR_CONTINUOUS_1_1: u8 = 1;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_CONTINUOUS_1_5 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ACCUMULATOR_CONTINUOUS_1_5: u8 = 2;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_CONTINUOUS_2_0 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ACCUMULATOR_CONTINUOUS_2_0: u8 = 3;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_CONTINUOUS_2_5 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ACCUMULATOR_CONTINUOUS_2_5: u8 = 4;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_CONTINUOUS_3_0 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ACCUMULATOR_CONTINUOUS_3_0: u8 = 5;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_ID_FB constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CURRENT_ID_FB: u8 = 0;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_ID_FF constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CURRENT_ID_FF: u8 = 1;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_ID_REF constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CURRENT_ID_REF: u8 = 2;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_IQ_FB constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CURRENT_IQ_FB: u8 = 3;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_IQ_FF constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CURRENT_IQ_FF: u8 = 4;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_IQ_REF constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CURRENT_IQ_REF: u8 = 5;
};
/// @brief Encode every field of complete clearpath_motor_msgs/msg/LynxDebug.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_motor_msgsMsgLynxDebug(value: *Ros2Clearpath_motor_msgsMsgLynxDebug, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_motor_msgs/msg/LynxDebug.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_motor_msgsMsgLynxDebug(bytes: []const u8) wire.Error!Ros2Clearpath_motor_msgsMsgLynxDebug {
    return wire.decode(Ros2Clearpath_motor_msgsMsgLynxDebug, bytes);
}

/// @brief Complete clearpath_motor_msgs/msg/LynxFeedback value.
/// @details Retain all 6 original fields and 0 constants. Canonical extent 21..277 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_motor_msgsMsgLynxFeedback = struct {
    /// @brief Original clearpath_motor_msgs/msg/LynxFeedback.can_id field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_can_id: u8 = 0,
    /// @brief Original clearpath_motor_msgs/msg/LynxFeedback.joint_name field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_joint_name: wire.Text(256, false) = .{},
    /// @brief Original clearpath_motor_msgs/msg/LynxFeedback.current field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_current: f32 = 0,
    /// @brief Original clearpath_motor_msgs/msg/LynxFeedback.voltage field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_voltage: f32 = 0,
    /// @brief Original clearpath_motor_msgs/msg/LynxFeedback.velocity field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_velocity: f32 = 0,
    /// @brief Original clearpath_motor_msgs/msg/LynxFeedback.travel field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_travel: f32 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 21;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 277;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_5d92c7085019ebf00ba93788b5b2f4055ad40b2c6714575a66fb75cf314429eb";
};
/// @brief Encode every field of complete clearpath_motor_msgs/msg/LynxFeedback.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_motor_msgsMsgLynxFeedback(value: *Ros2Clearpath_motor_msgsMsgLynxFeedback, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_motor_msgs/msg/LynxFeedback.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_motor_msgsMsgLynxFeedback(bytes: []const u8) wire.Error!Ros2Clearpath_motor_msgsMsgLynxFeedback {
    return wire.decode(Ros2Clearpath_motor_msgsMsgLynxFeedback, bytes);
}

/// @brief Complete clearpath_motor_msgs/msg/LynxMotorProtection value.
/// @details Retain all 3 original fields and 4 constants. Canonical extent 6..262 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_motor_msgsMsgLynxMotorProtection = struct {
    /// @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.can_id field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_can_id: u8 = 0,
    /// @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.joint_name field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_joint_name: wire.Text(256, false) = .{},
    /// @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_state: u8 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 6;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 262;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_f824abfa97f6f24934e04094d66170167f19a14fb933f325cbef4ed6fca16630";
    /// @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.NORMAL constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NORMAL: u8 = 0;
    /// @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.THROTTLED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_THROTTLED: u8 = 1;
    /// @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.OVERHEATED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_OVERHEATED: u8 = 2;
    /// @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.ERROR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ERROR: u8 = 3;
};
/// @brief Encode every field of complete clearpath_motor_msgs/msg/LynxMotorProtection.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_motor_msgsMsgLynxMotorProtection(value: *Ros2Clearpath_motor_msgsMsgLynxMotorProtection, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_motor_msgs/msg/LynxMotorProtection.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_motor_msgsMsgLynxMotorProtection(bytes: []const u8) wire.Error!Ros2Clearpath_motor_msgsMsgLynxMotorProtection {
    return wire.decode(Ros2Clearpath_motor_msgsMsgLynxMotorProtection, bytes);
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

/// @brief Complete clearpath_motor_msgs/msg/LynxMultiDebug value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 16..1308 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_motor_msgsMsgLynxMultiDebug = struct {
    /// @brief Original clearpath_motor_msgs/msg/LynxMultiDebug.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader = .{},
    /// @brief Original clearpath_motor_msgs/msg/LynxMultiDebug.drivers field.
    /// @details Original type clearpath_motor_msgs/msg/LynxDebug. Shape sequence; bound/count 4
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_drivers: wire.Sequence(Ros2Clearpath_motor_msgsMsgLynxDebug, 4) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 16;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 1308;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_056abd2153e7f1a6df223bf5daba581e6c218bb7ef365444fc5c3171dfc62e95";
};
/// @brief Encode every field of complete clearpath_motor_msgs/msg/LynxMultiDebug.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_motor_msgsMsgLynxMultiDebug(value: *Ros2Clearpath_motor_msgsMsgLynxMultiDebug, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_motor_msgs/msg/LynxMultiDebug.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_motor_msgsMsgLynxMultiDebug(bytes: []const u8) wire.Error!Ros2Clearpath_motor_msgsMsgLynxMultiDebug {
    return wire.decode(Ros2Clearpath_motor_msgsMsgLynxMultiDebug, bytes);
}

/// @brief Complete clearpath_motor_msgs/msg/LynxMultiFeedback value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 16..1252 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_motor_msgsMsgLynxMultiFeedback = struct {
    /// @brief Original clearpath_motor_msgs/msg/LynxMultiFeedback.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader = .{},
    /// @brief Original clearpath_motor_msgs/msg/LynxMultiFeedback.drivers field.
    /// @details Original type clearpath_motor_msgs/msg/LynxFeedback. Shape sequence; bound/count 4
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_drivers: wire.Sequence(Ros2Clearpath_motor_msgsMsgLynxFeedback, 4) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 16;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 1252;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_2c83cade6bec4d766fd2cff97338642b3d2065d41e9968ccf5054c6f231242c7";
};
/// @brief Encode every field of complete clearpath_motor_msgs/msg/LynxMultiFeedback.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_motor_msgsMsgLynxMultiFeedback(value: *Ros2Clearpath_motor_msgsMsgLynxMultiFeedback, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_motor_msgs/msg/LynxMultiFeedback.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_motor_msgsMsgLynxMultiFeedback(bytes: []const u8) wire.Error!Ros2Clearpath_motor_msgsMsgLynxMultiFeedback {
    return wire.decode(Ros2Clearpath_motor_msgsMsgLynxMultiFeedback, bytes);
}

/// @brief Complete clearpath_motor_msgs/msg/LynxStatus value.
/// @details Retain all 10 original fields and 27 constants. Canonical extent 34..546 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_motor_msgsMsgLynxStatus = struct {
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.can_id field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_can_id: u8 = 0,
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.joint_name field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_joint_name: wire.Text(256, false) = .{},
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.firmware_version field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_firmware_version: wire.Text(256, false) = .{},
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.motor_temperature field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_motor_temperature: f32 = 0,
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.mcu_temperature field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mcu_temperature: f32 = 0,
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.pcb_temperature field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_pcb_temperature: f32 = 0,
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.stopped field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_stopped: bool = false,
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.status_flags field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_status_flags: u32 = 0,
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.warning_flags field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_warning_flags: u32 = 0,
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.error_flags field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_error_flags: u32 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 34;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 546;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_b68a7ab9bc5312c59d2ef86e49313468b631e8cacdf52468374b67f4eced5c6d";
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.STATUS_FLAG_ADC_CALIBRATED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_STATUS_FLAG_ADC_CALIBRATED: u8 = 0;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.STATUS_FLAG_FOC_ENABLED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_STATUS_FLAG_FOC_ENABLED: u8 = 1;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.STATUS_FLAG_CALIBRATION_REQUESTED
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_STATUS_FLAG_CALIBRATION_REQUESTED: u8 = 2;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.STATUS_FLAG_CALIBRATION_CANCELLED
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_STATUS_FLAG_CALIBRATION_CANCELLED: u8 = 3;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.STATUS_FLAG_ESTOPPED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_STATUS_FLAG_ESTOPPED: u8 = 4;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_MOTOR_THERMISTOR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_WARNING_FLAG_MOTOR_THERMISTOR: u8 = 0;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_PCB_THERMISTOR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_WARNING_FLAG_PCB_THERMISTOR: u8 = 1;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_PHASE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_WARNING_FLAG_PHASE: u8 = 2;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_PHASE_A constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_WARNING_FLAG_PHASE_A: u8 = 3;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_PHASE_B constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_WARNING_FLAG_PHASE_B: u8 = 4;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_PHASE_C constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_WARNING_FLAG_PHASE_C: u8 = 5;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_ENCODER_INDEX constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_WARNING_FLAG_ENCODER_INDEX: u8 = 6;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_ENCODER_OUTPUT_A constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_WARNING_FLAG_ENCODER_OUTPUT_A: u8 = 7;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_ENCODER_OUTPUT_B constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_WARNING_FLAG_ENCODER_OUTPUT_B: u8 = 8;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_NOT_CALIBRATED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ERROR_FLAG_NOT_CALIBRATED: u8 = 0;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_MOTOR_FAULT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ERROR_FLAG_MOTOR_FAULT: u8 = 1;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_MOTOR_STALLING constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ERROR_FLAG_MOTOR_STALLING: u8 = 2;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_MOTOR_THERMISTOR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ERROR_FLAG_MOTOR_THERMISTOR: u8 = 3;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_PCB_THERMISTOR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ERROR_FLAG_PCB_THERMISTOR: u8 = 4;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_PHASE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ERROR_FLAG_PHASE: u8 = 5;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_PHASE_A constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ERROR_FLAG_PHASE_A: u8 = 6;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_PHASE_B constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ERROR_FLAG_PHASE_B: u8 = 7;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_PHASE_C constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ERROR_FLAG_PHASE_C: u8 = 8;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_ENCODER_POWER constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ERROR_FLAG_ENCODER_POWER: u8 = 9;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_ENCODER_INDEX constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ERROR_FLAG_ENCODER_INDEX: u8 = 10;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_ENCODER_OUTPUT_A constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ERROR_FLAG_ENCODER_OUTPUT_A: u8 = 11;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_ENCODER_OUTPUT_B constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_ERROR_FLAG_ENCODER_OUTPUT_B: u8 = 12;
};
/// @brief Encode every field of complete clearpath_motor_msgs/msg/LynxStatus.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_motor_msgsMsgLynxStatus(value: *Ros2Clearpath_motor_msgsMsgLynxStatus, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_motor_msgs/msg/LynxStatus.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_motor_msgsMsgLynxStatus(bytes: []const u8) wire.Error!Ros2Clearpath_motor_msgsMsgLynxStatus {
    return wire.decode(Ros2Clearpath_motor_msgsMsgLynxStatus, bytes);
}

/// @brief Complete clearpath_motor_msgs/msg/LynxMultiStatus value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 16..2328 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_motor_msgsMsgLynxMultiStatus = struct {
    /// @brief Original clearpath_motor_msgs/msg/LynxMultiStatus.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader = .{},
    /// @brief Original clearpath_motor_msgs/msg/LynxMultiStatus.drivers field.
    /// @details Original type clearpath_motor_msgs/msg/LynxStatus. Shape sequence; bound/count 4
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_drivers: wire.Sequence(Ros2Clearpath_motor_msgsMsgLynxStatus, 4) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 16;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 2328;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_595cd0847b4332e14cc067b916166e9a6e1d1e12a7a68cdb7e1cd414a9ea9ce1";
};
/// @brief Encode every field of complete clearpath_motor_msgs/msg/LynxMultiStatus.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_motor_msgsMsgLynxMultiStatus(value: *Ros2Clearpath_motor_msgsMsgLynxMultiStatus, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_motor_msgs/msg/LynxMultiStatus.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_motor_msgsMsgLynxMultiStatus(bytes: []const u8) wire.Error!Ros2Clearpath_motor_msgsMsgLynxMultiStatus {
    return wire.decode(Ros2Clearpath_motor_msgsMsgLynxMultiStatus, bytes);
}

/// @brief Complete clearpath_motor_msgs/msg/LynxSystemProtection value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 17..669 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_motor_msgsMsgLynxSystemProtection = struct {
    /// @brief Original clearpath_motor_msgs/msg/LynxSystemProtection.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader = .{},
    /// @brief Original clearpath_motor_msgs/msg/LynxSystemProtection.system_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_system_state: u8 = 0,
    /// @brief Original clearpath_motor_msgs/msg/LynxSystemProtection.motor_states field.
    /// @details Original type clearpath_motor_msgs/msg/LynxMotorProtection. Shape sequence;
    /// bound/count 2 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    field_motor_states: wire.Sequence(Ros2Clearpath_motor_msgsMsgLynxMotorProtection, 2) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 17;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 669;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_4d662de03c34bb633a122399be1a1aaea6187550c83231bf6d8a06b95fa82d9f";
};
/// @brief Encode every field of complete clearpath_motor_msgs/msg/LynxSystemProtection.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_motor_msgsMsgLynxSystemProtection(value: *Ros2Clearpath_motor_msgsMsgLynxSystemProtection, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_motor_msgs/msg/LynxSystemProtection.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_motor_msgsMsgLynxSystemProtection(bytes: []const u8) wire.Error!Ros2Clearpath_motor_msgsMsgLynxSystemProtection {
    return wire.decode(Ros2Clearpath_motor_msgsMsgLynxSystemProtection, bytes);
}

/// @brief Complete clearpath_motor_msgs/msg/PumaFeedback value.
/// @details Retain all 7 original fields and 0 constants. Canonical extent 37..293 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_motor_msgsMsgPumaFeedback = struct {
    /// @brief Original clearpath_motor_msgs/msg/PumaFeedback.device_number field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_device_number: u8 = 0,
    /// @brief Original clearpath_motor_msgs/msg/PumaFeedback.device_name field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_device_name: wire.Text(256, false) = .{},
    /// @brief Original clearpath_motor_msgs/msg/PumaFeedback.duty_cycle field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_duty_cycle: f32 = 0,
    /// @brief Original clearpath_motor_msgs/msg/PumaFeedback.current field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_current: f32 = 0,
    /// @brief Original clearpath_motor_msgs/msg/PumaFeedback.travel field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_travel: f64 = 0,
    /// @brief Original clearpath_motor_msgs/msg/PumaFeedback.speed field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_speed: f64 = 0,
    /// @brief Original clearpath_motor_msgs/msg/PumaFeedback.setpoint field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_setpoint: f64 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 37;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 293;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_c020162b07a55ac5f41df6021c0d3053d7302863f4e544a738b6cc5bc4dc9659";
};
/// @brief Encode every field of complete clearpath_motor_msgs/msg/PumaFeedback.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_motor_msgsMsgPumaFeedback(value: *Ros2Clearpath_motor_msgsMsgPumaFeedback, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_motor_msgs/msg/PumaFeedback.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_motor_msgsMsgPumaFeedback(bytes: []const u8) wire.Error!Ros2Clearpath_motor_msgsMsgPumaFeedback {
    return wire.decode(Ros2Clearpath_motor_msgsMsgPumaFeedback, bytes);
}

/// @brief Complete clearpath_motor_msgs/msg/PumaMultiFeedback value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 16..1316 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_motor_msgsMsgPumaMultiFeedback = struct {
    /// @brief Original clearpath_motor_msgs/msg/PumaMultiFeedback.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader = .{},
    /// @brief Original clearpath_motor_msgs/msg/PumaMultiFeedback.drivers_feedback field.
    /// @details Original type clearpath_motor_msgs/msg/PumaFeedback. Shape sequence; bound/count 4
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_drivers_feedback: wire.Sequence(Ros2Clearpath_motor_msgsMsgPumaFeedback, 4) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 16;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 1316;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_638309564580ad23d585799dcd46156e1e4261ebf9febfbb91754c250907c947";
};
/// @brief Encode every field of complete clearpath_motor_msgs/msg/PumaMultiFeedback.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_motor_msgsMsgPumaMultiFeedback(value: *Ros2Clearpath_motor_msgsMsgPumaMultiFeedback, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_motor_msgs/msg/PumaMultiFeedback.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_motor_msgsMsgPumaMultiFeedback(bytes: []const u8) wire.Error!Ros2Clearpath_motor_msgsMsgPumaMultiFeedback {
    return wire.decode(Ros2Clearpath_motor_msgsMsgPumaMultiFeedback, bytes);
}

/// @brief Complete clearpath_motor_msgs/msg/PumaStatus value.
/// @details Retain all 8 original fields and 9 constants. Canonical extent 23..279 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_motor_msgsMsgPumaStatus = struct {
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.device_number field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_device_number: u8 = 0,
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.device_name field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_device_name: wire.Text(256, false) = .{},
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.bus_voltage field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_bus_voltage: f32 = 0,
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.temperature field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_temperature: f32 = 0,
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.output_voltage field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_output_voltage: f32 = 0,
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.analog_input field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_analog_input: f32 = 0,
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode: u8 = 0,
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.fault field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_fault: u8 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 23;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 279;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_a027229db2c8500f707d97064548b27e77e24ae4840ad9722d2dc74726099da8";
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.MODE_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_MODE_VOLTAGE: u8 = 0;
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.MODE_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_MODE_CURRENT: u8 = 1;
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.MODE_SPEED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_MODE_SPEED: u8 = 2;
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.MODE_POSITION constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_MODE_POSITION: u8 = 3;
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.MODE_VCOMP constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_MODE_VCOMP: u8 = 4;
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.FAULT_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_FAULT_CURRENT: u8 = 1;
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.FAULT_TEMPERATURE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_FAULT_TEMPERATURE: u8 = 2;
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.FAULT_BUS_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_FAULT_BUS_VOLTAGE: u8 = 4;
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.FAULT_BRIDGE_DRIVER constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_FAULT_BRIDGE_DRIVER: u8 = 8;
};
/// @brief Encode every field of complete clearpath_motor_msgs/msg/PumaStatus.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_motor_msgsMsgPumaStatus(value: *Ros2Clearpath_motor_msgsMsgPumaStatus, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_motor_msgs/msg/PumaStatus.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_motor_msgsMsgPumaStatus(bytes: []const u8) wire.Error!Ros2Clearpath_motor_msgsMsgPumaStatus {
    return wire.decode(Ros2Clearpath_motor_msgsMsgPumaStatus, bytes);
}

/// @brief Complete clearpath_motor_msgs/msg/PumaMultiStatus value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 16..1260 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_motor_msgsMsgPumaMultiStatus = struct {
    /// @brief Original clearpath_motor_msgs/msg/PumaMultiStatus.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader = .{},
    /// @brief Original clearpath_motor_msgs/msg/PumaMultiStatus.drivers field.
    /// @details Original type clearpath_motor_msgs/msg/PumaStatus. Shape sequence; bound/count 4
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_drivers: wire.Sequence(Ros2Clearpath_motor_msgsMsgPumaStatus, 4) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 16;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 1260;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_30a0210fea4fffe07371c898c365ef9696501a7541935dd80770671a7163c8f2";
};
/// @brief Encode every field of complete clearpath_motor_msgs/msg/PumaMultiStatus.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_motor_msgsMsgPumaMultiStatus(value: *Ros2Clearpath_motor_msgsMsgPumaMultiStatus, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_motor_msgs/msg/PumaMultiStatus.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_motor_msgsMsgPumaMultiStatus(bytes: []const u8) wire.Error!Ros2Clearpath_motor_msgsMsgPumaMultiStatus {
    return wire.decode(Ros2Clearpath_motor_msgsMsgPumaMultiStatus, bytes);
}

/// @brief Complete clearpath_platform_msgs/msg/DisplayStatus value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..106 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_platform_msgsMsgDisplayStatus = struct {
    /// @brief Original clearpath_platform_msgs/msg/DisplayStatus.string1 field.
    /// @details Original type string. String bound 49 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_string1: wire.Text(49, false) = .{},
    /// @brief Original clearpath_platform_msgs/msg/DisplayStatus.string2 field.
    /// @details Original type string. String bound 49 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_string2: wire.Text(49, false) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 8;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 106;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_e4585117414581491304a26d528b44c770799f622c3f1cde037078f5cb2462c2";
};
/// @brief Encode every field of complete clearpath_platform_msgs/msg/DisplayStatus.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_platform_msgsMsgDisplayStatus(value: *Ros2Clearpath_platform_msgsMsgDisplayStatus, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_platform_msgs/msg/DisplayStatus.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_platform_msgsMsgDisplayStatus(bytes: []const u8) wire.Error!Ros2Clearpath_platform_msgsMsgDisplayStatus {
    return wire.decode(Ros2Clearpath_platform_msgsMsgDisplayStatus, bytes);
}

/// @brief Complete clearpath_platform_msgs/msg/Drive value.
/// @details Retain all 2 original fields and 5 constants. Canonical extent 9..9 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_platform_msgsMsgDrive = struct {
    /// @brief Original clearpath_platform_msgs/msg/Drive.mode field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode: i8 = 0,
    /// @brief Original clearpath_platform_msgs/msg/Drive.drivers field.
    /// @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_drivers: [2]f32 = @splat(@as(f32, 0)),
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
    pub const codec_identity = "UWVMROS1_be8664128ff89a066550f1a2496c30396f39bafd1d96483c545048a328138785";
    /// @brief Original clearpath_platform_msgs/msg/Drive.MODE_VELOCITY constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_MODE_VELOCITY: i8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/Drive.MODE_PWM constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_MODE_PWM: i8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/Drive.MODE_NONE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_MODE_NONE: i8 = -1;
    /// @brief Original clearpath_platform_msgs/msg/Drive.LEFT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_LEFT: i8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/Drive.RIGHT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_RIGHT: i8 = 1;
};
/// @brief Encode every field of complete clearpath_platform_msgs/msg/Drive.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_platform_msgsMsgDrive(value: *Ros2Clearpath_platform_msgsMsgDrive, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_platform_msgs/msg/Drive.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_platform_msgsMsgDrive(bytes: []const u8) wire.Error!Ros2Clearpath_platform_msgsMsgDrive {
    return wire.decode(Ros2Clearpath_platform_msgsMsgDrive, bytes);
}

/// @brief Complete clearpath_platform_msgs/msg/DriveFeedback value.
/// @details Retain all 7 original fields and 0 constants. Canonical extent 25..25 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_platform_msgsMsgDriveFeedback = struct {
    /// @brief Original clearpath_platform_msgs/msg/DriveFeedback.current field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_current: f32 = 0,
    /// @brief Original clearpath_platform_msgs/msg/DriveFeedback.duty_cycle field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_duty_cycle: f32 = 0,
    /// @brief Original clearpath_platform_msgs/msg/DriveFeedback.bridge_temperature field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_bridge_temperature: f32 = 0,
    /// @brief Original clearpath_platform_msgs/msg/DriveFeedback.motor_temperature field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_motor_temperature: f32 = 0,
    /// @brief Original clearpath_platform_msgs/msg/DriveFeedback.measured_velocity field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_measured_velocity: f32 = 0,
    /// @brief Original clearpath_platform_msgs/msg/DriveFeedback.measured_travel field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_measured_travel: f32 = 0,
    /// @brief Original clearpath_platform_msgs/msg/DriveFeedback.driver_fault field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_driver_fault: bool = false,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 25;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 25;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_008f51d4c8341723ffec72651f93c00db0f9feceb037ee7b6b460ffcafd3f287";
};
/// @brief Encode every field of complete clearpath_platform_msgs/msg/DriveFeedback.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_platform_msgsMsgDriveFeedback(value: *Ros2Clearpath_platform_msgsMsgDriveFeedback, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_platform_msgs/msg/DriveFeedback.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_platform_msgsMsgDriveFeedback(bytes: []const u8) wire.Error!Ros2Clearpath_platform_msgsMsgDriveFeedback {
    return wire.decode(Ros2Clearpath_platform_msgsMsgDriveFeedback, bytes);
}

/// @brief Complete clearpath_platform_msgs/msg/Fans value.
/// @details Retain all 1 original fields and 17 constants. Canonical extent 4..6 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_platform_msgsMsgFans = struct {
    /// @brief Original clearpath_platform_msgs/msg/Fans.fans field.
    /// @details Original type uint8. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_fans: wire.Sequence(u8, 2) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 6;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_a7d96f2242d992baf96f31bd8f93088547f92c72912c241c2d237f7714800cc8";
    /// @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_FAN1: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_FAN2: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_FAN3: u8 = 2;
    /// @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN4 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_FAN4: u8 = 3;
    /// @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN5 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_FAN5: u8 = 4;
    /// @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN6 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_FAN6: u8 = 5;
    /// @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN7 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_FAN7: u8 = 6;
    /// @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN8 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_FAN8: u8 = 7;
    /// @brief Original clearpath_platform_msgs/msg/Fans.R100_EQUIPMENT_BAY_INTAKE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_R100_EQUIPMENT_BAY_INTAKE: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/Fans.R100_EQUIPMENT_BAY_EXHAUST constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_R100_EQUIPMENT_BAY_EXHAUST: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/Fans.R100_CHARGER_BAY_INTAKE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_R100_CHARGER_BAY_INTAKE: u8 = 2;
    /// @brief Original clearpath_platform_msgs/msg/Fans.R100_CHARGER_BAY_EXHAUST constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_R100_CHARGER_BAY_EXHAUST: u8 = 3;
    /// @brief Original clearpath_platform_msgs/msg/Fans.R100_USER_BAY_INTAKE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_R100_USER_BAY_INTAKE: u8 = 4;
    /// @brief Original clearpath_platform_msgs/msg/Fans.R100_USER_BAY_EXHAUST constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_R100_USER_BAY_EXHAUST: u8 = 5;
    /// @brief Original clearpath_platform_msgs/msg/Fans.FAN_OFF constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_FAN_OFF: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/Fans.FAN_ON_HIGH constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_FAN_ON_HIGH: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/Fans.FAN_ON_LOW constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_FAN_ON_LOW: u8 = 2;
};
/// @brief Encode every field of complete clearpath_platform_msgs/msg/Fans.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_platform_msgsMsgFans(value: *Ros2Clearpath_platform_msgsMsgFans, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_platform_msgs/msg/Fans.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_platform_msgsMsgFans(bytes: []const u8) wire.Error!Ros2Clearpath_platform_msgsMsgFans {
    return wire.decode(Ros2Clearpath_platform_msgsMsgFans, bytes);
}

/// @brief Complete clearpath_platform_msgs/msg/Feedback value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 64..192 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_platform_msgsMsgFeedback = struct {
    /// @brief Original clearpath_platform_msgs/msg/Feedback.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader = .{},
    /// @brief Original clearpath_platform_msgs/msg/Feedback.drivers field.
    /// @details Original type clearpath_platform_msgs/msg/DriveFeedback. Shape array; bound/count 2
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_drivers: [2]Ros2Clearpath_platform_msgsMsgDriveFeedback = @splat(@as(
        Ros2Clearpath_platform_msgsMsgDriveFeedback, .{},
    )),
    /// @brief Original clearpath_platform_msgs/msg/Feedback.commanded_mode field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_commanded_mode: i8 = 0,
    /// @brief Original clearpath_platform_msgs/msg/Feedback.actual_mode field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_actual_mode: i8 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 64;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 192;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_15fdfd2e12df38bab09bf083beb61ce23d3c1082e794c34d51eec4c473e29442";
};
/// @brief Encode every field of complete clearpath_platform_msgs/msg/Feedback.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_platform_msgsMsgFeedback(value: *Ros2Clearpath_platform_msgsMsgFeedback, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_platform_msgs/msg/Feedback.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_platform_msgsMsgFeedback(bytes: []const u8) wire.Error!Ros2Clearpath_platform_msgsMsgFeedback {
    return wire.decode(Ros2Clearpath_platform_msgsMsgFeedback, bytes);
}

/// @brief Complete clearpath_platform_msgs/msg/RGB value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 3..3 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_platform_msgsMsgRGB = struct {
    /// @brief Original clearpath_platform_msgs/msg/RGB.red field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_red: u8 = 0,
    /// @brief Original clearpath_platform_msgs/msg/RGB.green field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_green: u8 = 0,
    /// @brief Original clearpath_platform_msgs/msg/RGB.blue field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_blue: u8 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 3;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 3;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_42db8731293054ef44002afc54c16dac45544354932d5353cf749fb376cef1a1";
};
/// @brief Encode every field of complete clearpath_platform_msgs/msg/RGB.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_platform_msgsMsgRGB(value: *Ros2Clearpath_platform_msgsMsgRGB, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_platform_msgs/msg/RGB.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_platform_msgsMsgRGB(bytes: []const u8) wire.Error!Ros2Clearpath_platform_msgsMsgRGB {
    return wire.decode(Ros2Clearpath_platform_msgsMsgRGB, bytes);
}

/// @brief Complete clearpath_platform_msgs/msg/Lights value.
/// @details Retain all 1 original fields and 24 constants. Canonical extent 4..10 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_platform_msgsMsgLights = struct {
    /// @brief Original clearpath_platform_msgs/msg/Lights.lights field.
    /// @details Original type clearpath_platform_msgs/msg/RGB. Shape sequence; bound/count 2
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_lights: wire.Sequence(Ros2Clearpath_platform_msgsMsgRGB, 2) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 10;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_3f975a3ec1fca4f8add9523d4f9f99963be520c0e2982e644551b71cbd4b8a27";
    /// @brief Original clearpath_platform_msgs/msg/Lights.D100_LIGHTS_REAR_LEFT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D100_LIGHTS_REAR_LEFT: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/Lights.D100_LIGHTS_FRONT_LEFT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D100_LIGHTS_FRONT_LEFT: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/Lights.D100_LIGHTS_FRONT_RIGHT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D100_LIGHTS_FRONT_RIGHT: u8 = 2;
    /// @brief Original clearpath_platform_msgs/msg/Lights.D100_LIGHTS_REAR_RIGHT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D100_LIGHTS_REAR_RIGHT: u8 = 3;
    /// @brief Original clearpath_platform_msgs/msg/Lights.D150_LIGHTS_REAR_LEFT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D150_LIGHTS_REAR_LEFT: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/Lights.D150_LIGHTS_FRONT_LEFT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D150_LIGHTS_FRONT_LEFT: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/Lights.D150_LIGHTS_FRONT_RIGHT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D150_LIGHTS_FRONT_RIGHT: u8 = 2;
    /// @brief Original clearpath_platform_msgs/msg/Lights.D150_LIGHTS_REAR_RIGHT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D150_LIGHTS_REAR_RIGHT: u8 = 3;
    /// @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_FRONT_PORT_UPPER constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_R100_LIGHTS_FRONT_PORT_UPPER: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_FRONT_PORT_LOWER constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_R100_LIGHTS_FRONT_PORT_LOWER: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_FRONT_STARBOARD_UPPER
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_R100_LIGHTS_FRONT_STARBOARD_UPPER: u8 = 2;
    /// @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_FRONT_STARBOARD_LOWER
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_R100_LIGHTS_FRONT_STARBOARD_LOWER: u8 = 3;
    /// @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_REAR_PORT_UPPER constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_R100_LIGHTS_REAR_PORT_UPPER: u8 = 4;
    /// @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_REAR_PORT_LOWER constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_R100_LIGHTS_REAR_PORT_LOWER: u8 = 5;
    /// @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_REAR_STARBOARD_UPPER
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_R100_LIGHTS_REAR_STARBOARD_UPPER: u8 = 6;
    /// @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_REAR_STARBOARD_LOWER
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_R100_LIGHTS_REAR_STARBOARD_LOWER: u8 = 7;
    /// @brief Original clearpath_platform_msgs/msg/Lights.W200_LIGHTS_FRONT_LEFT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_W200_LIGHTS_FRONT_LEFT: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/Lights.W200_LIGHTS_FRONT_RIGHT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_W200_LIGHTS_FRONT_RIGHT: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/Lights.W200_LIGHTS_REAR_LEFT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_W200_LIGHTS_REAR_LEFT: u8 = 2;
    /// @brief Original clearpath_platform_msgs/msg/Lights.W200_LIGHTS_REAR_RIGHT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_W200_LIGHTS_REAR_RIGHT: u8 = 3;
    /// @brief Original clearpath_platform_msgs/msg/Lights.A300_LIGHTS_FRONT_RIGHT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_A300_LIGHTS_FRONT_RIGHT: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/Lights.A300_LIGHTS_FRONT_LEFT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_A300_LIGHTS_FRONT_LEFT: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/Lights.A300_LIGHTS_REAR_LEFT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_A300_LIGHTS_REAR_LEFT: u8 = 2;
    /// @brief Original clearpath_platform_msgs/msg/Lights.A300_LIGHTS_REAR_RIGHT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_A300_LIGHTS_REAR_RIGHT: u8 = 3;
};
/// @brief Encode every field of complete clearpath_platform_msgs/msg/Lights.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_platform_msgsMsgLights(value: *Ros2Clearpath_platform_msgsMsgLights, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_platform_msgs/msg/Lights.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_platform_msgsMsgLights(bytes: []const u8) wire.Error!Ros2Clearpath_platform_msgsMsgLights {
    return wire.decode(Ros2Clearpath_platform_msgsMsgLights, bytes);
}

/// @brief Complete clearpath_platform_msgs/msg/PinoutCommand value.
/// @details Retain all 2 original fields and 14 constants. Canonical extent 8..18 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_platform_msgsMsgPinoutCommand = struct {
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.rails field.
    /// @details Original type bool. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_rails: wire.Sequence(bool, 2) = .{},
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.outputs field.
    /// @details Original type uint32. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_outputs: wire.Sequence(u32, 2) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 8;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 18;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_b26c2baf1e64cefa889c4ac6bd6b7f4647d9247eca0626b83cd726547a4e80ff";
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_USER_PWR_CTRL constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_USER_PWR_CTRL: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.D100_AUX_OUT1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D100_AUX_OUT1: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.D100_AUX_OUT2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D100_AUX_OUT2: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.D100_AUX_OUT3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D100_AUX_OUT3: u8 = 2;
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.D150_AUX_OUT1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D150_AUX_OUT1: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.D150_AUX_OUT2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D150_AUX_OUT2: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.D150_AUX_OUT3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D150_AUX_OUT3: u8 = 2;
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_AUX_OUT1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_AUX_OUT1: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_AUX_OUT2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_AUX_OUT2: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_AUX_OUT3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_AUX_OUT3: u8 = 2;
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_GPO0 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_GPO0: u8 = 3;
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_GPO1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_GPO1: u8 = 4;
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_GPO2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_GPO2: u8 = 5;
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_GPO3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_GPO3: u8 = 6;
};
/// @brief Encode every field of complete clearpath_platform_msgs/msg/PinoutCommand.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_platform_msgsMsgPinoutCommand(value: *Ros2Clearpath_platform_msgsMsgPinoutCommand, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_platform_msgs/msg/PinoutCommand.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_platform_msgsMsgPinoutCommand(bytes: []const u8) wire.Error!Ros2Clearpath_platform_msgsMsgPinoutCommand {
    return wire.decode(Ros2Clearpath_platform_msgsMsgPinoutCommand, bytes);
}

/// @brief Complete clearpath_platform_msgs/msg/PinoutState value.
/// @details Retain all 5 original fields and 27 constants. Canonical extent 28..170 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_platform_msgsMsgPinoutState = struct {
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader = .{},
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.rails field.
    /// @details Original type bool. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_rails: wire.Sequence(bool, 2) = .{},
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.inputs field.
    /// @details Original type bool. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_inputs: wire.Sequence(bool, 2) = .{},
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.outputs field.
    /// @details Original type bool. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_outputs: wire.Sequence(bool, 2) = .{},
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.output_periods field.
    /// @details Original type uint32. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_output_periods: wire.Sequence(u32, 2) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 28;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 170;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_a936c6d91440709d50fa9b0be8fb567a9ce793e84f57e5379f6a160c8cbf73e7";
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_USER_PWR_CTRL constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_USER_PWR_CTRL: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_IN1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D100_AUX_IN1: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_IN2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D100_AUX_IN2: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_IN3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D100_AUX_IN3: u8 = 2;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_IN1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D150_AUX_IN1: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_IN2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D150_AUX_IN2: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_IN3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D150_AUX_IN3: u8 = 2;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_IN1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_AUX_IN1: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_IN2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_AUX_IN2: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_IN3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_AUX_IN3: u8 = 2;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPI0 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_GPI0: u8 = 3;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPI1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_GPI1: u8 = 4;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPI2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_GPI2: u8 = 5;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPI3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_GPI3: u8 = 6;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_OUT1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D100_AUX_OUT1: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_OUT2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D100_AUX_OUT2: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_OUT3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D100_AUX_OUT3: u8 = 2;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_OUT1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D150_AUX_OUT1: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_OUT2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D150_AUX_OUT2: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_OUT3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D150_AUX_OUT3: u8 = 2;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_OUT1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_AUX_OUT1: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_OUT2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_AUX_OUT2: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_OUT3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_AUX_OUT3: u8 = 2;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPO0 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_GPO0: u8 = 3;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPO1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_GPO1: u8 = 4;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPO2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_GPO2: u8 = 5;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPO3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_GPO3: u8 = 6;
};
/// @brief Encode every field of complete clearpath_platform_msgs/msg/PinoutState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_platform_msgsMsgPinoutState(value: *Ros2Clearpath_platform_msgsMsgPinoutState, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_platform_msgs/msg/PinoutState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_platform_msgsMsgPinoutState(bytes: []const u8) wire.Error!Ros2Clearpath_platform_msgsMsgPinoutState {
    return wire.decode(Ros2Clearpath_platform_msgsMsgPinoutState, bytes);
}

/// @brief Complete clearpath_platform_msgs/msg/Power value.
/// @details Retain all 8 original fields and 68 constants. Canonical extent 25..169 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_platform_msgsMsgPower = struct {
    /// @brief Original clearpath_platform_msgs/msg/Power.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader = .{},
    /// @brief Original clearpath_platform_msgs/msg/Power.shore_power_connected field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_shore_power_connected: i8 = 0,
    /// @brief Original clearpath_platform_msgs/msg/Power.battery_connected field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_battery_connected: i8 = 0,
    /// @brief Original clearpath_platform_msgs/msg/Power.power_12v_user_nominal field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_power_12v_user_nominal: i8 = 0,
    /// @brief Original clearpath_platform_msgs/msg/Power.charger_connected field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_charger_connected: i8 = 0,
    /// @brief Original clearpath_platform_msgs/msg/Power.charging_complete field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_charging_complete: i8 = 0,
    /// @brief Original clearpath_platform_msgs/msg/Power.measured_voltages field.
    /// @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_measured_voltages: wire.Sequence(f32, 2) = .{},
    /// @brief Original clearpath_platform_msgs/msg/Power.measured_currents field.
    /// @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_measured_currents: wire.Sequence(f32, 2) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 25;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 169;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_3fc241d6b81da2f80bfce22933b81786b5e582715dc66cd238fa40b239e7aecc";
    /// @brief Original clearpath_platform_msgs/msg/Power.NOT_APPLICABLE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_NOT_APPLICABLE: i8 = -1;
    /// @brief Original clearpath_platform_msgs/msg/Power.J100_MEASURED_BATTERY constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_J100_MEASURED_BATTERY: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/Power.J100_MEASURED_5V constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_J100_MEASURED_5V: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/Power.J100_MEASURED_12V constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_J100_MEASURED_12V: u8 = 2;
    /// @brief Original clearpath_platform_msgs/msg/Power.D100_MEASURED_BATTERY constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D100_MEASURED_BATTERY: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/Power.D100_MEASURED_5V constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D100_MEASURED_5V: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/Power.D100_MEASURED_12V constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D100_MEASURED_12V: u8 = 2;
    /// @brief Original clearpath_platform_msgs/msg/Power.D150_MEASURED_BATTERY constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D150_MEASURED_BATTERY: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/Power.D150_MEASURED_5V constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D150_MEASURED_5V: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/Power.D150_MEASURED_12V constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D150_MEASURED_12V: u8 = 2;
    /// @brief Original clearpath_platform_msgs/msg/Power.W200_MEASURED_BATTERY constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_W200_MEASURED_BATTERY: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/Power.W200_MEASURED_12V constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_W200_MEASURED_12V: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/Power.W200_MEASURED_24V constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_W200_MEASURED_24V: u8 = 2;
    /// @brief Original clearpath_platform_msgs/msg/Power.W200_MEASURED_48V constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_W200_MEASURED_48V: u8 = 3;
    /// @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_BATTERY constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_R100_MEASURED_BATTERY: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_5V constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_R100_MEASURED_5V: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_12V constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_R100_MEASURED_12V: u8 = 2;
    /// @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_INVERTER constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_R100_MEASURED_INVERTER: u8 = 3;
    /// @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_FRONT_AXLE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_R100_MEASURED_FRONT_AXLE: u8 = 4;
    /// @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_REAR_AXLE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_R100_MEASURED_REAR_AXLE: u8 = 5;
    /// @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_LIGHT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_R100_MEASURED_LIGHT: u8 = 6;
    /// @brief Original clearpath_platform_msgs/msg/Power.A200_BATTERY_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_A200_BATTERY_VOLTAGE: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/Power.A200_LEFT_DRIVER_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_A200_LEFT_DRIVER_VOLTAGE: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/Power.A200_RIGHT_DRIVER_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_A200_RIGHT_DRIVER_VOLTAGE: u8 = 2;
    /// @brief Original clearpath_platform_msgs/msg/Power.A200_VOLTAGES_SIZE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_A200_VOLTAGES_SIZE: u8 = 3;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BATTERY_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_BATTERY_VOLTAGE: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_USER_BATTERY_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_USER_BATTERY_VOLTAGE: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_USER_24V_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_USER_24V_VOLTAGE: u8 = 2;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_USER_12VB_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_USER_12VB_VOLTAGE: u8 = 3;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_SYSTEM_12V_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_SYSTEM_12V_VOLTAGE: u8 = 4;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_EXPANSION_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_EXPANSION_VOLTAGE: u8 = 5;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_24V_AUX_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_BREAKOUT_24V_AUX_VOLTAGE: u8 = 6;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_12V_AUX_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_BREAKOUT_12V_AUX_VOLTAGE: u8 = 7;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_12VA_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_BREAKOUT_USER_12VA_VOLTAGE: u8 = 8;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_LYNX1_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_BREAKOUT_LYNX1_VOLTAGE: u8 = 9;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_LYNX2_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_BREAKOUT_LYNX2_VOLTAGE: u8 = 10;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_LYNX3_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_BREAKOUT_LYNX3_VOLTAGE: u8 = 11;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_LYNX4_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_BREAKOUT_LYNX4_VOLTAGE: u8 = 12;
    /// @brief Original clearpath_platform_msgs/msg/Power.J100_TOTAL_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_J100_TOTAL_CURRENT: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/Power.J100_COMPUTER_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_J100_COMPUTER_CURRENT: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/Power.J100_DRIVE_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_J100_DRIVE_CURRENT: u8 = 2;
    /// @brief Original clearpath_platform_msgs/msg/Power.J100_USER_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_J100_USER_CURRENT: u8 = 3;
    /// @brief Original clearpath_platform_msgs/msg/Power.D100_TOTAL_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D100_TOTAL_CURRENT: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/Power.D100_COMPUTER_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D100_COMPUTER_CURRENT: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/Power.D150_TOTAL_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D150_TOTAL_CURRENT: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/Power.D150_COMPUTER_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D150_COMPUTER_CURRENT: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/Power.W200_TOTAL_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_W200_TOTAL_CURRENT: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/Power.W200_COMPUTER_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_W200_COMPUTER_CURRENT: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/Power.W200_12V_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_W200_12V_CURRENT: u8 = 2;
    /// @brief Original clearpath_platform_msgs/msg/Power.W200_24V_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_W200_24V_CURRENT: u8 = 3;
    /// @brief Original clearpath_platform_msgs/msg/Power.R100_TOTAL_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_R100_TOTAL_CURRENT: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/Power.A200_MCU_AND_USER_PORT_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_A200_MCU_AND_USER_PORT_CURRENT: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/Power.A200_LEFT_DRIVER_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_A200_LEFT_DRIVER_CURRENT: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/Power.A200_RIGHT_DRIVER_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_A200_RIGHT_DRIVER_CURRENT: u8 = 2;
    /// @brief Original clearpath_platform_msgs/msg/Power.A200_CURRENTS_SIZE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_A200_CURRENTS_SIZE: u8 = 3;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BATTERY_PACK_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_BATTERY_PACK_CURRENT: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_USER_BATTERY_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_USER_BATTERY_CURRENT: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_AUX_HES_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_AUX_HES_CURRENT: u8 = 2;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_SYSTEM_12V_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_SYSTEM_12V_CURRENT: u8 = 3;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_24V_AUX_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_24V_AUX_CURRENT: u8 = 4;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_12V_AUX_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_12V_AUX_CURRENT: u8 = 5;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_24V_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_BREAKOUT_USER_24V_CURRENT: u8 = 6;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_12VA_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_BREAKOUT_USER_12VA_CURRENT: u8 = 7;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_12VB_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_BREAKOUT_USER_12VB_CURRENT: u8 = 8;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_LYNX1_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_BREAKOUT_USER_LYNX1_CURRENT: u8 = 9;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_LYNX2_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_BREAKOUT_USER_LYNX2_CURRENT: u8 = 10;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_LYNX3_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_BREAKOUT_USER_LYNX3_CURRENT: u8 = 11;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_LYNX4_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_BREAKOUT_USER_LYNX4_CURRENT: u8 = 12;
};
/// @brief Encode every field of complete clearpath_platform_msgs/msg/Power.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_platform_msgsMsgPower(value: *Ros2Clearpath_platform_msgsMsgPower, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_platform_msgs/msg/Power.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_platform_msgsMsgPower(bytes: []const u8) wire.Error!Ros2Clearpath_platform_msgsMsgPower {
    return wire.decode(Ros2Clearpath_platform_msgsMsgPower, bytes);
}

/// @brief Complete clearpath_platform_msgs/msg/Status value.
/// @details Retain all 5 original fields and 0 constants. Canonical extent 36..676 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_platform_msgsMsgStatus = struct {
    /// @brief Original clearpath_platform_msgs/msg/Status.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader = .{},
    /// @brief Original clearpath_platform_msgs/msg/Status.hardware_id field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_hardware_id: wire.Text(256, false) = .{},
    /// @brief Original clearpath_platform_msgs/msg/Status.firmware_version field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_firmware_version: wire.Text(256, false) = .{},
    /// @brief Original clearpath_platform_msgs/msg/Status.mcu_uptime field.
    /// @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_mcu_uptime: Ros2Builtin_interfacesMsgDuration = .{},
    /// @brief Original clearpath_platform_msgs/msg/Status.connection_uptime field.
    /// @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_connection_uptime: Ros2Builtin_interfacesMsgDuration = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 36;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 676;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_1bd99cc11ea9efcb51eeba8fc1d599960c16e958a8adf33a56d47fe27be87782";
};
/// @brief Encode every field of complete clearpath_platform_msgs/msg/Status.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_platform_msgsMsgStatus(value: *Ros2Clearpath_platform_msgsMsgStatus, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_platform_msgs/msg/Status.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_platform_msgsMsgStatus(bytes: []const u8) wire.Error!Ros2Clearpath_platform_msgsMsgStatus {
    return wire.decode(Ros2Clearpath_platform_msgsMsgStatus, bytes);
}

/// @brief Complete clearpath_platform_msgs/msg/StopStatus value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 15..143 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_platform_msgsMsgStopStatus = struct {
    /// @brief Original clearpath_platform_msgs/msg/StopStatus.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader = .{},
    /// @brief Original clearpath_platform_msgs/msg/StopStatus.stop_power_status field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_stop_power_status: bool = false,
    /// @brief Original clearpath_platform_msgs/msg/StopStatus.external_stop_present field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_external_stop_present: bool = false,
    /// @brief Original clearpath_platform_msgs/msg/StopStatus.needs_reset field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_needs_reset: bool = false,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 15;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 143;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_101f96c8d48e7a945a2f94108e7b48393fc9d4bd75507dd709b95180ff4794d2";
};
/// @brief Encode every field of complete clearpath_platform_msgs/msg/StopStatus.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_platform_msgsMsgStopStatus(value: *Ros2Clearpath_platform_msgsMsgStopStatus, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_platform_msgs/msg/StopStatus.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_platform_msgsMsgStopStatus(bytes: []const u8) wire.Error!Ros2Clearpath_platform_msgsMsgStopStatus {
    return wire.decode(Ros2Clearpath_platform_msgsMsgStopStatus, bytes);
}

/// @brief Complete clearpath_platform_msgs/msg/Temperature value.
/// @details Retain all 2 original fields and 28 constants. Canonical extent 16..152 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_platform_msgsMsgTemperature = struct {
    /// @brief Original clearpath_platform_msgs/msg/Temperature.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader = .{},
    /// @brief Original clearpath_platform_msgs/msg/Temperature.temperatures field.
    /// @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_temperatures: wire.Sequence(f32, 2) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 16;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 152;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_b4ae4d6ace9045ce96b0931f08d3b2c7ec358ab9c6da7022afd9ea489f9b0466";
    /// @brief Original clearpath_platform_msgs/msg/Temperature.J100_MCU constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_J100_MCU: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.J100_PCB constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_J100_PCB: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.D100_MCU constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D100_MCU: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.D100_PCB constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D100_PCB: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.D150_MCU constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D150_MCU: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.D150_PCB constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_D150_PCB: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.W200_MCU constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_W200_MCU: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.R100_MCU constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_R100_MCU: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.R100_PCB constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_R100_PCB: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_MCU constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_MCU: u8 = 0;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_FAN1: u8 = 1;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_FAN2: u8 = 2;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_FAN3: u8 = 3;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN4 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_FAN4: u8 = 4;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN5 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_FAN5: u8 = 5;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN6 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_FAN6: u8 = 6;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN7 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_FAN7: u8 = 7;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN8 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_FAN8: u8 = 8;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_5V_INDUCTOR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_5V_INDUCTOR: u8 = 9;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_MAIN_GND_LUG constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_MAIN_GND_LUG: u8 = 10;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_24V_DCDC constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_24V_DCDC: u8 = 11;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_12V_DCDC constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_12V_DCDC: u8 = 12;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_EXT_1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_EXT_1: u8 = 13;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_EXT_2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_EXT_2: u8 = 14;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_EXT_3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_EXT_3: u8 = 15;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_EXT_4 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_EXT_4: u8 = 16;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_BREAKOUT_1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_BREAKOUT_1: u8 = 17;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_BREAKOUT_2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    pub const constant_CC01_BREAKOUT_2: u8 = 18;
};
/// @brief Encode every field of complete clearpath_platform_msgs/msg/Temperature.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_platform_msgsMsgTemperature(value: *Ros2Clearpath_platform_msgsMsgTemperature, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_platform_msgs/msg/Temperature.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_platform_msgsMsgTemperature(bytes: []const u8) wire.Error!Ros2Clearpath_platform_msgsMsgTemperature {
    return wire.decode(Ros2Clearpath_platform_msgsMsgTemperature, bytes);
}

/// @brief Complete clearpath_control_msgs/srv/PowerControl_Request value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 1..1 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_control_msgsSrvPowerControl_Request = struct {
    /// @brief Original clearpath_control_msgs/srv/PowerControl_Request.power_on field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_power_on: bool = false,
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
    pub const codec_identity = "UWVMROS1_1ad49d42d8895b3bd219799ab9cc080cf09d23aa4bca4c1172d19bc18fa416c4";
};
/// @brief Encode every field of complete clearpath_control_msgs/srv/PowerControl_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_control_msgsSrvPowerControl_Request(value: *Ros2Clearpath_control_msgsSrvPowerControl_Request, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_control_msgs/srv/PowerControl_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_control_msgsSrvPowerControl_Request(bytes: []const u8) wire.Error!Ros2Clearpath_control_msgsSrvPowerControl_Request {
    return wire.decode(Ros2Clearpath_control_msgsSrvPowerControl_Request, bytes);
}

/// @brief Complete clearpath_control_msgs/srv/PowerControl_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 5..261 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_control_msgsSrvPowerControl_Response = struct {
    /// @brief Original clearpath_control_msgs/srv/PowerControl_Response.success field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_success: bool = false,
    /// @brief Original clearpath_control_msgs/srv/PowerControl_Response.message field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(256, false) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 5;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 261;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_6d74d07d6a8ff1c41ed4ca13939d54e9e642f423dc2ff6598665238ebbf10a8b";
};
/// @brief Encode every field of complete clearpath_control_msgs/srv/PowerControl_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_control_msgsSrvPowerControl_Response(value: *Ros2Clearpath_control_msgsSrvPowerControl_Response, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_control_msgs/srv/PowerControl_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_control_msgsSrvPowerControl_Response(bytes: []const u8) wire.Error!Ros2Clearpath_control_msgsSrvPowerControl_Response {
    return wire.decode(Ros2Clearpath_control_msgsSrvPowerControl_Response, bytes);
}

/// @brief Complete clearpath_platform_msgs/srv/ConfigureMcu_Request value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 5..261 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_platform_msgsSrvConfigureMcu_Request = struct {
    /// @brief Original clearpath_platform_msgs/srv/ConfigureMcu_Request.domain_id field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_domain_id: u8 = 0,
    /// @brief Original clearpath_platform_msgs/srv/ConfigureMcu_Request.robot_namespace field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_robot_namespace: wire.Text(256, false) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 5;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 261;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_9c48451b208c4de7a51c5075587dfbe710e7ec6b249c7e1eef519022154023fa";
};
/// @brief Encode every field of complete clearpath_platform_msgs/srv/ConfigureMcu_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_platform_msgsSrvConfigureMcu_Request(value: *Ros2Clearpath_platform_msgsSrvConfigureMcu_Request, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_platform_msgs/srv/ConfigureMcu_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_platform_msgsSrvConfigureMcu_Request(bytes: []const u8) wire.Error!Ros2Clearpath_platform_msgsSrvConfigureMcu_Request {
    return wire.decode(Ros2Clearpath_platform_msgsSrvConfigureMcu_Request, bytes);
}

/// @brief Complete clearpath_platform_msgs/srv/ConfigureMcu_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 5..261 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_platform_msgsSrvConfigureMcu_Response = struct {
    /// @brief Original clearpath_platform_msgs/srv/ConfigureMcu_Response.success field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_success: bool = false,
    /// @brief Original clearpath_platform_msgs/srv/ConfigureMcu_Response.message field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(256, false) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 5;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 261;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_552e715f290b5b9aa5dc926519cf2ab5120d6b2ae5eca9902efcc3f8c9e459ad";
};
/// @brief Encode every field of complete clearpath_platform_msgs/srv/ConfigureMcu_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_platform_msgsSrvConfigureMcu_Response(value: *Ros2Clearpath_platform_msgsSrvConfigureMcu_Response, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_platform_msgs/srv/ConfigureMcu_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_platform_msgsSrvConfigureMcu_Response(bytes: []const u8) wire.Error!Ros2Clearpath_platform_msgsSrvConfigureMcu_Response {
    return wire.decode(Ros2Clearpath_platform_msgsSrvConfigureMcu_Response, bytes);
}

/// @brief Complete clearpath_platform_msgs/srv/SetPinout_Request value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 5..5 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_platform_msgsSrvSetPinout_Request = struct {
    /// @brief Original clearpath_platform_msgs/srv/SetPinout_Request.state field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_state: bool = false,
    /// @brief Original clearpath_platform_msgs/srv/SetPinout_Request.toggle_period field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_toggle_period: u32 = 0,
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
    pub const codec_identity = "UWVMROS1_3a3a2f8f16279c2e7a057353cd1f7f11e1a65e887dd3ce0a4b7f584708afb238";
};
/// @brief Encode every field of complete clearpath_platform_msgs/srv/SetPinout_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_platform_msgsSrvSetPinout_Request(value: *Ros2Clearpath_platform_msgsSrvSetPinout_Request, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_platform_msgs/srv/SetPinout_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_platform_msgsSrvSetPinout_Request(bytes: []const u8) wire.Error!Ros2Clearpath_platform_msgsSrvSetPinout_Request {
    return wire.decode(Ros2Clearpath_platform_msgsSrvSetPinout_Request, bytes);
}

/// @brief Complete clearpath_platform_msgs/srv/SetPinout_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 5..261 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Clearpath_platform_msgsSrvSetPinout_Response = struct {
    /// @brief Original clearpath_platform_msgs/srv/SetPinout_Response.success field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_success: bool = false,
    /// @brief Original clearpath_platform_msgs/srv/SetPinout_Response.message field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(256, false) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 5;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 261;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_b643ef5de2dfb725906ef8f11d79601400953211b47220be7a6fcc05d1be8ee3";
};
/// @brief Encode every field of complete clearpath_platform_msgs/srv/SetPinout_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Clearpath_platform_msgsSrvSetPinout_Response(value: *Ros2Clearpath_platform_msgsSrvSetPinout_Response, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete clearpath_platform_msgs/srv/SetPinout_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Clearpath_platform_msgsSrvSetPinout_Response(bytes: []const u8) wire.Error!Ros2Clearpath_platform_msgsSrvSetPinout_Response {
    return wire.decode(Ros2Clearpath_platform_msgsSrvSetPinout_Response, bytes);
}

