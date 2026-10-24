//! @file records.zig
//! @brief Complete universal_robots values and adapters for the selected original interface catalog.
//! @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
//! defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
//! roles require the separately admitted SDK owner.
//! @see share/platform/universal_robots/domains/universal-robots-polyscopex-complete.ir.json
//! @see document/platform/universal_robots/en_US/README.md

//! Generated complete bounded values; all allocation is explicit.
const std=@import("std");
const wire=@import("roswire");
/// @brief Complete ROS 2 builtin_interfaces/msg/Time value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and is
/// identified by UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Builtin_interfacesMsgTime=struct {
    /// @brief Maximum canonical extent of builtin_interfaces/msg/Time in bytes.
    /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=8;
    /// @brief Canonical codec identity of builtin_interfaces/msg/Time.
    /// @details Exact identity UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7";
    /// @brief Original ROS type name for builtin_interfaces/msg/Time.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="builtin_interfaces/msg/Time";
    /// @brief Selected original native identity for builtin_interfaces/msg/Time.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief builtin_interfaces/msg/Time.sec: int32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/zig/API-CONTRACT.md
    field_sec: i32=0,
    /// @brief builtin_interfaces/msg/Time.nanosec: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/zig/API-CONTRACT.md
    field_nanosec: u32=0,
    /// @brief Append every canonical field of builtin_interfaces/msg/Time.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        if(self.field_nanosec >= 1000000000) return error.Invalid;
        try w.integer(self.field_sec);
        try w.integer(self.field_nanosec);
    }
    /// @brief Read the ordered canonical fields of builtin_interfaces/msg/Time.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_sec=try r.integer(i32);
        value.field_nanosec=try r.integer(u32);
        if(value.field_nanosec >= 1000000000) return error.Invalid;
        return value;
    }
    /// @brief Encode one complete builtin_interfaces/msg/Time value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete builtin_interfaces/msg/Time value.
    /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and trailing
    /// bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<8 or bytes.len>8) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 geometry_msgs/msg/Point value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..24 bytes and
/// is identified by UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Geometry_msgsMsgPoint=struct {
    /// @brief Maximum canonical extent of geometry_msgs/msg/Point in bytes.
    /// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Geometry_msgsMsgPoint; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=24;
    /// @brief Canonical codec identity of geometry_msgs/msg/Point.
    /// @details Exact identity UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Geometry_msgsMsgPoint; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616";
    /// @brief Original ROS type name for geometry_msgs/msg/Point.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Geometry_msgsMsgPoint; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="geometry_msgs/msg/Point";
    /// @brief Selected original native identity for geometry_msgs/msg/Point.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Geometry_msgsMsgPoint; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief geometry_msgs/msg/Point.x: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Geometry_msgsMsgPoint; share/platform/ros/zig/API-CONTRACT.md
    field_x: f64=0,
    /// @brief geometry_msgs/msg/Point.y: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Geometry_msgsMsgPoint; share/platform/ros/zig/API-CONTRACT.md
    field_y: f64=0,
    /// @brief geometry_msgs/msg/Point.z: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Geometry_msgsMsgPoint; share/platform/ros/zig/API-CONTRACT.md
    field_z: f64=0,
    /// @brief Append every canonical field of geometry_msgs/msg/Point.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Geometry_msgsMsgPoint; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.float64(self.field_x);
        try w.float64(self.field_y);
        try w.float64(self.field_z);
    }
    /// @brief Read the ordered canonical fields of geometry_msgs/msg/Point.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Geometry_msgsMsgPoint; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_x=try r.float64();
        value.field_y=try r.float64();
        value.field_z=try r.float64();
        return value;
    }
    /// @brief Encode one complete geometry_msgs/msg/Point value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Geometry_msgsMsgPoint; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete geometry_msgs/msg/Point value.
    /// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Geometry_msgsMsgPoint; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<24 or bytes.len>24) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 geometry_msgs/msg/Quaternion value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 32..32 bytes and
/// is identified by UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Geometry_msgsMsgQuaternion=struct {
    /// @brief Maximum canonical extent of geometry_msgs/msg/Quaternion in bytes.
    /// @details The inclusive bound is 32 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=32;
    /// @brief Canonical codec identity of geometry_msgs/msg/Quaternion.
    /// @details Exact identity UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672";
    /// @brief Original ROS type name for geometry_msgs/msg/Quaternion.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="geometry_msgs/msg/Quaternion";
    /// @brief Selected original native identity for geometry_msgs/msg/Quaternion.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief geometry_msgs/msg/Quaternion.x: float64.
    /// @details Schema default 0.0. Encoding preserves the original field position and signedness; invalid bounds fail
    /// instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/zig/API-CONTRACT.md
    field_x: f64=@as(f64,@bitCast(@as(u64,0x0))),
    /// @brief geometry_msgs/msg/Quaternion.y: float64.
    /// @details Schema default 0.0. Encoding preserves the original field position and signedness; invalid bounds fail
    /// instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/zig/API-CONTRACT.md
    field_y: f64=@as(f64,@bitCast(@as(u64,0x0))),
    /// @brief geometry_msgs/msg/Quaternion.z: float64.
    /// @details Schema default 0.0. Encoding preserves the original field position and signedness; invalid bounds fail
    /// instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/zig/API-CONTRACT.md
    field_z: f64=@as(f64,@bitCast(@as(u64,0x0))),
    /// @brief geometry_msgs/msg/Quaternion.w: float64.
    /// @details Schema default 1.0. Encoding preserves the original field position and signedness; invalid bounds fail
    /// instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/zig/API-CONTRACT.md
    field_w: f64=@as(f64,@bitCast(@as(u64,0x3ff0000000000000))),
    /// @brief Append every canonical field of geometry_msgs/msg/Quaternion.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.float64(self.field_x);
        try w.float64(self.field_y);
        try w.float64(self.field_z);
        try w.float64(self.field_w);
    }
    /// @brief Read the ordered canonical fields of geometry_msgs/msg/Quaternion.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_x=try r.float64();
        value.field_y=try r.float64();
        value.field_z=try r.float64();
        value.field_w=try r.float64();
        return value;
    }
    /// @brief Encode one complete geometry_msgs/msg/Quaternion value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete geometry_msgs/msg/Quaternion value.
    /// @details Require the complete 32..32-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<32 or bytes.len>32) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 geometry_msgs/msg/Pose value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 56..56 bytes and
/// is identified by UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Geometry_msgsMsgPose=struct {
    /// @brief Maximum canonical extent of geometry_msgs/msg/Pose in bytes.
    /// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Geometry_msgsMsgPose; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=56;
    /// @brief Canonical codec identity of geometry_msgs/msg/Pose.
    /// @details Exact identity UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Geometry_msgsMsgPose; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777";
    /// @brief Original ROS type name for geometry_msgs/msg/Pose.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Geometry_msgsMsgPose; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="geometry_msgs/msg/Pose";
    /// @brief Selected original native identity for geometry_msgs/msg/Pose.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Geometry_msgsMsgPose; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief geometry_msgs/msg/Pose.position: geometry_msgs/msg/Point.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Geometry_msgsMsgPose; share/platform/ros/zig/API-CONTRACT.md
    field_position: Ros2Geometry_msgsMsgPoint=.{},
    /// @brief geometry_msgs/msg/Pose.orientation: geometry_msgs/msg/Quaternion.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Geometry_msgsMsgPose; share/platform/ros/zig/API-CONTRACT.md
    field_orientation: Ros2Geometry_msgsMsgQuaternion=.{},
    /// @brief Append every canonical field of geometry_msgs/msg/Pose.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Geometry_msgsMsgPose; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_position.writeFields(w);
        try self.field_orientation.writeFields(w);
    }
    /// @brief Read the ordered canonical fields of geometry_msgs/msg/Pose.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Geometry_msgsMsgPose; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_position=try Ros2Geometry_msgsMsgPoint.readFields(r,allocator);
        value.field_orientation=try Ros2Geometry_msgsMsgQuaternion.readFields(r,allocator);
        return value;
    }
    /// @brief Encode one complete geometry_msgs/msg/Pose value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Geometry_msgsMsgPose; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete geometry_msgs/msg/Pose value.
    /// @details Require the complete 56..56-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Geometry_msgsMsgPose; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<56 or bytes.len>56) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 geometry_msgs/msg/Vector3 value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..24 bytes and
/// is identified by UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Geometry_msgsMsgVector3=struct {
    /// @brief Maximum canonical extent of geometry_msgs/msg/Vector3 in bytes.
    /// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Geometry_msgsMsgVector3; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=24;
    /// @brief Canonical codec identity of geometry_msgs/msg/Vector3.
    /// @details Exact identity UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Geometry_msgsMsgVector3; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e";
    /// @brief Original ROS type name for geometry_msgs/msg/Vector3.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Geometry_msgsMsgVector3; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="geometry_msgs/msg/Vector3";
    /// @brief Selected original native identity for geometry_msgs/msg/Vector3.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Geometry_msgsMsgVector3; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief geometry_msgs/msg/Vector3.x: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Geometry_msgsMsgVector3; share/platform/ros/zig/API-CONTRACT.md
    field_x: f64=0,
    /// @brief geometry_msgs/msg/Vector3.y: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Geometry_msgsMsgVector3; share/platform/ros/zig/API-CONTRACT.md
    field_y: f64=0,
    /// @brief geometry_msgs/msg/Vector3.z: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Geometry_msgsMsgVector3; share/platform/ros/zig/API-CONTRACT.md
    field_z: f64=0,
    /// @brief Append every canonical field of geometry_msgs/msg/Vector3.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Geometry_msgsMsgVector3; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.float64(self.field_x);
        try w.float64(self.field_y);
        try w.float64(self.field_z);
    }
    /// @brief Read the ordered canonical fields of geometry_msgs/msg/Vector3.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Geometry_msgsMsgVector3; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_x=try r.float64();
        value.field_y=try r.float64();
        value.field_z=try r.float64();
        return value;
    }
    /// @brief Encode one complete geometry_msgs/msg/Vector3 value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Geometry_msgsMsgVector3; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete geometry_msgs/msg/Vector3 value.
    /// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Geometry_msgsMsgVector3; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<24 or bytes.len>24) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 geometry_msgs/msg/Twist value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 48..48 bytes and
/// is identified by UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Geometry_msgsMsgTwist=struct {
    /// @brief Maximum canonical extent of geometry_msgs/msg/Twist in bytes.
    /// @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Geometry_msgsMsgTwist; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=48;
    /// @brief Canonical codec identity of geometry_msgs/msg/Twist.
    /// @details Exact identity UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Geometry_msgsMsgTwist; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e";
    /// @brief Original ROS type name for geometry_msgs/msg/Twist.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Geometry_msgsMsgTwist; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="geometry_msgs/msg/Twist";
    /// @brief Selected original native identity for geometry_msgs/msg/Twist.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Geometry_msgsMsgTwist; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief geometry_msgs/msg/Twist.linear: geometry_msgs/msg/Vector3.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Geometry_msgsMsgTwist; share/platform/ros/zig/API-CONTRACT.md
    field_linear: Ros2Geometry_msgsMsgVector3=.{},
    /// @brief geometry_msgs/msg/Twist.angular: geometry_msgs/msg/Vector3.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Geometry_msgsMsgTwist; share/platform/ros/zig/API-CONTRACT.md
    field_angular: Ros2Geometry_msgsMsgVector3=.{},
    /// @brief Append every canonical field of geometry_msgs/msg/Twist.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Geometry_msgsMsgTwist; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_linear.writeFields(w);
        try self.field_angular.writeFields(w);
    }
    /// @brief Read the ordered canonical fields of geometry_msgs/msg/Twist.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Geometry_msgsMsgTwist; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_linear=try Ros2Geometry_msgsMsgVector3.readFields(r,allocator);
        value.field_angular=try Ros2Geometry_msgsMsgVector3.readFields(r,allocator);
        return value;
    }
    /// @brief Encode one complete geometry_msgs/msg/Twist value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Geometry_msgsMsgTwist; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete geometry_msgs/msg/Twist value.
    /// @details Require the complete 48..48-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Geometry_msgsMsgTwist; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<48 or bytes.len>48) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 std_msgs/msg/Header value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..140 bytes and
/// is identified by UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Std_msgsMsgHeader=struct {
    /// @brief Maximum canonical extent of std_msgs/msg/Header in bytes.
    /// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Std_msgsMsgHeader; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=140;
    /// @brief Canonical codec identity of std_msgs/msg/Header.
    /// @details Exact identity UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Std_msgsMsgHeader; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96";
    /// @brief Original ROS type name for std_msgs/msg/Header.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Std_msgsMsgHeader; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="std_msgs/msg/Header";
    /// @brief Selected original native identity for std_msgs/msg/Header.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Std_msgsMsgHeader; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief std_msgs/msg/Header.stamp: builtin_interfaces/msg/Time.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Std_msgsMsgHeader; share/platform/ros/zig/API-CONTRACT.md
    field_stamp: Ros2Builtin_interfacesMsgTime=.{},
    /// @brief std_msgs/msg/Header.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Std_msgsMsgHeader; share/platform/ros/zig/API-CONTRACT.md
    field_frame_id: []const u8=&.{},
    /// @brief Append every canonical field of std_msgs/msg/Header.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Std_msgsMsgHeader; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_stamp.writeFields(w);
        try w.string(self.field_frame_id,128,false);
    }
    /// @brief Read the ordered canonical fields of std_msgs/msg/Header.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Std_msgsMsgHeader; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_stamp=try Ros2Builtin_interfacesMsgTime.readFields(r,allocator);
        value.field_frame_id=try r.string(128,false);
        return value;
    }
    /// @brief Encode one complete std_msgs/msg/Header value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Std_msgsMsgHeader; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete std_msgs/msg/Header value.
    /// @details Require the complete 12..140-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Std_msgsMsgHeader; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<12 or bytes.len>140) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 std_msgs/msg/String value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..1028 bytes and
