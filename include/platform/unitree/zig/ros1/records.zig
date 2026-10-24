//! @file records.zig
//! @brief Complete owned original Unitree ROS 1 native records and codecs.
//! @details Generated from the admitted source-pinned catalog; no ROS authority is created.
const std = @import("std");
const wire = @import("unitree_wire");

/// @brief Complete unitree_legged_msgs/BmsCmd value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 4..4 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros1Unitree_legged_msgsBmsCmd = struct {
    /// @brief Original unitree_legged_msgs/BmsCmd.off field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_off: u8 = 0,
    /// @brief Original unitree_legged_msgs/BmsCmd.reserve field.
    /// @details Original type uint8. Shape array; bound/count 3 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_reserve: [3]u8 = @splat(std.mem.zeroes(u8)),
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
    pub const codec_identity = "UWVMROS1_75732753b156fff8db3ba7e39541444bed2b71e139389a9b5bfbc49a4fa14928";
};
/// @brief Encode every field of complete unitree_legged_msgs/BmsCmd.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos1Unitree_legged_msgsBmsCmd(value: *Ros1Unitree_legged_msgsBmsCmd, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_legged_msgs/BmsCmd.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos1Unitree_legged_msgsBmsCmd(bytes: []const u8) wire.Error!Ros1Unitree_legged_msgsBmsCmd {
    return wire.decode(Ros1Unitree_legged_msgsBmsCmd, bytes);
}

/// @brief Complete unitree_legged_msgs/BmsState value.
/// @details Retain all 9 original fields and 0 constants. Canonical extent 34..34 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros1Unitree_legged_msgsBmsState = struct {
    /// @brief Original unitree_legged_msgs/BmsState.version_h field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_version_h: u8 = 0,
    /// @brief Original unitree_legged_msgs/BmsState.version_l field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_version_l: u8 = 0,
    /// @brief Original unitree_legged_msgs/BmsState.bms_status field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_bms_status: u8 = 0,
    /// @brief Original unitree_legged_msgs/BmsState.SOC field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_SOC: u8 = 0,
    /// @brief Original unitree_legged_msgs/BmsState.current field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_current: i32 = 0,
    /// @brief Original unitree_legged_msgs/BmsState.cycle field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cycle: u16 = 0,
    /// @brief Original unitree_legged_msgs/BmsState.BQ_NTC field.
    /// @details Original type int8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_BQ_NTC: [2]i8 = @splat(std.mem.zeroes(i8)),
    /// @brief Original unitree_legged_msgs/BmsState.MCU_NTC field.
    /// @details Original type int8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_MCU_NTC: [2]i8 = @splat(std.mem.zeroes(i8)),
    /// @brief Original unitree_legged_msgs/BmsState.cell_vol field.
    /// @details Original type uint16. Shape array; bound/count 10 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_cell_vol: [10]u16 = @splat(std.mem.zeroes(u16)),
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 34;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 34;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_ef0f93501f54d0ff760039d86bd1ba1739cb0c888b3a873611679484ccec094a";
};
/// @brief Encode every field of complete unitree_legged_msgs/BmsState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos1Unitree_legged_msgsBmsState(value: *Ros1Unitree_legged_msgsBmsState, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_legged_msgs/BmsState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos1Unitree_legged_msgsBmsState(bytes: []const u8) wire.Error!Ros1Unitree_legged_msgsBmsState {
    return wire.decode(Ros1Unitree_legged_msgsBmsState, bytes);
}

/// @brief Complete unitree_legged_msgs/Cartesian value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 12..12 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros1Unitree_legged_msgsCartesian = struct {
    /// @brief Original unitree_legged_msgs/Cartesian.x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_x: f32 = 0,
    /// @brief Original unitree_legged_msgs/Cartesian.y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_y: f32 = 0,
    /// @brief Original unitree_legged_msgs/Cartesian.z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_z: f32 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 12;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 12;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_43c7c62ba2a689751a0a15e326c5c9690a9b1f166b6726a0f803b98d2b3fa722";
};
/// @brief Encode every field of complete unitree_legged_msgs/Cartesian.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos1Unitree_legged_msgsCartesian(value: *Ros1Unitree_legged_msgsCartesian, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_legged_msgs/Cartesian.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos1Unitree_legged_msgsCartesian(bytes: []const u8) wire.Error!Ros1Unitree_legged_msgsCartesian {
    return wire.decode(Ros1Unitree_legged_msgsCartesian, bytes);
}

