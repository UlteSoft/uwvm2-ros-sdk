//! @file records.zig
//! @brief Complete kuka values and adapters for the selected original interface catalog.
//! @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
//! defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
//! roles require the separately admitted SDK owner.
//! @see share/platform/kuka/domains/kuka-ros2-complete.ir.json
//! @see document/platform/kuka/en_US/README.md

//! Generated complete bounded values; all allocation is explicit.
const std=@import("std");
const wire=@import("roswire");
/// @brief Complete ROS 2 builtin_interfaces/msg/Duration value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and is
/// identified by UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Builtin_interfacesMsgDuration=struct {
    /// @brief Maximum canonical extent of builtin_interfaces/msg/Duration in bytes.
    /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Builtin_interfacesMsgDuration; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=8;
    /// @brief Canonical codec identity of builtin_interfaces/msg/Duration.
    /// @details Exact identity UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Builtin_interfacesMsgDuration; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4";
    /// @brief Original ROS type name for builtin_interfaces/msg/Duration.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Builtin_interfacesMsgDuration; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="builtin_interfaces/msg/Duration";
    /// @brief Selected original native identity for builtin_interfaces/msg/Duration.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Builtin_interfacesMsgDuration; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief builtin_interfaces/msg/Duration.sec: int32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Builtin_interfacesMsgDuration; share/platform/ros/zig/API-CONTRACT.md
    field_sec: i32=0,
    /// @brief builtin_interfaces/msg/Duration.nanosec: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Builtin_interfacesMsgDuration; share/platform/ros/zig/API-CONTRACT.md
    field_nanosec: u32=0,
    /// @brief Append every canonical field of builtin_interfaces/msg/Duration.
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
    /// @see Ros2Builtin_interfacesMsgDuration; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        if(self.field_nanosec >= 1000000000) return error.Invalid;
        try w.integer(self.field_sec);
        try w.integer(self.field_nanosec);
    }
    /// @brief Read the ordered canonical fields of builtin_interfaces/msg/Duration.
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
    /// @see Ros2Builtin_interfacesMsgDuration; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_sec=try r.integer(i32);
        value.field_nanosec=try r.integer(u32);
        if(value.field_nanosec >= 1000000000) return error.Invalid;
        return value;
    }
    /// @brief Encode one complete builtin_interfaces/msg/Duration value.
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
    /// @see Ros2Builtin_interfacesMsgDuration; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete builtin_interfaces/msg/Duration value.
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
    /// @see Ros2Builtin_interfacesMsgDuration; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<8 or bytes.len>8) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
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
/// @brief Complete ROS 2 std_msgs/msg/Header value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..76 bytes and
/// is identified by UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396.
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
    /// @details The inclusive bound is 76 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Std_msgsMsgHeader; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=76;
    /// @brief Canonical codec identity of std_msgs/msg/Header.
    /// @details Exact identity UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Std_msgsMsgHeader; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396";
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
    /// @brief std_msgs/msg/Header.frame_id: string; each string is 0..64 bytes; strict UTF-8 with no embedded NUL.
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
        try w.string(self.field_frame_id,64,false);
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
        value.field_frame_id=try r.string(64,false);
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
    /// @details Require the complete 12..76-byte canonical representation. Reject truncation, invalid fields and
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
        if(bytes.len<12 or bytes.len>76) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 trajectory_msgs/msg/JointTrajectoryPoint value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 24..408 bytes and
/// is identified by UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Trajectory_msgsMsgJointTrajectoryPoint=struct {
    /// @brief Maximum canonical extent of trajectory_msgs/msg/JointTrajectoryPoint in bytes.
    /// @details The inclusive bound is 408 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=408;
    /// @brief Canonical codec identity of trajectory_msgs/msg/JointTrajectoryPoint.
    /// @details Exact identity UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5";
    /// @brief Original ROS type name for trajectory_msgs/msg/JointTrajectoryPoint.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="trajectory_msgs/msg/JointTrajectoryPoint";
    /// @brief Selected original native identity for trajectory_msgs/msg/JointTrajectoryPoint.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief trajectory_msgs/msg/JointTrajectoryPoint.positions: float64; 0..12 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    field_positions: []f64=&.{},
    /// @brief trajectory_msgs/msg/JointTrajectoryPoint.velocities: float64; 0..12 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    field_velocities: []f64=&.{},
    /// @brief trajectory_msgs/msg/JointTrajectoryPoint.accelerations: float64; 0..12 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    field_accelerations: []f64=&.{},
    /// @brief trajectory_msgs/msg/JointTrajectoryPoint.effort: float64; 0..12 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    field_effort: []f64=&.{},
    /// @brief trajectory_msgs/msg/JointTrajectoryPoint.time_from_start: builtin_interfaces/msg/Duration.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    field_time_from_start: Ros2Builtin_interfacesMsgDuration=.{},
    /// @brief Append every canonical field of trajectory_msgs/msg/JointTrajectoryPoint.
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
    /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        if(self.field_positions.len>12) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_positions.len)));
        for(self.field_positions) |e| {
        try w.float64(e);
        }
        if(self.field_velocities.len>12) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_velocities.len)));
        for(self.field_velocities) |e| {
        try w.float64(e);
        }
        if(self.field_accelerations.len>12) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_accelerations.len)));
        for(self.field_accelerations) |e| {
        try w.float64(e);
        }
        if(self.field_effort.len>12) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_effort.len)));
        for(self.field_effort) |e| {
        try w.float64(e);
        }
        try self.field_time_from_start.writeFields(w);
    }
    /// @brief Read the ordered canonical fields of trajectory_msgs/msg/JointTrajectoryPoint.
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
    /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        const count0=try r.integer(u32); if(count0>12) return error.Invalid;
        value.field_positions=try allocator.alloc(f64,count0);
        for(value.field_positions) |*e| {
        e.*=try r.float64();
        }
        const count1=try r.integer(u32); if(count1>12) return error.Invalid;
        value.field_velocities=try allocator.alloc(f64,count1);
        for(value.field_velocities) |*e| {
        e.*=try r.float64();
        }
        const count2=try r.integer(u32); if(count2>12) return error.Invalid;
        value.field_accelerations=try allocator.alloc(f64,count2);
        for(value.field_accelerations) |*e| {
        e.*=try r.float64();
        }
        const count3=try r.integer(u32); if(count3>12) return error.Invalid;
        value.field_effort=try allocator.alloc(f64,count3);
        for(value.field_effort) |*e| {
        e.*=try r.float64();
        }
        value.field_time_from_start=try Ros2Builtin_interfacesMsgDuration.readFields(r,allocator);
        return value;
    }
    /// @brief Encode one complete trajectory_msgs/msg/JointTrajectoryPoint value.
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
    /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete trajectory_msgs/msg/JointTrajectoryPoint value.
    /// @details Require the complete 24..408-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<24 or bytes.len>408) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 trajectory_msgs/msg/JointTrajectory value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 20..4164 bytes