/// is identified by UWVMROS1_c48b5497cbf487f56eb073a982b93acd501c6bb72f0e9ef9dce2175ce7ac15c5.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Std_msgsMsgString=struct {
    /// @brief Maximum canonical extent of std_msgs/msg/String in bytes.
    /// @details The inclusive bound is 1028 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Std_msgsMsgString; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=1028;
    /// @brief Canonical codec identity of std_msgs/msg/String.
    /// @details Exact identity UWVMROS1_c48b5497cbf487f56eb073a982b93acd501c6bb72f0e9ef9dce2175ce7ac15c5 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Std_msgsMsgString; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_c48b5497cbf487f56eb073a982b93acd501c6bb72f0e9ef9dce2175ce7ac15c5";
    /// @brief Original ROS type name for std_msgs/msg/String.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Std_msgsMsgString; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="std_msgs/msg/String";
    /// @brief Selected original native identity for std_msgs/msg/String.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Std_msgsMsgString; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief std_msgs/msg/String.data: string; each string is 0..1024 bytes; strict UTF-8 with no embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Std_msgsMsgString; share/platform/ros/zig/API-CONTRACT.md
    field_data: []const u8=&.{},
    /// @brief Append every canonical field of std_msgs/msg/String.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Std_msgsMsgString; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.string(self.field_data,1024,false);
    }
    /// @brief Read the ordered canonical fields of std_msgs/msg/String.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Std_msgsMsgString; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_data=try r.string(1024,false);
        return value;
    }
    /// @brief Encode one complete std_msgs/msg/String value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Std_msgsMsgString; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete std_msgs/msg/String value.
    /// @details Require the complete 4..1028-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Std_msgsMsgString; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<4 or bytes.len>1028) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/msg/RobotMode value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 13..141 bytes and
/// is identified by UWVMROS1_a16ec0ed8caa1a2b48cd4116d88877911921848469cd139f4783e4f2c549e7ea.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesMsgRobotMode=struct {
    /// @brief Maximum canonical extent of urinterfaces/msg/RobotMode in bytes.
    /// @details The inclusive bound is 141 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=141;
    /// @brief Canonical codec identity of urinterfaces/msg/RobotMode.
    /// @details Exact identity UWVMROS1_a16ec0ed8caa1a2b48cd4116d88877911921848469cd139f4783e4f2c549e7ea binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_a16ec0ed8caa1a2b48cd4116d88877911921848469cd139f4783e4f2c549e7ea";
    /// @brief Original ROS type name for urinterfaces/msg/RobotMode.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/msg/RobotMode";
    /// @brief Selected original native identity for urinterfaces/msg/RobotMode.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/msg/RobotMode.DISCONNECTED: original int8 constant.
    /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_DISCONNECTED: i8=0;
    /// @brief urinterfaces/msg/RobotMode.CONFIRM_SAFETY: original int8 constant.
    /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_CONFIRM_SAFETY: i8=1;
    /// @brief urinterfaces/msg/RobotMode.BOOTING: original int8 constant.
    /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_BOOTING: i8=2;
    /// @brief urinterfaces/msg/RobotMode.POWER_OFF: original int8 constant.
    /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_POWER_OFF: i8=3;
    /// @brief urinterfaces/msg/RobotMode.POWER_ON: original int8 constant.
    /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_POWER_ON: i8=4;
    /// @brief urinterfaces/msg/RobotMode.IDLE: original int8 constant.
    /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_IDLE: i8=5;
    /// @brief urinterfaces/msg/RobotMode.BACKDRIVE: original int8 constant.
    /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_BACKDRIVE: i8=6;
    /// @brief urinterfaces/msg/RobotMode.RUNNING: original int8 constant.
    /// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_RUNNING: i8=7;
    /// @brief urinterfaces/msg/RobotMode.UPDATING_FIRMWARE: original int8 constant.
    /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_UPDATING_FIRMWARE: i8=8;
    /// @brief urinterfaces/msg/RobotMode.header: std_msgs/msg/Header.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/zig/API-CONTRACT.md
    field_header: Ros2Std_msgsMsgHeader=.{},
    /// @brief urinterfaces/msg/RobotMode.data: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/zig/API-CONTRACT.md
    field_data: i8=0,
    /// @brief Append every canonical field of urinterfaces/msg/RobotMode.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_header.writeFields(w);
        try w.integer(self.field_data);
    }
    /// @brief Read the ordered canonical fields of urinterfaces/msg/RobotMode.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_header=try Ros2Std_msgsMsgHeader.readFields(r,allocator);
        value.field_data=try r.integer(i8);
        return value;
    }
    /// @brief Encode one complete urinterfaces/msg/RobotMode value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/msg/RobotMode value.
    /// @details Require the complete 13..141-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<13 or bytes.len>141) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/action/SetMode_Goal value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 15..143 bytes and
/// is identified by UWVMROS1_d1d998e217d6f3d3eefd8ffccecff8463580346150a59a1c7a2dac8d609e0e09.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesActionSetMode_Goal=struct {
    /// @brief Maximum canonical extent of urinterfaces/action/SetMode_Goal in bytes.
    /// @details The inclusive bound is 143 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=143;
    /// @brief Canonical codec identity of urinterfaces/action/SetMode_Goal.
    /// @details Exact identity UWVMROS1_d1d998e217d6f3d3eefd8ffccecff8463580346150a59a1c7a2dac8d609e0e09 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_d1d998e217d6f3d3eefd8ffccecff8463580346150a59a1c7a2dac8d609e0e09";
    /// @brief Original ROS type name for urinterfaces/action/SetMode_Goal.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/action/SetMode_Goal";
    /// @brief Selected original native identity for urinterfaces/action/SetMode_Goal.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/action/SetMode_Goal.target_robot_mode: urinterfaces/msg/RobotMode.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/zig/API-CONTRACT.md
    field_target_robot_mode: Ros2UrinterfacesMsgRobotMode=.{},
    /// @brief urinterfaces/action/SetMode_Goal.stop_program: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/zig/API-CONTRACT.md
    field_stop_program: bool=false,
    /// @brief urinterfaces/action/SetMode_Goal.play_program: bool.
    /// @details Schema default False. Encoding preserves the original field position and signedness; invalid bounds
    /// fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/zig/API-CONTRACT.md
    field_play_program: bool=false,
    /// @brief Append every canonical field of urinterfaces/action/SetMode_Goal.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_target_robot_mode.writeFields(w);
        try w.boolean(self.field_stop_program);
        try w.boolean(self.field_play_program);
    }
    /// @brief Read the ordered canonical fields of urinterfaces/action/SetMode_Goal.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_target_robot_mode=try Ros2UrinterfacesMsgRobotMode.readFields(r,allocator);
        value.field_stop_program=try r.boolean();
        value.field_play_program=try r.boolean();
        return value;
    }
    /// @brief Encode one complete urinterfaces/action/SetMode_Goal value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/action/SetMode_Goal value.
    /// @details Require the complete 15..143-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<15 or bytes.len>143) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/action/SetMode_Result value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
/// is identified by UWVMROS1_500243a508824c42fe2da424040aa60bf2426ac607f2f6016fab014f81518af7.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesActionSetMode_Result=struct {
    /// @brief Maximum canonical extent of urinterfaces/action/SetMode_Result in bytes.
    /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=261;
    /// @brief Canonical codec identity of urinterfaces/action/SetMode_Result.
    /// @details Exact identity UWVMROS1_500243a508824c42fe2da424040aa60bf2426ac607f2f6016fab014f81518af7 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_500243a508824c42fe2da424040aa60bf2426ac607f2f6016fab014f81518af7";
    /// @brief Original ROS type name for urinterfaces/action/SetMode_Result.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/action/SetMode_Result";
    /// @brief Selected original native identity for urinterfaces/action/SetMode_Result.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/action/SetMode_Result.success: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/zig/API-CONTRACT.md
    field_success: bool=false,
    /// @brief urinterfaces/action/SetMode_Result.message: string; each string is 0..256 bytes; strict UTF-8 with no
    /// embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/zig/API-CONTRACT.md
    field_message: []const u8=&.{},
    /// @brief Append every canonical field of urinterfaces/action/SetMode_Result.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.boolean(self.field_success);
        try w.string(self.field_message,256,false);
    }
    /// @brief Read the ordered canonical fields of urinterfaces/action/SetMode_Result.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_success=try r.boolean();
        value.field_message=try r.string(256,false);
        return value;
    }
    /// @brief Encode one complete urinterfaces/action/SetMode_Result value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/action/SetMode_Result value.
    /// @details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<5 or bytes.len>261) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/action/SetMode_Feedback value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 2..2 bytes and is
/// identified by UWVMROS1_22fb71c17066829bd66c98bc631c82b2bfef3c501e08960a6bfad3d902f76537.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesActionSetMode_Feedback=struct {
    /// @brief Maximum canonical extent of urinterfaces/action/SetMode_Feedback in bytes.
    /// @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=2;
    /// @brief Canonical codec identity of urinterfaces/action/SetMode_Feedback.
    /// @details Exact identity UWVMROS1_22fb71c17066829bd66c98bc631c82b2bfef3c501e08960a6bfad3d902f76537 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_22fb71c17066829bd66c98bc631c82b2bfef3c501e08960a6bfad3d902f76537";
    /// @brief Original ROS type name for urinterfaces/action/SetMode_Feedback.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/action/SetMode_Feedback";
    /// @brief Selected original native identity for urinterfaces/action/SetMode_Feedback.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/action/SetMode_Feedback.current_robot_mode: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/zig/API-CONTRACT.md
    field_current_robot_mode: i8=0,
    /// @brief urinterfaces/action/SetMode_Feedback.current_safety_mode: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/zig/API-CONTRACT.md
    field_current_safety_mode: i8=0,
    /// @brief Append every canonical field of urinterfaces/action/SetMode_Feedback.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.integer(self.field_current_robot_mode);
        try w.integer(self.field_current_safety_mode);
    }
    /// @brief Read the ordered canonical fields of urinterfaces/action/SetMode_Feedback.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_current_robot_mode=try r.integer(i8);
        value.field_current_safety_mode=try r.integer(i8);
        return value;
    }
    /// @brief Encode one complete urinterfaces/action/SetMode_Feedback value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/action/SetMode_Feedback value.
    /// @details Require the complete 2..2-byte canonical representation. Reject truncation, invalid fields and trailing
    /// bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<2 or bytes.len>2) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/msg/ActiveTCP value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 16..400 bytes and
/// is identified by UWVMROS1_e62d31728eca201dee256d88d1d268bf2ecb9607ed5c48783432f966edf459ae.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesMsgActiveTCP=struct {
    /// @brief Maximum canonical extent of urinterfaces/msg/ActiveTCP in bytes.
    /// @details The inclusive bound is 400 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=400;
    /// @brief Canonical codec identity of urinterfaces/msg/ActiveTCP.
    /// @details Exact identity UWVMROS1_e62d31728eca201dee256d88d1d268bf2ecb9607ed5c48783432f966edf459ae binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_e62d31728eca201dee256d88d1d268bf2ecb9607ed5c48783432f966edf459ae";
    /// @brief Original ROS type name for urinterfaces/msg/ActiveTCP.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/msg/ActiveTCP";
    /// @brief Selected original native identity for urinterfaces/msg/ActiveTCP.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/msg/ActiveTCP.header: std_msgs/msg/Header.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/zig/API-CONTRACT.md
    field_header: Ros2Std_msgsMsgHeader=.{},
    /// @brief urinterfaces/msg/ActiveTCP.data: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/zig/API-CONTRACT.md
    field_data: []const u8=&.{},
    /// @brief Append every canonical field of urinterfaces/msg/ActiveTCP.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_header.writeFields(w);
        try w.string(self.field_data,256,false);
    }
    /// @brief Read the ordered canonical fields of urinterfaces/msg/ActiveTCP.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_header=try Ros2Std_msgsMsgHeader.readFields(r,allocator);
        value.field_data=try r.string(256,false);
        return value;
    }
    /// @brief Encode one complete urinterfaces/msg/ActiveTCP value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/msg/ActiveTCP value.
    /// @details Require the complete 16..400-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<16 or bytes.len>400) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/msg/Analog value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 6..6 bytes and is
/// identified by UWVMROS1_e81cffd909f3bc387ee00c37537434341ef93fd160e465be033aa9bc412b979b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesMsgAnalog=struct {
    /// @brief Maximum canonical extent of urinterfaces/msg/Analog in bytes.
    /// @details The inclusive bound is 6 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesMsgAnalog; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=6;
    /// @brief Canonical codec identity of urinterfaces/msg/Analog.
    /// @details Exact identity UWVMROS1_e81cffd909f3bc387ee00c37537434341ef93fd160e465be033aa9bc412b979b binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesMsgAnalog; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_e81cffd909f3bc387ee00c37537434341ef93fd160e465be033aa9bc412b979b";
    /// @brief Original ROS type name for urinterfaces/msg/Analog.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesMsgAnalog; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/msg/Analog";
    /// @brief Selected original native identity for urinterfaces/msg/Analog.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesMsgAnalog; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/msg/Analog.CURRENT: original uint8 constant.
    /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgAnalog; share/platform/ros/zig/API-CONTRACT.md
    pub const field_CURRENT: u8=0;
    /// @brief urinterfaces/msg/Analog.VOLTAGE: original uint8 constant.
    /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgAnalog; share/platform/ros/zig/API-CONTRACT.md
    pub const field_VOLTAGE: u8=1;
    /// @brief urinterfaces/msg/Analog.pin: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgAnalog; share/platform/ros/zig/API-CONTRACT.md
    field_pin: u8=0,
    /// @brief urinterfaces/msg/Analog.domain: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgAnalog; share/platform/ros/zig/API-CONTRACT.md
    field_domain: u8=0,
    /// @brief urinterfaces/msg/Analog.value: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgAnalog; share/platform/ros/zig/API-CONTRACT.md
    field_value: f32=0,
    /// @brief Append every canonical field of urinterfaces/msg/Analog.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgAnalog; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.integer(self.field_pin);
        try w.integer(self.field_domain);
        try w.float32(self.field_value);
    }
    /// @brief Read the ordered canonical fields of urinterfaces/msg/Analog.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgAnalog; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_pin=try r.integer(u8);
        value.field_domain=try r.integer(u8);
        value.field_value=try r.float32();
        return value;
    }
    /// @brief Encode one complete urinterfaces/msg/Analog value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgAnalog; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/msg/Analog value.
    /// @details Require the complete 6..6-byte canonical representation. Reject truncation, invalid fields and trailing
    /// bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgAnalog; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<6 or bytes.len>6) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/msg/AnalogIO value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..200 bytes and