/// @brief Complete unitree_legged_msgs/LED value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 3..3 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros1Unitree_legged_msgsLED = struct {
    /// @brief Original unitree_legged_msgs/LED.r field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_r: u8 = 0,
    /// @brief Original unitree_legged_msgs/LED.g field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_g: u8 = 0,
    /// @brief Original unitree_legged_msgs/LED.b field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_b: u8 = 0,
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
    pub const codec_identity = "UWVMROS1_b4efac59eaf4d3f09c069e4833dd82b5422980f6a9f27db84950243a47164ea5";
};
/// @brief Encode every field of complete unitree_legged_msgs/LED.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos1Unitree_legged_msgsLED(value: *Ros1Unitree_legged_msgsLED, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_legged_msgs/LED.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos1Unitree_legged_msgsLED(bytes: []const u8) wire.Error!Ros1Unitree_legged_msgsLED {
    return wire.decode(Ros1Unitree_legged_msgsLED, bytes);
}

/// @brief Complete unitree_legged_msgs/HighCmd value.
/// @details Retain all 20 original fields and 0 constants. Canonical extent 129..129 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros1Unitree_legged_msgsHighCmd = struct {
    /// @brief Original unitree_legged_msgs/HighCmd.head field.
    /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_head: [2]u8 = @splat(std.mem.zeroes(u8)),
    /// @brief Original unitree_legged_msgs/HighCmd.levelFlag field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_levelFlag: u8 = 0,
    /// @brief Original unitree_legged_msgs/HighCmd.frameReserve field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_frameReserve: u8 = 0,
    /// @brief Original unitree_legged_msgs/HighCmd.SN field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_SN: [2]u32 = @splat(std.mem.zeroes(u32)),
    /// @brief Original unitree_legged_msgs/HighCmd.version field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_version: [2]u32 = @splat(std.mem.zeroes(u32)),
    /// @brief Original unitree_legged_msgs/HighCmd.bandWidth field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_bandWidth: u16 = 0,
    /// @brief Original unitree_legged_msgs/HighCmd.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode: u8 = 0,
    /// @brief Original unitree_legged_msgs/HighCmd.gaitType field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_gaitType: u8 = 0,
    /// @brief Original unitree_legged_msgs/HighCmd.speedLevel field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_speedLevel: u8 = 0,
    /// @brief Original unitree_legged_msgs/HighCmd.footRaiseHeight field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_footRaiseHeight: f32 = 0,
    /// @brief Original unitree_legged_msgs/HighCmd.bodyHeight field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_bodyHeight: f32 = 0,
    /// @brief Original unitree_legged_msgs/HighCmd.position field.
    /// @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_position: [2]f32 = @splat(std.mem.zeroes(f32)),
    /// @brief Original unitree_legged_msgs/HighCmd.euler field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_euler: [3]f32 = @splat(std.mem.zeroes(f32)),
    /// @brief Original unitree_legged_msgs/HighCmd.velocity field.
    /// @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_velocity: [2]f32 = @splat(std.mem.zeroes(f32)),
    /// @brief Original unitree_legged_msgs/HighCmd.yawSpeed field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_yawSpeed: f32 = 0,
    /// @brief Original unitree_legged_msgs/HighCmd.bms field.
    /// @details Original type unitree_legged_msgs/BmsCmd. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_bms: Ros1Unitree_legged_msgsBmsCmd = .{},
    /// @brief Original unitree_legged_msgs/HighCmd.led field.
    /// @details Original type unitree_legged_msgs/LED. Shape array; bound/count 4 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_led: [4]Ros1Unitree_legged_msgsLED = @splat(std.mem.zeroes(Ros1Unitree_legged_msgsLED)),
    /// @brief Original unitree_legged_msgs/HighCmd.wirelessRemote field.
    /// @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_wirelessRemote: [40]u8 = @splat(std.mem.zeroes(u8)),
    /// @brief Original unitree_legged_msgs/HighCmd.reserve field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_reserve: u32 = 0,
    /// @brief Original unitree_legged_msgs/HighCmd.crc field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_crc: u32 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 129;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 129;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_ec6ec8937b2629a4441adc4a21eed83fca940b18d46b970d96e05c957ac90b38";
};
/// @brief Encode every field of complete unitree_legged_msgs/HighCmd.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos1Unitree_legged_msgsHighCmd(value: *Ros1Unitree_legged_msgsHighCmd, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_legged_msgs/HighCmd.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos1Unitree_legged_msgsHighCmd(bytes: []const u8) wire.Error!Ros1Unitree_legged_msgsHighCmd {
    return wire.decode(Ros1Unitree_legged_msgsHighCmd, bytes);
}