/// and is identified by UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Trajectory_msgsMsgJointTrajectory=struct {
    /// @brief Maximum canonical extent of trajectory_msgs/msg/JointTrajectory in bytes.
    /// @details The inclusive bound is 4164 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=4164;
    /// @brief Canonical codec identity of trajectory_msgs/msg/JointTrajectory.
    /// @details Exact identity UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0";
    /// @brief Original ROS type name for trajectory_msgs/msg/JointTrajectory.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="trajectory_msgs/msg/JointTrajectory";
    /// @brief Selected original native identity for trajectory_msgs/msg/JointTrajectory.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief trajectory_msgs/msg/JointTrajectory.header: std_msgs/msg/Header.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/zig/API-CONTRACT.md
    field_header: Ros2Std_msgsMsgHeader=.{},
    /// @brief trajectory_msgs/msg/JointTrajectory.joint_names: string; 0..12 elements; each string is 0..64 bytes;
    /// strict UTF-8 with no embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/zig/API-CONTRACT.md
    field_joint_names: [][]const u8=&.{},
    /// @brief trajectory_msgs/msg/JointTrajectory.points: trajectory_msgs/msg/JointTrajectoryPoint; 0..8 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/zig/API-CONTRACT.md
    field_points: []Ros2Trajectory_msgsMsgJointTrajectoryPoint=&.{},
    /// @brief Append every canonical field of trajectory_msgs/msg/JointTrajectory.
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
    /// @see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_header.writeFields(w);
        if(self.field_joint_names.len>12) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_joint_names.len)));
        for(self.field_joint_names) |e| {
        try w.string(e,64,false);
        }
        if(self.field_points.len>8) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_points.len)));
        for(self.field_points) |e| {
        try e.writeFields(w);
        }
    }
    /// @brief Read the ordered canonical fields of trajectory_msgs/msg/JointTrajectory.
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
    /// @see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_header=try Ros2Std_msgsMsgHeader.readFields(r,allocator);
        const count1=try r.integer(u32); if(count1>12) return error.Invalid;
        value.field_joint_names=try allocator.alloc([]const u8,count1);
        for(value.field_joint_names) |*e| {
        e.*=try r.string(64,false);
        }
        const count2=try r.integer(u32); if(count2>8) return error.Invalid;
        value.field_points=try allocator.alloc(Ros2Trajectory_msgsMsgJointTrajectoryPoint,count2);
        for(value.field_points) |*e| {
        e.*=try Ros2Trajectory_msgsMsgJointTrajectoryPoint.readFields(r,allocator);
        }
        return value;
    }
    /// @brief Encode one complete trajectory_msgs/msg/JointTrajectory value.
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
    /// @see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete trajectory_msgs/msg/JointTrajectory value.
    /// @details Require the complete 20..4164-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<20 or bytes.len>4164) return error.Invalid;
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
/// @brief Complete ROS 2 geometry_msgs/msg/Transform value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 56..56 bytes and
/// is identified by UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Geometry_msgsMsgTransform=struct {
    /// @brief Maximum canonical extent of geometry_msgs/msg/Transform in bytes.
    /// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Geometry_msgsMsgTransform; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=56;
    /// @brief Canonical codec identity of geometry_msgs/msg/Transform.
    /// @details Exact identity UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Geometry_msgsMsgTransform; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b";
    /// @brief Original ROS type name for geometry_msgs/msg/Transform.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Geometry_msgsMsgTransform; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="geometry_msgs/msg/Transform";
    /// @brief Selected original native identity for geometry_msgs/msg/Transform.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Geometry_msgsMsgTransform; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief geometry_msgs/msg/Transform.translation: geometry_msgs/msg/Vector3.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Geometry_msgsMsgTransform; share/platform/ros/zig/API-CONTRACT.md
    field_translation: Ros2Geometry_msgsMsgVector3=.{},
    /// @brief geometry_msgs/msg/Transform.rotation: geometry_msgs/msg/Quaternion.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Geometry_msgsMsgTransform; share/platform/ros/zig/API-CONTRACT.md
    field_rotation: Ros2Geometry_msgsMsgQuaternion=.{},
    /// @brief Append every canonical field of geometry_msgs/msg/Transform.
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
    /// @see Ros2Geometry_msgsMsgTransform; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_translation.writeFields(w);
        try self.field_rotation.writeFields(w);
    }
    /// @brief Read the ordered canonical fields of geometry_msgs/msg/Transform.
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
    /// @see Ros2Geometry_msgsMsgTransform; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_translation=try Ros2Geometry_msgsMsgVector3.readFields(r,allocator);
        value.field_rotation=try Ros2Geometry_msgsMsgQuaternion.readFields(r,allocator);
        return value;
    }
    /// @brief Encode one complete geometry_msgs/msg/Transform value.
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
    /// @see Ros2Geometry_msgsMsgTransform; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete geometry_msgs/msg/Transform value.
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
    /// @see Ros2Geometry_msgsMsgTransform; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<56 or bytes.len>56) return error.Invalid;
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
/// @brief Complete ROS 2 trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 20..324 bytes and
/// is identified by UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint=struct {
    /// @brief Maximum canonical extent of trajectory_msgs/msg/MultiDOFJointTrajectoryPoint in bytes.
    /// @details The inclusive bound is 324 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=324;
    /// @brief Canonical codec identity of trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
    /// @details Exact identity UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242";
    /// @brief Original ROS type name for trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="trajectory_msgs/msg/MultiDOFJointTrajectoryPoint";
    /// @brief Selected original native identity for trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.transforms: geometry_msgs/msg/Transform; 0..2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    field_transforms: []Ros2Geometry_msgsMsgTransform=&.{},
    /// @brief trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.velocities: geometry_msgs/msg/Twist; 0..2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    field_velocities: []Ros2Geometry_msgsMsgTwist=&.{},
    /// @brief trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.accelerations: geometry_msgs/msg/Twist; 0..2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    field_accelerations: []Ros2Geometry_msgsMsgTwist=&.{},
    /// @brief trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.time_from_start: builtin_interfaces/msg/Duration.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    field_time_from_start: Ros2Builtin_interfacesMsgDuration=.{},
    /// @brief Append every canonical field of trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
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
    /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        if(self.field_transforms.len>2) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_transforms.len)));
        for(self.field_transforms) |e| {
        try e.writeFields(w);
        }
        if(self.field_velocities.len>2) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_velocities.len)));
        for(self.field_velocities) |e| {
        try e.writeFields(w);
        }
        if(self.field_accelerations.len>2) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_accelerations.len)));
        for(self.field_accelerations) |e| {
        try e.writeFields(w);
        }
        try self.field_time_from_start.writeFields(w);
    }
    /// @brief Read the ordered canonical fields of trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
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
    /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        const count0=try r.integer(u32); if(count0>2) return error.Invalid;
        value.field_transforms=try allocator.alloc(Ros2Geometry_msgsMsgTransform,count0);
        for(value.field_transforms) |*e| {
        e.*=try Ros2Geometry_msgsMsgTransform.readFields(r,allocator);
        }
        const count1=try r.integer(u32); if(count1>2) return error.Invalid;
        value.field_velocities=try allocator.alloc(Ros2Geometry_msgsMsgTwist,count1);
        for(value.field_velocities) |*e| {
        e.*=try Ros2Geometry_msgsMsgTwist.readFields(r,allocator);
        }
        const count2=try r.integer(u32); if(count2>2) return error.Invalid;
        value.field_accelerations=try allocator.alloc(Ros2Geometry_msgsMsgTwist,count2);
        for(value.field_accelerations) |*e| {
        e.*=try Ros2Geometry_msgsMsgTwist.readFields(r,allocator);
        }
        value.field_time_from_start=try Ros2Builtin_interfacesMsgDuration.readFields(r,allocator);
        return value;
    }
    /// @brief Encode one complete trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value.
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
    /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value.
    /// @details Require the complete 20..324-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<20 or bytes.len>324) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 trajectory_msgs/msg/MultiDOFJointTrajectory value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 20..1516 bytes
/// and is identified by UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Trajectory_msgsMsgMultiDOFJointTrajectory=struct {
    /// @brief Maximum canonical extent of trajectory_msgs/msg/MultiDOFJointTrajectory in bytes.
    /// @details The inclusive bound is 1516 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=1516;
    /// @brief Canonical codec identity of trajectory_msgs/msg/MultiDOFJointTrajectory.
    /// @details Exact identity UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401";
    /// @brief Original ROS type name for trajectory_msgs/msg/MultiDOFJointTrajectory.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="trajectory_msgs/msg/MultiDOFJointTrajectory";
    /// @brief Selected original native identity for trajectory_msgs/msg/MultiDOFJointTrajectory.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief trajectory_msgs/msg/MultiDOFJointTrajectory.header: std_msgs/msg/Header.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/zig/API-CONTRACT.md
    field_header: Ros2Std_msgsMsgHeader=.{},
    /// @brief trajectory_msgs/msg/MultiDOFJointTrajectory.joint_names: string; 0..2 elements; each string is 0..64
    /// bytes; strict UTF-8 with no embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/zig/API-CONTRACT.md
    field_joint_names: [][]const u8=&.{},
    /// @brief trajectory_msgs/msg/MultiDOFJointTrajectory.points: trajectory_msgs/msg/MultiDOFJointTrajectoryPoint;
    /// 0..4 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/zig/API-CONTRACT.md
    field_points: []Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint=&.{},
    /// @brief Append every canonical field of trajectory_msgs/msg/MultiDOFJointTrajectory.
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
    /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_header.writeFields(w);
        if(self.field_joint_names.len>2) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_joint_names.len)));
        for(self.field_joint_names) |e| {
        try w.string(e,64,false);
        }
        if(self.field_points.len>4) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_points.len)));
        for(self.field_points) |e| {
        try e.writeFields(w);
        }
    }
    /// @brief Read the ordered canonical fields of trajectory_msgs/msg/MultiDOFJointTrajectory.
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
    /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_header=try Ros2Std_msgsMsgHeader.readFields(r,allocator);
        const count1=try r.integer(u32); if(count1>2) return error.Invalid;
        value.field_joint_names=try allocator.alloc([]const u8,count1);
        for(value.field_joint_names) |*e| {
        e.*=try r.string(64,false);
        }
        const count2=try r.integer(u32); if(count2>4) return error.Invalid;
        value.field_points=try allocator.alloc(Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint,count2);
        for(value.field_points) |*e| {
        e.*=try Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.readFields(r,allocator);
        }
        return value;
    }
    /// @brief Encode one complete trajectory_msgs/msg/MultiDOFJointTrajectory value.
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
    /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete trajectory_msgs/msg/MultiDOFJointTrajectory value.
    /// @details Require the complete 20..1516-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<20 or bytes.len>1516) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 control_msgs/msg/JointTolerance value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 28..92 bytes and
/// is identified by UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Control_msgsMsgJointTolerance=struct {
    /// @brief Maximum canonical extent of control_msgs/msg/JointTolerance in bytes.
    /// @details The inclusive bound is 92 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Control_msgsMsgJointTolerance; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=92;
    /// @brief Canonical codec identity of control_msgs/msg/JointTolerance.
    /// @details Exact identity UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Control_msgsMsgJointTolerance; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2";
    /// @brief Original ROS type name for control_msgs/msg/JointTolerance.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Control_msgsMsgJointTolerance; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="control_msgs/msg/JointTolerance";
    /// @brief Selected original native identity for control_msgs/msg/JointTolerance.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Control_msgsMsgJointTolerance; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief control_msgs/msg/JointTolerance.name: string; each string is 0..64 bytes; strict UTF-8 with no embedded
    /// NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Control_msgsMsgJointTolerance; share/platform/ros/zig/API-CONTRACT.md
    field_name: []const u8=&.{},
    /// @brief control_msgs/msg/JointTolerance.position: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Control_msgsMsgJointTolerance; share/platform/ros/zig/API-CONTRACT.md
    field_position: f64=0,
    /// @brief control_msgs/msg/JointTolerance.velocity: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Control_msgsMsgJointTolerance; share/platform/ros/zig/API-CONTRACT.md
    field_velocity: f64=0,
    /// @brief control_msgs/msg/JointTolerance.acceleration: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Control_msgsMsgJointTolerance; share/platform/ros/zig/API-CONTRACT.md
    field_acceleration: f64=0,
    /// @brief Append every canonical field of control_msgs/msg/JointTolerance.
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
    /// @see Ros2Control_msgsMsgJointTolerance; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.string(self.field_name,64,false);
        try w.float64(self.field_position);
        try w.float64(self.field_velocity);
        try w.float64(self.field_acceleration);
    }
    /// @brief Read the ordered canonical fields of control_msgs/msg/JointTolerance.
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
    /// @see Ros2Control_msgsMsgJointTolerance; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_name=try r.string(64,false);
        value.field_position=try r.float64();
        value.field_velocity=try r.float64();
        value.field_acceleration=try r.float64();
        return value;
    }
    /// @brief Encode one complete control_msgs/msg/JointTolerance value.
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
    /// @see Ros2Control_msgsMsgJointTolerance; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete control_msgs/msg/JointTolerance value.
    /// @details Require the complete 28..92-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Control_msgsMsgJointTolerance; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<28 or bytes.len>92) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 control_msgs/msg/JointComponentTolerance value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 30..542 bytes and