/// is identified by UWVMROS1_3130f3e3857f21bab5092d9c6abea8c45965c07ebb9c1ab14b28fa51b7d71e0c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesMsgAnalogIO=struct {
    /// @brief Maximum canonical extent of urinterfaces/msg/AnalogIO in bytes.
    /// @details The inclusive bound is 200 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=200;
    /// @brief Canonical codec identity of urinterfaces/msg/AnalogIO.
    /// @details Exact identity UWVMROS1_3130f3e3857f21bab5092d9c6abea8c45965c07ebb9c1ab14b28fa51b7d71e0c binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_3130f3e3857f21bab5092d9c6abea8c45965c07ebb9c1ab14b28fa51b7d71e0c";
    /// @brief Original ROS type name for urinterfaces/msg/AnalogIO.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/msg/AnalogIO";
    /// @brief Selected original native identity for urinterfaces/msg/AnalogIO.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/msg/AnalogIO.analog_inputs: urinterfaces/msg/Analog; 0..16 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/zig/API-CONTRACT.md
    field_analog_inputs: []Ros2UrinterfacesMsgAnalog=&.{},
    /// @brief urinterfaces/msg/AnalogIO.analog_outputs: urinterfaces/msg/Analog; 0..16 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/zig/API-CONTRACT.md
    field_analog_outputs: []Ros2UrinterfacesMsgAnalog=&.{},
    /// @brief Append every canonical field of urinterfaces/msg/AnalogIO.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        if(self.field_analog_inputs.len>16) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_analog_inputs.len)));
        for(self.field_analog_inputs) |e| {
        try e.writeFields(w);
        }
        if(self.field_analog_outputs.len>16) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_analog_outputs.len)));
        for(self.field_analog_outputs) |e| {
        try e.writeFields(w);
        }
    }
    /// @brief Read the ordered canonical fields of urinterfaces/msg/AnalogIO.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        const count0=try r.integer(u32); if(count0>16) return error.Invalid;
        value.field_analog_inputs=try allocator.alloc(Ros2UrinterfacesMsgAnalog,count0);
        for(value.field_analog_inputs) |*e| {
        e.*=try Ros2UrinterfacesMsgAnalog.readFields(r,allocator);
        }
        const count1=try r.integer(u32); if(count1>16) return error.Invalid;
        value.field_analog_outputs=try allocator.alloc(Ros2UrinterfacesMsgAnalog,count1);
        for(value.field_analog_outputs) |*e| {
        e.*=try Ros2UrinterfacesMsgAnalog.readFields(r,allocator);
        }
        return value;
    }
    /// @brief Encode one complete urinterfaces/msg/AnalogIO value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/msg/AnalogIO value.
    /// @details Require the complete 8..200-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<8 or bytes.len>200) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/msg/AnalogIOStateStamped value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 20..340 bytes and
/// is identified by UWVMROS1_a40e839bb4acfcb26503c79f01216b7aea9ab8ff25c50dca42578b206ab40a89.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesMsgAnalogIOStateStamped=struct {
    /// @brief Maximum canonical extent of urinterfaces/msg/AnalogIOStateStamped in bytes.
    /// @details The inclusive bound is 340 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=340;
    /// @brief Canonical codec identity of urinterfaces/msg/AnalogIOStateStamped.
    /// @details Exact identity UWVMROS1_a40e839bb4acfcb26503c79f01216b7aea9ab8ff25c50dca42578b206ab40a89 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_a40e839bb4acfcb26503c79f01216b7aea9ab8ff25c50dca42578b206ab40a89";
    /// @brief Original ROS type name for urinterfaces/msg/AnalogIOStateStamped.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/msg/AnalogIOStateStamped";
    /// @brief Selected original native identity for urinterfaces/msg/AnalogIOStateStamped.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/msg/AnalogIOStateStamped.header: std_msgs/msg/Header.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/zig/API-CONTRACT.md
    field_header: Ros2Std_msgsMsgHeader=.{},
    /// @brief urinterfaces/msg/AnalogIOStateStamped.io_state: urinterfaces/msg/AnalogIO.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/zig/API-CONTRACT.md
    field_io_state: Ros2UrinterfacesMsgAnalogIO=.{},
    /// @brief Append every canonical field of urinterfaces/msg/AnalogIOStateStamped.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_header.writeFields(w);
        try self.field_io_state.writeFields(w);
    }
    /// @brief Read the ordered canonical fields of urinterfaces/msg/AnalogIOStateStamped.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_header=try Ros2Std_msgsMsgHeader.readFields(r,allocator);
        value.field_io_state=try Ros2UrinterfacesMsgAnalogIO.readFields(r,allocator);
        return value;
    }
    /// @brief Encode one complete urinterfaces/msg/AnalogIOStateStamped value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/msg/AnalogIOStateStamped value.
    /// @details Require the complete 20..340-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<20 or bytes.len>340) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/msg/AnalogStamped value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 18..146 bytes and
/// is identified by UWVMROS1_749557c6e79b882385927c62d3c45963797ce116d7be6235bd9f186a7b4da76c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesMsgAnalogStamped=struct {
    /// @brief Maximum canonical extent of urinterfaces/msg/AnalogStamped in bytes.
    /// @details The inclusive bound is 146 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=146;
    /// @brief Canonical codec identity of urinterfaces/msg/AnalogStamped.
    /// @details Exact identity UWVMROS1_749557c6e79b882385927c62d3c45963797ce116d7be6235bd9f186a7b4da76c binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_749557c6e79b882385927c62d3c45963797ce116d7be6235bd9f186a7b4da76c";
    /// @brief Original ROS type name for urinterfaces/msg/AnalogStamped.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/msg/AnalogStamped";
    /// @brief Selected original native identity for urinterfaces/msg/AnalogStamped.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/msg/AnalogStamped.header: std_msgs/msg/Header.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/zig/API-CONTRACT.md
    field_header: Ros2Std_msgsMsgHeader=.{},
    /// @brief urinterfaces/msg/AnalogStamped.data: urinterfaces/msg/Analog.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/zig/API-CONTRACT.md
    field_data: Ros2UrinterfacesMsgAnalog=.{},
    /// @brief Append every canonical field of urinterfaces/msg/AnalogStamped.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_header.writeFields(w);
        try self.field_data.writeFields(w);
    }
    /// @brief Read the ordered canonical fields of urinterfaces/msg/AnalogStamped.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_header=try Ros2Std_msgsMsgHeader.readFields(r,allocator);
        value.field_data=try Ros2UrinterfacesMsgAnalog.readFields(r,allocator);
        return value;
    }
    /// @brief Encode one complete urinterfaces/msg/AnalogStamped value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/msg/AnalogStamped value.
    /// @details Require the complete 18..146-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<18 or bytes.len>146) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/msg/BoolStamped value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 13..141 bytes and
/// is identified by UWVMROS1_1a4128638df10bd9a8d33af0ed3c2ee9b4deb771d45dfe83f2a9a75c7f77de66.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesMsgBoolStamped=struct {
    /// @brief Maximum canonical extent of urinterfaces/msg/BoolStamped in bytes.
    /// @details The inclusive bound is 141 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=141;
    /// @brief Canonical codec identity of urinterfaces/msg/BoolStamped.
    /// @details Exact identity UWVMROS1_1a4128638df10bd9a8d33af0ed3c2ee9b4deb771d45dfe83f2a9a75c7f77de66 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_1a4128638df10bd9a8d33af0ed3c2ee9b4deb771d45dfe83f2a9a75c7f77de66";
    /// @brief Original ROS type name for urinterfaces/msg/BoolStamped.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/msg/BoolStamped";
    /// @brief Selected original native identity for urinterfaces/msg/BoolStamped.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/msg/BoolStamped.header: std_msgs/msg/Header.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/zig/API-CONTRACT.md
    field_header: Ros2Std_msgsMsgHeader=.{},
    /// @brief urinterfaces/msg/BoolStamped.data: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/zig/API-CONTRACT.md
    field_data: bool=false,
    /// @brief Append every canonical field of urinterfaces/msg/BoolStamped.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_header.writeFields(w);
        try w.boolean(self.field_data);
    }
    /// @brief Read the ordered canonical fields of urinterfaces/msg/BoolStamped.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_header=try Ros2Std_msgsMsgHeader.readFields(r,allocator);
        value.field_data=try r.boolean();
        return value;
    }
    /// @brief Encode one complete urinterfaces/msg/BoolStamped value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/msg/BoolStamped value.
    /// @details Require the complete 13..141-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<13 or bytes.len>141) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/msg/ControlCycle value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 20..148 bytes and
/// is identified by UWVMROS1_99a4d96e5673f5ac49eab13cd8b28af55ac83e1626c39ed20ff46655df4d6278.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesMsgControlCycle=struct {
    /// @brief Maximum canonical extent of urinterfaces/msg/ControlCycle in bytes.
    /// @details The inclusive bound is 148 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesMsgControlCycle; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=148;
    /// @brief Canonical codec identity of urinterfaces/msg/ControlCycle.
    /// @details Exact identity UWVMROS1_99a4d96e5673f5ac49eab13cd8b28af55ac83e1626c39ed20ff46655df4d6278 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesMsgControlCycle; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_99a4d96e5673f5ac49eab13cd8b28af55ac83e1626c39ed20ff46655df4d6278";
    /// @brief Original ROS type name for urinterfaces/msg/ControlCycle.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesMsgControlCycle; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/msg/ControlCycle";
    /// @brief Selected original native identity for urinterfaces/msg/ControlCycle.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesMsgControlCycle; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/msg/ControlCycle.header: std_msgs/msg/Header.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgControlCycle; share/platform/ros/zig/API-CONTRACT.md
    field_header: Ros2Std_msgsMsgHeader=.{},
    /// @brief urinterfaces/msg/ControlCycle.data: uint64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgControlCycle; share/platform/ros/zig/API-CONTRACT.md
    field_data: u64=0,
    /// @brief Append every canonical field of urinterfaces/msg/ControlCycle.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgControlCycle; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_header.writeFields(w);
        try w.integer(self.field_data);
    }
    /// @brief Read the ordered canonical fields of urinterfaces/msg/ControlCycle.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgControlCycle; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_header=try Ros2Std_msgsMsgHeader.readFields(r,allocator);
        value.field_data=try r.integer(u64);
        return value;
    }
    /// @brief Encode one complete urinterfaces/msg/ControlCycle value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgControlCycle; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/msg/ControlCycle value.
    /// @details Require the complete 20..148-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgControlCycle; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<20 or bytes.len>148) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/msg/Current value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 16..144 bytes and
/// is identified by UWVMROS1_759f2139335bcb720f7f4a38cd8b1413f203f2dd2b72149fa0de0fb7a0a778df.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesMsgCurrent=struct {
    /// @brief Maximum canonical extent of urinterfaces/msg/Current in bytes.
    /// @details The inclusive bound is 144 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesMsgCurrent; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=144;
    /// @brief Canonical codec identity of urinterfaces/msg/Current.
    /// @details Exact identity UWVMROS1_759f2139335bcb720f7f4a38cd8b1413f203f2dd2b72149fa0de0fb7a0a778df binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesMsgCurrent; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_759f2139335bcb720f7f4a38cd8b1413f203f2dd2b72149fa0de0fb7a0a778df";
    /// @brief Original ROS type name for urinterfaces/msg/Current.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesMsgCurrent; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/msg/Current";
    /// @brief Selected original native identity for urinterfaces/msg/Current.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesMsgCurrent; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/msg/Current.header: std_msgs/msg/Header.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgCurrent; share/platform/ros/zig/API-CONTRACT.md
    field_header: Ros2Std_msgsMsgHeader=.{},
    /// @brief urinterfaces/msg/Current.data: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgCurrent; share/platform/ros/zig/API-CONTRACT.md
    field_data: f32=0,
    /// @brief Append every canonical field of urinterfaces/msg/Current.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgCurrent; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_header.writeFields(w);
        try w.float32(self.field_data);
    }
    /// @brief Read the ordered canonical fields of urinterfaces/msg/Current.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgCurrent; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_header=try Ros2Std_msgsMsgHeader.readFields(r,allocator);
        value.field_data=try r.float32();
        return value;
    }
    /// @brief Encode one complete urinterfaces/msg/Current value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgCurrent; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/msg/Current value.
    /// @details Require the complete 16..144-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgCurrent; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<16 or bytes.len>144) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/msg/Digital value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 2..2 bytes and is