/// @brief Complete unitree_legged_msgs/IMU value.
/// @details Retain all 5 original fields and 0 constants. Canonical extent 53..53 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros1Unitree_legged_msgsIMU = struct {
    /// @brief Original unitree_legged_msgs/IMU.quaternion field.
    /// @details Original type float32. Shape array; bound/count 4 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_quaternion: [4]f32 = @splat(std.mem.zeroes(f32)),
    /// @brief Original unitree_legged_msgs/IMU.gyroscope field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_gyroscope: [3]f32 = @splat(std.mem.zeroes(f32)),
    /// @brief Original unitree_legged_msgs/IMU.accelerometer field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_accelerometer: [3]f32 = @splat(std.mem.zeroes(f32)),
    /// @brief Original unitree_legged_msgs/IMU.rpy field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_rpy: [3]f32 = @splat(std.mem.zeroes(f32)),
    /// @brief Original unitree_legged_msgs/IMU.temperature field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_temperature: i8 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 53;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 53;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_29d9ec99e676fe8747665da588b78c8ab77a3197e281ba892ab389d2d81fa276";
};
/// @brief Encode every field of complete unitree_legged_msgs/IMU.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos1Unitree_legged_msgsIMU(value: *Ros1Unitree_legged_msgsIMU, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_legged_msgs/IMU.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos1Unitree_legged_msgsIMU(bytes: []const u8) wire.Error!Ros1Unitree_legged_msgsIMU {
    return wire.decode(Ros1Unitree_legged_msgsIMU, bytes);
}

/// @brief Complete unitree_legged_msgs/MotorState value.
/// @details Retain all 10 original fields and 0 constants. Canonical extent 38..38 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros1Unitree_legged_msgsMotorState = struct {
    /// @brief Original unitree_legged_msgs/MotorState.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode: u8 = 0,
    /// @brief Original unitree_legged_msgs/MotorState.q field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_q: f32 = 0,
    /// @brief Original unitree_legged_msgs/MotorState.dq field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_dq: f32 = 0,
    /// @brief Original unitree_legged_msgs/MotorState.ddq field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ddq: f32 = 0,
    /// @brief Original unitree_legged_msgs/MotorState.tauEst field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_tauEst: f32 = 0,
    /// @brief Original unitree_legged_msgs/MotorState.q_raw field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_q_raw: f32 = 0,
    /// @brief Original unitree_legged_msgs/MotorState.dq_raw field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_dq_raw: f32 = 0,
    /// @brief Original unitree_legged_msgs/MotorState.ddq_raw field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ddq_raw: f32 = 0,
    /// @brief Original unitree_legged_msgs/MotorState.temperature field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_temperature: i8 = 0,
    /// @brief Original unitree_legged_msgs/MotorState.reserve field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_reserve: [2]u32 = @splat(std.mem.zeroes(u32)),
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 38;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 38;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_be540cb22db5f08b6b9a8082777c76244e80f3148e9cfd63f510e4b2acdc0abf";
};
/// @brief Encode every field of complete unitree_legged_msgs/MotorState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos1Unitree_legged_msgsMotorState(
    value: *Ros1Unitree_legged_msgsMotorState,
    output: []u8,
) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_legged_msgs/MotorState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos1Unitree_legged_msgsMotorState(bytes: []const u8) wire.Error!Ros1Unitree_legged_msgsMotorState {
    return wire.decode(Ros1Unitree_legged_msgsMotorState, bytes);
}