/// is identified by UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Control_msgsMsgJointComponentTolerance=struct {
    /// @brief Maximum canonical extent of control_msgs/msg/JointComponentTolerance in bytes.
    /// @details The inclusive bound is 542 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=542;
    /// @brief Canonical codec identity of control_msgs/msg/JointComponentTolerance.
    /// @details Exact identity UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342";
    /// @brief Original ROS type name for control_msgs/msg/JointComponentTolerance.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="control_msgs/msg/JointComponentTolerance";
    /// @brief Selected original native identity for control_msgs/msg/JointComponentTolerance.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief control_msgs/msg/JointComponentTolerance.X_AXIS: original uint16 constant.
    /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/zig/API-CONTRACT.md
    pub const field_X_AXIS: u16=1;
    /// @brief control_msgs/msg/JointComponentTolerance.Y_AXIS: original uint16 constant.
    /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/zig/API-CONTRACT.md
    pub const field_Y_AXIS: u16=2;
    /// @brief control_msgs/msg/JointComponentTolerance.Z_AXIS: original uint16 constant.
    /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/zig/API-CONTRACT.md
    pub const field_Z_AXIS: u16=3;
    /// @brief control_msgs/msg/JointComponentTolerance.TRANSLATION: original uint16 constant.
    /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSLATION: u16=4;
    /// @brief control_msgs/msg/JointComponentTolerance.ROTATION: original uint16 constant.
    /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/zig/API-CONTRACT.md
    pub const field_ROTATION: u16=5;
    /// @brief control_msgs/msg/JointComponentTolerance.joint_name: string; each string is 0..512 bytes; strict UTF-8
    /// with no embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/zig/API-CONTRACT.md
    field_joint_name: []const u8=&.{},
    /// @brief control_msgs/msg/JointComponentTolerance.component: uint16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/zig/API-CONTRACT.md
    field_component: u16=0,
    /// @brief control_msgs/msg/JointComponentTolerance.position: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/zig/API-CONTRACT.md
    field_position: f64=0,
    /// @brief control_msgs/msg/JointComponentTolerance.velocity: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/zig/API-CONTRACT.md
    field_velocity: f64=0,
    /// @brief control_msgs/msg/JointComponentTolerance.acceleration: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/zig/API-CONTRACT.md
    field_acceleration: f64=0,
    /// @brief Append every canonical field of control_msgs/msg/JointComponentTolerance.
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
    /// @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.string(self.field_joint_name,512,false);
        try w.integer(self.field_component);
        try w.float64(self.field_position);
        try w.float64(self.field_velocity);
        try w.float64(self.field_acceleration);
    }
    /// @brief Read the ordered canonical fields of control_msgs/msg/JointComponentTolerance.
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
    /// @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_joint_name=try r.string(512,false);
        value.field_component=try r.integer(u16);
        value.field_position=try r.float64();
        value.field_velocity=try r.float64();
        value.field_acceleration=try r.float64();
        return value;
    }
    /// @brief Encode one complete control_msgs/msg/JointComponentTolerance value.
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
    /// @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete control_msgs/msg/JointComponentTolerance value.
    /// @details Require the complete 30..542-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<30 or bytes.len>542) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 control_msgs/action/FollowJointTrajectory_Goal value.
/// @details All 7 declared fields are retained in source order. The canonical representation occupies 64..20920 bytes
/// and is identified by UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Control_msgsActionFollowJointTrajectory_Goal=struct {
    /// @brief Maximum canonical extent of control_msgs/action/FollowJointTrajectory_Goal in bytes.
    /// @details The inclusive bound is 20920 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=20920;
    /// @brief Canonical codec identity of control_msgs/action/FollowJointTrajectory_Goal.
    /// @details Exact identity UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16";
    /// @brief Original ROS type name for control_msgs/action/FollowJointTrajectory_Goal.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="control_msgs/action/FollowJointTrajectory_Goal";
    /// @brief Selected original native identity for control_msgs/action/FollowJointTrajectory_Goal.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief control_msgs/action/FollowJointTrajectory_Goal.trajectory: trajectory_msgs/msg/JointTrajectory.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/zig/API-CONTRACT.md
    field_trajectory: Ros2Trajectory_msgsMsgJointTrajectory=.{},
    /// @brief control_msgs/action/FollowJointTrajectory_Goal.multi_dof_trajectory:
    /// trajectory_msgs/msg/MultiDOFJointTrajectory.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/zig/API-CONTRACT.md
    field_multi_dof_trajectory: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory=.{},
    /// @brief control_msgs/action/FollowJointTrajectory_Goal.path_tolerance: control_msgs/msg/JointTolerance; 0..12
    /// elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/zig/API-CONTRACT.md
    field_path_tolerance: []Ros2Control_msgsMsgJointTolerance=&.{},
    /// @brief control_msgs/action/FollowJointTrajectory_Goal.component_path_tolerance:
    /// control_msgs/msg/JointComponentTolerance; 0..12 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/zig/API-CONTRACT.md
    field_component_path_tolerance: []Ros2Control_msgsMsgJointComponentTolerance=&.{},
    /// @brief control_msgs/action/FollowJointTrajectory_Goal.goal_tolerance: control_msgs/msg/JointTolerance; 0..12
    /// elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/zig/API-CONTRACT.md
    field_goal_tolerance: []Ros2Control_msgsMsgJointTolerance=&.{},
    /// @brief control_msgs/action/FollowJointTrajectory_Goal.component_goal_tolerance:
    /// control_msgs/msg/JointComponentTolerance; 0..12 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/zig/API-CONTRACT.md
    field_component_goal_tolerance: []Ros2Control_msgsMsgJointComponentTolerance=&.{},
    /// @brief control_msgs/action/FollowJointTrajectory_Goal.goal_time_tolerance: builtin_interfaces/msg/Duration.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/zig/API-CONTRACT.md
    field_goal_time_tolerance: Ros2Builtin_interfacesMsgDuration=.{},
    /// @brief Append every canonical field of control_msgs/action/FollowJointTrajectory_Goal.
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
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_trajectory.writeFields(w);
        try self.field_multi_dof_trajectory.writeFields(w);
        if(self.field_path_tolerance.len>12) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_path_tolerance.len)));
        for(self.field_path_tolerance) |e| {
        try e.writeFields(w);
        }
        if(self.field_component_path_tolerance.len>12) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_component_path_tolerance.len)));
        for(self.field_component_path_tolerance) |e| {
        try e.writeFields(w);
        }
        if(self.field_goal_tolerance.len>12) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_goal_tolerance.len)));
        for(self.field_goal_tolerance) |e| {
        try e.writeFields(w);
        }
        if(self.field_component_goal_tolerance.len>12) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_component_goal_tolerance.len)));
        for(self.field_component_goal_tolerance) |e| {
        try e.writeFields(w);
        }
        try self.field_goal_time_tolerance.writeFields(w);
    }
    /// @brief Read the ordered canonical fields of control_msgs/action/FollowJointTrajectory_Goal.
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
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_trajectory=try Ros2Trajectory_msgsMsgJointTrajectory.readFields(r,allocator);
        value.field_multi_dof_trajectory=try Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.readFields(r,allocator);
        const count2=try r.integer(u32); if(count2>12) return error.Invalid;
        value.field_path_tolerance=try allocator.alloc(Ros2Control_msgsMsgJointTolerance,count2);
        for(value.field_path_tolerance) |*e| {
        e.*=try Ros2Control_msgsMsgJointTolerance.readFields(r,allocator);
        }
        const count3=try r.integer(u32); if(count3>12) return error.Invalid;
        value.field_component_path_tolerance=try allocator.alloc(Ros2Control_msgsMsgJointComponentTolerance,count3);
        for(value.field_component_path_tolerance) |*e| {
        e.*=try Ros2Control_msgsMsgJointComponentTolerance.readFields(r,allocator);
        }
        const count4=try r.integer(u32); if(count4>12) return error.Invalid;
        value.field_goal_tolerance=try allocator.alloc(Ros2Control_msgsMsgJointTolerance,count4);
        for(value.field_goal_tolerance) |*e| {
        e.*=try Ros2Control_msgsMsgJointTolerance.readFields(r,allocator);
        }
        const count5=try r.integer(u32); if(count5>12) return error.Invalid;
        value.field_component_goal_tolerance=try allocator.alloc(Ros2Control_msgsMsgJointComponentTolerance,count5);
        for(value.field_component_goal_tolerance) |*e| {
        e.*=try Ros2Control_msgsMsgJointComponentTolerance.readFields(r,allocator);
        }
        value.field_goal_time_tolerance=try Ros2Builtin_interfacesMsgDuration.readFields(r,allocator);
        return value;
    }
    /// @brief Encode one complete control_msgs/action/FollowJointTrajectory_Goal value.
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
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete control_msgs/action/FollowJointTrajectory_Goal value.
    /// @details Require the complete 64..20920-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<64 or bytes.len>20920) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 control_msgs/action/FollowJointTrajectory_Result value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..4104 bytes and
/// is identified by UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Control_msgsActionFollowJointTrajectory_Result=struct {
    /// @brief Maximum canonical extent of control_msgs/action/FollowJointTrajectory_Result in bytes.
    /// @details The inclusive bound is 4104 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=4104;
    /// @brief Canonical codec identity of control_msgs/action/FollowJointTrajectory_Result.
    /// @details Exact identity UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70";
    /// @brief Original ROS type name for control_msgs/action/FollowJointTrajectory_Result.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="control_msgs/action/FollowJointTrajectory_Result";
    /// @brief Selected original native identity for control_msgs/action/FollowJointTrajectory_Result.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief control_msgs/action/FollowJointTrajectory_Result.SUCCESSFUL: original int32 constant.
    /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/zig/API-CONTRACT.md
    pub const field_SUCCESSFUL: i32=0;
    /// @brief control_msgs/action/FollowJointTrajectory_Result.INVALID_GOAL: original int32 constant.
    /// @details Exact admitted value -1. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/zig/API-CONTRACT.md
    pub const field_INVALID_GOAL: i32=-1;
    /// @brief control_msgs/action/FollowJointTrajectory_Result.INVALID_JOINTS: original int32 constant.
    /// @details Exact admitted value -2. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/zig/API-CONTRACT.md
    pub const field_INVALID_JOINTS: i32=-2;
    /// @brief control_msgs/action/FollowJointTrajectory_Result.OLD_HEADER_TIMESTAMP: original int32 constant.
    /// @details Exact admitted value -3. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/zig/API-CONTRACT.md
    pub const field_OLD_HEADER_TIMESTAMP: i32=-3;
    /// @brief control_msgs/action/FollowJointTrajectory_Result.PATH_TOLERANCE_VIOLATED: original int32 constant.
    /// @details Exact admitted value -4. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PATH_TOLERANCE_VIOLATED: i32=-4;
    /// @brief control_msgs/action/FollowJointTrajectory_Result.GOAL_TOLERANCE_VIOLATED: original int32 constant.
    /// @details Exact admitted value -5. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/zig/API-CONTRACT.md
    pub const field_GOAL_TOLERANCE_VIOLATED: i32=-5;
    /// @brief control_msgs/action/FollowJointTrajectory_Result.error_code: int32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/zig/API-CONTRACT.md
    field_error_code: i32=0,
    /// @brief control_msgs/action/FollowJointTrajectory_Result.error_string: string; each string is 0..4096 bytes;
    /// strict UTF-8 with no embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/zig/API-CONTRACT.md
    field_error_string: []const u8=&.{},
    /// @brief Append every canonical field of control_msgs/action/FollowJointTrajectory_Result.
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
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.integer(self.field_error_code);
        try w.string(self.field_error_string,4096,false);
    }
    /// @brief Read the ordered canonical fields of control_msgs/action/FollowJointTrajectory_Result.
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
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_error_code=try r.integer(i32);
        value.field_error_string=try r.string(4096,false);
        return value;
    }
    /// @brief Encode one complete control_msgs/action/FollowJointTrajectory_Result value.
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
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete control_msgs/action/FollowJointTrajectory_Result value.
    /// @details Require the complete 8..4104-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<8 or bytes.len>4104) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 control_msgs/action/FollowJointTrajectory_Feedback value.