/// identified by UWVMROS1_c60c73df0383bb9a3e23ae3148cff9d6eb49b88c2d10add0af6a86ec9af54512.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesMsgDigital=struct {
    /// @brief Maximum canonical extent of urinterfaces/msg/Digital in bytes.
    /// @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesMsgDigital; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=2;
    /// @brief Canonical codec identity of urinterfaces/msg/Digital.
    /// @details Exact identity UWVMROS1_c60c73df0383bb9a3e23ae3148cff9d6eb49b88c2d10add0af6a86ec9af54512 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesMsgDigital; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_c60c73df0383bb9a3e23ae3148cff9d6eb49b88c2d10add0af6a86ec9af54512";
    /// @brief Original ROS type name for urinterfaces/msg/Digital.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesMsgDigital; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/msg/Digital";
    /// @brief Selected original native identity for urinterfaces/msg/Digital.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesMsgDigital; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/msg/Digital.pin: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgDigital; share/platform/ros/zig/API-CONTRACT.md
    field_pin: u8=0,
    /// @brief urinterfaces/msg/Digital.state: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgDigital; share/platform/ros/zig/API-CONTRACT.md
    field_state: bool=false,
    /// @brief Append every canonical field of urinterfaces/msg/Digital.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgDigital; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.integer(self.field_pin);
        try w.boolean(self.field_state);
    }
    /// @brief Read the ordered canonical fields of urinterfaces/msg/Digital.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgDigital; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_pin=try r.integer(u8);
        value.field_state=try r.boolean();
        return value;
    }
    /// @brief Encode one complete urinterfaces/msg/Digital value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgDigital; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/msg/Digital value.
    /// @details Require the complete 2..2-byte canonical representation. Reject truncation, invalid fields and trailing
    /// bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgDigital; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<2 or bytes.len>2) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/msg/DigitalIO value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes and
/// is identified by UWVMROS1_11235b6010feb7e3e5e6c2be8acd3fbba1c25ecbf97ae5e0c899a0e3de3c4e4a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesMsgDigitalIO=struct {
    /// @brief Maximum canonical extent of urinterfaces/msg/DigitalIO in bytes.
    /// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=136;
    /// @brief Canonical codec identity of urinterfaces/msg/DigitalIO.
    /// @details Exact identity UWVMROS1_11235b6010feb7e3e5e6c2be8acd3fbba1c25ecbf97ae5e0c899a0e3de3c4e4a binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_11235b6010feb7e3e5e6c2be8acd3fbba1c25ecbf97ae5e0c899a0e3de3c4e4a";
    /// @brief Original ROS type name for urinterfaces/msg/DigitalIO.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/msg/DigitalIO";
    /// @brief Selected original native identity for urinterfaces/msg/DigitalIO.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/msg/DigitalIO.digital_inputs: urinterfaces/msg/Digital; 0..32 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/zig/API-CONTRACT.md
    field_digital_inputs: []Ros2UrinterfacesMsgDigital=&.{},
    /// @brief urinterfaces/msg/DigitalIO.digital_outputs: urinterfaces/msg/Digital; 0..32 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/zig/API-CONTRACT.md
    field_digital_outputs: []Ros2UrinterfacesMsgDigital=&.{},
    /// @brief Append every canonical field of urinterfaces/msg/DigitalIO.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        if(self.field_digital_inputs.len>32) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_digital_inputs.len)));
        for(self.field_digital_inputs) |e| {
        try e.writeFields(w);
        }
        if(self.field_digital_outputs.len>32) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_digital_outputs.len)));
        for(self.field_digital_outputs) |e| {
        try e.writeFields(w);
        }
    }
    /// @brief Read the ordered canonical fields of urinterfaces/msg/DigitalIO.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        const count0=try r.integer(u32); if(count0>32) return error.Invalid;
        value.field_digital_inputs=try allocator.alloc(Ros2UrinterfacesMsgDigital,count0);
        for(value.field_digital_inputs) |*e| {
        e.*=try Ros2UrinterfacesMsgDigital.readFields(r,allocator);
        }
        const count1=try r.integer(u32); if(count1>32) return error.Invalid;
        value.field_digital_outputs=try allocator.alloc(Ros2UrinterfacesMsgDigital,count1);
        for(value.field_digital_outputs) |*e| {
        e.*=try Ros2UrinterfacesMsgDigital.readFields(r,allocator);
        }
        return value;
    }
    /// @brief Encode one complete urinterfaces/msg/DigitalIO value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/msg/DigitalIO value.
    /// @details Require the complete 8..136-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<8 or bytes.len>136) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/msg/DigitalIOStateStamped value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 28..412 bytes and
/// is identified by UWVMROS1_542db76916f234e79216804426dc4e8d386a0ef547907391c921f51ed45e64c9.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesMsgDigitalIOStateStamped=struct {
    /// @brief Maximum canonical extent of urinterfaces/msg/DigitalIOStateStamped in bytes.
    /// @details The inclusive bound is 412 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=412;
    /// @brief Canonical codec identity of urinterfaces/msg/DigitalIOStateStamped.
    /// @details Exact identity UWVMROS1_542db76916f234e79216804426dc4e8d386a0ef547907391c921f51ed45e64c9 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_542db76916f234e79216804426dc4e8d386a0ef547907391c921f51ed45e64c9";
    /// @brief Original ROS type name for urinterfaces/msg/DigitalIOStateStamped.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/msg/DigitalIOStateStamped";
    /// @brief Selected original native identity for urinterfaces/msg/DigitalIOStateStamped.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/msg/DigitalIOStateStamped.header: std_msgs/msg/Header.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/zig/API-CONTRACT.md
    field_header: Ros2Std_msgsMsgHeader=.{},
    /// @brief urinterfaces/msg/DigitalIOStateStamped.configurable_io: urinterfaces/msg/DigitalIO.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/zig/API-CONTRACT.md
    field_configurable_io: Ros2UrinterfacesMsgDigitalIO=.{},
    /// @brief urinterfaces/msg/DigitalIOStateStamped.standard_io: urinterfaces/msg/DigitalIO.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/zig/API-CONTRACT.md
    field_standard_io: Ros2UrinterfacesMsgDigitalIO=.{},
    /// @brief Append every canonical field of urinterfaces/msg/DigitalIOStateStamped.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_header.writeFields(w);
        try self.field_configurable_io.writeFields(w);
        try self.field_standard_io.writeFields(w);
    }
    /// @brief Read the ordered canonical fields of urinterfaces/msg/DigitalIOStateStamped.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_header=try Ros2Std_msgsMsgHeader.readFields(r,allocator);
        value.field_configurable_io=try Ros2UrinterfacesMsgDigitalIO.readFields(r,allocator);
        value.field_standard_io=try Ros2UrinterfacesMsgDigitalIO.readFields(r,allocator);
        return value;
    }
    /// @brief Encode one complete urinterfaces/msg/DigitalIOStateStamped value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/msg/DigitalIOStateStamped value.
    /// @details Require the complete 28..412-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<28 or bytes.len>412) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/msg/DigitalStamped value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 14..142 bytes and
/// is identified by UWVMROS1_dc86d5a04c0801089ddf6b61b5fd33d63df8b5599550c6a0e84e19bbff375865.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesMsgDigitalStamped=struct {
    /// @brief Maximum canonical extent of urinterfaces/msg/DigitalStamped in bytes.
    /// @details The inclusive bound is 142 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=142;
    /// @brief Canonical codec identity of urinterfaces/msg/DigitalStamped.
    /// @details Exact identity UWVMROS1_dc86d5a04c0801089ddf6b61b5fd33d63df8b5599550c6a0e84e19bbff375865 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_dc86d5a04c0801089ddf6b61b5fd33d63df8b5599550c6a0e84e19bbff375865";
    /// @brief Original ROS type name for urinterfaces/msg/DigitalStamped.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/msg/DigitalStamped";
    /// @brief Selected original native identity for urinterfaces/msg/DigitalStamped.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/msg/DigitalStamped.header: std_msgs/msg/Header.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/zig/API-CONTRACT.md
    field_header: Ros2Std_msgsMsgHeader=.{},
    /// @brief urinterfaces/msg/DigitalStamped.data: urinterfaces/msg/Digital.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/zig/API-CONTRACT.md
    field_data: Ros2UrinterfacesMsgDigital=.{},
    /// @brief Append every canonical field of urinterfaces/msg/DigitalStamped.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_header.writeFields(w);
        try self.field_data.writeFields(w);
    }
    /// @brief Read the ordered canonical fields of urinterfaces/msg/DigitalStamped.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_header=try Ros2Std_msgsMsgHeader.readFields(r,allocator);
        value.field_data=try Ros2UrinterfacesMsgDigital.readFields(r,allocator);
        return value;
    }
    /// @brief Encode one complete urinterfaces/msg/DigitalStamped value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/msg/DigitalStamped value.
    /// @details Require the complete 14..142-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<14 or bytes.len>142) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/msg/DoubleMultiArrayStamped value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 16..272 bytes and
/// is identified by UWVMROS1_82b52f88248ea8d6cd7b809d1fd5aa55b4bbe1618044e739998a7ec74a23a8ae.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesMsgDoubleMultiArrayStamped=struct {
    /// @brief Maximum canonical extent of urinterfaces/msg/DoubleMultiArrayStamped in bytes.
    /// @details The inclusive bound is 272 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=272;
    /// @brief Canonical codec identity of urinterfaces/msg/DoubleMultiArrayStamped.
    /// @details Exact identity UWVMROS1_82b52f88248ea8d6cd7b809d1fd5aa55b4bbe1618044e739998a7ec74a23a8ae binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_82b52f88248ea8d6cd7b809d1fd5aa55b4bbe1618044e739998a7ec74a23a8ae";
    /// @brief Original ROS type name for urinterfaces/msg/DoubleMultiArrayStamped.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/msg/DoubleMultiArrayStamped";
    /// @brief Selected original native identity for urinterfaces/msg/DoubleMultiArrayStamped.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/msg/DoubleMultiArrayStamped.header: std_msgs/msg/Header.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/zig/API-CONTRACT.md
    field_header: Ros2Std_msgsMsgHeader=.{},
    /// @brief urinterfaces/msg/DoubleMultiArrayStamped.data: float64; 0..16 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/zig/API-CONTRACT.md
    field_data: []f64=&.{},
    /// @brief Append every canonical field of urinterfaces/msg/DoubleMultiArrayStamped.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_header.writeFields(w);
        if(self.field_data.len>16) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_data.len)));
        for(self.field_data) |e| {
        try w.float64(e);
        }
    }
    /// @brief Read the ordered canonical fields of urinterfaces/msg/DoubleMultiArrayStamped.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_header=try Ros2Std_msgsMsgHeader.readFields(r,allocator);
        const count1=try r.integer(u32); if(count1>16) return error.Invalid;
        value.field_data=try allocator.alloc(f64,count1);
        for(value.field_data) |*e| {
        e.*=try r.float64();
        }
        return value;
    }
    /// @brief Encode one complete urinterfaces/msg/DoubleMultiArrayStamped value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/msg/DoubleMultiArrayStamped value.
    /// @details Require the complete 16..272-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<16 or bytes.len>272) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/msg/Float32Stamped value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 16..144 bytes and
/// is identified by UWVMROS1_5989940d19890b6d3b78172e9920708745b78e35c1c4fb238412c37a813d30d3.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesMsgFloat32Stamped=struct {
    /// @brief Maximum canonical extent of urinterfaces/msg/Float32Stamped in bytes.
    /// @details The inclusive bound is 144 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=144;
    /// @brief Canonical codec identity of urinterfaces/msg/Float32Stamped.
    /// @details Exact identity UWVMROS1_5989940d19890b6d3b78172e9920708745b78e35c1c4fb238412c37a813d30d3 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_5989940d19890b6d3b78172e9920708745b78e35c1c4fb238412c37a813d30d3";
    /// @brief Original ROS type name for urinterfaces/msg/Float32Stamped.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/msg/Float32Stamped";
    /// @brief Selected original native identity for urinterfaces/msg/Float32Stamped.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/msg/Float32Stamped.header: std_msgs/msg/Header.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/zig/API-CONTRACT.md
    field_header: Ros2Std_msgsMsgHeader=.{},
    /// @brief urinterfaces/msg/Float32Stamped.data: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/zig/API-CONTRACT.md
    field_data: f32=0,
    /// @brief Append every canonical field of urinterfaces/msg/Float32Stamped.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_header.writeFields(w);
        try w.float32(self.field_data);
    }
    /// @brief Read the ordered canonical fields of urinterfaces/msg/Float32Stamped.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_header=try Ros2Std_msgsMsgHeader.readFields(r,allocator);
        value.field_data=try r.float32();
        return value;
    }
    /// @brief Encode one complete urinterfaces/msg/Float32Stamped value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/msg/Float32Stamped value.
    /// @details Require the complete 16..144-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<16 or bytes.len>144) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/msg/Float64Stamped value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 20..148 bytes and
/// is identified by UWVMROS1_4f8950feff6f20dbdbf9cac1f01168824be3698a4bd90355a470b580930edb21.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesMsgFloat64Stamped=struct {
    /// @brief Maximum canonical extent of urinterfaces/msg/Float64Stamped in bytes.
    /// @details The inclusive bound is 148 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=148;
    /// @brief Canonical codec identity of urinterfaces/msg/Float64Stamped.
    /// @details Exact identity UWVMROS1_4f8950feff6f20dbdbf9cac1f01168824be3698a4bd90355a470b580930edb21 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_4f8950feff6f20dbdbf9cac1f01168824be3698a4bd90355a470b580930edb21";
    /// @brief Original ROS type name for urinterfaces/msg/Float64Stamped.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/msg/Float64Stamped";
    /// @brief Selected original native identity for urinterfaces/msg/Float64Stamped.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/msg/Float64Stamped.header: std_msgs/msg/Header.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/zig/API-CONTRACT.md
    field_header: Ros2Std_msgsMsgHeader=.{},
    /// @brief urinterfaces/msg/Float64Stamped.data: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/zig/API-CONTRACT.md
    field_data: f64=0,
    /// @brief Append every canonical field of urinterfaces/msg/Float64Stamped.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_header.writeFields(w);
        try w.float64(self.field_data);
    }
    /// @brief Read the ordered canonical fields of urinterfaces/msg/Float64Stamped.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_header=try Ros2Std_msgsMsgHeader.readFields(r,allocator);
        value.field_data=try r.float64();
        return value;
    }
    /// @brief Encode one complete urinterfaces/msg/Float64Stamped value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/msg/Float64Stamped value.
    /// @details Require the complete 20..148-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<20 or bytes.len>148) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/msg/JointMode value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 19..147 bytes and