/// @brief Complete unitree_legged_msgs/HighState value.
/// @details Retain all 25 original fields and 0 constants. Canonical extent 1087..1087 bytes.
/// Native registration and transport permission require independent deployment proof.
pub const Ros1Unitree_legged_msgsHighState = struct {
    /// @brief Original unitree_legged_msgs/HighState.head field.
    /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_head: [2]u8 = @splat(std.mem.zeroes(u8)),
    /// @brief Original unitree_legged_msgs/HighState.levelFlag field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_levelFlag: u8 = 0,
    /// @brief Original unitree_legged_msgs/HighState.frameReserve field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_frameReserve: u8 = 0,
    /// @brief Original unitree_legged_msgs/HighState.SN field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_SN: [2]u32 = @splat(std.mem.zeroes(u32)),
    /// @brief Original unitree_legged_msgs/HighState.version field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_version: [2]u32 = @splat(std.mem.zeroes(u32)),
    /// @brief Original unitree_legged_msgs/HighState.bandWidth field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_bandWidth: u16 = 0,
    /// @brief Original unitree_legged_msgs/HighState.imu field.
    /// @details Original type unitree_legged_msgs/IMU. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_imu: Ros1Unitree_legged_msgsIMU = .{},
    /// @brief Original unitree_legged_msgs/HighState.motorState field.
    /// @details Original type unitree_legged_msgs/MotorState. Shape array; bound/count 20 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_motorState: [20]Ros1Unitree_legged_msgsMotorState = @splat(std.mem.zeroes(Ros1Unitree_legged_msgsMotorState)),
    /// @brief Original unitree_legged_msgs/HighState.bms field.
    /// @details Original type unitree_legged_msgs/BmsState. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_bms: Ros1Unitree_legged_msgsBmsState = .{},
    /// @brief Original unitree_legged_msgs/HighState.footForce field.
    /// @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_footForce: [4]i16 = @splat(std.mem.zeroes(i16)),
    /// @brief Original unitree_legged_msgs/HighState.footForceEst field.
    /// @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_footForceEst: [4]i16 = @splat(std.mem.zeroes(i16)),
    /// @brief Original unitree_legged_msgs/HighState.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode: u8 = 0,
    /// @brief Original unitree_legged_msgs/HighState.progress field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_progress: f32 = 0,
    /// @brief Original unitree_legged_msgs/HighState.gaitType field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_gaitType: u8 = 0,
    /// @brief Original unitree_legged_msgs/HighState.footRaiseHeight field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_footRaiseHeight: f32 = 0,
    /// @brief Original unitree_legged_msgs/HighState.position field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_position: [3]f32 = @splat(std.mem.zeroes(f32)),
    /// @brief Original unitree_legged_msgs/HighState.bodyHeight field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_bodyHeight: f32 = 0,
    /// @brief Original unitree_legged_msgs/HighState.velocity field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_velocity: [3]f32 = @splat(std.mem.zeroes(f32)),
    /// @brief Original unitree_legged_msgs/HighState.yawSpeed field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_yawSpeed: f32 = 0,
    /// @brief Original unitree_legged_msgs/HighState.rangeObstacle field.
    /// @details Original type float32. Shape array; bound/count 4 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_rangeObstacle: [4]f32 = @splat(std.mem.zeroes(f32)),
    /// @brief Original unitree_legged_msgs/HighState.footPosition2Body field.
    /// @details Original type unitree_legged_msgs/Cartesian. Shape array; bound/count 4 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_footPosition2Body: [4]Ros1Unitree_legged_msgsCartesian = @splat(std.mem.zeroes(
        Ros1Unitree_legged_msgsCartesian,
    )),
    /// @brief Original unitree_legged_msgs/HighState.footSpeed2Body field.
    /// @details Original type unitree_legged_msgs/Cartesian. Shape array; bound/count 4 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_footSpeed2Body: [4]Ros1Unitree_legged_msgsCartesian = @splat(std.mem.zeroes(
        Ros1Unitree_legged_msgsCartesian,
    )),
    /// @brief Original unitree_legged_msgs/HighState.wirelessRemote field.
    /// @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_wirelessRemote: [40]u8 = @splat(std.mem.zeroes(u8)),
    /// @brief Original unitree_legged_msgs/HighState.reserve field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_reserve: u32 = 0,
    /// @brief Original unitree_legged_msgs/HighState.crc field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_crc: u32 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 1087;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 1087;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_82ee0efaab21b5cb89e99f5c0f5daec583b48dd5feb2dd6a7e09ba9d9110b53d";
};
/// @brief Encode every field of complete unitree_legged_msgs/HighState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos1Unitree_legged_msgsHighState(value: *Ros1Unitree_legged_msgsHighState, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_legged_msgs/HighState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos1Unitree_legged_msgsHighState(bytes: []const u8) wire.Error!Ros1Unitree_legged_msgsHighState {
    return wire.decode(Ros1Unitree_legged_msgsHighState, bytes);
}