/// @details All 9 declared fields are retained in source order. The canonical representation occupies 152..4128 bytes
/// and is identified by UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Control_msgsActionFollowJointTrajectory_Feedback=struct {
    /// @brief Maximum canonical extent of control_msgs/action/FollowJointTrajectory_Feedback in bytes.
    /// @details The inclusive bound is 4128 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=4128;
    /// @brief Canonical codec identity of control_msgs/action/FollowJointTrajectory_Feedback.
    /// @details Exact identity UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb";
    /// @brief Original ROS type name for control_msgs/action/FollowJointTrajectory_Feedback.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="control_msgs/action/FollowJointTrajectory_Feedback";
    /// @brief Selected original native identity for control_msgs/action/FollowJointTrajectory_Feedback.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief control_msgs/action/FollowJointTrajectory_Feedback.header: std_msgs/msg/Header.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/zig/API-CONTRACT.md
    field_header: Ros2Std_msgsMsgHeader=.{},
    /// @brief control_msgs/action/FollowJointTrajectory_Feedback.joint_names: string; 0..12 elements; each string is
    /// 0..64 bytes; strict UTF-8 with no embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/zig/API-CONTRACT.md
    field_joint_names: [][]const u8=&.{},
    /// @brief control_msgs/action/FollowJointTrajectory_Feedback.desired: trajectory_msgs/msg/JointTrajectoryPoint.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/zig/API-CONTRACT.md
    field_desired: Ros2Trajectory_msgsMsgJointTrajectoryPoint=.{},
    /// @brief control_msgs/action/FollowJointTrajectory_Feedback.actual: trajectory_msgs/msg/JointTrajectoryPoint.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/zig/API-CONTRACT.md
    field_actual: Ros2Trajectory_msgsMsgJointTrajectoryPoint=.{},
    /// @brief control_msgs/action/FollowJointTrajectory_Feedback.error: trajectory_msgs/msg/JointTrajectoryPoint.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/zig/API-CONTRACT.md
    field_error: Ros2Trajectory_msgsMsgJointTrajectoryPoint=.{},
    /// @brief control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_joint_names: string; 0..2 elements; each
    /// string is 0..512 bytes; strict UTF-8 with no embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/zig/API-CONTRACT.md
    field_multi_dof_joint_names: [][]const u8=&.{},
    /// @brief control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_desired:
    /// trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/zig/API-CONTRACT.md
    field_multi_dof_desired: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint=.{},
    /// @brief control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_actual:
    /// trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/zig/API-CONTRACT.md
    field_multi_dof_actual: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint=.{},
    /// @brief control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_error:
    /// trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/zig/API-CONTRACT.md
    field_multi_dof_error: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint=.{},
    /// @brief Append every canonical field of control_msgs/action/FollowJointTrajectory_Feedback.
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
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_header.writeFields(w);
        if(self.field_joint_names.len>12) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_joint_names.len)));
        for(self.field_joint_names) |e| {
        try w.string(e,64,false);
        }
        try self.field_desired.writeFields(w);
        try self.field_actual.writeFields(w);
        try self.field_error.writeFields(w);
        if(self.field_multi_dof_joint_names.len>2) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_multi_dof_joint_names.len)));
        for(self.field_multi_dof_joint_names) |e| {
        try w.string(e,512,false);
        }
        try self.field_multi_dof_desired.writeFields(w);
        try self.field_multi_dof_actual.writeFields(w);
        try self.field_multi_dof_error.writeFields(w);
    }
    /// @brief Read the ordered canonical fields of control_msgs/action/FollowJointTrajectory_Feedback.
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
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_header=try Ros2Std_msgsMsgHeader.readFields(r,allocator);
        const count1=try r.integer(u32); if(count1>12) return error.Invalid;
        value.field_joint_names=try allocator.alloc([]const u8,count1);
        for(value.field_joint_names) |*e| {
        e.*=try r.string(64,false);
        }
        value.field_desired=try Ros2Trajectory_msgsMsgJointTrajectoryPoint.readFields(r,allocator);
        value.field_actual=try Ros2Trajectory_msgsMsgJointTrajectoryPoint.readFields(r,allocator);
        value.field_error=try Ros2Trajectory_msgsMsgJointTrajectoryPoint.readFields(r,allocator);
        const count5=try r.integer(u32); if(count5>2) return error.Invalid;
        value.field_multi_dof_joint_names=try allocator.alloc([]const u8,count5);
        for(value.field_multi_dof_joint_names) |*e| {
        e.*=try r.string(512,false);
        }
        value.field_multi_dof_desired=try Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.readFields(r,allocator);
        value.field_multi_dof_actual=try Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.readFields(r,allocator);
        value.field_multi_dof_error=try Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.readFields(r,allocator);
        return value;
    }
    /// @brief Encode one complete control_msgs/action/FollowJointTrajectory_Feedback value.
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
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete control_msgs/action/FollowJointTrajectory_Feedback value.
    /// @details Require the complete 152..4128-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<152 or bytes.len>4128) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 kuka_driver_interfaces/msg/FRIState value.
/// @details All 9 declared fields are retained in source order. The canonical representation occupies 40..40 bytes and
/// is identified by UWVMROS1_27be8431e4a8cda3bb4d6d5a8a69fd86a0d07a1d920799c232d63a4941ee6716.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Kuka_driver_interfacesMsgFRIState=struct {
    /// @brief Maximum canonical extent of kuka_driver_interfaces/msg/FRIState in bytes.
    /// @details The inclusive bound is 40 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=40;
    /// @brief Canonical codec identity of kuka_driver_interfaces/msg/FRIState.
    /// @details Exact identity UWVMROS1_27be8431e4a8cda3bb4d6d5a8a69fd86a0d07a1d920799c232d63a4941ee6716 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_27be8431e4a8cda3bb4d6d5a8a69fd86a0d07a1d920799c232d63a4941ee6716";
    /// @brief Original ROS type name for kuka_driver_interfaces/msg/FRIState.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="kuka_driver_interfaces/msg/FRIState";
    /// @brief Selected original native identity for kuka_driver_interfaces/msg/FRIState.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief kuka_driver_interfaces/msg/FRIState.session_state: int32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/zig/API-CONTRACT.md
    field_session_state: i32=0,
    /// @brief kuka_driver_interfaces/msg/FRIState.connection_quality: int32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/zig/API-CONTRACT.md
    field_connection_quality: i32=0,
    /// @brief kuka_driver_interfaces/msg/FRIState.safety_state: int32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/zig/API-CONTRACT.md
    field_safety_state: i32=0,
    /// @brief kuka_driver_interfaces/msg/FRIState.command_mode: int32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/zig/API-CONTRACT.md
    field_command_mode: i32=0,
    /// @brief kuka_driver_interfaces/msg/FRIState.control_mode: int32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/zig/API-CONTRACT.md
    field_control_mode: i32=0,
    /// @brief kuka_driver_interfaces/msg/FRIState.operation_mode: int32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/zig/API-CONTRACT.md
    field_operation_mode: i32=0,
    /// @brief kuka_driver_interfaces/msg/FRIState.drive_state: int32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/zig/API-CONTRACT.md
    field_drive_state: i32=0,
    /// @brief kuka_driver_interfaces/msg/FRIState.overlay_type: int32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/zig/API-CONTRACT.md
    field_overlay_type: i32=0,
    /// @brief kuka_driver_interfaces/msg/FRIState.tracking_performance: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/zig/API-CONTRACT.md
    field_tracking_performance: f64=0,
    /// @brief Append every canonical field of kuka_driver_interfaces/msg/FRIState.
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
    /// @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.integer(self.field_session_state);
        try w.integer(self.field_connection_quality);
        try w.integer(self.field_safety_state);
        try w.integer(self.field_command_mode);
        try w.integer(self.field_control_mode);
        try w.integer(self.field_operation_mode);
        try w.integer(self.field_drive_state);
        try w.integer(self.field_overlay_type);
        try w.float64(self.field_tracking_performance);
    }
    /// @brief Read the ordered canonical fields of kuka_driver_interfaces/msg/FRIState.
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
    /// @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_session_state=try r.integer(i32);
        value.field_connection_quality=try r.integer(i32);
        value.field_safety_state=try r.integer(i32);
        value.field_command_mode=try r.integer(i32);
        value.field_control_mode=try r.integer(i32);
        value.field_operation_mode=try r.integer(i32);
        value.field_drive_state=try r.integer(i32);
        value.field_overlay_type=try r.integer(i32);
        value.field_tracking_performance=try r.float64();
        return value;
    }
    /// @brief Encode one complete kuka_driver_interfaces/msg/FRIState value.
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
    /// @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete kuka_driver_interfaces/msg/FRIState value.
    /// @details Require the complete 40..40-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<40 or bytes.len>40) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 kuka_driver_interfaces/msg/FRIStateArray value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..1736 bytes and