/// is identified by UWVMROS1_6d766192096ced3c8568a98fb286c309e00cfb97e34b2611fff70e5bb1eaa95c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesMsgJointMode=struct {
    /// @brief Maximum canonical extent of urinterfaces/msg/JointMode in bytes.
    /// @details The inclusive bound is 147 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=147;
    /// @brief Canonical codec identity of urinterfaces/msg/JointMode.
    /// @details Exact identity UWVMROS1_6d766192096ced3c8568a98fb286c309e00cfb97e34b2611fff70e5bb1eaa95c binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_6d766192096ced3c8568a98fb286c309e00cfb97e34b2611fff70e5bb1eaa95c";
    /// @brief Original ROS type name for urinterfaces/msg/JointMode.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/msg/JointMode";
    /// @brief Selected original native identity for urinterfaces/msg/JointMode.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/msg/JointMode.JOINT_MODE_RESET: original uint8 constant.
    /// @details Exact admitted value 235. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_JOINT_MODE_RESET: u8=235;
    /// @brief urinterfaces/msg/JointMode.JOINT_MODE_SHUTTING_DOWN: original uint8 constant.
    /// @details Exact admitted value 236. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_JOINT_MODE_SHUTTING_DOWN: u8=236;
    /// @brief urinterfaces/msg/JointMode.JOINT_MODE_PART_D_CALIBRATION: original uint8 constant.
    /// @details Exact admitted value 237. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_JOINT_MODE_PART_D_CALIBRATION: u8=237;
    /// @brief urinterfaces/msg/JointMode.JOINT_MODE_BACKDRIVE: original uint8 constant.
    /// @details Exact admitted value 238. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_JOINT_MODE_BACKDRIVE: u8=238;
    /// @brief urinterfaces/msg/JointMode.JOINT_MODE_POWER_OFF: original uint8 constant.
    /// @details Exact admitted value 239. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_JOINT_MODE_POWER_OFF: u8=239;
    /// @brief urinterfaces/msg/JointMode.JOINT_MODE_READY_FOR_POWER_OFF: original uint8 constant.
    /// @details Exact admitted value 240. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_JOINT_MODE_READY_FOR_POWER_OFF: u8=240;
    /// @brief urinterfaces/msg/JointMode.JOINT_MODE_NOT_RESPONDING: original uint8 constant.
    /// @details Exact admitted value 245. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_JOINT_MODE_NOT_RESPONDING: u8=245;
    /// @brief urinterfaces/msg/JointMode.JOINT_MODE_MOTOR_INITIALISATION: original uint8 constant.
    /// @details Exact admitted value 246. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_JOINT_MODE_MOTOR_INITIALISATION: u8=246;
    /// @brief urinterfaces/msg/JointMode.JOINT_MODE_BOOTING: original uint8 constant.
    /// @details Exact admitted value 247. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_JOINT_MODE_BOOTING: u8=247;
    /// @brief urinterfaces/msg/JointMode.JOINT_MODE_PART_D_CALIBRATION_ERROR: original uint8 constant.
    /// @details Exact admitted value 248. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_JOINT_MODE_PART_D_CALIBRATION_ERROR: u8=248;
    /// @brief urinterfaces/msg/JointMode.JOINT_MODE_BOOTLOADER: original uint8 constant.
    /// @details Exact admitted value 249. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_JOINT_MODE_BOOTLOADER: u8=249;
    /// @brief urinterfaces/msg/JointMode.JOINT_MODE_CALIBRATION: original uint8 constant.
    /// @details Exact admitted value 250. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_JOINT_MODE_CALIBRATION: u8=250;
    /// @brief urinterfaces/msg/JointMode.JOINT_MODE_VIOLATION: original uint8 constant.
    /// @details Exact admitted value 251. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_JOINT_MODE_VIOLATION: u8=251;
    /// @brief urinterfaces/msg/JointMode.JOINT_MODE_FAULT: original uint8 constant.
    /// @details Exact admitted value 252. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_JOINT_MODE_FAULT: u8=252;
    /// @brief urinterfaces/msg/JointMode.JOINT_MODE_RUNNING: original uint8 constant.
    /// @details Exact admitted value 253. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_JOINT_MODE_RUNNING: u8=253;
    /// @brief urinterfaces/msg/JointMode.JOINT_MODE_IDLE: original uint8 constant.
    /// @details Exact admitted value 255. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_JOINT_MODE_IDLE: u8=255;
    /// @brief urinterfaces/msg/JointMode.header: std_msgs/msg/Header.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/zig/API-CONTRACT.md
    field_header: Ros2Std_msgsMsgHeader=.{},
    /// @brief urinterfaces/msg/JointMode.joint_modes: uint8; exactly 6 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/zig/API-CONTRACT.md
    field_joint_modes: [6]u8=[_]u8{0} ** 6,
    /// @brief urinterfaces/msg/JointMode.tool_mode: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/zig/API-CONTRACT.md
    field_tool_mode: u8=0,
    /// @brief Append every canonical field of urinterfaces/msg/JointMode.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_header.writeFields(w);
        for(self.field_joint_modes) |e| {
        try w.integer(e);
        }
        try w.integer(self.field_tool_mode);
    }
    /// @brief Read the ordered canonical fields of urinterfaces/msg/JointMode.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_header=try Ros2Std_msgsMsgHeader.readFields(r,allocator);
        for(&value.field_joint_modes) |*e| {
        e.*=try r.integer(u8);
        }
        value.field_tool_mode=try r.integer(u8);
        return value;
    }
    /// @brief Encode one complete urinterfaces/msg/JointMode value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/msg/JointMode value.
    /// @details Require the complete 19..147-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<19 or bytes.len>147) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/msg/JointTemperature value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 36..164 bytes and
/// is identified by UWVMROS1_af77f1ec4c6b4d71e6387315d2388e7493c229dbf216848e61d5638cb308d017.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesMsgJointTemperature=struct {
    /// @brief Maximum canonical extent of urinterfaces/msg/JointTemperature in bytes.
    /// @details The inclusive bound is 164 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=164;
    /// @brief Canonical codec identity of urinterfaces/msg/JointTemperature.
    /// @details Exact identity UWVMROS1_af77f1ec4c6b4d71e6387315d2388e7493c229dbf216848e61d5638cb308d017 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_af77f1ec4c6b4d71e6387315d2388e7493c229dbf216848e61d5638cb308d017";
    /// @brief Original ROS type name for urinterfaces/msg/JointTemperature.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/msg/JointTemperature";
    /// @brief Selected original native identity for urinterfaces/msg/JointTemperature.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/msg/JointTemperature.header: std_msgs/msg/Header.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/zig/API-CONTRACT.md
    field_header: Ros2Std_msgsMsgHeader=.{},
    /// @brief urinterfaces/msg/JointTemperature.data: float32; exactly 6 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/zig/API-CONTRACT.md
    field_data: [6]f32=[_]f32{0} ** 6,
    /// @brief Append every canonical field of urinterfaces/msg/JointTemperature.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_header.writeFields(w);
        for(self.field_data) |e| {
        try w.float32(e);
        }
    }
    /// @brief Read the ordered canonical fields of urinterfaces/msg/JointTemperature.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_header=try Ros2Std_msgsMsgHeader.readFields(r,allocator);
        for(&value.field_data) |*e| {
        e.*=try r.float32();
        }
        return value;
    }
    /// @brief Encode one complete urinterfaces/msg/JointTemperature value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/msg/JointTemperature value.
    /// @details Require the complete 36..164-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<36 or bytes.len>164) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/msg/JointVoltage value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 60..188 bytes and
/// is identified by UWVMROS1_9fa2179402b5dc29b898ac1321c1f6f86676300939776a6e32de4529f3776b61.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesMsgJointVoltage=struct {
    /// @brief Maximum canonical extent of urinterfaces/msg/JointVoltage in bytes.
    /// @details The inclusive bound is 188 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=188;
    /// @brief Canonical codec identity of urinterfaces/msg/JointVoltage.
    /// @details Exact identity UWVMROS1_9fa2179402b5dc29b898ac1321c1f6f86676300939776a6e32de4529f3776b61 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_9fa2179402b5dc29b898ac1321c1f6f86676300939776a6e32de4529f3776b61";
    /// @brief Original ROS type name for urinterfaces/msg/JointVoltage.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/msg/JointVoltage";
    /// @brief Selected original native identity for urinterfaces/msg/JointVoltage.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/msg/JointVoltage.header: std_msgs/msg/Header.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/zig/API-CONTRACT.md
    field_header: Ros2Std_msgsMsgHeader=.{},
    /// @brief urinterfaces/msg/JointVoltage.data: float64; exactly 6 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/zig/API-CONTRACT.md
    field_data: [6]f64=[_]f64{0} ** 6,
    /// @brief Append every canonical field of urinterfaces/msg/JointVoltage.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_header.writeFields(w);
        for(self.field_data) |e| {
        try w.float64(e);
        }
    }
    /// @brief Read the ordered canonical fields of urinterfaces/msg/JointVoltage.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_header=try Ros2Std_msgsMsgHeader.readFields(r,allocator);
        for(&value.field_data) |*e| {
        e.*=try r.float64();
        }
        return value;
    }
    /// @brief Encode one complete urinterfaces/msg/JointVoltage value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/msg/JointVoltage value.
    /// @details Require the complete 60..188-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<60 or bytes.len>188) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/msg/JsonStringType value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..1028 bytes and
/// is identified by UWVMROS1_05da0dcf2728cd73f875421c457804a146ceffe76e9d4619be71c2c92efdd728.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesMsgJsonStringType=struct {
    /// @brief Maximum canonical extent of urinterfaces/msg/JsonStringType in bytes.
    /// @details The inclusive bound is 1028 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=1028;
    /// @brief Canonical codec identity of urinterfaces/msg/JsonStringType.
    /// @details Exact identity UWVMROS1_05da0dcf2728cd73f875421c457804a146ceffe76e9d4619be71c2c92efdd728 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_05da0dcf2728cd73f875421c457804a146ceffe76e9d4619be71c2c92efdd728";
    /// @brief Original ROS type name for urinterfaces/msg/JsonStringType.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/msg/JsonStringType";
    /// @brief Selected original native identity for urinterfaces/msg/JsonStringType.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/msg/JsonStringType.json_string: std_msgs/msg/String.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/zig/API-CONTRACT.md
    field_json_string: Ros2Std_msgsMsgString=.{},
    /// @brief Append every canonical field of urinterfaces/msg/JsonStringType.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_json_string.writeFields(w);
    }
    /// @brief Read the ordered canonical fields of urinterfaces/msg/JsonStringType.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_json_string=try Ros2Std_msgsMsgString.readFields(r,allocator);
        return value;
    }
    /// @brief Encode one complete urinterfaces/msg/JsonStringType value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/msg/JsonStringType value.
    /// @details Require the complete 4..1028-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<4 or bytes.len>1028) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/msg/RuntimeState value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 13..141 bytes and
/// is identified by UWVMROS1_711ca0e324cbeb36fcedea4881b8658a4b453402c410c8d3efaa57205aaf74b6.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesMsgRuntimeState=struct {
    /// @brief Maximum canonical extent of urinterfaces/msg/RuntimeState in bytes.
    /// @details The inclusive bound is 141 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=141;
    /// @brief Canonical codec identity of urinterfaces/msg/RuntimeState.
    /// @details Exact identity UWVMROS1_711ca0e324cbeb36fcedea4881b8658a4b453402c410c8d3efaa57205aaf74b6 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_711ca0e324cbeb36fcedea4881b8658a4b453402c410c8d3efaa57205aaf74b6";
    /// @brief Original ROS type name for urinterfaces/msg/RuntimeState.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/msg/RuntimeState";
    /// @brief Selected original native identity for urinterfaces/msg/RuntimeState.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/msg/RuntimeState.PROGRAM_STATE_UNDEFINED: original int8 constant.
    /// @details Exact admitted value -1. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PROGRAM_STATE_UNDEFINED: i8=-1;
    /// @brief urinterfaces/msg/RuntimeState.PROGRAM_STATE_STOPPING: original int8 constant.
    /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PROGRAM_STATE_STOPPING: i8=0;
    /// @brief urinterfaces/msg/RuntimeState.PROGRAM_STATE_STOPPED: original int8 constant.
    /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PROGRAM_STATE_STOPPED: i8=1;
    /// @brief urinterfaces/msg/RuntimeState.PROGRAM_STATE_RUNNING: original int8 constant.
    /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PROGRAM_STATE_RUNNING: i8=2;
    /// @brief urinterfaces/msg/RuntimeState.PROGRAM_STATE_PAUSING: original int8 constant.
    /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PROGRAM_STATE_PAUSING: i8=3;
    /// @brief urinterfaces/msg/RuntimeState.PROGRAM_STATE_PAUSED: original int8 constant.
    /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PROGRAM_STATE_PAUSED: i8=4;
    /// @brief urinterfaces/msg/RuntimeState.PROGRAM_STATE_RESUMING: original int8 constant.
    /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PROGRAM_STATE_RESUMING: i8=5;
    /// @brief urinterfaces/msg/RuntimeState.PROGRAM_STATE_RETRACTING: original int8 constant.
    /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PROGRAM_STATE_RETRACTING: i8=6;
    /// @brief urinterfaces/msg/RuntimeState.header: std_msgs/msg/Header.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/zig/API-CONTRACT.md
    field_header: Ros2Std_msgsMsgHeader=.{},
    /// @brief urinterfaces/msg/RuntimeState.data: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/zig/API-CONTRACT.md
    field_data: i8=0,
    /// @brief Append every canonical field of urinterfaces/msg/RuntimeState.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_header.writeFields(w);
        try w.integer(self.field_data);
    }
    /// @brief Read the ordered canonical fields of urinterfaces/msg/RuntimeState.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_header=try Ros2Std_msgsMsgHeader.readFields(r,allocator);
        value.field_data=try r.integer(i8);
        return value;
    }
    /// @brief Encode one complete urinterfaces/msg/RuntimeState value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/msg/RuntimeState value.
    /// @details Require the complete 13..141-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<13 or bytes.len>141) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/msg/SafetyStatus value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 13..141 bytes and