/// @brief Complete unitree_legged_msgs/MotorCmd value.
/// @details Retain all 7 original fields and 0 constants. Canonical extent 33..33 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros1Unitree_legged_msgsMotorCmd = struct {
    /// @brief Original unitree_legged_msgs/MotorCmd.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode: u8 = 0,
    /// @brief Original unitree_legged_msgs/MotorCmd.q field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_q: f32 = 0,
    /// @brief Original unitree_legged_msgs/MotorCmd.dq field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_dq: f32 = 0,
    /// @brief Original unitree_legged_msgs/MotorCmd.tau field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_tau: f32 = 0,
    /// @brief Original unitree_legged_msgs/MotorCmd.Kp field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_Kp: f32 = 0,
    /// @brief Original unitree_legged_msgs/MotorCmd.Kd field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_Kd: f32 = 0,
    /// @brief Original unitree_legged_msgs/MotorCmd.reserve field.
    /// @details Original type uint32. Shape array; bound/count 3 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_reserve: [3]u32 = @splat(std.mem.zeroes(u32)),
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 33;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 33;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_632b25f209e72857182d92752aa72e3ab47a45e895cc352ee6dc05f1c1168083";
};
/// @brief Encode every field of complete unitree_legged_msgs/MotorCmd.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos1Unitree_legged_msgsMotorCmd(value: *Ros1Unitree_legged_msgsMotorCmd, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_legged_msgs/MotorCmd.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos1Unitree_legged_msgsMotorCmd(bytes: []const u8) wire.Error!Ros1Unitree_legged_msgsMotorCmd {
    return wire.decode(Ros1Unitree_legged_msgsMotorCmd, bytes);
}

/// @brief Complete unitree_legged_msgs/LowCmd value.
/// @details Retain all 11 original fields and 0 constants. Canonical extent 734..734 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros1Unitree_legged_msgsLowCmd = struct {
    /// @brief Original unitree_legged_msgs/LowCmd.head field.
    /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_head: [2]u8 = @splat(std.mem.zeroes(u8)),
    /// @brief Original unitree_legged_msgs/LowCmd.levelFlag field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_levelFlag: u8 = 0,
    /// @brief Original unitree_legged_msgs/LowCmd.frameReserve field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_frameReserve: u8 = 0,
    /// @brief Original unitree_legged_msgs/LowCmd.SN field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_SN: [2]u32 = @splat(std.mem.zeroes(u32)),
    /// @brief Original unitree_legged_msgs/LowCmd.version field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_version: [2]u32 = @splat(std.mem.zeroes(u32)),
    /// @brief Original unitree_legged_msgs/LowCmd.bandWidth field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_bandWidth: u16 = 0,
    /// @brief Original unitree_legged_msgs/LowCmd.motorCmd field.
    /// @details Original type unitree_legged_msgs/MotorCmd. Shape array; bound/count 20 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_motorCmd: [20]Ros1Unitree_legged_msgsMotorCmd = @splat(std.mem.zeroes(Ros1Unitree_legged_msgsMotorCmd)),
    /// @brief Original unitree_legged_msgs/LowCmd.bms field.
    /// @details Original type unitree_legged_msgs/BmsCmd. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_bms: Ros1Unitree_legged_msgsBmsCmd = .{},
    /// @brief Original unitree_legged_msgs/LowCmd.wirelessRemote field.
    /// @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_wirelessRemote: [40]u8 = @splat(std.mem.zeroes(u8)),
    /// @brief Original unitree_legged_msgs/LowCmd.reserve field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_reserve: u32 = 0,
    /// @brief Original unitree_legged_msgs/LowCmd.crc field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_crc: u32 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 734;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 734;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_11d3ac7c497f01fbf6624c39ec71fa613c462cd62acb20c1f263cdde672e9181";
};
/// @brief Encode every field of complete unitree_legged_msgs/LowCmd.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos1Unitree_legged_msgsLowCmd(value: *Ros1Unitree_legged_msgsLowCmd, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_legged_msgs/LowCmd.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos1Unitree_legged_msgsLowCmd(bytes: []const u8) wire.Error!Ros1Unitree_legged_msgsLowCmd {
    return wire.decode(Ros1Unitree_legged_msgsLowCmd, bytes);
}