/// is identified by UWVMROS1_4312aa4103fd0c92fe7cd9d1201c40e327b05812cdc60130d11b8c2e0eb47449.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Kuka_driver_interfacesMsgFRIStateArray=struct {
    /// @brief Maximum canonical extent of kuka_driver_interfaces/msg/FRIStateArray in bytes.
    /// @details The inclusive bound is 1736 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=1736;
    /// @brief Canonical codec identity of kuka_driver_interfaces/msg/FRIStateArray.
    /// @details Exact identity UWVMROS1_4312aa4103fd0c92fe7cd9d1201c40e327b05812cdc60130d11b8c2e0eb47449 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_4312aa4103fd0c92fe7cd9d1201c40e327b05812cdc60130d11b8c2e0eb47449";
    /// @brief Original ROS type name for kuka_driver_interfaces/msg/FRIStateArray.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="kuka_driver_interfaces/msg/FRIStateArray";
    /// @brief Selected original native identity for kuka_driver_interfaces/msg/FRIStateArray.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief kuka_driver_interfaces/msg/FRIStateArray.robot_names: string; 0..16 elements; each string is 0..64 bytes;
    /// strict UTF-8 with no embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/zig/API-CONTRACT.md
    field_robot_names: [][]const u8=&.{},
    /// @brief kuka_driver_interfaces/msg/FRIStateArray.states: kuka_driver_interfaces/msg/FRIState; 0..16 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/zig/API-CONTRACT.md
    field_states: []Ros2Kuka_driver_interfacesMsgFRIState=&.{},
    /// @brief Append every canonical field of kuka_driver_interfaces/msg/FRIStateArray.
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
    /// @see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        if(self.field_robot_names.len>16) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_robot_names.len)));
        for(self.field_robot_names) |e| {
        try w.string(e,64,false);
        }
        if(self.field_states.len>16) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_states.len)));
        for(self.field_states) |e| {
        try e.writeFields(w);
        }
    }
    /// @brief Read the ordered canonical fields of kuka_driver_interfaces/msg/FRIStateArray.
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
    /// @see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        const count0=try r.integer(u32); if(count0>16) return error.Invalid;
        value.field_robot_names=try allocator.alloc([]const u8,count0);
        for(value.field_robot_names) |*e| {
        e.*=try r.string(64,false);
        }
        const count1=try r.integer(u32); if(count1>16) return error.Invalid;
        value.field_states=try allocator.alloc(Ros2Kuka_driver_interfacesMsgFRIState,count1);
        for(value.field_states) |*e| {
        e.*=try Ros2Kuka_driver_interfacesMsgFRIState.readFields(r,allocator);
        }
        return value;
    }
    /// @brief Encode one complete kuka_driver_interfaces/msg/FRIStateArray value.
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
    /// @see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete kuka_driver_interfaces/msg/FRIStateArray value.
    /// @details Require the complete 8..1736-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<8 or bytes.len>1736) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 kuka_driver_interfaces/msg/FriConfiguration value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and is
/// identified by UWVMROS1_a60335766ad606adc5699c833cc6bc43adc3067691bcdbf587bbfb56e8a7127e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Kuka_driver_interfacesMsgFriConfiguration=struct {
    /// @brief Maximum canonical extent of kuka_driver_interfaces/msg/FriConfiguration in bytes.
    /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=8;
    /// @brief Canonical codec identity of kuka_driver_interfaces/msg/FriConfiguration.
    /// @details Exact identity UWVMROS1_a60335766ad606adc5699c833cc6bc43adc3067691bcdbf587bbfb56e8a7127e binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_a60335766ad606adc5699c833cc6bc43adc3067691bcdbf587bbfb56e8a7127e";
    /// @brief Original ROS type name for kuka_driver_interfaces/msg/FriConfiguration.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="kuka_driver_interfaces/msg/FriConfiguration";
    /// @brief Selected original native identity for kuka_driver_interfaces/msg/FriConfiguration.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief kuka_driver_interfaces/msg/FriConfiguration.receive_multiplier: int32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/zig/API-CONTRACT.md
    field_receive_multiplier: i32=0,
    /// @brief kuka_driver_interfaces/msg/FriConfiguration.send_period_ms: int32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/zig/API-CONTRACT.md
    field_send_period_ms: i32=0,
    /// @brief Append every canonical field of kuka_driver_interfaces/msg/FriConfiguration.
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
    /// @see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.integer(self.field_receive_multiplier);
        try w.integer(self.field_send_period_ms);
    }
    /// @brief Read the ordered canonical fields of kuka_driver_interfaces/msg/FriConfiguration.
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
    /// @see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_receive_multiplier=try r.integer(i32);
        value.field_send_period_ms=try r.integer(i32);
        return value;
    }
    /// @brief Encode one complete kuka_driver_interfaces/msg/FriConfiguration value.
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
    /// @see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete kuka_driver_interfaces/msg/FriConfiguration value.
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
    /// @see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<8 or bytes.len>8) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 kuka_driver_interfaces/msg/HardwareEvent value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..517 bytes and
/// is identified by UWVMROS1_cb542e9311957712257c6d8ae273b3d2d2339760978e11e3798982c84fbc5e68.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Kuka_driver_interfacesMsgHardwareEvent=struct {
    /// @brief Maximum canonical extent of kuka_driver_interfaces/msg/HardwareEvent in bytes.
    /// @details The inclusive bound is 517 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=517;
    /// @brief Canonical codec identity of kuka_driver_interfaces/msg/HardwareEvent.
    /// @details Exact identity UWVMROS1_cb542e9311957712257c6d8ae273b3d2d2339760978e11e3798982c84fbc5e68 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_cb542e9311957712257c6d8ae273b3d2d2339760978e11e3798982c84fbc5e68";
    /// @brief Original ROS type name for kuka_driver_interfaces/msg/HardwareEvent.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="kuka_driver_interfaces/msg/HardwareEvent";
    /// @brief Selected original native identity for kuka_driver_interfaces/msg/HardwareEvent.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief kuka_driver_interfaces/msg/HardwareEvent.robot_name: string; each string is 0..512 bytes; strict UTF-8
    /// with no embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/zig/API-CONTRACT.md
    field_robot_name: []const u8=&.{},
    /// @brief kuka_driver_interfaces/msg/HardwareEvent.event: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/zig/API-CONTRACT.md
    field_event: u8=0,
    /// @brief Append every canonical field of kuka_driver_interfaces/msg/HardwareEvent.
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
    /// @see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.string(self.field_robot_name,512,false);
        try w.integer(self.field_event);
    }
    /// @brief Read the ordered canonical fields of kuka_driver_interfaces/msg/HardwareEvent.
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
    /// @see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_robot_name=try r.string(512,false);
        value.field_event=try r.integer(u8);
        return value;
    }
    /// @brief Encode one complete kuka_driver_interfaces/msg/HardwareEvent value.
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
    /// @see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete kuka_driver_interfaces/msg/HardwareEvent value.
    /// @details Require the complete 5..517-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<5 or bytes.len>517) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 kuka_driver_interfaces/msg/KssStatus value.
/// @details All 9 declared fields are retained in source order. The canonical representation occupies 9..9 bytes and is
/// identified by UWVMROS1_b28bc2f19a0f410f0cd1d5b1d59daf1d09acb3e8312b4267f622a4d119f16b82.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Kuka_driver_interfacesMsgKssStatus=struct {
    /// @brief Maximum canonical extent of kuka_driver_interfaces/msg/KssStatus in bytes.
    /// @details The inclusive bound is 9 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=9;
    /// @brief Canonical codec identity of kuka_driver_interfaces/msg/KssStatus.
    /// @details Exact identity UWVMROS1_b28bc2f19a0f410f0cd1d5b1d59daf1d09acb3e8312b4267f622a4d119f16b82 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_b28bc2f19a0f410f0cd1d5b1d59daf1d09acb3e8312b4267f622a4d119f16b82";
    /// @brief Original ROS type name for kuka_driver_interfaces/msg/KssStatus.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="kuka_driver_interfaces/msg/KssStatus";
    /// @brief Selected original native identity for kuka_driver_interfaces/msg/KssStatus.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief kuka_driver_interfaces/msg/KssStatus.UNSPECIFIED: original uint8 constant.
    /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const field_UNSPECIFIED: u8=0;
    /// @brief kuka_driver_interfaces/msg/KssStatus.JOINT_POSITION_CONTROL: original uint8 constant.
    /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const field_JOINT_POSITION_CONTROL: u8=1;
    /// @brief kuka_driver_interfaces/msg/KssStatus.CARTESIAN_POSITION_CONTROL: original uint8 constant.
    /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const field_CARTESIAN_POSITION_CONTROL: u8=5;
    /// @brief kuka_driver_interfaces/msg/KssStatus.RSI_4MS: original uint8 constant.
    /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const field_RSI_4MS: u8=1;
    /// @brief kuka_driver_interfaces/msg/KssStatus.RSI_12MS: original uint8 constant.
    /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const field_RSI_12MS: u8=2;
    /// @brief kuka_driver_interfaces/msg/KssStatus.T1: original uint8 constant.
    /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const field_T1: u8=1;
    /// @brief kuka_driver_interfaces/msg/KssStatus.T2: original uint8 constant.
    /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const field_T2: u8=2;
    /// @brief kuka_driver_interfaces/msg/KssStatus.AUT: original uint8 constant.
    /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const field_AUT: u8=3;
    /// @brief kuka_driver_interfaces/msg/KssStatus.EXT: original uint8 constant.
    /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/zig/API-CONTRACT.md
    pub const field_EXT: u8=4;
    /// @brief kuka_driver_interfaces/msg/KssStatus.control_mode: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/zig/API-CONTRACT.md
    field_control_mode: u8=0,
    /// @brief kuka_driver_interfaces/msg/KssStatus.cycle_time: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/zig/API-CONTRACT.md
    field_cycle_time: u8=0,
    /// @brief kuka_driver_interfaces/msg/KssStatus.drives_powered: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/zig/API-CONTRACT.md
    field_drives_powered: bool=false,
    /// @brief kuka_driver_interfaces/msg/KssStatus.emergency_stop: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/zig/API-CONTRACT.md
    field_emergency_stop: bool=false,
    /// @brief kuka_driver_interfaces/msg/KssStatus.guard_stop: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/zig/API-CONTRACT.md
    field_guard_stop: bool=false,
    /// @brief kuka_driver_interfaces/msg/KssStatus.in_motion: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/zig/API-CONTRACT.md
    field_in_motion: bool=false,
    /// @brief kuka_driver_interfaces/msg/KssStatus.motion_possible: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/zig/API-CONTRACT.md
    field_motion_possible: bool=false,
    /// @brief kuka_driver_interfaces/msg/KssStatus.operation_mode: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/zig/API-CONTRACT.md
    field_operation_mode: u8=0,
    /// @brief kuka_driver_interfaces/msg/KssStatus.robot_stopped: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/zig/API-CONTRACT.md
    field_robot_stopped: bool=false,
    /// @brief Append every canonical field of kuka_driver_interfaces/msg/KssStatus.
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
    /// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.integer(self.field_control_mode);
        try w.integer(self.field_cycle_time);
        try w.boolean(self.field_drives_powered);
        try w.boolean(self.field_emergency_stop);
        try w.boolean(self.field_guard_stop);
        try w.boolean(self.field_in_motion);
        try w.boolean(self.field_motion_possible);
        try w.integer(self.field_operation_mode);
        try w.boolean(self.field_robot_stopped);
    }
    /// @brief Read the ordered canonical fields of kuka_driver_interfaces/msg/KssStatus.
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
    /// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_control_mode=try r.integer(u8);
        value.field_cycle_time=try r.integer(u8);
        value.field_drives_powered=try r.boolean();
        value.field_emergency_stop=try r.boolean();
        value.field_guard_stop=try r.boolean();
        value.field_in_motion=try r.boolean();
        value.field_motion_possible=try r.boolean();
        value.field_operation_mode=try r.integer(u8);
        value.field_robot_stopped=try r.boolean();
        return value;
    }
    /// @brief Encode one complete kuka_driver_interfaces/msg/KssStatus value.
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
    /// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete kuka_driver_interfaces/msg/KssStatus value.
    /// @details Require the complete 9..9-byte canonical representation. Reject truncation, invalid fields and trailing
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
    /// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<9 or bytes.len>9) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 kuka_driver_interfaces/msg/KssStatusArray value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..1240 bytes and
