//! @file records.zig
//! @brief Complete owned original clearpath ROS 2 native records and codecs.
//! @details Generated from the admitted source-pinned catalog; no ROS authority is created.
const std = @import("std");
const wire = @import("native_wire");

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
/// @details Retain all 1 original fields and 9 constants. Canonical extent 4..6 bytes. Native
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
    pub const codec_identity = "UWVMROS1_addc15a9b6db4f7a0eba3545f02ece0800e48796f71e387b4d249af861f95317";
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
/// @details Retain all 1 original fields and 20 constants. Canonical extent 4..10 bytes. Native
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
    pub const codec_identity = "UWVMROS1_14da254234c9c897e39bf4ee0db8faad0798d23fe7017195f35f88fb6e0b3332";
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

/// @brief Complete clearpath_platform_msgs/msg/Power value.
/// @details Retain all 8 original fields and 42 constants. Canonical extent 25..169 bytes. Native
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
    pub const codec_identity = "UWVMROS1_e97ba89dea149ff43d0134038985ea45d2f072af592ea128aa5502a053478d22";
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
/// @details Retain all 7 original fields and 0 constants. Canonical extent 44..684 bytes. Native
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
    /// @brief Original clearpath_platform_msgs/msg/Status.pcb_temperature field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_pcb_temperature: f32 = 0,
    /// @brief Original clearpath_platform_msgs/msg/Status.mcu_temperature field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mcu_temperature: f32 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 44;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 684;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_331afb70728e70e0391da1b2a0f2b97fdc8742a363a2b007606121ad778dd5c1";
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