/// @brief Complete unitree_legged_msgs/LowState value.
/// @details Retain all 20 original fields and 0 constants. Canonical extent 1069..1069 bytes.
/// Native registration and transport permission require independent deployment proof.
pub const Ros1Unitree_legged_msgsLowState = struct {
    /// @brief Original unitree_legged_msgs/LowState.head field.
    /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_head: [2]u8 = @splat(std.mem.zeroes(u8)),
    /// @brief Original unitree_legged_msgs/LowState.levelFlag field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_levelFlag: u8 = 0,
    /// @brief Original unitree_legged_msgs/LowState.frameReserve field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_frameReserve: u8 = 0,
    /// @brief Original unitree_legged_msgs/LowState.SN field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_SN: [2]u32 = @splat(std.mem.zeroes(u32)),
    /// @brief Original unitree_legged_msgs/LowState.version field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_version: [2]u32 = @splat(std.mem.zeroes(u32)),
    /// @brief Original unitree_legged_msgs/LowState.bandWidth field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_bandWidth: u16 = 0,
    /// @brief Original unitree_legged_msgs/LowState.imu field.
    /// @details Original type unitree_legged_msgs/IMU. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_imu: Ros1Unitree_legged_msgsIMU = .{},
    /// @brief Original unitree_legged_msgs/LowState.motorState field.
    /// @details Original type unitree_legged_msgs/MotorState. Shape array; bound/count 20 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_motorState: [20]Ros1Unitree_legged_msgsMotorState = @splat(std.mem.zeroes(Ros1Unitree_legged_msgsMotorState)),
    /// @brief Original unitree_legged_msgs/LowState.bms field.
    /// @details Original type unitree_legged_msgs/BmsState. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_bms: Ros1Unitree_legged_msgsBmsState = .{},
    /// @brief Original unitree_legged_msgs/LowState.footForce field.
    /// @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_footForce: [4]i16 = @splat(std.mem.zeroes(i16)),
    /// @brief Original unitree_legged_msgs/LowState.footForceEst field.
    /// @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_footForceEst: [4]i16 = @splat(std.mem.zeroes(i16)),
    /// @brief Original unitree_legged_msgs/LowState.tick field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_tick: u32 = 0,
    /// @brief Original unitree_legged_msgs/LowState.wirelessRemote field.
    /// @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_wirelessRemote: [40]u8 = @splat(std.mem.zeroes(u8)),
    /// @brief Original unitree_legged_msgs/LowState.reserve field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_reserve: u32 = 0,
    /// @brief Original unitree_legged_msgs/LowState.crc field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_crc: u32 = 0,
    /// @brief Original unitree_legged_msgs/LowState.eeForceRaw field.
    /// @details Original type unitree_legged_msgs/Cartesian. Shape array; bound/count 4 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_eeForceRaw: [4]Ros1Unitree_legged_msgsCartesian = @splat(std.mem.zeroes(Ros1Unitree_legged_msgsCartesian)),
    /// @brief Original unitree_legged_msgs/LowState.eeForce field.
    /// @details Original type unitree_legged_msgs/Cartesian. Shape array; bound/count 4 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_eeForce: [4]Ros1Unitree_legged_msgsCartesian = @splat(std.mem.zeroes(Ros1Unitree_legged_msgsCartesian)),
    /// @brief Original unitree_legged_msgs/LowState.position field.
    /// @details Original type unitree_legged_msgs/Cartesian. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_position: Ros1Unitree_legged_msgsCartesian = .{},
    /// @brief Original unitree_legged_msgs/LowState.velocity field.
    /// @details Original type unitree_legged_msgs/Cartesian. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_velocity: Ros1Unitree_legged_msgsCartesian = .{},
    /// @brief Original unitree_legged_msgs/LowState.velocity_w field.
    /// @details Original type unitree_legged_msgs/Cartesian. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_velocity_w: Ros1Unitree_legged_msgsCartesian = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 1069;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 1069;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_37425ed49c0eebd762b6084ee413c7706fc43defc524414d3f50cdd2d25552c0";
};
/// @brief Encode every field of complete unitree_legged_msgs/LowState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos1Unitree_legged_msgsLowState(value: *Ros1Unitree_legged_msgsLowState, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_legged_msgs/LowState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos1Unitree_legged_msgsLowState(bytes: []const u8) wire.Error!Ros1Unitree_legged_msgsLowState {
    return wire.decode(Ros1Unitree_legged_msgsLowState, bytes);
}