/// is identified by UWVMROS1_3c8e93b369eefea89c0aa56ab657721edd041ac66e18cfbf4fc4201df60dbebd.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Kuka_driver_interfacesMsgKssStatusArray=struct {
    /// @brief Maximum canonical extent of kuka_driver_interfaces/msg/KssStatusArray in bytes.
    /// @details The inclusive bound is 1240 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=1240;
    /// @brief Canonical codec identity of kuka_driver_interfaces/msg/KssStatusArray.
    /// @details Exact identity UWVMROS1_3c8e93b369eefea89c0aa56ab657721edd041ac66e18cfbf4fc4201df60dbebd binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_3c8e93b369eefea89c0aa56ab657721edd041ac66e18cfbf4fc4201df60dbebd";
    /// @brief Original ROS type name for kuka_driver_interfaces/msg/KssStatusArray.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="kuka_driver_interfaces/msg/KssStatusArray";
    /// @brief Selected original native identity for kuka_driver_interfaces/msg/KssStatusArray.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief kuka_driver_interfaces/msg/KssStatusArray.robot_names: string; 0..16 elements; each string is 0..64
    /// bytes; strict UTF-8 with no embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/zig/API-CONTRACT.md
    field_robot_names: [][]const u8=&.{},
    /// @brief kuka_driver_interfaces/msg/KssStatusArray.statuses: kuka_driver_interfaces/msg/KssStatus; 0..16 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/zig/API-CONTRACT.md
    field_statuses: []Ros2Kuka_driver_interfacesMsgKssStatus=&.{},
    /// @brief Append every canonical field of kuka_driver_interfaces/msg/KssStatusArray.
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
    /// @see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        if(self.field_robot_names.len>16) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_robot_names.len)));
        for(self.field_robot_names) |e| {
        try w.string(e,64,false);
        }
        if(self.field_statuses.len>16) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_statuses.len)));
        for(self.field_statuses) |e| {
        try e.writeFields(w);
        }
    }
    /// @brief Read the ordered canonical fields of kuka_driver_interfaces/msg/KssStatusArray.
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
    /// @see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        const count0=try r.integer(u32); if(count0>16) return error.Invalid;
        value.field_robot_names=try allocator.alloc([]const u8,count0);
        for(value.field_robot_names) |*e| {
        e.*=try r.string(64,false);
        }
        const count1=try r.integer(u32); if(count1>16) return error.Invalid;
        value.field_statuses=try allocator.alloc(Ros2Kuka_driver_interfacesMsgKssStatus,count1);
        for(value.field_statuses) |*e| {
        e.*=try Ros2Kuka_driver_interfacesMsgKssStatus.readFields(r,allocator);
        }
        return value;
    }
    /// @brief Encode one complete kuka_driver_interfaces/msg/KssStatusArray value.
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
    /// @see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete kuka_driver_interfaces/msg/KssStatusArray value.
    /// @details Require the complete 8..1240-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<8 or bytes.len>1240) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 lifecycle_msgs/msg/State value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..517 bytes and
/// is identified by UWVMROS1_ebd49e5f87ddaa204cc4072ceef9840676c6f65f67448a027e26570dae0ded94.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Lifecycle_msgsMsgState=struct {
    /// @brief Maximum canonical extent of lifecycle_msgs/msg/State in bytes.
    /// @details The inclusive bound is 517 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=517;
    /// @brief Canonical codec identity of lifecycle_msgs/msg/State.
    /// @details Exact identity UWVMROS1_ebd49e5f87ddaa204cc4072ceef9840676c6f65f67448a027e26570dae0ded94 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_ebd49e5f87ddaa204cc4072ceef9840676c6f65f67448a027e26570dae0ded94";
    /// @brief Original ROS type name for lifecycle_msgs/msg/State.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="lifecycle_msgs/msg/State";
    /// @brief Selected original native identity for lifecycle_msgs/msg/State.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief lifecycle_msgs/msg/State.PRIMARY_STATE_UNKNOWN: original uint8 constant.
    /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PRIMARY_STATE_UNKNOWN: u8=0;
    /// @brief lifecycle_msgs/msg/State.PRIMARY_STATE_UNCONFIGURED: original uint8 constant.
    /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PRIMARY_STATE_UNCONFIGURED: u8=1;
    /// @brief lifecycle_msgs/msg/State.PRIMARY_STATE_INACTIVE: original uint8 constant.
    /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PRIMARY_STATE_INACTIVE: u8=2;
    /// @brief lifecycle_msgs/msg/State.PRIMARY_STATE_ACTIVE: original uint8 constant.
    /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PRIMARY_STATE_ACTIVE: u8=3;
    /// @brief lifecycle_msgs/msg/State.PRIMARY_STATE_FINALIZED: original uint8 constant.
    /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PRIMARY_STATE_FINALIZED: u8=4;
    /// @brief lifecycle_msgs/msg/State.TRANSITION_STATE_CONFIGURING: original uint8 constant.
    /// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_STATE_CONFIGURING: u8=10;
    /// @brief lifecycle_msgs/msg/State.TRANSITION_STATE_CLEANINGUP: original uint8 constant.
    /// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_STATE_CLEANINGUP: u8=11;
    /// @brief lifecycle_msgs/msg/State.TRANSITION_STATE_SHUTTINGDOWN: original uint8 constant.
    /// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_STATE_SHUTTINGDOWN: u8=12;
    /// @brief lifecycle_msgs/msg/State.TRANSITION_STATE_ACTIVATING: original uint8 constant.
    /// @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_STATE_ACTIVATING: u8=13;
    /// @brief lifecycle_msgs/msg/State.TRANSITION_STATE_DEACTIVATING: original uint8 constant.
    /// @details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_STATE_DEACTIVATING: u8=14;
    /// @brief lifecycle_msgs/msg/State.TRANSITION_STATE_ERRORPROCESSING: original uint8 constant.
    /// @details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_STATE_ERRORPROCESSING: u8=15;
    /// @brief lifecycle_msgs/msg/State.id: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/zig/API-CONTRACT.md
    field_id: u8=0,
    /// @brief lifecycle_msgs/msg/State.label: string; each string is 0..512 bytes; strict UTF-8 with no embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/zig/API-CONTRACT.md
    field_label: []const u8=&.{},
    /// @brief Append every canonical field of lifecycle_msgs/msg/State.
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
    /// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.integer(self.field_id);
        try w.string(self.field_label,512,false);
    }
    /// @brief Read the ordered canonical fields of lifecycle_msgs/msg/State.
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
    /// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_id=try r.integer(u8);
        value.field_label=try r.string(512,false);
        return value;
    }
    /// @brief Encode one complete lifecycle_msgs/msg/State value.
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
    /// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete lifecycle_msgs/msg/State value.
    /// @details Require the complete 5..517-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<5 or bytes.len>517) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 lifecycle_msgs/msg/Transition value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..517 bytes and