/// is identified by UWVMROS1_8f266e1ee8ab2ee9791ff4b52f9dae8ef982844c8d24a0bdfb4bb93cc55b78d4.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesMsgSafetyStatus=struct {
    /// @brief Maximum canonical extent of urinterfaces/msg/SafetyStatus in bytes.
    /// @details The inclusive bound is 141 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=141;
    /// @brief Canonical codec identity of urinterfaces/msg/SafetyStatus.
    /// @details Exact identity UWVMROS1_8f266e1ee8ab2ee9791ff4b52f9dae8ef982844c8d24a0bdfb4bb93cc55b78d4 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_8f266e1ee8ab2ee9791ff4b52f9dae8ef982844c8d24a0bdfb4bb93cc55b78d4";
    /// @brief Original ROS type name for urinterfaces/msg/SafetyStatus.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/msg/SafetyStatus";
    /// @brief Selected original native identity for urinterfaces/msg/SafetyStatus.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/msg/SafetyStatus.NORMAL: original int8 constant.
    /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const field_NORMAL: i8=1;
    /// @brief urinterfaces/msg/SafetyStatus.REDUCED: original int8 constant.
    /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const field_REDUCED: i8=2;
    /// @brief urinterfaces/msg/SafetyStatus.PROTECTIVE_STOP: original int8 constant.
    /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PROTECTIVE_STOP: i8=3;
    /// @brief urinterfaces/msg/SafetyStatus.RECOVERY: original int8 constant.
    /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const field_RECOVERY: i8=4;
    /// @brief urinterfaces/msg/SafetyStatus.SAFEGUARD_STOP: original int8 constant.
    /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const field_SAFEGUARD_STOP: i8=5;
    /// @brief urinterfaces/msg/SafetyStatus.SYSTEM_EMERGENCY_STOP: original int8 constant.
    /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const field_SYSTEM_EMERGENCY_STOP: i8=6;
    /// @brief urinterfaces/msg/SafetyStatus.ROBOT_EMERGENCY_STOP: original int8 constant.
    /// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const field_ROBOT_EMERGENCY_STOP: i8=7;
    /// @brief urinterfaces/msg/SafetyStatus.VIOLATION: original int8 constant.
    /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const field_VIOLATION: i8=8;
    /// @brief urinterfaces/msg/SafetyStatus.FAULT: original int8 constant.
    /// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const field_FAULT: i8=9;
    /// @brief urinterfaces/msg/SafetyStatus.VALIDATE_JOINT_ID: original int8 constant.
    /// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const field_VALIDATE_JOINT_ID: i8=10;
    /// @brief urinterfaces/msg/SafetyStatus.UNDEFINED_SAFETY_MODE: original int8 constant.
    /// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const field_UNDEFINED_SAFETY_MODE: i8=11;
    /// @brief urinterfaces/msg/SafetyStatus.AUTOMATIC_MODE_SAFEGUARD_STOP: original int8 constant.
    /// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const field_AUTOMATIC_MODE_SAFEGUARD_STOP: i8=12;
    /// @brief urinterfaces/msg/SafetyStatus.SYSTEM_THREE_POSITION_ENABLING_STOP: original int8 constant.
    /// @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const field_SYSTEM_THREE_POSITION_ENABLING_STOP: i8=13;
    /// @brief urinterfaces/msg/SafetyStatus.TP_THREE_POSITION_ENABLING_STOP: original int8 constant.
    /// @details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TP_THREE_POSITION_ENABLING_STOP: i8=14;
    /// @brief urinterfaces/msg/SafetyStatus.IMMI_EMERGENCY_STOP: original int8 constant.
    /// @details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const field_IMMI_EMERGENCY_STOP: i8=15;
    /// @brief urinterfaces/msg/SafetyStatus.IMMI_SAFEGUARD_STOP: original int8 constant.
    /// @details Exact admitted value 16. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const field_IMMI_SAFEGUARD_STOP: i8=16;
    /// @brief urinterfaces/msg/SafetyStatus.PROFISAFE_WAITING_FOR_PARAMETERS: original int8 constant.
    /// @details Exact admitted value 17. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PROFISAFE_WAITING_FOR_PARAMETERS: i8=17;
    /// @brief urinterfaces/msg/SafetyStatus.PROFISAFE_AUTOMATIC_MODE_SAFEGUARD_STOP: original int8 constant.
    /// @details Exact admitted value 18. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PROFISAFE_AUTOMATIC_MODE_SAFEGUARD_STOP: i8=18;
    /// @brief urinterfaces/msg/SafetyStatus.PROFISAFE_SAFEGUARD_STOP: original int8 constant.
    /// @details Exact admitted value 19. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PROFISAFE_SAFEGUARD_STOP: i8=19;
    /// @brief urinterfaces/msg/SafetyStatus.PROFISAFE_EMERGENCY_STOP: original int8 constant.
    /// @details Exact admitted value 20. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PROFISAFE_EMERGENCY_STOP: i8=20;
    /// @brief urinterfaces/msg/SafetyStatus.SAFETY_API_SAFEGUARD_STOP: original int8 constant.
    /// @details Exact admitted value 22. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const field_SAFETY_API_SAFEGUARD_STOP: i8=22;
    /// @brief urinterfaces/msg/SafetyStatus.IO_PLANE_STOP: original int8 constant.
    /// @details Exact admitted value 23. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const field_IO_PLANE_STOP: i8=23;
    /// @brief urinterfaces/msg/SafetyStatus.header: std_msgs/msg/Header.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/zig/API-CONTRACT.md
    field_header: Ros2Std_msgsMsgHeader=.{},
    /// @brief urinterfaces/msg/SafetyStatus.data: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/zig/API-CONTRACT.md
    field_data: i8=0,
    /// @brief Append every canonical field of urinterfaces/msg/SafetyStatus.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_header.writeFields(w);
        try w.integer(self.field_data);
    }
    /// @brief Read the ordered canonical fields of urinterfaces/msg/SafetyStatus.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_header=try Ros2Std_msgsMsgHeader.readFields(r,allocator);
        value.field_data=try r.integer(i8);
        return value;
    }
    /// @brief Encode one complete urinterfaces/msg/SafetyStatus value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/msg/SafetyStatus value.
    /// @details Require the complete 13..141-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<13 or bytes.len>141) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/msg/SharedVariablesEditResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..1029 bytes and
/// is identified by UWVMROS1_870ce8f649642b6edcce8ba5c7cb27818ec138d7afb2cde926638d21ea748212.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesMsgSharedVariablesEditResponse=struct {
    /// @brief Maximum canonical extent of urinterfaces/msg/SharedVariablesEditResponse in bytes.
    /// @details The inclusive bound is 1029 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=1029;
    /// @brief Canonical codec identity of urinterfaces/msg/SharedVariablesEditResponse.
    /// @details Exact identity UWVMROS1_870ce8f649642b6edcce8ba5c7cb27818ec138d7afb2cde926638d21ea748212 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_870ce8f649642b6edcce8ba5c7cb27818ec138d7afb2cde926638d21ea748212";
    /// @brief Original ROS type name for urinterfaces/msg/SharedVariablesEditResponse.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/msg/SharedVariablesEditResponse";
    /// @brief Selected original native identity for urinterfaces/msg/SharedVariablesEditResponse.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/msg/SharedVariablesEditResponse.success: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/zig/API-CONTRACT.md
    field_success: bool=false,
    /// @brief urinterfaces/msg/SharedVariablesEditResponse.result_message: std_msgs/msg/String.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/zig/API-CONTRACT.md
    field_result_message: Ros2Std_msgsMsgString=.{},
    /// @brief Append every canonical field of urinterfaces/msg/SharedVariablesEditResponse.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.boolean(self.field_success);
        try self.field_result_message.writeFields(w);
    }
    /// @brief Read the ordered canonical fields of urinterfaces/msg/SharedVariablesEditResponse.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_success=try r.boolean();
        value.field_result_message=try Ros2Std_msgsMsgString.readFields(r,allocator);
        return value;
    }
    /// @brief Encode one complete urinterfaces/msg/SharedVariablesEditResponse value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/msg/SharedVariablesEditResponse value.
    /// @details Require the complete 5..1029-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<5 or bytes.len>1029) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/msg/SpeedSliderFraction value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 20..148 bytes and
/// is identified by UWVMROS1_55158782c2bc4d4741e8f2850efddf09d27666f9c3aeeded762d8d8e4198fccd.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesMsgSpeedSliderFraction=struct {
    /// @brief Maximum canonical extent of urinterfaces/msg/SpeedSliderFraction in bytes.
    /// @details The inclusive bound is 148 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=148;
    /// @brief Canonical codec identity of urinterfaces/msg/SpeedSliderFraction.
    /// @details Exact identity UWVMROS1_55158782c2bc4d4741e8f2850efddf09d27666f9c3aeeded762d8d8e4198fccd binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_55158782c2bc4d4741e8f2850efddf09d27666f9c3aeeded762d8d8e4198fccd";
    /// @brief Original ROS type name for urinterfaces/msg/SpeedSliderFraction.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/msg/SpeedSliderFraction";
    /// @brief Selected original native identity for urinterfaces/msg/SpeedSliderFraction.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/msg/SpeedSliderFraction.header: std_msgs/msg/Header.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/zig/API-CONTRACT.md
    field_header: Ros2Std_msgsMsgHeader=.{},
    /// @brief urinterfaces/msg/SpeedSliderFraction.data: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/zig/API-CONTRACT.md
    field_data: f64=0,
    /// @brief Append every canonical field of urinterfaces/msg/SpeedSliderFraction.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_header.writeFields(w);
        try w.float64(self.field_data);
    }
    /// @brief Read the ordered canonical fields of urinterfaces/msg/SpeedSliderFraction.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_header=try Ros2Std_msgsMsgHeader.readFields(r,allocator);
        value.field_data=try r.float64();
        return value;
    }
    /// @brief Encode one complete urinterfaces/msg/SpeedSliderFraction value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/msg/SpeedSliderFraction value.
    /// @details Require the complete 20..148-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<20 or bytes.len>148) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/msg/TCPState value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 116..244 bytes
/// and is identified by UWVMROS1_49d8f678cc32669dd81528bb4c5d97f28019745159ef5e7267c8a076cd315b92.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesMsgTCPState=struct {
    /// @brief Maximum canonical extent of urinterfaces/msg/TCPState in bytes.
    /// @details The inclusive bound is 244 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesMsgTCPState; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=244;
    /// @brief Canonical codec identity of urinterfaces/msg/TCPState.
    /// @details Exact identity UWVMROS1_49d8f678cc32669dd81528bb4c5d97f28019745159ef5e7267c8a076cd315b92 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesMsgTCPState; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_49d8f678cc32669dd81528bb4c5d97f28019745159ef5e7267c8a076cd315b92";
    /// @brief Original ROS type name for urinterfaces/msg/TCPState.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesMsgTCPState; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/msg/TCPState";
    /// @brief Selected original native identity for urinterfaces/msg/TCPState.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesMsgTCPState; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/msg/TCPState.header: std_msgs/msg/Header.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgTCPState; share/platform/ros/zig/API-CONTRACT.md
    field_header: Ros2Std_msgsMsgHeader=.{},
    /// @brief urinterfaces/msg/TCPState.pose: geometry_msgs/msg/Pose.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgTCPState; share/platform/ros/zig/API-CONTRACT.md
    field_pose: Ros2Geometry_msgsMsgPose=.{},
    /// @brief urinterfaces/msg/TCPState.speed: geometry_msgs/msg/Twist.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgTCPState; share/platform/ros/zig/API-CONTRACT.md
    field_speed: Ros2Geometry_msgsMsgTwist=.{},
    /// @brief Append every canonical field of urinterfaces/msg/TCPState.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgTCPState; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_header.writeFields(w);
        try self.field_pose.writeFields(w);
        try self.field_speed.writeFields(w);
    }
    /// @brief Read the ordered canonical fields of urinterfaces/msg/TCPState.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgTCPState; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_header=try Ros2Std_msgsMsgHeader.readFields(r,allocator);
        value.field_pose=try Ros2Geometry_msgsMsgPose.readFields(r,allocator);
        value.field_speed=try Ros2Geometry_msgsMsgTwist.readFields(r,allocator);
        return value;
    }
    /// @brief Encode one complete urinterfaces/msg/TCPState value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgTCPState; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/msg/TCPState value.
    /// @details Require the complete 116..244-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgTCPState; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<116 or bytes.len>244) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/msg/ToolOutputMode value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 15..143 bytes and