/// is identified by UWVMROS1_1f9bb864622854b446a37cf3c6e29e9cf41f8efa37375c5a56205b4c02ed10cb.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Lifecycle_msgsMsgTransition=struct {
    /// @brief Maximum canonical extent of lifecycle_msgs/msg/Transition in bytes.
    /// @details The inclusive bound is 517 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=517;
    /// @brief Canonical codec identity of lifecycle_msgs/msg/Transition.
    /// @details Exact identity UWVMROS1_1f9bb864622854b446a37cf3c6e29e9cf41f8efa37375c5a56205b4c02ed10cb binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_1f9bb864622854b446a37cf3c6e29e9cf41f8efa37375c5a56205b4c02ed10cb";
    /// @brief Original ROS type name for lifecycle_msgs/msg/Transition.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="lifecycle_msgs/msg/Transition";
    /// @brief Selected original native identity for lifecycle_msgs/msg/Transition.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief lifecycle_msgs/msg/Transition.TRANSITION_CREATE: original uint8 constant.
    /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_CREATE: u8=0;
    /// @brief lifecycle_msgs/msg/Transition.TRANSITION_CONFIGURE: original uint8 constant.
    /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_CONFIGURE: u8=1;
    /// @brief lifecycle_msgs/msg/Transition.TRANSITION_CLEANUP: original uint8 constant.
    /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_CLEANUP: u8=2;
    /// @brief lifecycle_msgs/msg/Transition.TRANSITION_ACTIVATE: original uint8 constant.
    /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_ACTIVATE: u8=3;
    /// @brief lifecycle_msgs/msg/Transition.TRANSITION_DEACTIVATE: original uint8 constant.
    /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_DEACTIVATE: u8=4;
    /// @brief lifecycle_msgs/msg/Transition.TRANSITION_UNCONFIGURED_SHUTDOWN: original uint8 constant.
    /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_UNCONFIGURED_SHUTDOWN: u8=5;
    /// @brief lifecycle_msgs/msg/Transition.TRANSITION_INACTIVE_SHUTDOWN: original uint8 constant.
    /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_INACTIVE_SHUTDOWN: u8=6;
    /// @brief lifecycle_msgs/msg/Transition.TRANSITION_ACTIVE_SHUTDOWN: original uint8 constant.
    /// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_ACTIVE_SHUTDOWN: u8=7;
    /// @brief lifecycle_msgs/msg/Transition.TRANSITION_DESTROY: original uint8 constant.
    /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_DESTROY: u8=8;
    /// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_CONFIGURE_SUCCESS: original uint8 constant.
    /// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_ON_CONFIGURE_SUCCESS: u8=10;
    /// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_CONFIGURE_FAILURE: original uint8 constant.
    /// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_ON_CONFIGURE_FAILURE: u8=11;
    /// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_CONFIGURE_ERROR: original uint8 constant.
    /// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_ON_CONFIGURE_ERROR: u8=12;
    /// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_CLEANUP_SUCCESS: original uint8 constant.
    /// @details Exact admitted value 20. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_ON_CLEANUP_SUCCESS: u8=20;
    /// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_CLEANUP_FAILURE: original uint8 constant.
    /// @details Exact admitted value 21. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_ON_CLEANUP_FAILURE: u8=21;
    /// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_CLEANUP_ERROR: original uint8 constant.
    /// @details Exact admitted value 22. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_ON_CLEANUP_ERROR: u8=22;
    /// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_ACTIVATE_SUCCESS: original uint8 constant.
    /// @details Exact admitted value 30. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_ON_ACTIVATE_SUCCESS: u8=30;
    /// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_ACTIVATE_FAILURE: original uint8 constant.
    /// @details Exact admitted value 31. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_ON_ACTIVATE_FAILURE: u8=31;
    /// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_ACTIVATE_ERROR: original uint8 constant.
    /// @details Exact admitted value 32. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_ON_ACTIVATE_ERROR: u8=32;
    /// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_DEACTIVATE_SUCCESS: original uint8 constant.
    /// @details Exact admitted value 40. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_ON_DEACTIVATE_SUCCESS: u8=40;
    /// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_DEACTIVATE_FAILURE: original uint8 constant.
    /// @details Exact admitted value 41. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_ON_DEACTIVATE_FAILURE: u8=41;
    /// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_DEACTIVATE_ERROR: original uint8 constant.
    /// @details Exact admitted value 42. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_ON_DEACTIVATE_ERROR: u8=42;
    /// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_SHUTDOWN_SUCCESS: original uint8 constant.
    /// @details Exact admitted value 50. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_ON_SHUTDOWN_SUCCESS: u8=50;
    /// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_SHUTDOWN_FAILURE: original uint8 constant.
    /// @details Exact admitted value 51. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_ON_SHUTDOWN_FAILURE: u8=51;
    /// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_SHUTDOWN_ERROR: original uint8 constant.
    /// @details Exact admitted value 52. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_ON_SHUTDOWN_ERROR: u8=52;
    /// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_ERROR_SUCCESS: original uint8 constant.
    /// @details Exact admitted value 60. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_ON_ERROR_SUCCESS: u8=60;
    /// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_ERROR_FAILURE: original uint8 constant.
    /// @details Exact admitted value 61. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_ON_ERROR_FAILURE: u8=61;
    /// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_ERROR_ERROR: original uint8 constant.
    /// @details Exact admitted value 62. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_ON_ERROR_ERROR: u8=62;
    /// @brief lifecycle_msgs/msg/Transition.TRANSITION_CALLBACK_SUCCESS: original uint8 constant.
    /// @details Exact admitted value 97. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_CALLBACK_SUCCESS: u8=97;
    /// @brief lifecycle_msgs/msg/Transition.TRANSITION_CALLBACK_FAILURE: original uint8 constant.
    /// @details Exact admitted value 98. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_CALLBACK_FAILURE: u8=98;
    /// @brief lifecycle_msgs/msg/Transition.TRANSITION_CALLBACK_ERROR: original uint8 constant.
    /// @details Exact admitted value 99. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TRANSITION_CALLBACK_ERROR: u8=99;
    /// @brief lifecycle_msgs/msg/Transition.id: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    field_id: u8=0,
    /// @brief lifecycle_msgs/msg/Transition.label: string; each string is 0..512 bytes; strict UTF-8 with no embedded
    /// NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    field_label: []const u8=&.{},
    /// @brief Append every canonical field of lifecycle_msgs/msg/Transition.
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
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.integer(self.field_id);
        try w.string(self.field_label,512,false);
    }
    /// @brief Read the ordered canonical fields of lifecycle_msgs/msg/Transition.
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
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_id=try r.integer(u8);
        value.field_label=try r.string(512,false);
        return value;
    }
    /// @brief Encode one complete lifecycle_msgs/msg/Transition value.
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
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete lifecycle_msgs/msg/Transition value.
    /// @details Require the complete 5..517-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<5 or bytes.len>517) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 lifecycle_msgs/srv/ChangeState_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 5..517 bytes and
/// is identified by UWVMROS1_b04270f03616b8e581036d327d18bde62d38627ae8acf88fb77d0ed7b3b3d3d1.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Lifecycle_msgsSrvChangeState_Request=struct {
    /// @brief Maximum canonical extent of lifecycle_msgs/srv/ChangeState_Request in bytes.
    /// @details The inclusive bound is 517 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=517;
    /// @brief Canonical codec identity of lifecycle_msgs/srv/ChangeState_Request.
    /// @details Exact identity UWVMROS1_b04270f03616b8e581036d327d18bde62d38627ae8acf88fb77d0ed7b3b3d3d1 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_b04270f03616b8e581036d327d18bde62d38627ae8acf88fb77d0ed7b3b3d3d1";
    /// @brief Original ROS type name for lifecycle_msgs/srv/ChangeState_Request.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="lifecycle_msgs/srv/ChangeState_Request";
    /// @brief Selected original native identity for lifecycle_msgs/srv/ChangeState_Request.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief lifecycle_msgs/srv/ChangeState_Request.transition: lifecycle_msgs/msg/Transition.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/zig/API-CONTRACT.md
    field_transition: Ros2Lifecycle_msgsMsgTransition=.{},
    /// @brief Append every canonical field of lifecycle_msgs/srv/ChangeState_Request.
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
    /// @see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_transition.writeFields(w);
    }
    /// @brief Read the ordered canonical fields of lifecycle_msgs/srv/ChangeState_Request.
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
    /// @see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_transition=try Ros2Lifecycle_msgsMsgTransition.readFields(r,allocator);
        return value;
    }
    /// @brief Encode one complete lifecycle_msgs/srv/ChangeState_Request value.
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
    /// @see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete lifecycle_msgs/srv/ChangeState_Request value.
    /// @details Require the complete 5..517-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<5 or bytes.len>517) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 lifecycle_msgs/srv/ChangeState_Response value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is
/// identified by UWVMROS1_d2dc541d6995976a2a1a2c03d499aa9dccaf487736b11704d778c86fddaf5032.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Lifecycle_msgsSrvChangeState_Response=struct {
    /// @brief Maximum canonical extent of lifecycle_msgs/srv/ChangeState_Response in bytes.
    /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=1;
    /// @brief Canonical codec identity of lifecycle_msgs/srv/ChangeState_Response.
    /// @details Exact identity UWVMROS1_d2dc541d6995976a2a1a2c03d499aa9dccaf487736b11704d778c86fddaf5032 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_d2dc541d6995976a2a1a2c03d499aa9dccaf487736b11704d778c86fddaf5032";
    /// @brief Original ROS type name for lifecycle_msgs/srv/ChangeState_Response.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="lifecycle_msgs/srv/ChangeState_Response";
    /// @brief Selected original native identity for lifecycle_msgs/srv/ChangeState_Response.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief lifecycle_msgs/srv/ChangeState_Response.success: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/zig/API-CONTRACT.md
    field_success: bool=false,
    /// @brief Append every canonical field of lifecycle_msgs/srv/ChangeState_Response.
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
    /// @see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.boolean(self.field_success);
    }
    /// @brief Read the ordered canonical fields of lifecycle_msgs/srv/ChangeState_Response.
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
    /// @see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_success=try r.boolean();
        return value;
    }
    /// @brief Encode one complete lifecycle_msgs/srv/ChangeState_Response value.
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
    /// @see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete lifecycle_msgs/srv/ChangeState_Response value.
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
    /// @see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<1 or bytes.len>1) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 lifecycle_msgs/srv/GetState_Request value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
/// identified by UWVMROS1_86a3d813de32971a271e062acfaf201eb718aff8d68a4e343d6fceaae2b5098d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Lifecycle_msgsSrvGetState_Request=struct {
    /// @brief Maximum canonical extent of lifecycle_msgs/srv/GetState_Request in bytes.
    /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Lifecycle_msgsSrvGetState_Request; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=0;
    /// @brief Canonical codec identity of lifecycle_msgs/srv/GetState_Request.
    /// @details Exact identity UWVMROS1_86a3d813de32971a271e062acfaf201eb718aff8d68a4e343d6fceaae2b5098d binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Lifecycle_msgsSrvGetState_Request; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_86a3d813de32971a271e062acfaf201eb718aff8d68a4e343d6fceaae2b5098d";
    /// @brief Original ROS type name for lifecycle_msgs/srv/GetState_Request.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Lifecycle_msgsSrvGetState_Request; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="lifecycle_msgs/srv/GetState_Request";
    /// @brief Selected original native identity for lifecycle_msgs/srv/GetState_Request.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Lifecycle_msgsSrvGetState_Request; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief Append every canonical field of lifecycle_msgs/srv/GetState_Request.
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
    /// @see Ros2Lifecycle_msgsSrvGetState_Request; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        _=self; _=w;
    }
    /// @brief Read the ordered canonical fields of lifecycle_msgs/srv/GetState_Request.
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
    /// @see Ros2Lifecycle_msgsSrvGetState_Request; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        const value: @This()=.{};
        _=r; _=allocator;
        return value;
    }
    /// @brief Encode one complete lifecycle_msgs/srv/GetState_Request value.
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
    /// @see Ros2Lifecycle_msgsSrvGetState_Request; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete lifecycle_msgs/srv/GetState_Request value.
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
    /// @see Ros2Lifecycle_msgsSrvGetState_Request; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<0 or bytes.len>0) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 lifecycle_msgs/srv/GetState_Response value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 5..517 bytes and