/// is identified by UWVMROS1_21df545459050dc86de1fb111c9a4b2c8bb50c3729137b8d5c5134dd33b84660.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesMsgToolOutputMode=struct {
    /// @brief Maximum canonical extent of urinterfaces/msg/ToolOutputMode in bytes.
    /// @details The inclusive bound is 143 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=143;
    /// @brief Canonical codec identity of urinterfaces/msg/ToolOutputMode.
    /// @details Exact identity UWVMROS1_21df545459050dc86de1fb111c9a4b2c8bb50c3729137b8d5c5134dd33b84660 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_21df545459050dc86de1fb111c9a4b2c8bb50c3729137b8d5c5134dd33b84660";
    /// @brief Original ROS type name for urinterfaces/msg/ToolOutputMode.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/msg/ToolOutputMode";
    /// @brief Selected original native identity for urinterfaces/msg/ToolOutputMode.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/msg/ToolOutputMode.TOOL_OUTPUT: original uint8 constant.
    /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TOOL_OUTPUT: u8=0;
    /// @brief urinterfaces/msg/ToolOutputMode.TOOL_POWER: original uint8 constant.
    /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TOOL_POWER: u8=1;
    /// @brief urinterfaces/msg/ToolOutputMode.TOOL_SAFE: original uint8 constant.
    /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TOOL_SAFE: u8=2;
    /// @brief urinterfaces/msg/ToolOutputMode.OUTPUT_MODE_DISABLED: original uint8 constant.
    /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_OUTPUT_MODE_DISABLED: u8=0;
    /// @brief urinterfaces/msg/ToolOutputMode.OUTPUT_MODE_SINKING: original uint8 constant.
    /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_OUTPUT_MODE_SINKING: u8=1;
    /// @brief urinterfaces/msg/ToolOutputMode.OUTPUT_MODE_SOURCING: original uint8 constant.
    /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_OUTPUT_MODE_SOURCING: u8=2;
    /// @brief urinterfaces/msg/ToolOutputMode.OUTPUT_MODE_PUSH_PULL: original uint8 constant.
    /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_OUTPUT_MODE_PUSH_PULL: u8=3;
    /// @brief urinterfaces/msg/ToolOutputMode.header: std_msgs/msg/Header.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/zig/API-CONTRACT.md
    field_header: Ros2Std_msgsMsgHeader=.{},
    /// @brief urinterfaces/msg/ToolOutputMode.output_mode: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/zig/API-CONTRACT.md
    field_output_mode: u8=0,
    /// @brief urinterfaces/msg/ToolOutputMode.output_pin_mode: uint8; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/zig/API-CONTRACT.md
    field_output_pin_mode: [2]u8=[_]u8{0} ** 2,
    /// @brief Append every canonical field of urinterfaces/msg/ToolOutputMode.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_header.writeFields(w);
        try w.integer(self.field_output_mode);
        for(self.field_output_pin_mode) |e| {
        try w.integer(e);
        }
    }
    /// @brief Read the ordered canonical fields of urinterfaces/msg/ToolOutputMode.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_header=try Ros2Std_msgsMsgHeader.readFields(r,allocator);
        value.field_output_mode=try r.integer(u8);
        for(&value.field_output_pin_mode) |*e| {
        e.*=try r.integer(u8);
        }
        return value;
    }
    /// @brief Encode one complete urinterfaces/msg/ToolOutputMode value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/msg/ToolOutputMode value.
    /// @details Require the complete 15..143-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<15 or bytes.len>143) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/msg/VariableUpdate value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 16..1168 bytes
/// and is identified by UWVMROS1_7028ea5c674be886f4fac1d2ac0452167489f2c23d7ea759cdbec90feccbdb20.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesMsgVariableUpdate=struct {
    /// @brief Maximum canonical extent of urinterfaces/msg/VariableUpdate in bytes.
    /// @details The inclusive bound is 1168 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=1168;
    /// @brief Canonical codec identity of urinterfaces/msg/VariableUpdate.
    /// @details Exact identity UWVMROS1_7028ea5c674be886f4fac1d2ac0452167489f2c23d7ea759cdbec90feccbdb20 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_7028ea5c674be886f4fac1d2ac0452167489f2c23d7ea759cdbec90feccbdb20";
    /// @brief Original ROS type name for urinterfaces/msg/VariableUpdate.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/msg/VariableUpdate";
    /// @brief Selected original native identity for urinterfaces/msg/VariableUpdate.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/msg/VariableUpdate.header: std_msgs/msg/Header.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/zig/API-CONTRACT.md
    field_header: Ros2Std_msgsMsgHeader=.{},
    /// @brief urinterfaces/msg/VariableUpdate.data: urinterfaces/msg/JsonStringType.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/zig/API-CONTRACT.md
    field_data: Ros2UrinterfacesMsgJsonStringType=.{},
    /// @brief Append every canonical field of urinterfaces/msg/VariableUpdate.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_header.writeFields(w);
        try self.field_data.writeFields(w);
    }
    /// @brief Read the ordered canonical fields of urinterfaces/msg/VariableUpdate.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_header=try Ros2Std_msgsMsgHeader.readFields(r,allocator);
        value.field_data=try Ros2UrinterfacesMsgJsonStringType.readFields(r,allocator);
        return value;
    }
    /// @brief Encode one complete urinterfaces/msg/VariableUpdate value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/msg/VariableUpdate value.
    /// @details Require the complete 16..1168-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<16 or bytes.len>1168) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/msg/VoltageCurrentStamped value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 28..156 bytes and
/// is identified by UWVMROS1_bcc3f6871a7bf0ff691d0c9c1b6596a633597de795b486c2b82ac922ede76805.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesMsgVoltageCurrentStamped=struct {
    /// @brief Maximum canonical extent of urinterfaces/msg/VoltageCurrentStamped in bytes.
    /// @details The inclusive bound is 156 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=156;
    /// @brief Canonical codec identity of urinterfaces/msg/VoltageCurrentStamped.
    /// @details Exact identity UWVMROS1_bcc3f6871a7bf0ff691d0c9c1b6596a633597de795b486c2b82ac922ede76805 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_bcc3f6871a7bf0ff691d0c9c1b6596a633597de795b486c2b82ac922ede76805";
    /// @brief Original ROS type name for urinterfaces/msg/VoltageCurrentStamped.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/msg/VoltageCurrentStamped";
    /// @brief Selected original native identity for urinterfaces/msg/VoltageCurrentStamped.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/msg/VoltageCurrentStamped.header: std_msgs/msg/Header.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/zig/API-CONTRACT.md
    field_header: Ros2Std_msgsMsgHeader=.{},
    /// @brief urinterfaces/msg/VoltageCurrentStamped.voltage: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/zig/API-CONTRACT.md
    field_voltage: f64=0,
    /// @brief urinterfaces/msg/VoltageCurrentStamped.current: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/zig/API-CONTRACT.md
    field_current: f64=0,
    /// @brief Append every canonical field of urinterfaces/msg/VoltageCurrentStamped.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_header.writeFields(w);
        try w.float64(self.field_voltage);
        try w.float64(self.field_current);
    }
    /// @brief Read the ordered canonical fields of urinterfaces/msg/VoltageCurrentStamped.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_header=try Ros2Std_msgsMsgHeader.readFields(r,allocator);
        value.field_voltage=try r.float64();
        value.field_current=try r.float64();
        return value;
    }
    /// @brief Encode one complete urinterfaces/msg/VoltageCurrentStamped value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/msg/VoltageCurrentStamped value.
    /// @details Require the complete 28..156-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<28 or bytes.len>156) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/msg/WorldModelNames value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 16..16592 bytes
/// and is identified by UWVMROS1_499f722fc97565bd0124888d7c20f4e9f8947893c49b1608dcf201fe3538d7a9.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesMsgWorldModelNames=struct {
    /// @brief Maximum canonical extent of urinterfaces/msg/WorldModelNames in bytes.
    /// @details The inclusive bound is 16592 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=16592;
    /// @brief Canonical codec identity of urinterfaces/msg/WorldModelNames.
    /// @details Exact identity UWVMROS1_499f722fc97565bd0124888d7c20f4e9f8947893c49b1608dcf201fe3538d7a9 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_499f722fc97565bd0124888d7c20f4e9f8947893c49b1608dcf201fe3538d7a9";
    /// @brief Original ROS type name for urinterfaces/msg/WorldModelNames.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/msg/WorldModelNames";
    /// @brief Selected original native identity for urinterfaces/msg/WorldModelNames.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/msg/WorldModelNames.header: std_msgs/msg/Header.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/zig/API-CONTRACT.md
    field_header: Ros2Std_msgsMsgHeader=.{},
    /// @brief urinterfaces/msg/WorldModelNames.data: std_msgs/msg/String; 0..16 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/zig/API-CONTRACT.md
    field_data: []Ros2Std_msgsMsgString=&.{},
    /// @brief Append every canonical field of urinterfaces/msg/WorldModelNames.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_header.writeFields(w);
        if(self.field_data.len>16) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_data.len)));
        for(self.field_data) |e| {
        try e.writeFields(w);
        }
    }
    /// @brief Read the ordered canonical fields of urinterfaces/msg/WorldModelNames.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_header=try Ros2Std_msgsMsgHeader.readFields(r,allocator);
        const count1=try r.integer(u32); if(count1>16) return error.Invalid;
        value.field_data=try allocator.alloc(Ros2Std_msgsMsgString,count1);
        for(value.field_data) |*e| {
        e.*=try Ros2Std_msgsMsgString.readFields(r,allocator);
        }
        return value;
    }
    /// @brief Encode one complete urinterfaces/msg/WorldModelNames value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/msg/WorldModelNames value.
    /// @details Require the complete 16..16592-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<16 or bytes.len>16592) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/srv/SetAnalogOutput_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..100 bytes and
/// is identified by UWVMROS1_8be07a94dd334a03871180a9c73bab11377664e60500ac68d312398d51acd32d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesSrvSetAnalogOutput_Request=struct {
    /// @brief Maximum canonical extent of urinterfaces/srv/SetAnalogOutput_Request in bytes.
    /// @details The inclusive bound is 100 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=100;
    /// @brief Canonical codec identity of urinterfaces/srv/SetAnalogOutput_Request.
    /// @details Exact identity UWVMROS1_8be07a94dd334a03871180a9c73bab11377664e60500ac68d312398d51acd32d binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_8be07a94dd334a03871180a9c73bab11377664e60500ac68d312398d51acd32d";
    /// @brief Original ROS type name for urinterfaces/srv/SetAnalogOutput_Request.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/srv/SetAnalogOutput_Request";
    /// @brief Selected original native identity for urinterfaces/srv/SetAnalogOutput_Request.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/srv/SetAnalogOutput_Request.data: urinterfaces/msg/Analog; 0..16 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/zig/API-CONTRACT.md
    field_data: []Ros2UrinterfacesMsgAnalog=&.{},
    /// @brief Append every canonical field of urinterfaces/srv/SetAnalogOutput_Request.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        if(self.field_data.len>16) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_data.len)));
        for(self.field_data) |e| {
        try e.writeFields(w);
        }
    }
    /// @brief Read the ordered canonical fields of urinterfaces/srv/SetAnalogOutput_Request.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        const count0=try r.integer(u32); if(count0>16) return error.Invalid;
        value.field_data=try allocator.alloc(Ros2UrinterfacesMsgAnalog,count0);
        for(value.field_data) |*e| {
        e.*=try Ros2UrinterfacesMsgAnalog.readFields(r,allocator);
        }
        return value;
    }
    /// @brief Encode one complete urinterfaces/srv/SetAnalogOutput_Request value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/srv/SetAnalogOutput_Request value.
    /// @details Require the complete 4..100-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<4 or bytes.len>100) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/srv/SetAnalogOutput_Response value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is
/// identified by UWVMROS1_14016138286129e4f155ac2f82f5573e8a4af7d7c5ede55ce57f3ad76cb82e4e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesSrvSetAnalogOutput_Response=struct {
    /// @brief Maximum canonical extent of urinterfaces/srv/SetAnalogOutput_Response in bytes.
    /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=1;
    /// @brief Canonical codec identity of urinterfaces/srv/SetAnalogOutput_Response.
    /// @details Exact identity UWVMROS1_14016138286129e4f155ac2f82f5573e8a4af7d7c5ede55ce57f3ad76cb82e4e binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_14016138286129e4f155ac2f82f5573e8a4af7d7c5ede55ce57f3ad76cb82e4e";
    /// @brief Original ROS type name for urinterfaces/srv/SetAnalogOutput_Response.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/srv/SetAnalogOutput_Response";
    /// @brief Selected original native identity for urinterfaces/srv/SetAnalogOutput_Response.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/srv/SetAnalogOutput_Response.success: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/zig/API-CONTRACT.md
    field_success: bool=false,
    /// @brief Append every canonical field of urinterfaces/srv/SetAnalogOutput_Response.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.boolean(self.field_success);
    }
    /// @brief Read the ordered canonical fields of urinterfaces/srv/SetAnalogOutput_Response.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_success=try r.boolean();
        return value;
    }
    /// @brief Encode one complete urinterfaces/srv/SetAnalogOutput_Response value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/srv/SetAnalogOutput_Response value.
    /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and trailing
    /// bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<1 or bytes.len>1) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/srv/SetDigitalOutput_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..36 bytes and
/// is identified by UWVMROS1_ec6c587810af7f3d04b10058e69c8095775e8b6feede5fc0f60ca1dfda0b5e47.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesSrvSetDigitalOutput_Request=struct {
    /// @brief Maximum canonical extent of urinterfaces/srv/SetDigitalOutput_Request in bytes.
    /// @details The inclusive bound is 36 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=36;
    /// @brief Canonical codec identity of urinterfaces/srv/SetDigitalOutput_Request.
    /// @details Exact identity UWVMROS1_ec6c587810af7f3d04b10058e69c8095775e8b6feede5fc0f60ca1dfda0b5e47 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_ec6c587810af7f3d04b10058e69c8095775e8b6feede5fc0f60ca1dfda0b5e47";
    /// @brief Original ROS type name for urinterfaces/srv/SetDigitalOutput_Request.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/srv/SetDigitalOutput_Request";
    /// @brief Selected original native identity for urinterfaces/srv/SetDigitalOutput_Request.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/srv/SetDigitalOutput_Request.data: urinterfaces/msg/Digital; 0..16 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/zig/API-CONTRACT.md
    field_data: []Ros2UrinterfacesMsgDigital=&.{},
    /// @brief Append every canonical field of urinterfaces/srv/SetDigitalOutput_Request.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        if(self.field_data.len>16) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_data.len)));
        for(self.field_data) |e| {
        try e.writeFields(w);
        }
    }
    /// @brief Read the ordered canonical fields of urinterfaces/srv/SetDigitalOutput_Request.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        const count0=try r.integer(u32); if(count0>16) return error.Invalid;
        value.field_data=try allocator.alloc(Ros2UrinterfacesMsgDigital,count0);
        for(value.field_data) |*e| {
        e.*=try Ros2UrinterfacesMsgDigital.readFields(r,allocator);
        }
        return value;
    }
    /// @brief Encode one complete urinterfaces/srv/SetDigitalOutput_Request value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/srv/SetDigitalOutput_Request value.
    /// @details Require the complete 4..36-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<4 or bytes.len>36) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/srv/SetDigitalOutput_Response value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is