/// is identified by UWVMROS1_697418ec4095e98c855b1f9d238a3bd74a59ccbbc3eb31981c4df3c3b829ea39.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Lifecycle_msgsSrvGetState_Response=struct {
    /// @brief Maximum canonical extent of lifecycle_msgs/srv/GetState_Response in bytes.
    /// @details The inclusive bound is 517 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=517;
    /// @brief Canonical codec identity of lifecycle_msgs/srv/GetState_Response.
    /// @details Exact identity UWVMROS1_697418ec4095e98c855b1f9d238a3bd74a59ccbbc3eb31981c4df3c3b829ea39 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_697418ec4095e98c855b1f9d238a3bd74a59ccbbc3eb31981c4df3c3b829ea39";
    /// @brief Original ROS type name for lifecycle_msgs/srv/GetState_Response.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="lifecycle_msgs/srv/GetState_Response";
    /// @brief Selected original native identity for lifecycle_msgs/srv/GetState_Response.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief lifecycle_msgs/srv/GetState_Response.current_state: lifecycle_msgs/msg/State.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/zig/API-CONTRACT.md
    field_current_state: Ros2Lifecycle_msgsMsgState=.{},
    /// @brief Append every canonical field of lifecycle_msgs/srv/GetState_Response.
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
    /// @see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_current_state.writeFields(w);
    }
    /// @brief Read the ordered canonical fields of lifecycle_msgs/srv/GetState_Response.
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
    /// @see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_current_state=try Ros2Lifecycle_msgsMsgState.readFields(r,allocator);
        return value;
    }
    /// @brief Encode one complete lifecycle_msgs/srv/GetState_Response value.
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
    /// @see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete lifecycle_msgs/srv/GetState_Response value.
    /// @details Require the complete 5..517-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<5 or bytes.len>517) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 sensor_msgs/msg/JointState value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 28..1196 bytes
/// and is identified by UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Sensor_msgsMsgJointState=struct {
    /// @brief Maximum canonical extent of sensor_msgs/msg/JointState in bytes.
    /// @details The inclusive bound is 1196 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=1196;
    /// @brief Canonical codec identity of sensor_msgs/msg/JointState.
    /// @details Exact identity UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884";
    /// @brief Original ROS type name for sensor_msgs/msg/JointState.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="sensor_msgs/msg/JointState";
    /// @brief Selected original native identity for sensor_msgs/msg/JointState.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief sensor_msgs/msg/JointState.header: std_msgs/msg/Header.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
    field_header: Ros2Std_msgsMsgHeader=.{},
    /// @brief sensor_msgs/msg/JointState.name: string; 0..12 elements; each string is 0..64 bytes; strict UTF-8 with no
    /// embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
    field_name: [][]const u8=&.{},
    /// @brief sensor_msgs/msg/JointState.position: float64; 0..12 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
    field_position: []f64=&.{},
    /// @brief sensor_msgs/msg/JointState.velocity: float64; 0..12 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
    field_velocity: []f64=&.{},
    /// @brief sensor_msgs/msg/JointState.effort: float64; 0..12 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
    field_effort: []f64=&.{},
    /// @brief Append every canonical field of sensor_msgs/msg/JointState.
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
    /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        if (
            self.field_name.len != 0 and
            self.field_position.len != 0 and
            self.field_name.len != self.field_position.len
        ) return error.Invalid;
        if (
            self.field_name.len != 0 and
            self.field_velocity.len != 0 and
            self.field_name.len != self.field_velocity.len
        ) return error.Invalid;
        if (
            self.field_name.len != 0 and
            self.field_effort.len != 0 and
            self.field_name.len != self.field_effort.len
        ) return error.Invalid;
        if (
            self.field_position.len != 0 and
            self.field_velocity.len != 0 and
            self.field_position.len != self.field_velocity.len
        ) return error.Invalid;
        if (
            self.field_position.len != 0 and
            self.field_effort.len != 0 and
            self.field_position.len != self.field_effort.len
        ) return error.Invalid;
        if (
            self.field_velocity.len != 0 and
            self.field_effort.len != 0 and
            self.field_velocity.len != self.field_effort.len
        ) return error.Invalid;
        try self.field_header.writeFields(w);
        if(self.field_name.len>12) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_name.len)));
        for(self.field_name) |e| {
        try w.string(e,64,false);
        }
        if(self.field_position.len>12) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_position.len)));
        for(self.field_position) |e| {
        try w.float64(e);
        }
        if(self.field_velocity.len>12) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_velocity.len)));
        for(self.field_velocity) |e| {
        try w.float64(e);
        }
        if(self.field_effort.len>12) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_effort.len)));
        for(self.field_effort) |e| {
        try w.float64(e);
        }
    }
    /// @brief Read the ordered canonical fields of sensor_msgs/msg/JointState.
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
    /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_header=try Ros2Std_msgsMsgHeader.readFields(r,allocator);
        const count1=try r.integer(u32); if(count1>12) return error.Invalid;
        value.field_name=try allocator.alloc([]const u8,count1);
        for(value.field_name) |*e| {
        e.*=try r.string(64,false);
        }
        const count2=try r.integer(u32); if(count2>12) return error.Invalid;
        value.field_position=try allocator.alloc(f64,count2);
        for(value.field_position) |*e| {
        e.*=try r.float64();
        }
        const count3=try r.integer(u32); if(count3>12) return error.Invalid;
        value.field_velocity=try allocator.alloc(f64,count3);
        for(value.field_velocity) |*e| {
        e.*=try r.float64();
        }
        const count4=try r.integer(u32); if(count4>12) return error.Invalid;
        value.field_effort=try allocator.alloc(f64,count4);
        for(value.field_effort) |*e| {
        e.*=try r.float64();
        }
        if (
            value.field_name.len != 0 and
            value.field_position.len != 0 and
            value.field_name.len != value.field_position.len
        ) return error.Invalid;
        if (
            value.field_name.len != 0 and
            value.field_velocity.len != 0 and
            value.field_name.len != value.field_velocity.len
        ) return error.Invalid;
        if (
            value.field_name.len != 0 and
            value.field_effort.len != 0 and
            value.field_name.len != value.field_effort.len
        ) return error.Invalid;
        if (
            value.field_position.len != 0 and
            value.field_velocity.len != 0 and
            value.field_position.len != value.field_velocity.len
        ) return error.Invalid;
        if (
            value.field_position.len != 0 and
            value.field_effort.len != 0 and
            value.field_position.len != value.field_effort.len
        ) return error.Invalid;
        if (
            value.field_velocity.len != 0 and
            value.field_effort.len != 0 and
            value.field_velocity.len != value.field_effort.len
        ) return error.Invalid;
        return value;
    }
    /// @brief Encode one complete sensor_msgs/msg/JointState value.
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
    /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete sensor_msgs/msg/JointState value.
    /// @details Require the complete 28..1196-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<28 or bytes.len>1196) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 std_srvs/srv/Trigger_Request value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
/// identified by UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Std_srvsSrvTrigger_Request=struct {
    /// @brief Maximum canonical extent of std_srvs/srv/Trigger_Request in bytes.
    /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Std_srvsSrvTrigger_Request; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=0;
    /// @brief Canonical codec identity of std_srvs/srv/Trigger_Request.
    /// @details Exact identity UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Std_srvsSrvTrigger_Request; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77";
    /// @brief Original ROS type name for std_srvs/srv/Trigger_Request.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Std_srvsSrvTrigger_Request; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="std_srvs/srv/Trigger_Request";
    /// @brief Selected original native identity for std_srvs/srv/Trigger_Request.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Std_srvsSrvTrigger_Request; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief Append every canonical field of std_srvs/srv/Trigger_Request.
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
    /// @see Ros2Std_srvsSrvTrigger_Request; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        _=self; _=w;
    }
    /// @brief Read the ordered canonical fields of std_srvs/srv/Trigger_Request.
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
    /// @see Ros2Std_srvsSrvTrigger_Request; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        const value: @This()=.{};
        _=r; _=allocator;
        return value;
    }
    /// @brief Encode one complete std_srvs/srv/Trigger_Request value.
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
    /// @see Ros2Std_srvsSrvTrigger_Request; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete std_srvs/srv/Trigger_Request value.
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
    /// @see Ros2Std_srvsSrvTrigger_Request; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<0 or bytes.len>0) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 2 std_srvs/srv/Trigger_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..517 bytes and
/// is identified by UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Std_srvsSrvTrigger_Response=struct {
    /// @brief Maximum canonical extent of std_srvs/srv/Trigger_Response in bytes.
    /// @details The inclusive bound is 517 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=517;
    /// @brief Canonical codec identity of std_srvs/srv/Trigger_Response.
    /// @details Exact identity UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d";
    /// @brief Original ROS type name for std_srvs/srv/Trigger_Response.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="std_srvs/srv/Trigger_Response";
    /// @brief Selected original native identity for std_srvs/srv/Trigger_Response.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief std_srvs/srv/Trigger_Response.success: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/zig/API-CONTRACT.md
    field_success: bool=false,
    /// @brief std_srvs/srv/Trigger_Response.message: string; each string is 0..512 bytes; strict UTF-8 with no embedded
    /// NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/zig/API-CONTRACT.md
    field_message: []const u8=&.{},
    /// @brief Append every canonical field of std_srvs/srv/Trigger_Response.
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
    /// @see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.boolean(self.field_success);
        try w.string(self.field_message,512,false);
    }
    /// @brief Read the ordered canonical fields of std_srvs/srv/Trigger_Response.
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
    /// @see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_success=try r.boolean();
        value.field_message=try r.string(512,false);
        return value;
    }
    /// @brief Encode one complete std_srvs/srv/Trigger_Response value.
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
    /// @see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete std_srvs/srv/Trigger_Response value.
    /// @details Require the complete 5..517-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<5 or bytes.len>517) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