/// identified by UWVMROS1_0c5f0b8a7f1d14c6223838c3a28cb2236848b81ecfda29d2b704557579e9162d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesSrvSetDigitalOutput_Response=struct {
    /// @brief Maximum canonical extent of urinterfaces/srv/SetDigitalOutput_Response in bytes.
    /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=1;
    /// @brief Canonical codec identity of urinterfaces/srv/SetDigitalOutput_Response.
    /// @details Exact identity UWVMROS1_0c5f0b8a7f1d14c6223838c3a28cb2236848b81ecfda29d2b704557579e9162d binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_0c5f0b8a7f1d14c6223838c3a28cb2236848b81ecfda29d2b704557579e9162d";
    /// @brief Original ROS type name for urinterfaces/srv/SetDigitalOutput_Response.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/srv/SetDigitalOutput_Response";
    /// @brief Selected original native identity for urinterfaces/srv/SetDigitalOutput_Response.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/srv/SetDigitalOutput_Response.success: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/zig/API-CONTRACT.md
    field_success: bool=false,
    /// @brief Append every canonical field of urinterfaces/srv/SetDigitalOutput_Response.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.boolean(self.field_success);
    }
    /// @brief Read the ordered canonical fields of urinterfaces/srv/SetDigitalOutput_Response.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_success=try r.boolean();
        return value;
    }
    /// @brief Encode one complete urinterfaces/srv/SetDigitalOutput_Response value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/srv/SetDigitalOutput_Response value.
    /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and trailing
    /// bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<1 or bytes.len>1) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/srv/SetSpeedFraction_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes and is
/// identified by UWVMROS1_21fca7e952e32f24c905094c09776968c8cd80b7712a03de7c2a693ea79a7d63.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesSrvSetSpeedFraction_Request=struct {
    /// @brief Maximum canonical extent of urinterfaces/srv/SetSpeedFraction_Request in bytes.
    /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=4;
    /// @brief Canonical codec identity of urinterfaces/srv/SetSpeedFraction_Request.
    /// @details Exact identity UWVMROS1_21fca7e952e32f24c905094c09776968c8cd80b7712a03de7c2a693ea79a7d63 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_21fca7e952e32f24c905094c09776968c8cd80b7712a03de7c2a693ea79a7d63";
    /// @brief Original ROS type name for urinterfaces/srv/SetSpeedFraction_Request.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/srv/SetSpeedFraction_Request";
    /// @brief Selected original native identity for urinterfaces/srv/SetSpeedFraction_Request.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/srv/SetSpeedFraction_Request.value: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/zig/API-CONTRACT.md
    field_value: f32=0,
    /// @brief Append every canonical field of urinterfaces/srv/SetSpeedFraction_Request.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.float32(self.field_value);
    }
    /// @brief Read the ordered canonical fields of urinterfaces/srv/SetSpeedFraction_Request.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_value=try r.float32();
        return value;
    }
    /// @brief Encode one complete urinterfaces/srv/SetSpeedFraction_Request value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/srv/SetSpeedFraction_Request value.
    /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and trailing
    /// bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<4 or bytes.len>4) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/srv/SetSpeedFraction_Response value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is
/// identified by UWVMROS1_386b067db70c17a88297d005650f6a05c0fb72eb5ee142a25c3e51c70b80c6e6.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesSrvSetSpeedFraction_Response=struct {
    /// @brief Maximum canonical extent of urinterfaces/srv/SetSpeedFraction_Response in bytes.
    /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=1;
    /// @brief Canonical codec identity of urinterfaces/srv/SetSpeedFraction_Response.
    /// @details Exact identity UWVMROS1_386b067db70c17a88297d005650f6a05c0fb72eb5ee142a25c3e51c70b80c6e6 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_386b067db70c17a88297d005650f6a05c0fb72eb5ee142a25c3e51c70b80c6e6";
    /// @brief Original ROS type name for urinterfaces/srv/SetSpeedFraction_Response.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/srv/SetSpeedFraction_Response";
    /// @brief Selected original native identity for urinterfaces/srv/SetSpeedFraction_Response.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/srv/SetSpeedFraction_Response.success: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/zig/API-CONTRACT.md
    field_success: bool=false,
    /// @brief Append every canonical field of urinterfaces/srv/SetSpeedFraction_Response.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.boolean(self.field_success);
    }
    /// @brief Read the ordered canonical fields of urinterfaces/srv/SetSpeedFraction_Response.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_success=try r.boolean();
        return value;
    }
    /// @brief Encode one complete urinterfaces/srv/SetSpeedFraction_Response value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/srv/SetSpeedFraction_Response value.
    /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and trailing
    /// bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<1 or bytes.len>1) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/srv/SharedVariablesEditor_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..1028 bytes and
/// is identified by UWVMROS1_c32d00237370b2eeb596c76bd9cda1ccfcab7618c71dec77d273f712462f5fa3.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesSrvSharedVariablesEditor_Request=struct {
    /// @brief Maximum canonical extent of urinterfaces/srv/SharedVariablesEditor_Request in bytes.
    /// @details The inclusive bound is 1028 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesSrvSharedVariablesEditor_Request; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=1028;
    /// @brief Canonical codec identity of urinterfaces/srv/SharedVariablesEditor_Request.
    /// @details Exact identity UWVMROS1_c32d00237370b2eeb596c76bd9cda1ccfcab7618c71dec77d273f712462f5fa3 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesSrvSharedVariablesEditor_Request; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_c32d00237370b2eeb596c76bd9cda1ccfcab7618c71dec77d273f712462f5fa3";
    /// @brief Original ROS type name for urinterfaces/srv/SharedVariablesEditor_Request.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesSrvSharedVariablesEditor_Request; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/srv/SharedVariablesEditor_Request";
    /// @brief Selected original native identity for urinterfaces/srv/SharedVariablesEditor_Request.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesSrvSharedVariablesEditor_Request; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/srv/SharedVariablesEditor_Request.request: urinterfaces/msg/JsonStringType.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesSrvSharedVariablesEditor_Request; share/platform/ros/zig/API-CONTRACT.md
    field_request: Ros2UrinterfacesMsgJsonStringType=.{},
    /// @brief Append every canonical field of urinterfaces/srv/SharedVariablesEditor_Request.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvSharedVariablesEditor_Request; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_request.writeFields(w);
    }
    /// @brief Read the ordered canonical fields of urinterfaces/srv/SharedVariablesEditor_Request.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvSharedVariablesEditor_Request; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_request=try Ros2UrinterfacesMsgJsonStringType.readFields(r,allocator);
        return value;
    }
    /// @brief Encode one complete urinterfaces/srv/SharedVariablesEditor_Request value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvSharedVariablesEditor_Request; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/srv/SharedVariablesEditor_Request value.
    /// @details Require the complete 4..1028-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvSharedVariablesEditor_Request; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<4 or bytes.len>1028) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/srv/SharedVariablesEditor_Response value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 5..1029 bytes and
/// is identified by UWVMROS1_4134f7ed9715b3f6e3fd7ecca44fcae67cdd5dc2fa432b07ab75485901d1d5ea.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesSrvSharedVariablesEditor_Response=struct {
    /// @brief Maximum canonical extent of urinterfaces/srv/SharedVariablesEditor_Response in bytes.
    /// @details The inclusive bound is 1029 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesSrvSharedVariablesEditor_Response; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=1029;
    /// @brief Canonical codec identity of urinterfaces/srv/SharedVariablesEditor_Response.
    /// @details Exact identity UWVMROS1_4134f7ed9715b3f6e3fd7ecca44fcae67cdd5dc2fa432b07ab75485901d1d5ea binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesSrvSharedVariablesEditor_Response; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_4134f7ed9715b3f6e3fd7ecca44fcae67cdd5dc2fa432b07ab75485901d1d5ea";
    /// @brief Original ROS type name for urinterfaces/srv/SharedVariablesEditor_Response.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesSrvSharedVariablesEditor_Response; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/srv/SharedVariablesEditor_Response";
    /// @brief Selected original native identity for urinterfaces/srv/SharedVariablesEditor_Response.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesSrvSharedVariablesEditor_Response; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/srv/SharedVariablesEditor_Response.response: urinterfaces/msg/SharedVariablesEditResponse.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesSrvSharedVariablesEditor_Response; share/platform/ros/zig/API-CONTRACT.md
    field_response: Ros2UrinterfacesMsgSharedVariablesEditResponse=.{},
    /// @brief Append every canonical field of urinterfaces/srv/SharedVariablesEditor_Response.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvSharedVariablesEditor_Response; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_response.writeFields(w);
    }
    /// @brief Read the ordered canonical fields of urinterfaces/srv/SharedVariablesEditor_Response.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvSharedVariablesEditor_Response; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_response=try Ros2UrinterfacesMsgSharedVariablesEditResponse.readFields(r,allocator);
        return value;
    }
    /// @brief Encode one complete urinterfaces/srv/SharedVariablesEditor_Response value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvSharedVariablesEditor_Response; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/srv/SharedVariablesEditor_Response value.
    /// @details Require the complete 5..1029-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvSharedVariablesEditor_Response; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<5 or bytes.len>1029) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/srv/VariablesViewer_Request value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
/// identified by UWVMROS1_6ecb0db6328d813bfb987ae987d3b7f2c6913dba2cf2a62f644a8eb2f760152a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesSrvVariablesViewer_Request=struct {
    /// @brief Maximum canonical extent of urinterfaces/srv/VariablesViewer_Request in bytes.
    /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesSrvVariablesViewer_Request; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=0;
    /// @brief Canonical codec identity of urinterfaces/srv/VariablesViewer_Request.
    /// @details Exact identity UWVMROS1_6ecb0db6328d813bfb987ae987d3b7f2c6913dba2cf2a62f644a8eb2f760152a binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesSrvVariablesViewer_Request; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_6ecb0db6328d813bfb987ae987d3b7f2c6913dba2cf2a62f644a8eb2f760152a";
    /// @brief Original ROS type name for urinterfaces/srv/VariablesViewer_Request.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesSrvVariablesViewer_Request; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/srv/VariablesViewer_Request";
    /// @brief Selected original native identity for urinterfaces/srv/VariablesViewer_Request.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesSrvVariablesViewer_Request; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief Append every canonical field of urinterfaces/srv/VariablesViewer_Request.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvVariablesViewer_Request; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        _=self; _=w;
    }
    /// @brief Read the ordered canonical fields of urinterfaces/srv/VariablesViewer_Request.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvVariablesViewer_Request; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        const value: @This()=.{};
        _=r; _=allocator;
        return value;
    }
    /// @brief Encode one complete urinterfaces/srv/VariablesViewer_Request value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvVariablesViewer_Request; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/srv/VariablesViewer_Request value.
    /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
    /// bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvVariablesViewer_Request; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<0 or bytes.len>0) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 urinterfaces/srv/VariablesViewer_Response value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 16..1168 bytes
/// and is identified by UWVMROS1_e8cb16ca847189ac38c0d972afbdd2208d8641c29a0ee0cce8284e9e0dd249a2.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2UrinterfacesSrvVariablesViewer_Response=struct {
    /// @brief Maximum canonical extent of urinterfaces/srv/VariablesViewer_Response in bytes.
    /// @details The inclusive bound is 1168 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=1168;
    /// @brief Canonical codec identity of urinterfaces/srv/VariablesViewer_Response.
    /// @details Exact identity UWVMROS1_e8cb16ca847189ac38c0d972afbdd2208d8641c29a0ee0cce8284e9e0dd249a2 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_e8cb16ca847189ac38c0d972afbdd2208d8641c29a0ee0cce8284e9e0dd249a2";
    /// @brief Original ROS type name for urinterfaces/srv/VariablesViewer_Response.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="urinterfaces/srv/VariablesViewer_Response";
    /// @brief Selected original native identity for urinterfaces/srv/VariablesViewer_Response.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief urinterfaces/srv/VariablesViewer_Response.response: urinterfaces/msg/VariableUpdate.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/zig/API-CONTRACT.md
    field_response: Ros2UrinterfacesMsgVariableUpdate=.{},
    /// @brief Append every canonical field of urinterfaces/srv/VariablesViewer_Response.
    /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
    /// operation does not promise rollback of a partially advanced writer.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
    /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
    /// contract reports refusal.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
    /// synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_response.writeFields(w);
    }
    /// @brief Read the ordered canonical fields of urinterfaces/srv/VariablesViewer_Response.
    /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
    /// subsequent enclosing fields unread; discard partial values on any failure.
    /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_response=try Ros2UrinterfacesMsgVariableUpdate.readFields(r,allocator);
        return value;
    }
    /// @brief Encode one complete urinterfaces/srv/VariablesViewer_Response value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
    /// Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
    /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
    /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
    /// return; no ownership is transferred to Native.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete urinterfaces/srv/VariablesViewer_Response value.
    /// @details Require the complete 16..1168-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
    /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
    /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
    /// issued.
    /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
    /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
    /// failed decode, including partial allocations.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<16 or bytes.len>1168) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
