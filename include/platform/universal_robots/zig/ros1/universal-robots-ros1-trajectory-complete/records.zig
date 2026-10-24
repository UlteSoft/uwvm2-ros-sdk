//! @file records.zig
//! @brief Complete universal_robots values and adapters for the selected original interface catalog.
//! @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
//! defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
//! roles require the separately admitted SDK owner.
//! @see share/platform/universal_robots/domains/universal-robots-ros1-trajectory-complete.ir.json
//! @see document/platform/universal_robots/en_US/README.md

//! Generated complete bounded values; all allocation is explicit.
const std=@import("std");
const wire=@import("roswire");
/// @brief Complete ROS 1 time value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and is
/// identified by UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Time=struct {
    /// @brief Maximum canonical extent of time in bytes.
    /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Time; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=8;
    /// @brief Canonical codec identity of time.
    /// @details Exact identity UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Time; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0";
    /// @brief Original ROS type name for time.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Time; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="time";
    /// @brief Selected original native identity for time.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Time; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief time.sec: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Time; share/platform/ros/zig/API-CONTRACT.md
    field_sec: u32=0,
    /// @brief time.nsec: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Time; share/platform/ros/zig/API-CONTRACT.md
    field_nsec: u32=0,
    /// @brief Append every canonical field of time.
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
    /// @see Ros1Time; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        if(self.field_nsec >= 1000000000) return error.Invalid;
        try w.integer(self.field_sec);
        try w.integer(self.field_nsec);
    }
    /// @brief Read the ordered canonical fields of time.
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
    /// @see Ros1Time; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_sec=try r.integer(u32);
        value.field_nsec=try r.integer(u32);
        if(value.field_nsec >= 1000000000) return error.Invalid;
        return value;
    }
    /// @brief Encode one complete time value.
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
    /// @see Ros1Time; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete time value.
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
    /// @see Ros1Time; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<8 or bytes.len>8) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 std_msgs/Header value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 16..144 bytes and
/// is identified by UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Std_msgsHeader=struct {
    /// @brief Maximum canonical extent of std_msgs/Header in bytes.
    /// @details The inclusive bound is 144 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Std_msgsHeader; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=144;
    /// @brief Canonical codec identity of std_msgs/Header.
    /// @details Exact identity UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Std_msgsHeader; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435";
    /// @brief Original ROS type name for std_msgs/Header.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Std_msgsHeader; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="std_msgs/Header";
    /// @brief Selected original native identity for std_msgs/Header.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Std_msgsHeader; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief std_msgs/Header.seq: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Std_msgsHeader; share/platform/ros/zig/API-CONTRACT.md
    field_seq: u32=0,
    /// @brief std_msgs/Header.stamp: time.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Std_msgsHeader; share/platform/ros/zig/API-CONTRACT.md
    field_stamp: Ros1Time=.{},
    /// @brief std_msgs/Header.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Std_msgsHeader; share/platform/ros/zig/API-CONTRACT.md
    field_frame_id: []const u8=&.{},
    /// @brief Append every canonical field of std_msgs/Header.
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
    /// @see Ros1Std_msgsHeader; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.integer(self.field_seq);
        try self.field_stamp.writeFields(w);
        try w.string(self.field_frame_id,128,false);
    }
    /// @brief Read the ordered canonical fields of std_msgs/Header.
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
    /// @see Ros1Std_msgsHeader; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_seq=try r.integer(u32);
        value.field_stamp=try Ros1Time.readFields(r,allocator);
        value.field_frame_id=try r.string(128,false);
        return value;
    }
    /// @brief Encode one complete std_msgs/Header value.
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
    /// @see Ros1Std_msgsHeader; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete std_msgs/Header value.
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
    /// @see Ros1Std_msgsHeader; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<16 or bytes.len>144) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 duration value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and is
/// identified by UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Duration=struct {
    /// @brief Maximum canonical extent of duration in bytes.
    /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Duration; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=8;
    /// @brief Canonical codec identity of duration.
    /// @details Exact identity UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Duration; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8";
    /// @brief Original ROS type name for duration.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Duration; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="duration";
    /// @brief Selected original native identity for duration.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Duration; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief duration.sec: int32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Duration; share/platform/ros/zig/API-CONTRACT.md
    field_sec: i32=0,
    /// @brief duration.nsec: int32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Duration; share/platform/ros/zig/API-CONTRACT.md
    field_nsec: i32=0,
    /// @brief Append every canonical field of duration.
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
    /// @see Ros1Duration; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        if(self.field_nsec < 0) return error.Invalid;
        if(self.field_nsec >= 1000000000) return error.Invalid;
        try w.integer(self.field_sec);
        try w.integer(self.field_nsec);
    }
    /// @brief Read the ordered canonical fields of duration.
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
    /// @see Ros1Duration; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_sec=try r.integer(i32);
        value.field_nsec=try r.integer(i32);
        if(value.field_nsec < 0) return error.Invalid;
        if(value.field_nsec >= 1000000000) return error.Invalid;
        return value;
    }
    /// @brief Encode one complete duration value.
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
    /// @see Ros1Duration; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete duration value.
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
    /// @see Ros1Duration; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<8 or bytes.len>8) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 trajectory_msgs/JointTrajectoryPoint value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 24..216 bytes and
/// is identified by UWVMROS1_5fbdf1845c522d88461d06d5dfae1f35cef5d7f00a87e405c0d458c8e1a9e64d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Trajectory_msgsJointTrajectoryPoint=struct {
    /// @brief Maximum canonical extent of trajectory_msgs/JointTrajectoryPoint in bytes.
    /// @details The inclusive bound is 216 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=216;
    /// @brief Canonical codec identity of trajectory_msgs/JointTrajectoryPoint.
    /// @details Exact identity UWVMROS1_5fbdf1845c522d88461d06d5dfae1f35cef5d7f00a87e405c0d458c8e1a9e64d binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_5fbdf1845c522d88461d06d5dfae1f35cef5d7f00a87e405c0d458c8e1a9e64d";
    /// @brief Original ROS type name for trajectory_msgs/JointTrajectoryPoint.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="trajectory_msgs/JointTrajectoryPoint";
    /// @brief Selected original native identity for trajectory_msgs/JointTrajectoryPoint.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief trajectory_msgs/JointTrajectoryPoint.positions: float64; 0..6 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    field_positions: []f64=&.{},
    /// @brief trajectory_msgs/JointTrajectoryPoint.velocities: float64; 0..6 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    field_velocities: []f64=&.{},
    /// @brief trajectory_msgs/JointTrajectoryPoint.accelerations: float64; 0..6 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    field_accelerations: []f64=&.{},
    /// @brief trajectory_msgs/JointTrajectoryPoint.effort: float64; 0..6 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    field_effort: []f64=&.{},
    /// @brief trajectory_msgs/JointTrajectoryPoint.time_from_start: duration.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    field_time_from_start: Ros1Duration=.{},
    /// @brief Append every canonical field of trajectory_msgs/JointTrajectoryPoint.
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
    /// @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        if(self.field_positions.len>6) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_positions.len)));
        for(self.field_positions) |e| {
        try w.float64(e);
        }
        if(self.field_velocities.len>6) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_velocities.len)));
        for(self.field_velocities) |e| {
        try w.float64(e);
        }
        if(self.field_accelerations.len>6) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_accelerations.len)));
        for(self.field_accelerations) |e| {
        try w.float64(e);
        }
        if(self.field_effort.len>6) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_effort.len)));
        for(self.field_effort) |e| {
        try w.float64(e);
        }
        try self.field_time_from_start.writeFields(w);
    }
    /// @brief Read the ordered canonical fields of trajectory_msgs/JointTrajectoryPoint.
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
    /// @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        const count0=try r.integer(u32); if(count0>6) return error.Invalid;
        value.field_positions=try allocator.alloc(f64,count0);
        for(value.field_positions) |*e| {
        e.*=try r.float64();
        }
        const count1=try r.integer(u32); if(count1>6) return error.Invalid;
        value.field_velocities=try allocator.alloc(f64,count1);
        for(value.field_velocities) |*e| {
        e.*=try r.float64();
        }
        const count2=try r.integer(u32); if(count2>6) return error.Invalid;
        value.field_accelerations=try allocator.alloc(f64,count2);
        for(value.field_accelerations) |*e| {
        e.*=try r.float64();
        }
        const count3=try r.integer(u32); if(count3>6) return error.Invalid;
        value.field_effort=try allocator.alloc(f64,count3);
        for(value.field_effort) |*e| {
        e.*=try r.float64();
        }
        value.field_time_from_start=try Ros1Duration.readFields(r,allocator);
        return value;
    }
    /// @brief Encode one complete trajectory_msgs/JointTrajectoryPoint value.
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
    /// @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete trajectory_msgs/JointTrajectoryPoint value.
    /// @details Require the complete 24..216-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<24 or bytes.len>216) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 trajectory_msgs/JointTrajectory value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..5168 bytes
/// and is identified by UWVMROS1_522dc1a8799adc4be16ce5a35a19a217de1095f018af0a7eb57eb6114c69adda.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Trajectory_msgsJointTrajectory=struct {
    /// @brief Maximum canonical extent of trajectory_msgs/JointTrajectory in bytes.
    /// @details The inclusive bound is 5168 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=5168;
    /// @brief Canonical codec identity of trajectory_msgs/JointTrajectory.
    /// @details Exact identity UWVMROS1_522dc1a8799adc4be16ce5a35a19a217de1095f018af0a7eb57eb6114c69adda binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_522dc1a8799adc4be16ce5a35a19a217de1095f018af0a7eb57eb6114c69adda";
    /// @brief Original ROS type name for trajectory_msgs/JointTrajectory.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="trajectory_msgs/JointTrajectory";
    /// @brief Selected original native identity for trajectory_msgs/JointTrajectory.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief trajectory_msgs/JointTrajectory.header: std_msgs/Header.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/zig/API-CONTRACT.md
    field_header: Ros1Std_msgsHeader=.{},
    /// @brief trajectory_msgs/JointTrajectory.joint_names: string; 0..6 elements; each string is 0..256 bytes; strict
    /// UTF-8 with no embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/zig/API-CONTRACT.md
    field_joint_names: [][]const u8=&.{},
    /// @brief trajectory_msgs/JointTrajectory.points: trajectory_msgs/JointTrajectoryPoint; 0..16 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/zig/API-CONTRACT.md
    field_points: []Ros1Trajectory_msgsJointTrajectoryPoint=&.{},
    /// @brief Append every canonical field of trajectory_msgs/JointTrajectory.
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
    /// @see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_header.writeFields(w);
        if(self.field_joint_names.len>6) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_joint_names.len)));
        for(self.field_joint_names) |e| {
        try w.string(e,256,false);
        }
        if(self.field_points.len>16) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_points.len)));
        for(self.field_points) |e| {
        try e.writeFields(w);
        }
    }
    /// @brief Read the ordered canonical fields of trajectory_msgs/JointTrajectory.
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
    /// @see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_header=try Ros1Std_msgsHeader.readFields(r,allocator);
        const count1=try r.integer(u32); if(count1>6) return error.Invalid;
        value.field_joint_names=try allocator.alloc([]const u8,count1);
        for(value.field_joint_names) |*e| {
        e.*=try r.string(256,false);
        }
        const count2=try r.integer(u32); if(count2>16) return error.Invalid;
        value.field_points=try allocator.alloc(Ros1Trajectory_msgsJointTrajectoryPoint,count2);
        for(value.field_points) |*e| {
        e.*=try Ros1Trajectory_msgsJointTrajectoryPoint.readFields(r,allocator);
        }
        return value;
    }
    /// @brief Encode one complete trajectory_msgs/JointTrajectory value.
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
    /// @see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete trajectory_msgs/JointTrajectory value.
    /// @details Require the complete 24..5168-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<24 or bytes.len>5168) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 control_msgs/JointTolerance value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 28..156 bytes and
/// is identified by UWVMROS1_dfb80a25d10bc883359720da419af0baa78217e72619922a762a5a96a06d0738.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Control_msgsJointTolerance=struct {
    /// @brief Maximum canonical extent of control_msgs/JointTolerance in bytes.
    /// @details The inclusive bound is 156 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Control_msgsJointTolerance; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=156;
    /// @brief Canonical codec identity of control_msgs/JointTolerance.
    /// @details Exact identity UWVMROS1_dfb80a25d10bc883359720da419af0baa78217e72619922a762a5a96a06d0738 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Control_msgsJointTolerance; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_dfb80a25d10bc883359720da419af0baa78217e72619922a762a5a96a06d0738";
    /// @brief Original ROS type name for control_msgs/JointTolerance.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Control_msgsJointTolerance; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="control_msgs/JointTolerance";
    /// @brief Selected original native identity for control_msgs/JointTolerance.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Control_msgsJointTolerance; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief control_msgs/JointTolerance.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Control_msgsJointTolerance; share/platform/ros/zig/API-CONTRACT.md
    field_name: []const u8=&.{},
    /// @brief control_msgs/JointTolerance.position: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Control_msgsJointTolerance; share/platform/ros/zig/API-CONTRACT.md
    field_position: f64=0,
    /// @brief control_msgs/JointTolerance.velocity: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Control_msgsJointTolerance; share/platform/ros/zig/API-CONTRACT.md
    field_velocity: f64=0,
    /// @brief control_msgs/JointTolerance.acceleration: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Control_msgsJointTolerance; share/platform/ros/zig/API-CONTRACT.md
    field_acceleration: f64=0,
    /// @brief Append every canonical field of control_msgs/JointTolerance.
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
    /// @see Ros1Control_msgsJointTolerance; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.string(self.field_name,128,false);
        try w.float64(self.field_position);
        try w.float64(self.field_velocity);
        try w.float64(self.field_acceleration);
    }
    /// @brief Read the ordered canonical fields of control_msgs/JointTolerance.
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
    /// @see Ros1Control_msgsJointTolerance; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_name=try r.string(128,false);
        value.field_position=try r.float64();
        value.field_velocity=try r.float64();
        value.field_acceleration=try r.float64();
        return value;
    }
    /// @brief Encode one complete control_msgs/JointTolerance value.
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
    /// @see Ros1Control_msgsJointTolerance; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete control_msgs/JointTolerance value.
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
    /// @see Ros1Control_msgsJointTolerance; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<28 or bytes.len>156) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 control_msgs/FollowJointTrajectoryGoal value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 40..7056 bytes
/// and is identified by UWVMROS1_bcbae7a4976e04bd115e5916808d63bd18da9eade34d35aab26439c1971b6c78.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Control_msgsFollowJointTrajectoryGoal=struct {
    /// @brief Maximum canonical extent of control_msgs/FollowJointTrajectoryGoal in bytes.
    /// @details The inclusive bound is 7056 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=7056;
    /// @brief Canonical codec identity of control_msgs/FollowJointTrajectoryGoal.
    /// @details Exact identity UWVMROS1_bcbae7a4976e04bd115e5916808d63bd18da9eade34d35aab26439c1971b6c78 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_bcbae7a4976e04bd115e5916808d63bd18da9eade34d35aab26439c1971b6c78";
    /// @brief Original ROS type name for control_msgs/FollowJointTrajectoryGoal.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="control_msgs/FollowJointTrajectoryGoal";
    /// @brief Selected original native identity for control_msgs/FollowJointTrajectoryGoal.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief control_msgs/FollowJointTrajectoryGoal.trajectory: trajectory_msgs/JointTrajectory.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/zig/API-CONTRACT.md
    field_trajectory: Ros1Trajectory_msgsJointTrajectory=.{},
    /// @brief control_msgs/FollowJointTrajectoryGoal.path_tolerance: control_msgs/JointTolerance; 0..6 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/zig/API-CONTRACT.md
    field_path_tolerance: []Ros1Control_msgsJointTolerance=&.{},
    /// @brief control_msgs/FollowJointTrajectoryGoal.goal_tolerance: control_msgs/JointTolerance; 0..6 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/zig/API-CONTRACT.md
    field_goal_tolerance: []Ros1Control_msgsJointTolerance=&.{},
    /// @brief control_msgs/FollowJointTrajectoryGoal.goal_time_tolerance: duration.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/zig/API-CONTRACT.md
    field_goal_time_tolerance: Ros1Duration=.{},
    /// @brief Append every canonical field of control_msgs/FollowJointTrajectoryGoal.
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
    /// @see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_trajectory.writeFields(w);
        if(self.field_path_tolerance.len>6) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_path_tolerance.len)));
        for(self.field_path_tolerance) |e| {
        try e.writeFields(w);
        }
        if(self.field_goal_tolerance.len>6) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_goal_tolerance.len)));
        for(self.field_goal_tolerance) |e| {
        try e.writeFields(w);
        }
        try self.field_goal_time_tolerance.writeFields(w);
    }
    /// @brief Read the ordered canonical fields of control_msgs/FollowJointTrajectoryGoal.
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
    /// @see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_trajectory=try Ros1Trajectory_msgsJointTrajectory.readFields(r,allocator);
        const count1=try r.integer(u32); if(count1>6) return error.Invalid;
        value.field_path_tolerance=try allocator.alloc(Ros1Control_msgsJointTolerance,count1);
        for(value.field_path_tolerance) |*e| {
        e.*=try Ros1Control_msgsJointTolerance.readFields(r,allocator);
        }
        const count2=try r.integer(u32); if(count2>6) return error.Invalid;
        value.field_goal_tolerance=try allocator.alloc(Ros1Control_msgsJointTolerance,count2);
        for(value.field_goal_tolerance) |*e| {
        e.*=try Ros1Control_msgsJointTolerance.readFields(r,allocator);
        }
        value.field_goal_time_tolerance=try Ros1Duration.readFields(r,allocator);
        return value;
    }
    /// @brief Encode one complete control_msgs/FollowJointTrajectoryGoal value.
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
    /// @see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete control_msgs/FollowJointTrajectoryGoal value.
    /// @details Require the complete 40..7056-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<40 or bytes.len>7056) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 control_msgs/FollowJointTrajectoryResult value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..4104 bytes and
/// is identified by UWVMROS1_71da832be83c08804668aa63576768bbe831f21f5f270cdc8d851b30d2fc4281.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Control_msgsFollowJointTrajectoryResult=struct {
    /// @brief Maximum canonical extent of control_msgs/FollowJointTrajectoryResult in bytes.
    /// @details The inclusive bound is 4104 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=4104;
    /// @brief Canonical codec identity of control_msgs/FollowJointTrajectoryResult.
    /// @details Exact identity UWVMROS1_71da832be83c08804668aa63576768bbe831f21f5f270cdc8d851b30d2fc4281 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_71da832be83c08804668aa63576768bbe831f21f5f270cdc8d851b30d2fc4281";
    /// @brief Original ROS type name for control_msgs/FollowJointTrajectoryResult.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="control_msgs/FollowJointTrajectoryResult";
    /// @brief Selected original native identity for control_msgs/FollowJointTrajectoryResult.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief control_msgs/FollowJointTrajectoryResult.SUCCESSFUL: original int32 constant.
    /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/zig/API-CONTRACT.md
    pub const field_SUCCESSFUL: i32=0;
    /// @brief control_msgs/FollowJointTrajectoryResult.INVALID_GOAL: original int32 constant.
    /// @details Exact admitted value -1. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/zig/API-CONTRACT.md
    pub const field_INVALID_GOAL: i32=-1;
    /// @brief control_msgs/FollowJointTrajectoryResult.INVALID_JOINTS: original int32 constant.
    /// @details Exact admitted value -2. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/zig/API-CONTRACT.md
    pub const field_INVALID_JOINTS: i32=-2;
    /// @brief control_msgs/FollowJointTrajectoryResult.OLD_HEADER_TIMESTAMP: original int32 constant.
    /// @details Exact admitted value -3. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/zig/API-CONTRACT.md
    pub const field_OLD_HEADER_TIMESTAMP: i32=-3;
    /// @brief control_msgs/FollowJointTrajectoryResult.PATH_TOLERANCE_VIOLATED: original int32 constant.
    /// @details Exact admitted value -4. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PATH_TOLERANCE_VIOLATED: i32=-4;
    /// @brief control_msgs/FollowJointTrajectoryResult.GOAL_TOLERANCE_VIOLATED: original int32 constant.
    /// @details Exact admitted value -5. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/zig/API-CONTRACT.md
    pub const field_GOAL_TOLERANCE_VIOLATED: i32=-5;
    /// @brief control_msgs/FollowJointTrajectoryResult.error_code: int32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/zig/API-CONTRACT.md
    field_error_code: i32=0,
    /// @brief control_msgs/FollowJointTrajectoryResult.error_string: string; each string is 0..4096 bytes; strict UTF-8
    /// with no embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/zig/API-CONTRACT.md
    field_error_string: []const u8=&.{},
    /// @brief Append every canonical field of control_msgs/FollowJointTrajectoryResult.
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
    /// @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.integer(self.field_error_code);
        try w.string(self.field_error_string,4096,false);
    }
    /// @brief Read the ordered canonical fields of control_msgs/FollowJointTrajectoryResult.
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
    /// @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_error_code=try r.integer(i32);
        value.field_error_string=try r.string(4096,false);
        return value;
    }
    /// @brief Encode one complete control_msgs/FollowJointTrajectoryResult value.
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
    /// @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete control_msgs/FollowJointTrajectoryResult value.
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
    /// @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<8 or bytes.len>4104) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 control_msgs/FollowJointTrajectoryFeedback value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 92..2356 bytes
/// and is identified by UWVMROS1_fbb2813fa8fe3e2b4a0c7e968fb5ef037df0af707b9439e8615bc3d447db6913.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Control_msgsFollowJointTrajectoryFeedback=struct {
    /// @brief Maximum canonical extent of control_msgs/FollowJointTrajectoryFeedback in bytes.
    /// @details The inclusive bound is 2356 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=2356;
    /// @brief Canonical codec identity of control_msgs/FollowJointTrajectoryFeedback.
    /// @details Exact identity UWVMROS1_fbb2813fa8fe3e2b4a0c7e968fb5ef037df0af707b9439e8615bc3d447db6913 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_fbb2813fa8fe3e2b4a0c7e968fb5ef037df0af707b9439e8615bc3d447db6913";
    /// @brief Original ROS type name for control_msgs/FollowJointTrajectoryFeedback.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="control_msgs/FollowJointTrajectoryFeedback";
    /// @brief Selected original native identity for control_msgs/FollowJointTrajectoryFeedback.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief control_msgs/FollowJointTrajectoryFeedback.header: std_msgs/Header.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/zig/API-CONTRACT.md
    field_header: Ros1Std_msgsHeader=.{},
    /// @brief control_msgs/FollowJointTrajectoryFeedback.joint_names: string; 0..6 elements; each string is 0..256
    /// bytes; strict UTF-8 with no embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/zig/API-CONTRACT.md
    field_joint_names: [][]const u8=&.{},
    /// @brief control_msgs/FollowJointTrajectoryFeedback.desired: trajectory_msgs/JointTrajectoryPoint.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/zig/API-CONTRACT.md
    field_desired: Ros1Trajectory_msgsJointTrajectoryPoint=.{},
    /// @brief control_msgs/FollowJointTrajectoryFeedback.actual: trajectory_msgs/JointTrajectoryPoint.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/zig/API-CONTRACT.md
    field_actual: Ros1Trajectory_msgsJointTrajectoryPoint=.{},
    /// @brief control_msgs/FollowJointTrajectoryFeedback.error: trajectory_msgs/JointTrajectoryPoint.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/zig/API-CONTRACT.md
    field_error: Ros1Trajectory_msgsJointTrajectoryPoint=.{},
    /// @brief Append every canonical field of control_msgs/FollowJointTrajectoryFeedback.
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
    /// @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_header.writeFields(w);
        if(self.field_joint_names.len>6) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_joint_names.len)));
        for(self.field_joint_names) |e| {
        try w.string(e,256,false);
        }
        try self.field_desired.writeFields(w);
        try self.field_actual.writeFields(w);
        try self.field_error.writeFields(w);
    }
    /// @brief Read the ordered canonical fields of control_msgs/FollowJointTrajectoryFeedback.
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
    /// @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_header=try Ros1Std_msgsHeader.readFields(r,allocator);
        const count1=try r.integer(u32); if(count1>6) return error.Invalid;
        value.field_joint_names=try allocator.alloc([]const u8,count1);
        for(value.field_joint_names) |*e| {
        e.*=try r.string(256,false);
        }
        value.field_desired=try Ros1Trajectory_msgsJointTrajectoryPoint.readFields(r,allocator);
        value.field_actual=try Ros1Trajectory_msgsJointTrajectoryPoint.readFields(r,allocator);
        value.field_error=try Ros1Trajectory_msgsJointTrajectoryPoint.readFields(r,allocator);
        return value;
    }
    /// @brief Encode one complete control_msgs/FollowJointTrajectoryFeedback value.
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
    /// @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete control_msgs/FollowJointTrajectoryFeedback value.
    /// @details Require the complete 92..2356-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<92 or bytes.len>2356) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 geometry_msgs/Point value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..24 bytes and
/// is identified by UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Geometry_msgsPoint=struct {
    /// @brief Maximum canonical extent of geometry_msgs/Point in bytes.
    /// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Geometry_msgsPoint; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=24;
    /// @brief Canonical codec identity of geometry_msgs/Point.
    /// @details Exact identity UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Geometry_msgsPoint; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b";
    /// @brief Original ROS type name for geometry_msgs/Point.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Geometry_msgsPoint; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="geometry_msgs/Point";
    /// @brief Selected original native identity for geometry_msgs/Point.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Geometry_msgsPoint; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief geometry_msgs/Point.x: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Geometry_msgsPoint; share/platform/ros/zig/API-CONTRACT.md
    field_x: f64=0,
    /// @brief geometry_msgs/Point.y: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Geometry_msgsPoint; share/platform/ros/zig/API-CONTRACT.md
    field_y: f64=0,
    /// @brief geometry_msgs/Point.z: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Geometry_msgsPoint; share/platform/ros/zig/API-CONTRACT.md
    field_z: f64=0,
    /// @brief Append every canonical field of geometry_msgs/Point.
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
    /// @see Ros1Geometry_msgsPoint; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.float64(self.field_x);
        try w.float64(self.field_y);
        try w.float64(self.field_z);
    }
    /// @brief Read the ordered canonical fields of geometry_msgs/Point.
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
    /// @see Ros1Geometry_msgsPoint; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_x=try r.float64();
        value.field_y=try r.float64();
        value.field_z=try r.float64();
        return value;
    }
    /// @brief Encode one complete geometry_msgs/Point value.
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
    /// @see Ros1Geometry_msgsPoint; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete geometry_msgs/Point value.
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
    /// @see Ros1Geometry_msgsPoint; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<24 or bytes.len>24) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 geometry_msgs/Quaternion value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 32..32 bytes and
/// is identified by UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Geometry_msgsQuaternion=struct {
    /// @brief Maximum canonical extent of geometry_msgs/Quaternion in bytes.
    /// @details The inclusive bound is 32 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=32;
    /// @brief Canonical codec identity of geometry_msgs/Quaternion.
    /// @details Exact identity UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934";
    /// @brief Original ROS type name for geometry_msgs/Quaternion.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="geometry_msgs/Quaternion";
    /// @brief Selected original native identity for geometry_msgs/Quaternion.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief geometry_msgs/Quaternion.x: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/zig/API-CONTRACT.md
    field_x: f64=0,
    /// @brief geometry_msgs/Quaternion.y: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/zig/API-CONTRACT.md
    field_y: f64=0,
    /// @brief geometry_msgs/Quaternion.z: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/zig/API-CONTRACT.md
    field_z: f64=0,
    /// @brief geometry_msgs/Quaternion.w: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/zig/API-CONTRACT.md
    field_w: f64=0,
    /// @brief Append every canonical field of geometry_msgs/Quaternion.
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
    /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.float64(self.field_x);
        try w.float64(self.field_y);
        try w.float64(self.field_z);
        try w.float64(self.field_w);
    }
    /// @brief Read the ordered canonical fields of geometry_msgs/Quaternion.
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
    /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_x=try r.float64();
        value.field_y=try r.float64();
        value.field_z=try r.float64();
        value.field_w=try r.float64();
        return value;
    }
    /// @brief Encode one complete geometry_msgs/Quaternion value.
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
    /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete geometry_msgs/Quaternion value.
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
    /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<32 or bytes.len>32) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 geometry_msgs/Pose value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 56..56 bytes and
/// is identified by UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Geometry_msgsPose=struct {
    /// @brief Maximum canonical extent of geometry_msgs/Pose in bytes.
    /// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Geometry_msgsPose; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=56;
    /// @brief Canonical codec identity of geometry_msgs/Pose.
    /// @details Exact identity UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Geometry_msgsPose; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471";
    /// @brief Original ROS type name for geometry_msgs/Pose.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Geometry_msgsPose; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="geometry_msgs/Pose";
    /// @brief Selected original native identity for geometry_msgs/Pose.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Geometry_msgsPose; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief geometry_msgs/Pose.position: geometry_msgs/Point.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Geometry_msgsPose; share/platform/ros/zig/API-CONTRACT.md
    field_position: Ros1Geometry_msgsPoint=.{},
    /// @brief geometry_msgs/Pose.orientation: geometry_msgs/Quaternion.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Geometry_msgsPose; share/platform/ros/zig/API-CONTRACT.md
    field_orientation: Ros1Geometry_msgsQuaternion=.{},
    /// @brief Append every canonical field of geometry_msgs/Pose.
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
    /// @see Ros1Geometry_msgsPose; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_position.writeFields(w);
        try self.field_orientation.writeFields(w);
    }
    /// @brief Read the ordered canonical fields of geometry_msgs/Pose.
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
    /// @see Ros1Geometry_msgsPose; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_position=try Ros1Geometry_msgsPoint.readFields(r,allocator);
        value.field_orientation=try Ros1Geometry_msgsQuaternion.readFields(r,allocator);
        return value;
    }
    /// @brief Encode one complete geometry_msgs/Pose value.
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
    /// @see Ros1Geometry_msgsPose; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete geometry_msgs/Pose value.
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
    /// @see Ros1Geometry_msgsPose; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<56 or bytes.len>56) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 geometry_msgs/PoseStamped value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 72..200 bytes and
/// is identified by UWVMROS1_bb59c4e82f561266c0f10500bfbbd1a809e9c1122ecbf559a812326af3eb2e95.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Geometry_msgsPoseStamped=struct {
    /// @brief Maximum canonical extent of geometry_msgs/PoseStamped in bytes.
    /// @details The inclusive bound is 200 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Geometry_msgsPoseStamped; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=200;
    /// @brief Canonical codec identity of geometry_msgs/PoseStamped.
    /// @details Exact identity UWVMROS1_bb59c4e82f561266c0f10500bfbbd1a809e9c1122ecbf559a812326af3eb2e95 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Geometry_msgsPoseStamped; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_bb59c4e82f561266c0f10500bfbbd1a809e9c1122ecbf559a812326af3eb2e95";
    /// @brief Original ROS type name for geometry_msgs/PoseStamped.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Geometry_msgsPoseStamped; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="geometry_msgs/PoseStamped";
    /// @brief Selected original native identity for geometry_msgs/PoseStamped.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Geometry_msgsPoseStamped; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief geometry_msgs/PoseStamped.header: std_msgs/Header.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Geometry_msgsPoseStamped; share/platform/ros/zig/API-CONTRACT.md
    field_header: Ros1Std_msgsHeader=.{},
    /// @brief geometry_msgs/PoseStamped.pose: geometry_msgs/Pose.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Geometry_msgsPoseStamped; share/platform/ros/zig/API-CONTRACT.md
    field_pose: Ros1Geometry_msgsPose=.{},
    /// @brief Append every canonical field of geometry_msgs/PoseStamped.
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
    /// @see Ros1Geometry_msgsPoseStamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_header.writeFields(w);
        try self.field_pose.writeFields(w);
    }
    /// @brief Read the ordered canonical fields of geometry_msgs/PoseStamped.
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
    /// @see Ros1Geometry_msgsPoseStamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_header=try Ros1Std_msgsHeader.readFields(r,allocator);
        value.field_pose=try Ros1Geometry_msgsPose.readFields(r,allocator);
        return value;
    }
    /// @brief Encode one complete geometry_msgs/PoseStamped value.
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
    /// @see Ros1Geometry_msgsPoseStamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete geometry_msgs/PoseStamped value.
    /// @details Require the complete 72..200-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros1Geometry_msgsPoseStamped; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<72 or bytes.len>200) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 geometry_msgs/Vector3 value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..24 bytes and
/// is identified by UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Geometry_msgsVector3=struct {
    /// @brief Maximum canonical extent of geometry_msgs/Vector3 in bytes.
    /// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Geometry_msgsVector3; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=24;
    /// @brief Canonical codec identity of geometry_msgs/Vector3.
    /// @details Exact identity UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Geometry_msgsVector3; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc";
    /// @brief Original ROS type name for geometry_msgs/Vector3.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Geometry_msgsVector3; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="geometry_msgs/Vector3";
    /// @brief Selected original native identity for geometry_msgs/Vector3.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Geometry_msgsVector3; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief geometry_msgs/Vector3.x: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Geometry_msgsVector3; share/platform/ros/zig/API-CONTRACT.md
    field_x: f64=0,
    /// @brief geometry_msgs/Vector3.y: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Geometry_msgsVector3; share/platform/ros/zig/API-CONTRACT.md
    field_y: f64=0,
    /// @brief geometry_msgs/Vector3.z: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Geometry_msgsVector3; share/platform/ros/zig/API-CONTRACT.md
    field_z: f64=0,
    /// @brief Append every canonical field of geometry_msgs/Vector3.
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
    /// @see Ros1Geometry_msgsVector3; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.float64(self.field_x);
        try w.float64(self.field_y);
        try w.float64(self.field_z);
    }
    /// @brief Read the ordered canonical fields of geometry_msgs/Vector3.
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
    /// @see Ros1Geometry_msgsVector3; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_x=try r.float64();
        value.field_y=try r.float64();
        value.field_z=try r.float64();
        return value;
    }
    /// @brief Encode one complete geometry_msgs/Vector3 value.
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
    /// @see Ros1Geometry_msgsVector3; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete geometry_msgs/Vector3 value.
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
    /// @see Ros1Geometry_msgsVector3; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<24 or bytes.len>24) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 geometry_msgs/Twist value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 48..48 bytes and
/// is identified by UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Geometry_msgsTwist=struct {
    /// @brief Maximum canonical extent of geometry_msgs/Twist in bytes.
    /// @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Geometry_msgsTwist; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=48;
    /// @brief Canonical codec identity of geometry_msgs/Twist.
    /// @details Exact identity UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Geometry_msgsTwist; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921";
    /// @brief Original ROS type name for geometry_msgs/Twist.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Geometry_msgsTwist; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="geometry_msgs/Twist";
    /// @brief Selected original native identity for geometry_msgs/Twist.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Geometry_msgsTwist; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief geometry_msgs/Twist.linear: geometry_msgs/Vector3.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Geometry_msgsTwist; share/platform/ros/zig/API-CONTRACT.md
    field_linear: Ros1Geometry_msgsVector3=.{},
    /// @brief geometry_msgs/Twist.angular: geometry_msgs/Vector3.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Geometry_msgsTwist; share/platform/ros/zig/API-CONTRACT.md
    field_angular: Ros1Geometry_msgsVector3=.{},
    /// @brief Append every canonical field of geometry_msgs/Twist.
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
    /// @see Ros1Geometry_msgsTwist; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_linear.writeFields(w);
        try self.field_angular.writeFields(w);
    }
    /// @brief Read the ordered canonical fields of geometry_msgs/Twist.
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
    /// @see Ros1Geometry_msgsTwist; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_linear=try Ros1Geometry_msgsVector3.readFields(r,allocator);
        value.field_angular=try Ros1Geometry_msgsVector3.readFields(r,allocator);
        return value;
    }
    /// @brief Encode one complete geometry_msgs/Twist value.
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
    /// @see Ros1Geometry_msgsTwist; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete geometry_msgs/Twist value.
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
    /// @see Ros1Geometry_msgsTwist; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<48 or bytes.len>48) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 geometry_msgs/Wrench value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 48..48 bytes and
/// is identified by UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Geometry_msgsWrench=struct {
    /// @brief Maximum canonical extent of geometry_msgs/Wrench in bytes.
    /// @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Geometry_msgsWrench; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=48;
    /// @brief Canonical codec identity of geometry_msgs/Wrench.
    /// @details Exact identity UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Geometry_msgsWrench; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3";
    /// @brief Original ROS type name for geometry_msgs/Wrench.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Geometry_msgsWrench; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="geometry_msgs/Wrench";
    /// @brief Selected original native identity for geometry_msgs/Wrench.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Geometry_msgsWrench; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief geometry_msgs/Wrench.force: geometry_msgs/Vector3.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Geometry_msgsWrench; share/platform/ros/zig/API-CONTRACT.md
    field_force: Ros1Geometry_msgsVector3=.{},
    /// @brief geometry_msgs/Wrench.torque: geometry_msgs/Vector3.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Geometry_msgsWrench; share/platform/ros/zig/API-CONTRACT.md
    field_torque: Ros1Geometry_msgsVector3=.{},
    /// @brief Append every canonical field of geometry_msgs/Wrench.
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
    /// @see Ros1Geometry_msgsWrench; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_force.writeFields(w);
        try self.field_torque.writeFields(w);
    }
    /// @brief Read the ordered canonical fields of geometry_msgs/Wrench.
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
    /// @see Ros1Geometry_msgsWrench; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_force=try Ros1Geometry_msgsVector3.readFields(r,allocator);
        value.field_torque=try Ros1Geometry_msgsVector3.readFields(r,allocator);
        return value;
    }
    /// @brief Encode one complete geometry_msgs/Wrench value.
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
    /// @see Ros1Geometry_msgsWrench; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete geometry_msgs/Wrench value.
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
    /// @see Ros1Geometry_msgsWrench; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<48 or bytes.len>48) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 sensor_msgs/JointState value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 32..1864 bytes
/// and is identified by UWVMROS1_ee28116009ad317c6a8db950f43d6a712b328b93740460dc70f97a632c3b5e0f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Sensor_msgsJointState=struct {
    /// @brief Maximum canonical extent of sensor_msgs/JointState in bytes.
    /// @details The inclusive bound is 1864 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Sensor_msgsJointState; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=1864;
    /// @brief Canonical codec identity of sensor_msgs/JointState.
    /// @details Exact identity UWVMROS1_ee28116009ad317c6a8db950f43d6a712b328b93740460dc70f97a632c3b5e0f binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Sensor_msgsJointState; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_ee28116009ad317c6a8db950f43d6a712b328b93740460dc70f97a632c3b5e0f";
    /// @brief Original ROS type name for sensor_msgs/JointState.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Sensor_msgsJointState; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="sensor_msgs/JointState";
    /// @brief Selected original native identity for sensor_msgs/JointState.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Sensor_msgsJointState; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief sensor_msgs/JointState.header: std_msgs/Header.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Sensor_msgsJointState; share/platform/ros/zig/API-CONTRACT.md
    field_header: Ros1Std_msgsHeader=.{},
    /// @brief sensor_msgs/JointState.name: string; 0..6 elements; each string is 0..256 bytes; strict UTF-8 with no
    /// embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Sensor_msgsJointState; share/platform/ros/zig/API-CONTRACT.md
    field_name: [][]const u8=&.{},
    /// @brief sensor_msgs/JointState.position: float64; 0..6 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Sensor_msgsJointState; share/platform/ros/zig/API-CONTRACT.md
    field_position: []f64=&.{},
    /// @brief sensor_msgs/JointState.velocity: float64; 0..6 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Sensor_msgsJointState; share/platform/ros/zig/API-CONTRACT.md
    field_velocity: []f64=&.{},
    /// @brief sensor_msgs/JointState.effort: float64; 0..6 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Sensor_msgsJointState; share/platform/ros/zig/API-CONTRACT.md
    field_effort: []f64=&.{},
    /// @brief Append every canonical field of sensor_msgs/JointState.
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
    /// @see Ros1Sensor_msgsJointState; share/platform/ros/zig/API-CONTRACT.md
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
        if(self.field_name.len>6) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_name.len)));
        for(self.field_name) |e| {
        try w.string(e,256,false);
        }
        if(self.field_position.len>6) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_position.len)));
        for(self.field_position) |e| {
        try w.float64(e);
        }
        if(self.field_velocity.len>6) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_velocity.len)));
        for(self.field_velocity) |e| {
        try w.float64(e);
        }
        if(self.field_effort.len>6) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_effort.len)));
        for(self.field_effort) |e| {
        try w.float64(e);
        }
    }
    /// @brief Read the ordered canonical fields of sensor_msgs/JointState.
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
    /// @see Ros1Sensor_msgsJointState; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_header=try Ros1Std_msgsHeader.readFields(r,allocator);
        const count1=try r.integer(u32); if(count1>6) return error.Invalid;
        value.field_name=try allocator.alloc([]const u8,count1);
        for(value.field_name) |*e| {
        e.*=try r.string(256,false);
        }
        const count2=try r.integer(u32); if(count2>6) return error.Invalid;
        value.field_position=try allocator.alloc(f64,count2);
        for(value.field_position) |*e| {
        e.*=try r.float64();
        }
        const count3=try r.integer(u32); if(count3>6) return error.Invalid;
        value.field_velocity=try allocator.alloc(f64,count3);
        for(value.field_velocity) |*e| {
        e.*=try r.float64();
        }
        const count4=try r.integer(u32); if(count4>6) return error.Invalid;
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
    /// @brief Encode one complete sensor_msgs/JointState value.
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
    /// @see Ros1Sensor_msgsJointState; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete sensor_msgs/JointState value.
    /// @details Require the complete 32..1864-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros1Sensor_msgsJointState; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<32 or bytes.len>1864) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_dashboard_msgs/AddToLogRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..260 bytes and
/// is identified by UWVMROS1_faf6c1ab9c749a05ae3f4e6196cc1c3574560daae1463ebe8684bf13ea938ac4.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_dashboard_msgsAddToLogRequest=struct {
    /// @brief Maximum canonical extent of ur_dashboard_msgs/AddToLogRequest in bytes.
    /// @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=260;
    /// @brief Canonical codec identity of ur_dashboard_msgs/AddToLogRequest.
    /// @details Exact identity UWVMROS1_faf6c1ab9c749a05ae3f4e6196cc1c3574560daae1463ebe8684bf13ea938ac4 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_faf6c1ab9c749a05ae3f4e6196cc1c3574560daae1463ebe8684bf13ea938ac4";
    /// @brief Original ROS type name for ur_dashboard_msgs/AddToLogRequest.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_dashboard_msgs/AddToLogRequest";
    /// @brief Selected original native identity for ur_dashboard_msgs/AddToLogRequest.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_dashboard_msgs/AddToLogRequest.message: string; each string is 0..256 bytes; strict UTF-8 with no
    /// embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/zig/API-CONTRACT.md
    field_message: []const u8=&.{},
    /// @brief Append every canonical field of ur_dashboard_msgs/AddToLogRequest.
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
    /// @see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.string(self.field_message,256,false);
    }
    /// @brief Read the ordered canonical fields of ur_dashboard_msgs/AddToLogRequest.
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
    /// @see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_message=try r.string(256,false);
        return value;
    }
    /// @brief Encode one complete ur_dashboard_msgs/AddToLogRequest value.
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
    /// @see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_dashboard_msgs/AddToLogRequest value.
    /// @details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<4 or bytes.len>260) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_dashboard_msgs/AddToLogResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
/// is identified by UWVMROS1_d495f7609d04abde44cb35ec5114618a2875e0a30986d2f7cc62c8ce99354e7c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_dashboard_msgsAddToLogResponse=struct {
    /// @brief Maximum canonical extent of ur_dashboard_msgs/AddToLogResponse in bytes.
    /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=261;
    /// @brief Canonical codec identity of ur_dashboard_msgs/AddToLogResponse.
    /// @details Exact identity UWVMROS1_d495f7609d04abde44cb35ec5114618a2875e0a30986d2f7cc62c8ce99354e7c binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_d495f7609d04abde44cb35ec5114618a2875e0a30986d2f7cc62c8ce99354e7c";
    /// @brief Original ROS type name for ur_dashboard_msgs/AddToLogResponse.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_dashboard_msgs/AddToLogResponse";
    /// @brief Selected original native identity for ur_dashboard_msgs/AddToLogResponse.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_dashboard_msgs/AddToLogResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with no
    /// embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/zig/API-CONTRACT.md
    field_answer: []const u8=&.{},
    /// @brief ur_dashboard_msgs/AddToLogResponse.success: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/zig/API-CONTRACT.md
    field_success: bool=false,
    /// @brief Append every canonical field of ur_dashboard_msgs/AddToLogResponse.
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
    /// @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.string(self.field_answer,256,false);
        try w.boolean(self.field_success);
    }
    /// @brief Read the ordered canonical fields of ur_dashboard_msgs/AddToLogResponse.
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
    /// @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_answer=try r.string(256,false);
        value.field_success=try r.boolean();
        return value;
    }
    /// @brief Encode one complete ur_dashboard_msgs/AddToLogResponse value.
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
    /// @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_dashboard_msgs/AddToLogResponse value.
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
    /// @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<5 or bytes.len>261) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_dashboard_msgs/GetLoadedProgramRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
/// identified by UWVMROS1_54eecd0b652707f9c16dcbacbef05902112db993500404e1adaf26618e1d3a1a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_dashboard_msgsGetLoadedProgramRequest=struct {
    /// @brief Maximum canonical extent of ur_dashboard_msgs/GetLoadedProgramRequest in bytes.
    /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=0;
    /// @brief Canonical codec identity of ur_dashboard_msgs/GetLoadedProgramRequest.
    /// @details Exact identity UWVMROS1_54eecd0b652707f9c16dcbacbef05902112db993500404e1adaf26618e1d3a1a binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_54eecd0b652707f9c16dcbacbef05902112db993500404e1adaf26618e1d3a1a";
    /// @brief Original ROS type name for ur_dashboard_msgs/GetLoadedProgramRequest.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_dashboard_msgs/GetLoadedProgramRequest";
    /// @brief Selected original native identity for ur_dashboard_msgs/GetLoadedProgramRequest.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief Append every canonical field of ur_dashboard_msgs/GetLoadedProgramRequest.
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
    /// @see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        _=self; _=w;
    }
    /// @brief Read the ordered canonical fields of ur_dashboard_msgs/GetLoadedProgramRequest.
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
    /// @see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        const value: @This()=.{};
        _=r; _=allocator;
        return value;
    }
    /// @brief Encode one complete ur_dashboard_msgs/GetLoadedProgramRequest value.
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
    /// @see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_dashboard_msgs/GetLoadedProgramRequest value.
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
    /// @see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<0 or bytes.len>0) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_dashboard_msgs/GetLoadedProgramResponse value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 9..521 bytes and
/// is identified by UWVMROS1_1680747345d40412a4731c48f08c402ac97fb12dd871fb320c2a9d002453f87a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_dashboard_msgsGetLoadedProgramResponse=struct {
    /// @brief Maximum canonical extent of ur_dashboard_msgs/GetLoadedProgramResponse in bytes.
    /// @details The inclusive bound is 521 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=521;
    /// @brief Canonical codec identity of ur_dashboard_msgs/GetLoadedProgramResponse.
    /// @details Exact identity UWVMROS1_1680747345d40412a4731c48f08c402ac97fb12dd871fb320c2a9d002453f87a binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_1680747345d40412a4731c48f08c402ac97fb12dd871fb320c2a9d002453f87a";
    /// @brief Original ROS type name for ur_dashboard_msgs/GetLoadedProgramResponse.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_dashboard_msgs/GetLoadedProgramResponse";
    /// @brief Selected original native identity for ur_dashboard_msgs/GetLoadedProgramResponse.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_dashboard_msgs/GetLoadedProgramResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with
    /// no embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/zig/API-CONTRACT.md
    field_answer: []const u8=&.{},
    /// @brief ur_dashboard_msgs/GetLoadedProgramResponse.program_name: string; each string is 0..256 bytes; strict
    /// UTF-8 with no embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/zig/API-CONTRACT.md
    field_program_name: []const u8=&.{},
    /// @brief ur_dashboard_msgs/GetLoadedProgramResponse.success: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/zig/API-CONTRACT.md
    field_success: bool=false,
    /// @brief Append every canonical field of ur_dashboard_msgs/GetLoadedProgramResponse.
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
    /// @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.string(self.field_answer,256,false);
        try w.string(self.field_program_name,256,false);
        try w.boolean(self.field_success);
    }
    /// @brief Read the ordered canonical fields of ur_dashboard_msgs/GetLoadedProgramResponse.
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
    /// @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_answer=try r.string(256,false);
        value.field_program_name=try r.string(256,false);
        value.field_success=try r.boolean();
        return value;
    }
    /// @brief Encode one complete ur_dashboard_msgs/GetLoadedProgramResponse value.
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
    /// @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_dashboard_msgs/GetLoadedProgramResponse value.
    /// @details Require the complete 9..521-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<9 or bytes.len>521) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_dashboard_msgs/GetProgramStateRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
/// identified by UWVMROS1_cf14c6f86ef1904f80e88117dc2f2d29a003b52e21bc6569795771f04cf072a2.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_dashboard_msgsGetProgramStateRequest=struct {
    /// @brief Maximum canonical extent of ur_dashboard_msgs/GetProgramStateRequest in bytes.
    /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=0;
    /// @brief Canonical codec identity of ur_dashboard_msgs/GetProgramStateRequest.
    /// @details Exact identity UWVMROS1_cf14c6f86ef1904f80e88117dc2f2d29a003b52e21bc6569795771f04cf072a2 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_cf14c6f86ef1904f80e88117dc2f2d29a003b52e21bc6569795771f04cf072a2";
    /// @brief Original ROS type name for ur_dashboard_msgs/GetProgramStateRequest.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_dashboard_msgs/GetProgramStateRequest";
    /// @brief Selected original native identity for ur_dashboard_msgs/GetProgramStateRequest.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief Append every canonical field of ur_dashboard_msgs/GetProgramStateRequest.
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
    /// @see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        _=self; _=w;
    }
    /// @brief Read the ordered canonical fields of ur_dashboard_msgs/GetProgramStateRequest.
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
    /// @see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        const value: @This()=.{};
        _=r; _=allocator;
        return value;
    }
    /// @brief Encode one complete ur_dashboard_msgs/GetProgramStateRequest value.
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
    /// @see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_dashboard_msgs/GetProgramStateRequest value.
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
    /// @see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<0 or bytes.len>0) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_dashboard_msgs/ProgramState value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..260 bytes and
/// is identified by UWVMROS1_97a57db64f20abcb9929b5296c75d66d994f2e9e26449810197c657694d3850e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_dashboard_msgsProgramState=struct {
    /// @brief Maximum canonical extent of ur_dashboard_msgs/ProgramState in bytes.
    /// @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=260;
    /// @brief Canonical codec identity of ur_dashboard_msgs/ProgramState.
    /// @details Exact identity UWVMROS1_97a57db64f20abcb9929b5296c75d66d994f2e9e26449810197c657694d3850e binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_97a57db64f20abcb9929b5296c75d66d994f2e9e26449810197c657694d3850e";
    /// @brief Original ROS type name for ur_dashboard_msgs/ProgramState.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_dashboard_msgs/ProgramState";
    /// @brief Selected original native identity for ur_dashboard_msgs/ProgramState.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_dashboard_msgs/ProgramState.STOPPED: original string constant.
    /// @details Exact admitted value STOPPED. This constant occupies no field bytes and is not an authority or
    /// operation selector.
    /// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/zig/API-CONTRACT.md
    pub const field_STOPPED: []const u8="\x53\x54\x4f\x50\x50\x45\x44";
    /// @brief ur_dashboard_msgs/ProgramState.PLAYING: original string constant.
    /// @details Exact admitted value PLAYING. This constant occupies no field bytes and is not an authority or
    /// operation selector.
    /// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PLAYING: []const u8="\x50\x4c\x41\x59\x49\x4e\x47";
    /// @brief ur_dashboard_msgs/ProgramState.PAUSED: original string constant.
    /// @details Exact admitted value PAUSED. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PAUSED: []const u8="\x50\x41\x55\x53\x45\x44";
    /// @brief ur_dashboard_msgs/ProgramState.state: string; each string is 0..256 bytes; strict UTF-8 with no embedded
    /// NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/zig/API-CONTRACT.md
    field_state: []const u8=&.{},
    /// @brief Append every canonical field of ur_dashboard_msgs/ProgramState.
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
    /// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.string(self.field_state,256,false);
    }
    /// @brief Read the ordered canonical fields of ur_dashboard_msgs/ProgramState.
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
    /// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_state=try r.string(256,false);
        return value;
    }
    /// @brief Encode one complete ur_dashboard_msgs/ProgramState value.
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
    /// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_dashboard_msgs/ProgramState value.
    /// @details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<4 or bytes.len>260) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_dashboard_msgs/GetProgramStateResponse value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 13..781 bytes and
/// is identified by UWVMROS1_366caf89303bfff48d3c0f89aa2a640c3d29af5a0c19d76ceccf26d50c3ab2ed.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_dashboard_msgsGetProgramStateResponse=struct {
    /// @brief Maximum canonical extent of ur_dashboard_msgs/GetProgramStateResponse in bytes.
    /// @details The inclusive bound is 781 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=781;
    /// @brief Canonical codec identity of ur_dashboard_msgs/GetProgramStateResponse.
    /// @details Exact identity UWVMROS1_366caf89303bfff48d3c0f89aa2a640c3d29af5a0c19d76ceccf26d50c3ab2ed binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_366caf89303bfff48d3c0f89aa2a640c3d29af5a0c19d76ceccf26d50c3ab2ed";
    /// @brief Original ROS type name for ur_dashboard_msgs/GetProgramStateResponse.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_dashboard_msgs/GetProgramStateResponse";
    /// @brief Selected original native identity for ur_dashboard_msgs/GetProgramStateResponse.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_dashboard_msgs/GetProgramStateResponse.state: ur_dashboard_msgs/ProgramState.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/zig/API-CONTRACT.md
    field_state: Ros1Ur_dashboard_msgsProgramState=.{},
    /// @brief ur_dashboard_msgs/GetProgramStateResponse.program_name: string; each string is 0..256 bytes; strict UTF-8
    /// with no embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/zig/API-CONTRACT.md
    field_program_name: []const u8=&.{},
    /// @brief ur_dashboard_msgs/GetProgramStateResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with
    /// no embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/zig/API-CONTRACT.md
    field_answer: []const u8=&.{},
    /// @brief ur_dashboard_msgs/GetProgramStateResponse.success: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/zig/API-CONTRACT.md
    field_success: bool=false,
    /// @brief Append every canonical field of ur_dashboard_msgs/GetProgramStateResponse.
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
    /// @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_state.writeFields(w);
        try w.string(self.field_program_name,256,false);
        try w.string(self.field_answer,256,false);
        try w.boolean(self.field_success);
    }
    /// @brief Read the ordered canonical fields of ur_dashboard_msgs/GetProgramStateResponse.
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
    /// @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_state=try Ros1Ur_dashboard_msgsProgramState.readFields(r,allocator);
        value.field_program_name=try r.string(256,false);
        value.field_answer=try r.string(256,false);
        value.field_success=try r.boolean();
        return value;
    }
    /// @brief Encode one complete ur_dashboard_msgs/GetProgramStateResponse value.
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
    /// @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_dashboard_msgs/GetProgramStateResponse value.
    /// @details Require the complete 13..781-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<13 or bytes.len>781) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_dashboard_msgs/GetRobotModeRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
/// identified by UWVMROS1_b9ffe283d7dbcb85879dbf6964d393f5d44661227bb26e1acc34308edb288609.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_dashboard_msgsGetRobotModeRequest=struct {
    /// @brief Maximum canonical extent of ur_dashboard_msgs/GetRobotModeRequest in bytes.
    /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=0;
    /// @brief Canonical codec identity of ur_dashboard_msgs/GetRobotModeRequest.
    /// @details Exact identity UWVMROS1_b9ffe283d7dbcb85879dbf6964d393f5d44661227bb26e1acc34308edb288609 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_b9ffe283d7dbcb85879dbf6964d393f5d44661227bb26e1acc34308edb288609";
    /// @brief Original ROS type name for ur_dashboard_msgs/GetRobotModeRequest.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_dashboard_msgs/GetRobotModeRequest";
    /// @brief Selected original native identity for ur_dashboard_msgs/GetRobotModeRequest.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief Append every canonical field of ur_dashboard_msgs/GetRobotModeRequest.
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
    /// @see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        _=self; _=w;
    }
    /// @brief Read the ordered canonical fields of ur_dashboard_msgs/GetRobotModeRequest.
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
    /// @see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        const value: @This()=.{};
        _=r; _=allocator;
        return value;
    }
    /// @brief Encode one complete ur_dashboard_msgs/GetRobotModeRequest value.
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
    /// @see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_dashboard_msgs/GetRobotModeRequest value.
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
    /// @see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<0 or bytes.len>0) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_dashboard_msgs/RobotMode value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is
/// identified by UWVMROS1_b2772853eff2ec9b849b6de4a90ce98487a8eff49d1371283dce503908702066.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_dashboard_msgsRobotMode=struct {
    /// @brief Maximum canonical extent of ur_dashboard_msgs/RobotMode in bytes.
    /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=1;
    /// @brief Canonical codec identity of ur_dashboard_msgs/RobotMode.
    /// @details Exact identity UWVMROS1_b2772853eff2ec9b849b6de4a90ce98487a8eff49d1371283dce503908702066 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_b2772853eff2ec9b849b6de4a90ce98487a8eff49d1371283dce503908702066";
    /// @brief Original ROS type name for ur_dashboard_msgs/RobotMode.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_dashboard_msgs/RobotMode";
    /// @brief Selected original native identity for ur_dashboard_msgs/RobotMode.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_dashboard_msgs/RobotMode.NO_CONTROLLER: original int8 constant.
    /// @details Exact admitted value -1. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_NO_CONTROLLER: i8=-1;
    /// @brief ur_dashboard_msgs/RobotMode.DISCONNECTED: original int8 constant.
    /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_DISCONNECTED: i8=0;
    /// @brief ur_dashboard_msgs/RobotMode.CONFIRM_SAFETY: original int8 constant.
    /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_CONFIRM_SAFETY: i8=1;
    /// @brief ur_dashboard_msgs/RobotMode.BOOTING: original int8 constant.
    /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_BOOTING: i8=2;
    /// @brief ur_dashboard_msgs/RobotMode.POWER_OFF: original int8 constant.
    /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_POWER_OFF: i8=3;
    /// @brief ur_dashboard_msgs/RobotMode.POWER_ON: original int8 constant.
    /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_POWER_ON: i8=4;
    /// @brief ur_dashboard_msgs/RobotMode.IDLE: original int8 constant.
    /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_IDLE: i8=5;
    /// @brief ur_dashboard_msgs/RobotMode.BACKDRIVE: original int8 constant.
    /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_BACKDRIVE: i8=6;
    /// @brief ur_dashboard_msgs/RobotMode.RUNNING: original int8 constant.
    /// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_RUNNING: i8=7;
    /// @brief ur_dashboard_msgs/RobotMode.UPDATING_FIRMWARE: original int8 constant.
    /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_UPDATING_FIRMWARE: i8=8;
    /// @brief ur_dashboard_msgs/RobotMode.mode: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/zig/API-CONTRACT.md
    field_mode: i8=0,
    /// @brief Append every canonical field of ur_dashboard_msgs/RobotMode.
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
    /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.integer(self.field_mode);
    }
    /// @brief Read the ordered canonical fields of ur_dashboard_msgs/RobotMode.
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
    /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_mode=try r.integer(i8);
        return value;
    }
    /// @brief Encode one complete ur_dashboard_msgs/RobotMode value.
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
    /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_dashboard_msgs/RobotMode value.
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
    /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<1 or bytes.len>1) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_dashboard_msgs/GetRobotModeResponse value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 6..262 bytes and
/// is identified by UWVMROS1_f6c0d0d03a956a34b00fd63540226b6abb8b106e2a35cb912b4886a5c4cecc3f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_dashboard_msgsGetRobotModeResponse=struct {
    /// @brief Maximum canonical extent of ur_dashboard_msgs/GetRobotModeResponse in bytes.
    /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=262;
    /// @brief Canonical codec identity of ur_dashboard_msgs/GetRobotModeResponse.
    /// @details Exact identity UWVMROS1_f6c0d0d03a956a34b00fd63540226b6abb8b106e2a35cb912b4886a5c4cecc3f binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_f6c0d0d03a956a34b00fd63540226b6abb8b106e2a35cb912b4886a5c4cecc3f";
    /// @brief Original ROS type name for ur_dashboard_msgs/GetRobotModeResponse.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_dashboard_msgs/GetRobotModeResponse";
    /// @brief Selected original native identity for ur_dashboard_msgs/GetRobotModeResponse.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_dashboard_msgs/GetRobotModeResponse.robot_mode: ur_dashboard_msgs/RobotMode.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/zig/API-CONTRACT.md
    field_robot_mode: Ros1Ur_dashboard_msgsRobotMode=.{},
    /// @brief ur_dashboard_msgs/GetRobotModeResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with no
    /// embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/zig/API-CONTRACT.md
    field_answer: []const u8=&.{},
    /// @brief ur_dashboard_msgs/GetRobotModeResponse.success: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/zig/API-CONTRACT.md
    field_success: bool=false,
    /// @brief Append every canonical field of ur_dashboard_msgs/GetRobotModeResponse.
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
    /// @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_robot_mode.writeFields(w);
        try w.string(self.field_answer,256,false);
        try w.boolean(self.field_success);
    }
    /// @brief Read the ordered canonical fields of ur_dashboard_msgs/GetRobotModeResponse.
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
    /// @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_robot_mode=try Ros1Ur_dashboard_msgsRobotMode.readFields(r,allocator);
        value.field_answer=try r.string(256,false);
        value.field_success=try r.boolean();
        return value;
    }
    /// @brief Encode one complete ur_dashboard_msgs/GetRobotModeResponse value.
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
    /// @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_dashboard_msgs/GetRobotModeResponse value.
    /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<6 or bytes.len>262) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_dashboard_msgs/GetSafetyModeRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
/// identified by UWVMROS1_f697e2ff2bcd56523563060a46bca2e1b7af487128f05562fcb18bfa73cbca8b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_dashboard_msgsGetSafetyModeRequest=struct {
    /// @brief Maximum canonical extent of ur_dashboard_msgs/GetSafetyModeRequest in bytes.
    /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=0;
    /// @brief Canonical codec identity of ur_dashboard_msgs/GetSafetyModeRequest.
    /// @details Exact identity UWVMROS1_f697e2ff2bcd56523563060a46bca2e1b7af487128f05562fcb18bfa73cbca8b binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_f697e2ff2bcd56523563060a46bca2e1b7af487128f05562fcb18bfa73cbca8b";
    /// @brief Original ROS type name for ur_dashboard_msgs/GetSafetyModeRequest.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_dashboard_msgs/GetSafetyModeRequest";
    /// @brief Selected original native identity for ur_dashboard_msgs/GetSafetyModeRequest.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief Append every canonical field of ur_dashboard_msgs/GetSafetyModeRequest.
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
    /// @see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        _=self; _=w;
    }
    /// @brief Read the ordered canonical fields of ur_dashboard_msgs/GetSafetyModeRequest.
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
    /// @see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        const value: @This()=.{};
        _=r; _=allocator;
        return value;
    }
    /// @brief Encode one complete ur_dashboard_msgs/GetSafetyModeRequest value.
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
    /// @see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_dashboard_msgs/GetSafetyModeRequest value.
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
    /// @see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<0 or bytes.len>0) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_dashboard_msgs/SafetyMode value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is
/// identified by UWVMROS1_5a0c2737166cf2e2bd4c17b46c597f674b8d806b802d4e86ee0d76fc55f29cf7.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_dashboard_msgsSafetyMode=struct {
    /// @brief Maximum canonical extent of ur_dashboard_msgs/SafetyMode in bytes.
    /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=1;
    /// @brief Canonical codec identity of ur_dashboard_msgs/SafetyMode.
    /// @details Exact identity UWVMROS1_5a0c2737166cf2e2bd4c17b46c597f674b8d806b802d4e86ee0d76fc55f29cf7 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_5a0c2737166cf2e2bd4c17b46c597f674b8d806b802d4e86ee0d76fc55f29cf7";
    /// @brief Original ROS type name for ur_dashboard_msgs/SafetyMode.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_dashboard_msgs/SafetyMode";
    /// @brief Selected original native identity for ur_dashboard_msgs/SafetyMode.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_dashboard_msgs/SafetyMode.NORMAL: original uint8 constant.
    /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_NORMAL: u8=1;
    /// @brief ur_dashboard_msgs/SafetyMode.REDUCED: original uint8 constant.
    /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_REDUCED: u8=2;
    /// @brief ur_dashboard_msgs/SafetyMode.PROTECTIVE_STOP: original uint8 constant.
    /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PROTECTIVE_STOP: u8=3;
    /// @brief ur_dashboard_msgs/SafetyMode.RECOVERY: original uint8 constant.
    /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_RECOVERY: u8=4;
    /// @brief ur_dashboard_msgs/SafetyMode.SAFEGUARD_STOP: original uint8 constant.
    /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_SAFEGUARD_STOP: u8=5;
    /// @brief ur_dashboard_msgs/SafetyMode.SYSTEM_EMERGENCY_STOP: original uint8 constant.
    /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_SYSTEM_EMERGENCY_STOP: u8=6;
    /// @brief ur_dashboard_msgs/SafetyMode.ROBOT_EMERGENCY_STOP: original uint8 constant.
    /// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_ROBOT_EMERGENCY_STOP: u8=7;
    /// @brief ur_dashboard_msgs/SafetyMode.VIOLATION: original uint8 constant.
    /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_VIOLATION: u8=8;
    /// @brief ur_dashboard_msgs/SafetyMode.FAULT: original uint8 constant.
    /// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_FAULT: u8=9;
    /// @brief ur_dashboard_msgs/SafetyMode.VALIDATE_JOINT_ID: original uint8 constant.
    /// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_VALIDATE_JOINT_ID: u8=10;
    /// @brief ur_dashboard_msgs/SafetyMode.UNDEFINED_SAFETY_MODE: original uint8 constant.
    /// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_UNDEFINED_SAFETY_MODE: u8=11;
    /// @brief ur_dashboard_msgs/SafetyMode.AUTOMATIC_MODE_SAFEGUARD_STOP: original uint8 constant.
    /// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_AUTOMATIC_MODE_SAFEGUARD_STOP: u8=12;
    /// @brief ur_dashboard_msgs/SafetyMode.SYSTEM_THREE_POSITION_ENABLING_STOP: original uint8 constant.
    /// @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/zig/API-CONTRACT.md
    pub const field_SYSTEM_THREE_POSITION_ENABLING_STOP: u8=13;
    /// @brief ur_dashboard_msgs/SafetyMode.mode: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/zig/API-CONTRACT.md
    field_mode: u8=0,
    /// @brief Append every canonical field of ur_dashboard_msgs/SafetyMode.
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
    /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.integer(self.field_mode);
    }
    /// @brief Read the ordered canonical fields of ur_dashboard_msgs/SafetyMode.
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
    /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_mode=try r.integer(u8);
        return value;
    }
    /// @brief Encode one complete ur_dashboard_msgs/SafetyMode value.
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
    /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_dashboard_msgs/SafetyMode value.
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
    /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<1 or bytes.len>1) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_dashboard_msgs/GetSafetyModeResponse value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 6..262 bytes and
/// is identified by UWVMROS1_70121af922588eaab9a34855e3da0cde837b1449d2a2d6c28addc70916df1a15.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_dashboard_msgsGetSafetyModeResponse=struct {
    /// @brief Maximum canonical extent of ur_dashboard_msgs/GetSafetyModeResponse in bytes.
    /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=262;
    /// @brief Canonical codec identity of ur_dashboard_msgs/GetSafetyModeResponse.
    /// @details Exact identity UWVMROS1_70121af922588eaab9a34855e3da0cde837b1449d2a2d6c28addc70916df1a15 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_70121af922588eaab9a34855e3da0cde837b1449d2a2d6c28addc70916df1a15";
    /// @brief Original ROS type name for ur_dashboard_msgs/GetSafetyModeResponse.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_dashboard_msgs/GetSafetyModeResponse";
    /// @brief Selected original native identity for ur_dashboard_msgs/GetSafetyModeResponse.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_dashboard_msgs/GetSafetyModeResponse.safety_mode: ur_dashboard_msgs/SafetyMode.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/zig/API-CONTRACT.md
    field_safety_mode: Ros1Ur_dashboard_msgsSafetyMode=.{},
    /// @brief ur_dashboard_msgs/GetSafetyModeResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with no
    /// embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/zig/API-CONTRACT.md
    field_answer: []const u8=&.{},
    /// @brief ur_dashboard_msgs/GetSafetyModeResponse.success: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/zig/API-CONTRACT.md
    field_success: bool=false,
    /// @brief Append every canonical field of ur_dashboard_msgs/GetSafetyModeResponse.
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
    /// @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_safety_mode.writeFields(w);
        try w.string(self.field_answer,256,false);
        try w.boolean(self.field_success);
    }
    /// @brief Read the ordered canonical fields of ur_dashboard_msgs/GetSafetyModeResponse.
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
    /// @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_safety_mode=try Ros1Ur_dashboard_msgsSafetyMode.readFields(r,allocator);
        value.field_answer=try r.string(256,false);
        value.field_success=try r.boolean();
        return value;
    }
    /// @brief Encode one complete ur_dashboard_msgs/GetSafetyModeResponse value.
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
    /// @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_dashboard_msgs/GetSafetyModeResponse value.
    /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<6 or bytes.len>262) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_dashboard_msgs/IsInRemoteControlRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
/// identified by UWVMROS1_4b3c39f36f953904eb582d8c5f91161f2864782d4a4ab209a7dab32a117175da.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_dashboard_msgsIsInRemoteControlRequest=struct {
    /// @brief Maximum canonical extent of ur_dashboard_msgs/IsInRemoteControlRequest in bytes.
    /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=0;
    /// @brief Canonical codec identity of ur_dashboard_msgs/IsInRemoteControlRequest.
    /// @details Exact identity UWVMROS1_4b3c39f36f953904eb582d8c5f91161f2864782d4a4ab209a7dab32a117175da binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_4b3c39f36f953904eb582d8c5f91161f2864782d4a4ab209a7dab32a117175da";
    /// @brief Original ROS type name for ur_dashboard_msgs/IsInRemoteControlRequest.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_dashboard_msgs/IsInRemoteControlRequest";
    /// @brief Selected original native identity for ur_dashboard_msgs/IsInRemoteControlRequest.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief Append every canonical field of ur_dashboard_msgs/IsInRemoteControlRequest.
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
    /// @see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        _=self; _=w;
    }
    /// @brief Read the ordered canonical fields of ur_dashboard_msgs/IsInRemoteControlRequest.
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
    /// @see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        const value: @This()=.{};
        _=r; _=allocator;
        return value;
    }
    /// @brief Encode one complete ur_dashboard_msgs/IsInRemoteControlRequest value.
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
    /// @see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_dashboard_msgs/IsInRemoteControlRequest value.
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
    /// @see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<0 or bytes.len>0) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_dashboard_msgs/IsInRemoteControlResponse value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 6..262 bytes and
/// is identified by UWVMROS1_6c4af27571b48a5b8e8f1f857b2c02a333e7b4b360f8f3645a39630594c1663a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_dashboard_msgsIsInRemoteControlResponse=struct {
    /// @brief Maximum canonical extent of ur_dashboard_msgs/IsInRemoteControlResponse in bytes.
    /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=262;
    /// @brief Canonical codec identity of ur_dashboard_msgs/IsInRemoteControlResponse.
    /// @details Exact identity UWVMROS1_6c4af27571b48a5b8e8f1f857b2c02a333e7b4b360f8f3645a39630594c1663a binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_6c4af27571b48a5b8e8f1f857b2c02a333e7b4b360f8f3645a39630594c1663a";
    /// @brief Original ROS type name for ur_dashboard_msgs/IsInRemoteControlResponse.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_dashboard_msgs/IsInRemoteControlResponse";
    /// @brief Selected original native identity for ur_dashboard_msgs/IsInRemoteControlResponse.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_dashboard_msgs/IsInRemoteControlResponse.answer: string; each string is 0..256 bytes; strict UTF-8
    /// with no embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/zig/API-CONTRACT.md
    field_answer: []const u8=&.{},
    /// @brief ur_dashboard_msgs/IsInRemoteControlResponse.in_remote_control: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/zig/API-CONTRACT.md
    field_in_remote_control: bool=false,
    /// @brief ur_dashboard_msgs/IsInRemoteControlResponse.success: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/zig/API-CONTRACT.md
    field_success: bool=false,
    /// @brief Append every canonical field of ur_dashboard_msgs/IsInRemoteControlResponse.
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
    /// @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.string(self.field_answer,256,false);
        try w.boolean(self.field_in_remote_control);
        try w.boolean(self.field_success);
    }
    /// @brief Read the ordered canonical fields of ur_dashboard_msgs/IsInRemoteControlResponse.
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
    /// @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_answer=try r.string(256,false);
        value.field_in_remote_control=try r.boolean();
        value.field_success=try r.boolean();
        return value;
    }
    /// @brief Encode one complete ur_dashboard_msgs/IsInRemoteControlResponse value.
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
    /// @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_dashboard_msgs/IsInRemoteControlResponse value.
    /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<6 or bytes.len>262) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_dashboard_msgs/IsProgramRunningRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
/// identified by UWVMROS1_0be481297028886e15f07ace4178ca0aec595724cd83ab01d0155e7c6aa6666f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_dashboard_msgsIsProgramRunningRequest=struct {
    /// @brief Maximum canonical extent of ur_dashboard_msgs/IsProgramRunningRequest in bytes.
    /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=0;
    /// @brief Canonical codec identity of ur_dashboard_msgs/IsProgramRunningRequest.
    /// @details Exact identity UWVMROS1_0be481297028886e15f07ace4178ca0aec595724cd83ab01d0155e7c6aa6666f binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_0be481297028886e15f07ace4178ca0aec595724cd83ab01d0155e7c6aa6666f";
    /// @brief Original ROS type name for ur_dashboard_msgs/IsProgramRunningRequest.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_dashboard_msgs/IsProgramRunningRequest";
    /// @brief Selected original native identity for ur_dashboard_msgs/IsProgramRunningRequest.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief Append every canonical field of ur_dashboard_msgs/IsProgramRunningRequest.
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
    /// @see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        _=self; _=w;
    }
    /// @brief Read the ordered canonical fields of ur_dashboard_msgs/IsProgramRunningRequest.
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
    /// @see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        const value: @This()=.{};
        _=r; _=allocator;
        return value;
    }
    /// @brief Encode one complete ur_dashboard_msgs/IsProgramRunningRequest value.
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
    /// @see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_dashboard_msgs/IsProgramRunningRequest value.
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
    /// @see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<0 or bytes.len>0) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_dashboard_msgs/IsProgramRunningResponse value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 6..262 bytes and
/// is identified by UWVMROS1_4d9de4f7e7071d142c09e3184d4a6f29d4044d003ad11ba3b72e1129ecf144ac.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_dashboard_msgsIsProgramRunningResponse=struct {
    /// @brief Maximum canonical extent of ur_dashboard_msgs/IsProgramRunningResponse in bytes.
    /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=262;
    /// @brief Canonical codec identity of ur_dashboard_msgs/IsProgramRunningResponse.
    /// @details Exact identity UWVMROS1_4d9de4f7e7071d142c09e3184d4a6f29d4044d003ad11ba3b72e1129ecf144ac binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_4d9de4f7e7071d142c09e3184d4a6f29d4044d003ad11ba3b72e1129ecf144ac";
    /// @brief Original ROS type name for ur_dashboard_msgs/IsProgramRunningResponse.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_dashboard_msgs/IsProgramRunningResponse";
    /// @brief Selected original native identity for ur_dashboard_msgs/IsProgramRunningResponse.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_dashboard_msgs/IsProgramRunningResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with
    /// no embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/zig/API-CONTRACT.md
    field_answer: []const u8=&.{},
    /// @brief ur_dashboard_msgs/IsProgramRunningResponse.program_running: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/zig/API-CONTRACT.md
    field_program_running: bool=false,
    /// @brief ur_dashboard_msgs/IsProgramRunningResponse.success: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/zig/API-CONTRACT.md
    field_success: bool=false,
    /// @brief Append every canonical field of ur_dashboard_msgs/IsProgramRunningResponse.
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
    /// @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.string(self.field_answer,256,false);
        try w.boolean(self.field_program_running);
        try w.boolean(self.field_success);
    }
    /// @brief Read the ordered canonical fields of ur_dashboard_msgs/IsProgramRunningResponse.
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
    /// @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_answer=try r.string(256,false);
        value.field_program_running=try r.boolean();
        value.field_success=try r.boolean();
        return value;
    }
    /// @brief Encode one complete ur_dashboard_msgs/IsProgramRunningResponse value.
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
    /// @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_dashboard_msgs/IsProgramRunningResponse value.
    /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<6 or bytes.len>262) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_dashboard_msgs/IsProgramSavedRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
/// identified by UWVMROS1_45ce1466c35adc812096bfb8b2cd84dfa87940109831c9f797b5786afa14f5a8.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_dashboard_msgsIsProgramSavedRequest=struct {
    /// @brief Maximum canonical extent of ur_dashboard_msgs/IsProgramSavedRequest in bytes.
    /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=0;
    /// @brief Canonical codec identity of ur_dashboard_msgs/IsProgramSavedRequest.
    /// @details Exact identity UWVMROS1_45ce1466c35adc812096bfb8b2cd84dfa87940109831c9f797b5786afa14f5a8 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_45ce1466c35adc812096bfb8b2cd84dfa87940109831c9f797b5786afa14f5a8";
    /// @brief Original ROS type name for ur_dashboard_msgs/IsProgramSavedRequest.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_dashboard_msgs/IsProgramSavedRequest";
    /// @brief Selected original native identity for ur_dashboard_msgs/IsProgramSavedRequest.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief Append every canonical field of ur_dashboard_msgs/IsProgramSavedRequest.
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
    /// @see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        _=self; _=w;
    }
    /// @brief Read the ordered canonical fields of ur_dashboard_msgs/IsProgramSavedRequest.
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
    /// @see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        const value: @This()=.{};
        _=r; _=allocator;
        return value;
    }
    /// @brief Encode one complete ur_dashboard_msgs/IsProgramSavedRequest value.
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
    /// @see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_dashboard_msgs/IsProgramSavedRequest value.
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
    /// @see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<0 or bytes.len>0) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_dashboard_msgs/IsProgramSavedResponse value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 10..522 bytes and
/// is identified by UWVMROS1_eb53e077fe7b216e27fc57f838666a54a84e479e02e508d41df5cff9f0637a52.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_dashboard_msgsIsProgramSavedResponse=struct {
    /// @brief Maximum canonical extent of ur_dashboard_msgs/IsProgramSavedResponse in bytes.
    /// @details The inclusive bound is 522 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=522;
    /// @brief Canonical codec identity of ur_dashboard_msgs/IsProgramSavedResponse.
    /// @details Exact identity UWVMROS1_eb53e077fe7b216e27fc57f838666a54a84e479e02e508d41df5cff9f0637a52 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_eb53e077fe7b216e27fc57f838666a54a84e479e02e508d41df5cff9f0637a52";
    /// @brief Original ROS type name for ur_dashboard_msgs/IsProgramSavedResponse.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_dashboard_msgs/IsProgramSavedResponse";
    /// @brief Selected original native identity for ur_dashboard_msgs/IsProgramSavedResponse.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_dashboard_msgs/IsProgramSavedResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with
    /// no embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/zig/API-CONTRACT.md
    field_answer: []const u8=&.{},
    /// @brief ur_dashboard_msgs/IsProgramSavedResponse.program_name: string; each string is 0..256 bytes; strict UTF-8
    /// with no embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/zig/API-CONTRACT.md
    field_program_name: []const u8=&.{},
    /// @brief ur_dashboard_msgs/IsProgramSavedResponse.program_saved: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/zig/API-CONTRACT.md
    field_program_saved: bool=false,
    /// @brief ur_dashboard_msgs/IsProgramSavedResponse.success: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/zig/API-CONTRACT.md
    field_success: bool=false,
    /// @brief Append every canonical field of ur_dashboard_msgs/IsProgramSavedResponse.
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
    /// @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.string(self.field_answer,256,false);
        try w.string(self.field_program_name,256,false);
        try w.boolean(self.field_program_saved);
        try w.boolean(self.field_success);
    }
    /// @brief Read the ordered canonical fields of ur_dashboard_msgs/IsProgramSavedResponse.
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
    /// @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_answer=try r.string(256,false);
        value.field_program_name=try r.string(256,false);
        value.field_program_saved=try r.boolean();
        value.field_success=try r.boolean();
        return value;
    }
    /// @brief Encode one complete ur_dashboard_msgs/IsProgramSavedResponse value.
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
    /// @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_dashboard_msgs/IsProgramSavedResponse value.
    /// @details Require the complete 10..522-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<10 or bytes.len>522) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_dashboard_msgs/LoadRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..260 bytes and
/// is identified by UWVMROS1_dfbde7b2376c7c9ba3926e4803f16b22f7ade3b2f768a25886a1490656edd2bd.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_dashboard_msgsLoadRequest=struct {
    /// @brief Maximum canonical extent of ur_dashboard_msgs/LoadRequest in bytes.
    /// @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=260;
    /// @brief Canonical codec identity of ur_dashboard_msgs/LoadRequest.
    /// @details Exact identity UWVMROS1_dfbde7b2376c7c9ba3926e4803f16b22f7ade3b2f768a25886a1490656edd2bd binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_dfbde7b2376c7c9ba3926e4803f16b22f7ade3b2f768a25886a1490656edd2bd";
    /// @brief Original ROS type name for ur_dashboard_msgs/LoadRequest.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_dashboard_msgs/LoadRequest";
    /// @brief Selected original native identity for ur_dashboard_msgs/LoadRequest.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_dashboard_msgs/LoadRequest.filename: string; each string is 0..256 bytes; strict UTF-8 with no
    /// embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/zig/API-CONTRACT.md
    field_filename: []const u8=&.{},
    /// @brief Append every canonical field of ur_dashboard_msgs/LoadRequest.
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
    /// @see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.string(self.field_filename,256,false);
    }
    /// @brief Read the ordered canonical fields of ur_dashboard_msgs/LoadRequest.
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
    /// @see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_filename=try r.string(256,false);
        return value;
    }
    /// @brief Encode one complete ur_dashboard_msgs/LoadRequest value.
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
    /// @see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_dashboard_msgs/LoadRequest value.
    /// @details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<4 or bytes.len>260) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_dashboard_msgs/LoadResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
/// is identified by UWVMROS1_0ed3b3f2a0066248734e64c0706e52ebf07113569a98baf249a99adfff59be02.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_dashboard_msgsLoadResponse=struct {
    /// @brief Maximum canonical extent of ur_dashboard_msgs/LoadResponse in bytes.
    /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=261;
    /// @brief Canonical codec identity of ur_dashboard_msgs/LoadResponse.
    /// @details Exact identity UWVMROS1_0ed3b3f2a0066248734e64c0706e52ebf07113569a98baf249a99adfff59be02 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_0ed3b3f2a0066248734e64c0706e52ebf07113569a98baf249a99adfff59be02";
    /// @brief Original ROS type name for ur_dashboard_msgs/LoadResponse.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_dashboard_msgs/LoadResponse";
    /// @brief Selected original native identity for ur_dashboard_msgs/LoadResponse.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_dashboard_msgs/LoadResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with no embedded
    /// NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/zig/API-CONTRACT.md
    field_answer: []const u8=&.{},
    /// @brief ur_dashboard_msgs/LoadResponse.success: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/zig/API-CONTRACT.md
    field_success: bool=false,
    /// @brief Append every canonical field of ur_dashboard_msgs/LoadResponse.
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
    /// @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.string(self.field_answer,256,false);
        try w.boolean(self.field_success);
    }
    /// @brief Read the ordered canonical fields of ur_dashboard_msgs/LoadResponse.
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
    /// @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_answer=try r.string(256,false);
        value.field_success=try r.boolean();
        return value;
    }
    /// @brief Encode one complete ur_dashboard_msgs/LoadResponse value.
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
    /// @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_dashboard_msgs/LoadResponse value.
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
    /// @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<5 or bytes.len>261) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_dashboard_msgs/PopupRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..260 bytes and
/// is identified by UWVMROS1_11556bfb811a28141b6c5e9c11720920a389d735b8c09ed1a8f47d05f293e90d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_dashboard_msgsPopupRequest=struct {
    /// @brief Maximum canonical extent of ur_dashboard_msgs/PopupRequest in bytes.
    /// @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=260;
    /// @brief Canonical codec identity of ur_dashboard_msgs/PopupRequest.
    /// @details Exact identity UWVMROS1_11556bfb811a28141b6c5e9c11720920a389d735b8c09ed1a8f47d05f293e90d binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_11556bfb811a28141b6c5e9c11720920a389d735b8c09ed1a8f47d05f293e90d";
    /// @brief Original ROS type name for ur_dashboard_msgs/PopupRequest.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_dashboard_msgs/PopupRequest";
    /// @brief Selected original native identity for ur_dashboard_msgs/PopupRequest.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_dashboard_msgs/PopupRequest.message: string; each string is 0..256 bytes; strict UTF-8 with no
    /// embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/zig/API-CONTRACT.md
    field_message: []const u8=&.{},
    /// @brief Append every canonical field of ur_dashboard_msgs/PopupRequest.
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
    /// @see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.string(self.field_message,256,false);
    }
    /// @brief Read the ordered canonical fields of ur_dashboard_msgs/PopupRequest.
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
    /// @see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_message=try r.string(256,false);
        return value;
    }
    /// @brief Encode one complete ur_dashboard_msgs/PopupRequest value.
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
    /// @see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_dashboard_msgs/PopupRequest value.
    /// @details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<4 or bytes.len>260) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_dashboard_msgs/PopupResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
/// is identified by UWVMROS1_33ac5b2128d6e7c2e562af7e2b8a8e907c16c07034b377920cba4fbd04ca9e14.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_dashboard_msgsPopupResponse=struct {
    /// @brief Maximum canonical extent of ur_dashboard_msgs/PopupResponse in bytes.
    /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=261;
    /// @brief Canonical codec identity of ur_dashboard_msgs/PopupResponse.
    /// @details Exact identity UWVMROS1_33ac5b2128d6e7c2e562af7e2b8a8e907c16c07034b377920cba4fbd04ca9e14 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_33ac5b2128d6e7c2e562af7e2b8a8e907c16c07034b377920cba4fbd04ca9e14";
    /// @brief Original ROS type name for ur_dashboard_msgs/PopupResponse.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_dashboard_msgs/PopupResponse";
    /// @brief Selected original native identity for ur_dashboard_msgs/PopupResponse.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_dashboard_msgs/PopupResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with no
    /// embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/zig/API-CONTRACT.md
    field_answer: []const u8=&.{},
    /// @brief ur_dashboard_msgs/PopupResponse.success: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/zig/API-CONTRACT.md
    field_success: bool=false,
    /// @brief Append every canonical field of ur_dashboard_msgs/PopupResponse.
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
    /// @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.string(self.field_answer,256,false);
        try w.boolean(self.field_success);
    }
    /// @brief Read the ordered canonical fields of ur_dashboard_msgs/PopupResponse.
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
    /// @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_answer=try r.string(256,false);
        value.field_success=try r.boolean();
        return value;
    }
    /// @brief Encode one complete ur_dashboard_msgs/PopupResponse value.
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
    /// @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_dashboard_msgs/PopupResponse value.
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
    /// @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<5 or bytes.len>261) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_dashboard_msgs/RawRequestRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..260 bytes and
/// is identified by UWVMROS1_ca8e3fdb45888bf4feb3c0f4ed05b7b9499a74493aaa0a8727f9f513922adfb4.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_dashboard_msgsRawRequestRequest=struct {
    /// @brief Maximum canonical extent of ur_dashboard_msgs/RawRequestRequest in bytes.
    /// @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=260;
    /// @brief Canonical codec identity of ur_dashboard_msgs/RawRequestRequest.
    /// @details Exact identity UWVMROS1_ca8e3fdb45888bf4feb3c0f4ed05b7b9499a74493aaa0a8727f9f513922adfb4 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_ca8e3fdb45888bf4feb3c0f4ed05b7b9499a74493aaa0a8727f9f513922adfb4";
    /// @brief Original ROS type name for ur_dashboard_msgs/RawRequestRequest.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_dashboard_msgs/RawRequestRequest";
    /// @brief Selected original native identity for ur_dashboard_msgs/RawRequestRequest.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_dashboard_msgs/RawRequestRequest.query: string; each string is 0..256 bytes; strict UTF-8 with no
    /// embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/zig/API-CONTRACT.md
    field_query: []const u8=&.{},
    /// @brief Append every canonical field of ur_dashboard_msgs/RawRequestRequest.
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
    /// @see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.string(self.field_query,256,false);
    }
    /// @brief Read the ordered canonical fields of ur_dashboard_msgs/RawRequestRequest.
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
    /// @see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_query=try r.string(256,false);
        return value;
    }
    /// @brief Encode one complete ur_dashboard_msgs/RawRequestRequest value.
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
    /// @see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_dashboard_msgs/RawRequestRequest value.
    /// @details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<4 or bytes.len>260) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_dashboard_msgs/RawRequestResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..260 bytes and
/// is identified by UWVMROS1_76dbb0c8d0143bd4d39bbf66c6866b0771013fe67fbad76887c6490c91f39e80.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_dashboard_msgsRawRequestResponse=struct {
    /// @brief Maximum canonical extent of ur_dashboard_msgs/RawRequestResponse in bytes.
    /// @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=260;
    /// @brief Canonical codec identity of ur_dashboard_msgs/RawRequestResponse.
    /// @details Exact identity UWVMROS1_76dbb0c8d0143bd4d39bbf66c6866b0771013fe67fbad76887c6490c91f39e80 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_76dbb0c8d0143bd4d39bbf66c6866b0771013fe67fbad76887c6490c91f39e80";
    /// @brief Original ROS type name for ur_dashboard_msgs/RawRequestResponse.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_dashboard_msgs/RawRequestResponse";
    /// @brief Selected original native identity for ur_dashboard_msgs/RawRequestResponse.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_dashboard_msgs/RawRequestResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with no
    /// embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/zig/API-CONTRACT.md
    field_answer: []const u8=&.{},
    /// @brief Append every canonical field of ur_dashboard_msgs/RawRequestResponse.
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
    /// @see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.string(self.field_answer,256,false);
    }
    /// @brief Read the ordered canonical fields of ur_dashboard_msgs/RawRequestResponse.
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
    /// @see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_answer=try r.string(256,false);
        return value;
    }
    /// @brief Encode one complete ur_dashboard_msgs/RawRequestResponse value.
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
    /// @see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_dashboard_msgs/RawRequestResponse value.
    /// @details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<4 or bytes.len>260) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_dashboard_msgs/SetModeGoal value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 3..3 bytes and is
/// identified by UWVMROS1_27ba58b57af47e8efff15a70fb0562d5904d019c17e39a499bf003730434a528.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_dashboard_msgsSetModeGoal=struct {
    /// @brief Maximum canonical extent of ur_dashboard_msgs/SetModeGoal in bytes.
    /// @details The inclusive bound is 3 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=3;
    /// @brief Canonical codec identity of ur_dashboard_msgs/SetModeGoal.
    /// @details Exact identity UWVMROS1_27ba58b57af47e8efff15a70fb0562d5904d019c17e39a499bf003730434a528 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_27ba58b57af47e8efff15a70fb0562d5904d019c17e39a499bf003730434a528";
    /// @brief Original ROS type name for ur_dashboard_msgs/SetModeGoal.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_dashboard_msgs/SetModeGoal";
    /// @brief Selected original native identity for ur_dashboard_msgs/SetModeGoal.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_dashboard_msgs/SetModeGoal.target_robot_mode: ur_dashboard_msgs/RobotMode.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/zig/API-CONTRACT.md
    field_target_robot_mode: Ros1Ur_dashboard_msgsRobotMode=.{},
    /// @brief ur_dashboard_msgs/SetModeGoal.stop_program: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/zig/API-CONTRACT.md
    field_stop_program: bool=false,
    /// @brief ur_dashboard_msgs/SetModeGoal.play_program: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/zig/API-CONTRACT.md
    field_play_program: bool=false,
    /// @brief Append every canonical field of ur_dashboard_msgs/SetModeGoal.
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
    /// @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_target_robot_mode.writeFields(w);
        try w.boolean(self.field_stop_program);
        try w.boolean(self.field_play_program);
    }
    /// @brief Read the ordered canonical fields of ur_dashboard_msgs/SetModeGoal.
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
    /// @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_target_robot_mode=try Ros1Ur_dashboard_msgsRobotMode.readFields(r,allocator);
        value.field_stop_program=try r.boolean();
        value.field_play_program=try r.boolean();
        return value;
    }
    /// @brief Encode one complete ur_dashboard_msgs/SetModeGoal value.
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
    /// @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_dashboard_msgs/SetModeGoal value.
    /// @details Require the complete 3..3-byte canonical representation. Reject truncation, invalid fields and trailing
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
    /// @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<3 or bytes.len>3) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_dashboard_msgs/SetModeResult value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
/// is identified by UWVMROS1_e558d01061183cabca7022bd66aeb1958e14dfc62226a701c86020e73ffa1114.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_dashboard_msgsSetModeResult=struct {
    /// @brief Maximum canonical extent of ur_dashboard_msgs/SetModeResult in bytes.
    /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=261;
    /// @brief Canonical codec identity of ur_dashboard_msgs/SetModeResult.
    /// @details Exact identity UWVMROS1_e558d01061183cabca7022bd66aeb1958e14dfc62226a701c86020e73ffa1114 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_e558d01061183cabca7022bd66aeb1958e14dfc62226a701c86020e73ffa1114";
    /// @brief Original ROS type name for ur_dashboard_msgs/SetModeResult.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_dashboard_msgs/SetModeResult";
    /// @brief Selected original native identity for ur_dashboard_msgs/SetModeResult.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_dashboard_msgs/SetModeResult.success: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/zig/API-CONTRACT.md
    field_success: bool=false,
    /// @brief ur_dashboard_msgs/SetModeResult.message: string; each string is 0..256 bytes; strict UTF-8 with no
    /// embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/zig/API-CONTRACT.md
    field_message: []const u8=&.{},
    /// @brief Append every canonical field of ur_dashboard_msgs/SetModeResult.
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
    /// @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.boolean(self.field_success);
        try w.string(self.field_message,256,false);
    }
    /// @brief Read the ordered canonical fields of ur_dashboard_msgs/SetModeResult.
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
    /// @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_success=try r.boolean();
        value.field_message=try r.string(256,false);
        return value;
    }
    /// @brief Encode one complete ur_dashboard_msgs/SetModeResult value.
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
    /// @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_dashboard_msgs/SetModeResult value.
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
    /// @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<5 or bytes.len>261) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_dashboard_msgs/SetModeFeedback value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 2..2 bytes and is
/// identified by UWVMROS1_d29b507dcc5d72ee086c8a5a9a7a762d677ed408ec02dbe661abc17e2de5c7e2.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_dashboard_msgsSetModeFeedback=struct {
    /// @brief Maximum canonical extent of ur_dashboard_msgs/SetModeFeedback in bytes.
    /// @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=2;
    /// @brief Canonical codec identity of ur_dashboard_msgs/SetModeFeedback.
    /// @details Exact identity UWVMROS1_d29b507dcc5d72ee086c8a5a9a7a762d677ed408ec02dbe661abc17e2de5c7e2 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_d29b507dcc5d72ee086c8a5a9a7a762d677ed408ec02dbe661abc17e2de5c7e2";
    /// @brief Original ROS type name for ur_dashboard_msgs/SetModeFeedback.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_dashboard_msgs/SetModeFeedback";
    /// @brief Selected original native identity for ur_dashboard_msgs/SetModeFeedback.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_dashboard_msgs/SetModeFeedback.current_robot_mode: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/zig/API-CONTRACT.md
    field_current_robot_mode: i8=0,
    /// @brief ur_dashboard_msgs/SetModeFeedback.current_safety_mode: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/zig/API-CONTRACT.md
    field_current_safety_mode: i8=0,
    /// @brief Append every canonical field of ur_dashboard_msgs/SetModeFeedback.
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
    /// @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.integer(self.field_current_robot_mode);
        try w.integer(self.field_current_safety_mode);
    }
    /// @brief Read the ordered canonical fields of ur_dashboard_msgs/SetModeFeedback.
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
    /// @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_current_robot_mode=try r.integer(i8);
        value.field_current_safety_mode=try r.integer(i8);
        return value;
    }
    /// @brief Encode one complete ur_dashboard_msgs/SetModeFeedback value.
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
    /// @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_dashboard_msgs/SetModeFeedback value.
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
    /// @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<2 or bytes.len>2) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_msgs/Analog value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 6..6 bytes and is
/// identified by UWVMROS1_638dc3b30def8193a501b4c1c778792a60c8c683a96880e9fa6db6c01774f6a7.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_msgsAnalog=struct {
    /// @brief Maximum canonical extent of ur_msgs/Analog in bytes.
    /// @details The inclusive bound is 6 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_msgsAnalog; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=6;
    /// @brief Canonical codec identity of ur_msgs/Analog.
    /// @details Exact identity UWVMROS1_638dc3b30def8193a501b4c1c778792a60c8c683a96880e9fa6db6c01774f6a7 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_msgsAnalog; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_638dc3b30def8193a501b4c1c778792a60c8c683a96880e9fa6db6c01774f6a7";
    /// @brief Original ROS type name for ur_msgs/Analog.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_msgsAnalog; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_msgs/Analog";
    /// @brief Selected original native identity for ur_msgs/Analog.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_msgsAnalog; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_msgs/Analog.CURRENT: original uint8 constant.
    /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsAnalog; share/platform/ros/zig/API-CONTRACT.md
    pub const field_CURRENT: u8=0;
    /// @brief ur_msgs/Analog.VOLTAGE: original uint8 constant.
    /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsAnalog; share/platform/ros/zig/API-CONTRACT.md
    pub const field_VOLTAGE: u8=1;
    /// @brief ur_msgs/Analog.pin: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsAnalog; share/platform/ros/zig/API-CONTRACT.md
    field_pin: u8=0,
    /// @brief ur_msgs/Analog.domain: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsAnalog; share/platform/ros/zig/API-CONTRACT.md
    field_domain: u8=0,
    /// @brief ur_msgs/Analog.state: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsAnalog; share/platform/ros/zig/API-CONTRACT.md
    field_state: f32=0,
    /// @brief Append every canonical field of ur_msgs/Analog.
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
    /// @see Ros1Ur_msgsAnalog; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.integer(self.field_pin);
        try w.integer(self.field_domain);
        try w.float32(self.field_state);
    }
    /// @brief Read the ordered canonical fields of ur_msgs/Analog.
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
    /// @see Ros1Ur_msgsAnalog; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_pin=try r.integer(u8);
        value.field_domain=try r.integer(u8);
        value.field_state=try r.float32();
        return value;
    }
    /// @brief Encode one complete ur_msgs/Analog value.
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
    /// @see Ros1Ur_msgsAnalog; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_msgs/Analog value.
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
    /// @see Ros1Ur_msgsAnalog; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<6 or bytes.len>6) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_msgs/Digital value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 2..2 bytes and is
/// identified by UWVMROS1_c5840cfc5e26fe2f18817e46a0322a92e02ca21983920c71ebeb585769f5622c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_msgsDigital=struct {
    /// @brief Maximum canonical extent of ur_msgs/Digital in bytes.
    /// @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_msgsDigital; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=2;
    /// @brief Canonical codec identity of ur_msgs/Digital.
    /// @details Exact identity UWVMROS1_c5840cfc5e26fe2f18817e46a0322a92e02ca21983920c71ebeb585769f5622c binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_msgsDigital; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_c5840cfc5e26fe2f18817e46a0322a92e02ca21983920c71ebeb585769f5622c";
    /// @brief Original ROS type name for ur_msgs/Digital.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_msgsDigital; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_msgs/Digital";
    /// @brief Selected original native identity for ur_msgs/Digital.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_msgsDigital; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_msgs/Digital.pin: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsDigital; share/platform/ros/zig/API-CONTRACT.md
    field_pin: u8=0,
    /// @brief ur_msgs/Digital.state: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsDigital; share/platform/ros/zig/API-CONTRACT.md
    field_state: bool=false,
    /// @brief Append every canonical field of ur_msgs/Digital.
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
    /// @see Ros1Ur_msgsDigital; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.integer(self.field_pin);
        try w.boolean(self.field_state);
    }
    /// @brief Read the ordered canonical fields of ur_msgs/Digital.
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
    /// @see Ros1Ur_msgsDigital; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_pin=try r.integer(u8);
        value.field_state=try r.boolean();
        return value;
    }
    /// @brief Encode one complete ur_msgs/Digital value.
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
    /// @see Ros1Ur_msgsDigital; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_msgs/Digital value.
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
    /// @see Ros1Ur_msgsDigital; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<2 or bytes.len>2) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_msgs/GetRobotSoftwareVersionRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
/// identified by UWVMROS1_bbcdd98ee8d951a8a4fa873ad1c755f16c5cce14ceb7a614343dd44ccf84b9c8.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_msgsGetRobotSoftwareVersionRequest=struct {
    /// @brief Maximum canonical extent of ur_msgs/GetRobotSoftwareVersionRequest in bytes.
    /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=0;
    /// @brief Canonical codec identity of ur_msgs/GetRobotSoftwareVersionRequest.
    /// @details Exact identity UWVMROS1_bbcdd98ee8d951a8a4fa873ad1c755f16c5cce14ceb7a614343dd44ccf84b9c8 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_bbcdd98ee8d951a8a4fa873ad1c755f16c5cce14ceb7a614343dd44ccf84b9c8";
    /// @brief Original ROS type name for ur_msgs/GetRobotSoftwareVersionRequest.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_msgs/GetRobotSoftwareVersionRequest";
    /// @brief Selected original native identity for ur_msgs/GetRobotSoftwareVersionRequest.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief Append every canonical field of ur_msgs/GetRobotSoftwareVersionRequest.
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
    /// @see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        _=self; _=w;
    }
    /// @brief Read the ordered canonical fields of ur_msgs/GetRobotSoftwareVersionRequest.
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
    /// @see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        const value: @This()=.{};
        _=r; _=allocator;
        return value;
    }
    /// @brief Encode one complete ur_msgs/GetRobotSoftwareVersionRequest value.
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
    /// @see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_msgs/GetRobotSoftwareVersionRequest value.
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
    /// @see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<0 or bytes.len>0) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_msgs/GetRobotSoftwareVersionResponse value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 16..16 bytes and
/// is identified by UWVMROS1_36ab51ce55e3630f8ca71f364f4c5cc1f4b010f678777e4fd7b03dd480f92e64.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_msgsGetRobotSoftwareVersionResponse=struct {
    /// @brief Maximum canonical extent of ur_msgs/GetRobotSoftwareVersionResponse in bytes.
    /// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=16;
    /// @brief Canonical codec identity of ur_msgs/GetRobotSoftwareVersionResponse.
    /// @details Exact identity UWVMROS1_36ab51ce55e3630f8ca71f364f4c5cc1f4b010f678777e4fd7b03dd480f92e64 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_36ab51ce55e3630f8ca71f364f4c5cc1f4b010f678777e4fd7b03dd480f92e64";
    /// @brief Original ROS type name for ur_msgs/GetRobotSoftwareVersionResponse.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_msgs/GetRobotSoftwareVersionResponse";
    /// @brief Selected original native identity for ur_msgs/GetRobotSoftwareVersionResponse.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_msgs/GetRobotSoftwareVersionResponse.major: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/zig/API-CONTRACT.md
    field_major: u32=0,
    /// @brief ur_msgs/GetRobotSoftwareVersionResponse.minor: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/zig/API-CONTRACT.md
    field_minor: u32=0,
    /// @brief ur_msgs/GetRobotSoftwareVersionResponse.bugfix: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/zig/API-CONTRACT.md
    field_bugfix: u32=0,
    /// @brief ur_msgs/GetRobotSoftwareVersionResponse.build: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/zig/API-CONTRACT.md
    field_build: u32=0,
    /// @brief Append every canonical field of ur_msgs/GetRobotSoftwareVersionResponse.
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
    /// @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.integer(self.field_major);
        try w.integer(self.field_minor);
        try w.integer(self.field_bugfix);
        try w.integer(self.field_build);
    }
    /// @brief Read the ordered canonical fields of ur_msgs/GetRobotSoftwareVersionResponse.
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
    /// @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_major=try r.integer(u32);
        value.field_minor=try r.integer(u32);
        value.field_bugfix=try r.integer(u32);
        value.field_build=try r.integer(u32);
        return value;
    }
    /// @brief Encode one complete ur_msgs/GetRobotSoftwareVersionResponse value.
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
    /// @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_msgs/GetRobotSoftwareVersionResponse value.
    /// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<16 or bytes.len>16) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_msgs/IOStates value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 20..404 bytes and
/// is identified by UWVMROS1_4b10f6efdd2f129267c407bc1f8caed03776fef6d49f0a1b9dfbf2451ad8f033.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_msgsIOStates=struct {
    /// @brief Maximum canonical extent of ur_msgs/IOStates in bytes.
    /// @details The inclusive bound is 404 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_msgsIOStates; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=404;
    /// @brief Canonical codec identity of ur_msgs/IOStates.
    /// @details Exact identity UWVMROS1_4b10f6efdd2f129267c407bc1f8caed03776fef6d49f0a1b9dfbf2451ad8f033 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_msgsIOStates; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_4b10f6efdd2f129267c407bc1f8caed03776fef6d49f0a1b9dfbf2451ad8f033";
    /// @brief Original ROS type name for ur_msgs/IOStates.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_msgsIOStates; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_msgs/IOStates";
    /// @brief Selected original native identity for ur_msgs/IOStates.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_msgsIOStates; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_msgs/IOStates.digital_in_states: ur_msgs/Digital; 0..32 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsIOStates; share/platform/ros/zig/API-CONTRACT.md
    field_digital_in_states: []Ros1Ur_msgsDigital=&.{},
    /// @brief ur_msgs/IOStates.digital_out_states: ur_msgs/Digital; 0..32 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsIOStates; share/platform/ros/zig/API-CONTRACT.md
    field_digital_out_states: []Ros1Ur_msgsDigital=&.{},
    /// @brief ur_msgs/IOStates.flag_states: ur_msgs/Digital; 0..32 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsIOStates; share/platform/ros/zig/API-CONTRACT.md
    field_flag_states: []Ros1Ur_msgsDigital=&.{},
    /// @brief ur_msgs/IOStates.analog_in_states: ur_msgs/Analog; 0..16 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsIOStates; share/platform/ros/zig/API-CONTRACT.md
    field_analog_in_states: []Ros1Ur_msgsAnalog=&.{},
    /// @brief ur_msgs/IOStates.analog_out_states: ur_msgs/Analog; 0..16 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsIOStates; share/platform/ros/zig/API-CONTRACT.md
    field_analog_out_states: []Ros1Ur_msgsAnalog=&.{},
    /// @brief Append every canonical field of ur_msgs/IOStates.
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
    /// @see Ros1Ur_msgsIOStates; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        if(self.field_digital_in_states.len>32) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_digital_in_states.len)));
        for(self.field_digital_in_states) |e| {
        try e.writeFields(w);
        }
        if(self.field_digital_out_states.len>32) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_digital_out_states.len)));
        for(self.field_digital_out_states) |e| {
        try e.writeFields(w);
        }
        if(self.field_flag_states.len>32) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_flag_states.len)));
        for(self.field_flag_states) |e| {
        try e.writeFields(w);
        }
        if(self.field_analog_in_states.len>16) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_analog_in_states.len)));
        for(self.field_analog_in_states) |e| {
        try e.writeFields(w);
        }
        if(self.field_analog_out_states.len>16) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_analog_out_states.len)));
        for(self.field_analog_out_states) |e| {
        try e.writeFields(w);
        }
    }
    /// @brief Read the ordered canonical fields of ur_msgs/IOStates.
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
    /// @see Ros1Ur_msgsIOStates; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        const count0=try r.integer(u32); if(count0>32) return error.Invalid;
        value.field_digital_in_states=try allocator.alloc(Ros1Ur_msgsDigital,count0);
        for(value.field_digital_in_states) |*e| {
        e.*=try Ros1Ur_msgsDigital.readFields(r,allocator);
        }
        const count1=try r.integer(u32); if(count1>32) return error.Invalid;
        value.field_digital_out_states=try allocator.alloc(Ros1Ur_msgsDigital,count1);
        for(value.field_digital_out_states) |*e| {
        e.*=try Ros1Ur_msgsDigital.readFields(r,allocator);
        }
        const count2=try r.integer(u32); if(count2>32) return error.Invalid;
        value.field_flag_states=try allocator.alloc(Ros1Ur_msgsDigital,count2);
        for(value.field_flag_states) |*e| {
        e.*=try Ros1Ur_msgsDigital.readFields(r,allocator);
        }
        const count3=try r.integer(u32); if(count3>16) return error.Invalid;
        value.field_analog_in_states=try allocator.alloc(Ros1Ur_msgsAnalog,count3);
        for(value.field_analog_in_states) |*e| {
        e.*=try Ros1Ur_msgsAnalog.readFields(r,allocator);
        }
        const count4=try r.integer(u32); if(count4>16) return error.Invalid;
        value.field_analog_out_states=try allocator.alloc(Ros1Ur_msgsAnalog,count4);
        for(value.field_analog_out_states) |*e| {
        e.*=try Ros1Ur_msgsAnalog.readFields(r,allocator);
        }
        return value;
    }
    /// @brief Encode one complete ur_msgs/IOStates value.
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
    /// @see Ros1Ur_msgsIOStates; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_msgs/IOStates value.
    /// @details Require the complete 20..404-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros1Ur_msgsIOStates; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<20 or bytes.len>404) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_msgs/MasterboardDataMsg value.
/// @details All 16 declared fields are retained in source order. The canonical representation occupies 62..62 bytes and
/// is identified by UWVMROS1_f80f92b90cb33dd5b118df81447dfcc33c1ab230a91bb915a1be684401da265f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_msgsMasterboardDataMsg=struct {
    /// @brief Maximum canonical extent of ur_msgs/MasterboardDataMsg in bytes.
    /// @details The inclusive bound is 62 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=62;
    /// @brief Canonical codec identity of ur_msgs/MasterboardDataMsg.
    /// @details Exact identity UWVMROS1_f80f92b90cb33dd5b118df81447dfcc33c1ab230a91bb915a1be684401da265f binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_f80f92b90cb33dd5b118df81447dfcc33c1ab230a91bb915a1be684401da265f";
    /// @brief Original ROS type name for ur_msgs/MasterboardDataMsg.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_msgs/MasterboardDataMsg";
    /// @brief Selected original native identity for ur_msgs/MasterboardDataMsg.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_msgs/MasterboardDataMsg.digital_input_bits: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/zig/API-CONTRACT.md
    field_digital_input_bits: u32=0,
    /// @brief ur_msgs/MasterboardDataMsg.digital_output_bits: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/zig/API-CONTRACT.md
    field_digital_output_bits: u32=0,
    /// @brief ur_msgs/MasterboardDataMsg.analog_input_range0: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/zig/API-CONTRACT.md
    field_analog_input_range0: i8=0,
    /// @brief ur_msgs/MasterboardDataMsg.analog_input_range1: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/zig/API-CONTRACT.md
    field_analog_input_range1: i8=0,
    /// @brief ur_msgs/MasterboardDataMsg.analog_input0: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/zig/API-CONTRACT.md
    field_analog_input0: f64=0,
    /// @brief ur_msgs/MasterboardDataMsg.analog_input1: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/zig/API-CONTRACT.md
    field_analog_input1: f64=0,
    /// @brief ur_msgs/MasterboardDataMsg.analog_output_domain0: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/zig/API-CONTRACT.md
    field_analog_output_domain0: i8=0,
    /// @brief ur_msgs/MasterboardDataMsg.analog_output_domain1: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/zig/API-CONTRACT.md
    field_analog_output_domain1: i8=0,
    /// @brief ur_msgs/MasterboardDataMsg.analog_output0: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/zig/API-CONTRACT.md
    field_analog_output0: f64=0,
    /// @brief ur_msgs/MasterboardDataMsg.analog_output1: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/zig/API-CONTRACT.md
    field_analog_output1: f64=0,
    /// @brief ur_msgs/MasterboardDataMsg.masterboard_temperature: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/zig/API-CONTRACT.md
    field_masterboard_temperature: f32=0,
    /// @brief ur_msgs/MasterboardDataMsg.robot_voltage_48V: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/zig/API-CONTRACT.md
    field_robot_voltage_48V: f32=0,
    /// @brief ur_msgs/MasterboardDataMsg.robot_current: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/zig/API-CONTRACT.md
    field_robot_current: f32=0,
    /// @brief ur_msgs/MasterboardDataMsg.master_io_current: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/zig/API-CONTRACT.md
    field_master_io_current: f32=0,
    /// @brief ur_msgs/MasterboardDataMsg.master_safety_state: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/zig/API-CONTRACT.md
    field_master_safety_state: u8=0,
    /// @brief ur_msgs/MasterboardDataMsg.master_onoff_state: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/zig/API-CONTRACT.md
    field_master_onoff_state: u8=0,
    /// @brief Append every canonical field of ur_msgs/MasterboardDataMsg.
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
    /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.integer(self.field_digital_input_bits);
        try w.integer(self.field_digital_output_bits);
        try w.integer(self.field_analog_input_range0);
        try w.integer(self.field_analog_input_range1);
        try w.float64(self.field_analog_input0);
        try w.float64(self.field_analog_input1);
        try w.integer(self.field_analog_output_domain0);
        try w.integer(self.field_analog_output_domain1);
        try w.float64(self.field_analog_output0);
        try w.float64(self.field_analog_output1);
        try w.float32(self.field_masterboard_temperature);
        try w.float32(self.field_robot_voltage_48V);
        try w.float32(self.field_robot_current);
        try w.float32(self.field_master_io_current);
        try w.integer(self.field_master_safety_state);
        try w.integer(self.field_master_onoff_state);
    }
    /// @brief Read the ordered canonical fields of ur_msgs/MasterboardDataMsg.
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
    /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_digital_input_bits=try r.integer(u32);
        value.field_digital_output_bits=try r.integer(u32);
        value.field_analog_input_range0=try r.integer(i8);
        value.field_analog_input_range1=try r.integer(i8);
        value.field_analog_input0=try r.float64();
        value.field_analog_input1=try r.float64();
        value.field_analog_output_domain0=try r.integer(i8);
        value.field_analog_output_domain1=try r.integer(i8);
        value.field_analog_output0=try r.float64();
        value.field_analog_output1=try r.float64();
        value.field_masterboard_temperature=try r.float32();
        value.field_robot_voltage_48V=try r.float32();
        value.field_robot_current=try r.float32();
        value.field_master_io_current=try r.float32();
        value.field_master_safety_state=try r.integer(u8);
        value.field_master_onoff_state=try r.integer(u8);
        return value;
    }
    /// @brief Encode one complete ur_msgs/MasterboardDataMsg value.
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
    /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_msgs/MasterboardDataMsg value.
    /// @details Require the complete 62..62-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<62 or bytes.len>62) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_msgs/RobotModeDataMsg value.
/// @details All 8 declared fields are retained in source order. The canonical representation occupies 15..15 bytes and
/// is identified by UWVMROS1_64c4247d865e0731b13ca13ce2e355df664cabf7f3d646051d9d3ef48b05a231.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_msgsRobotModeDataMsg=struct {
    /// @brief Maximum canonical extent of ur_msgs/RobotModeDataMsg in bytes.
    /// @details The inclusive bound is 15 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=15;
    /// @brief Canonical codec identity of ur_msgs/RobotModeDataMsg.
    /// @details Exact identity UWVMROS1_64c4247d865e0731b13ca13ce2e355df664cabf7f3d646051d9d3ef48b05a231 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_64c4247d865e0731b13ca13ce2e355df664cabf7f3d646051d9d3ef48b05a231";
    /// @brief Original ROS type name for ur_msgs/RobotModeDataMsg.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_msgs/RobotModeDataMsg";
    /// @brief Selected original native identity for ur_msgs/RobotModeDataMsg.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_msgs/RobotModeDataMsg.timestamp: uint64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/zig/API-CONTRACT.md
    field_timestamp: u64=0,
    /// @brief ur_msgs/RobotModeDataMsg.is_robot_connected: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/zig/API-CONTRACT.md
    field_is_robot_connected: bool=false,
    /// @brief ur_msgs/RobotModeDataMsg.is_real_robot_enabled: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/zig/API-CONTRACT.md
    field_is_real_robot_enabled: bool=false,
    /// @brief ur_msgs/RobotModeDataMsg.is_power_on_robot: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/zig/API-CONTRACT.md
    field_is_power_on_robot: bool=false,
    /// @brief ur_msgs/RobotModeDataMsg.is_emergency_stopped: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/zig/API-CONTRACT.md
    field_is_emergency_stopped: bool=false,
    /// @brief ur_msgs/RobotModeDataMsg.is_protective_stopped: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/zig/API-CONTRACT.md
    field_is_protective_stopped: bool=false,
    /// @brief ur_msgs/RobotModeDataMsg.is_program_running: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/zig/API-CONTRACT.md
    field_is_program_running: bool=false,
    /// @brief ur_msgs/RobotModeDataMsg.is_program_paused: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/zig/API-CONTRACT.md
    field_is_program_paused: bool=false,
    /// @brief Append every canonical field of ur_msgs/RobotModeDataMsg.
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
    /// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.integer(self.field_timestamp);
        try w.boolean(self.field_is_robot_connected);
        try w.boolean(self.field_is_real_robot_enabled);
        try w.boolean(self.field_is_power_on_robot);
        try w.boolean(self.field_is_emergency_stopped);
        try w.boolean(self.field_is_protective_stopped);
        try w.boolean(self.field_is_program_running);
        try w.boolean(self.field_is_program_paused);
    }
    /// @brief Read the ordered canonical fields of ur_msgs/RobotModeDataMsg.
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
    /// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_timestamp=try r.integer(u64);
        value.field_is_robot_connected=try r.boolean();
        value.field_is_real_robot_enabled=try r.boolean();
        value.field_is_power_on_robot=try r.boolean();
        value.field_is_emergency_stopped=try r.boolean();
        value.field_is_protective_stopped=try r.boolean();
        value.field_is_program_running=try r.boolean();
        value.field_is_program_paused=try r.boolean();
        return value;
    }
    /// @brief Encode one complete ur_msgs/RobotModeDataMsg value.
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
    /// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_msgs/RobotModeDataMsg value.
    /// @details Require the complete 15..15-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<15 or bytes.len>15) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_msgs/RobotStateRTMsg value.
/// @details All 19 declared fields are retained in source order. The canonical representation occupies 96..768 bytes
/// and is identified by UWVMROS1_e3d93b6141f749b93c229d8eabebbeb2782a16621fea4d7d39096794e7a67ce7.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_msgsRobotStateRTMsg=struct {
    /// @brief Maximum canonical extent of ur_msgs/RobotStateRTMsg in bytes.
    /// @details The inclusive bound is 768 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=768;
    /// @brief Canonical codec identity of ur_msgs/RobotStateRTMsg.
    /// @details Exact identity UWVMROS1_e3d93b6141f749b93c229d8eabebbeb2782a16621fea4d7d39096794e7a67ce7 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_e3d93b6141f749b93c229d8eabebbeb2782a16621fea4d7d39096794e7a67ce7";
    /// @brief Original ROS type name for ur_msgs/RobotStateRTMsg.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_msgs/RobotStateRTMsg";
    /// @brief Selected original native identity for ur_msgs/RobotStateRTMsg.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_msgs/RobotStateRTMsg.time: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/zig/API-CONTRACT.md
    field_time: f64=0,
    /// @brief ur_msgs/RobotStateRTMsg.q_target: float64; 0..6 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/zig/API-CONTRACT.md
    field_q_target: []f64=&.{},
    /// @brief ur_msgs/RobotStateRTMsg.qd_target: float64; 0..6 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/zig/API-CONTRACT.md
    field_qd_target: []f64=&.{},
    /// @brief ur_msgs/RobotStateRTMsg.qdd_target: float64; 0..6 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/zig/API-CONTRACT.md
    field_qdd_target: []f64=&.{},
    /// @brief ur_msgs/RobotStateRTMsg.i_target: float64; 0..6 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/zig/API-CONTRACT.md
    field_i_target: []f64=&.{},
    /// @brief ur_msgs/RobotStateRTMsg.m_target: float64; 0..6 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/zig/API-CONTRACT.md
    field_m_target: []f64=&.{},
    /// @brief ur_msgs/RobotStateRTMsg.q_actual: float64; 0..6 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/zig/API-CONTRACT.md
    field_q_actual: []f64=&.{},
    /// @brief ur_msgs/RobotStateRTMsg.qd_actual: float64; 0..6 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/zig/API-CONTRACT.md
    field_qd_actual: []f64=&.{},
    /// @brief ur_msgs/RobotStateRTMsg.i_actual: float64; 0..6 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/zig/API-CONTRACT.md
    field_i_actual: []f64=&.{},
    /// @brief ur_msgs/RobotStateRTMsg.tool_acc_values: float64; 0..6 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/zig/API-CONTRACT.md
    field_tool_acc_values: []f64=&.{},
    /// @brief ur_msgs/RobotStateRTMsg.tcp_force: float64; 0..6 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/zig/API-CONTRACT.md
    field_tcp_force: []f64=&.{},
    /// @brief ur_msgs/RobotStateRTMsg.tool_vector: float64; 0..6 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/zig/API-CONTRACT.md
    field_tool_vector: []f64=&.{},
    /// @brief ur_msgs/RobotStateRTMsg.tcp_speed: float64; 0..6 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/zig/API-CONTRACT.md
    field_tcp_speed: []f64=&.{},
    /// @brief ur_msgs/RobotStateRTMsg.digital_input_bits: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/zig/API-CONTRACT.md
    field_digital_input_bits: f64=0,
    /// @brief ur_msgs/RobotStateRTMsg.motor_temperatures: float64; 0..6 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/zig/API-CONTRACT.md
    field_motor_temperatures: []f64=&.{},
    /// @brief ur_msgs/RobotStateRTMsg.controller_timer: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/zig/API-CONTRACT.md
    field_controller_timer: f64=0,
    /// @brief ur_msgs/RobotStateRTMsg.test_value: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/zig/API-CONTRACT.md
    field_test_value: f64=0,
    /// @brief ur_msgs/RobotStateRTMsg.robot_mode: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/zig/API-CONTRACT.md
    field_robot_mode: f64=0,
    /// @brief ur_msgs/RobotStateRTMsg.joint_modes: float64; 0..6 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/zig/API-CONTRACT.md
    field_joint_modes: []f64=&.{},
    /// @brief Append every canonical field of ur_msgs/RobotStateRTMsg.
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
    /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.float64(self.field_time);
        if(self.field_q_target.len>6) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_q_target.len)));
        for(self.field_q_target) |e| {
        try w.float64(e);
        }
        if(self.field_qd_target.len>6) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_qd_target.len)));
        for(self.field_qd_target) |e| {
        try w.float64(e);
        }
        if(self.field_qdd_target.len>6) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_qdd_target.len)));
        for(self.field_qdd_target) |e| {
        try w.float64(e);
        }
        if(self.field_i_target.len>6) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_i_target.len)));
        for(self.field_i_target) |e| {
        try w.float64(e);
        }
        if(self.field_m_target.len>6) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_m_target.len)));
        for(self.field_m_target) |e| {
        try w.float64(e);
        }
        if(self.field_q_actual.len>6) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_q_actual.len)));
        for(self.field_q_actual) |e| {
        try w.float64(e);
        }
        if(self.field_qd_actual.len>6) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_qd_actual.len)));
        for(self.field_qd_actual) |e| {
        try w.float64(e);
        }
        if(self.field_i_actual.len>6) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_i_actual.len)));
        for(self.field_i_actual) |e| {
        try w.float64(e);
        }
        if(self.field_tool_acc_values.len>6) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_tool_acc_values.len)));
        for(self.field_tool_acc_values) |e| {
        try w.float64(e);
        }
        if(self.field_tcp_force.len>6) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_tcp_force.len)));
        for(self.field_tcp_force) |e| {
        try w.float64(e);
        }
        if(self.field_tool_vector.len>6) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_tool_vector.len)));
        for(self.field_tool_vector) |e| {
        try w.float64(e);
        }
        if(self.field_tcp_speed.len>6) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_tcp_speed.len)));
        for(self.field_tcp_speed) |e| {
        try w.float64(e);
        }
        try w.float64(self.field_digital_input_bits);
        if(self.field_motor_temperatures.len>6) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_motor_temperatures.len)));
        for(self.field_motor_temperatures) |e| {
        try w.float64(e);
        }
        try w.float64(self.field_controller_timer);
        try w.float64(self.field_test_value);
        try w.float64(self.field_robot_mode);
        if(self.field_joint_modes.len>6) return error.Invalid;
        try w.integer(@as(u32,@intCast(self.field_joint_modes.len)));
        for(self.field_joint_modes) |e| {
        try w.float64(e);
        }
    }
    /// @brief Read the ordered canonical fields of ur_msgs/RobotStateRTMsg.
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
    /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_time=try r.float64();
        const count1=try r.integer(u32); if(count1>6) return error.Invalid;
        value.field_q_target=try allocator.alloc(f64,count1);
        for(value.field_q_target) |*e| {
        e.*=try r.float64();
        }
        const count2=try r.integer(u32); if(count2>6) return error.Invalid;
        value.field_qd_target=try allocator.alloc(f64,count2);
        for(value.field_qd_target) |*e| {
        e.*=try r.float64();
        }
        const count3=try r.integer(u32); if(count3>6) return error.Invalid;
        value.field_qdd_target=try allocator.alloc(f64,count3);
        for(value.field_qdd_target) |*e| {
        e.*=try r.float64();
        }
        const count4=try r.integer(u32); if(count4>6) return error.Invalid;
        value.field_i_target=try allocator.alloc(f64,count4);
        for(value.field_i_target) |*e| {
        e.*=try r.float64();
        }
        const count5=try r.integer(u32); if(count5>6) return error.Invalid;
        value.field_m_target=try allocator.alloc(f64,count5);
        for(value.field_m_target) |*e| {
        e.*=try r.float64();
        }
        const count6=try r.integer(u32); if(count6>6) return error.Invalid;
        value.field_q_actual=try allocator.alloc(f64,count6);
        for(value.field_q_actual) |*e| {
        e.*=try r.float64();
        }
        const count7=try r.integer(u32); if(count7>6) return error.Invalid;
        value.field_qd_actual=try allocator.alloc(f64,count7);
        for(value.field_qd_actual) |*e| {
        e.*=try r.float64();
        }
        const count8=try r.integer(u32); if(count8>6) return error.Invalid;
        value.field_i_actual=try allocator.alloc(f64,count8);
        for(value.field_i_actual) |*e| {
        e.*=try r.float64();
        }
        const count9=try r.integer(u32); if(count9>6) return error.Invalid;
        value.field_tool_acc_values=try allocator.alloc(f64,count9);
        for(value.field_tool_acc_values) |*e| {
        e.*=try r.float64();
        }
        const count10=try r.integer(u32); if(count10>6) return error.Invalid;
        value.field_tcp_force=try allocator.alloc(f64,count10);
        for(value.field_tcp_force) |*e| {
        e.*=try r.float64();
        }
        const count11=try r.integer(u32); if(count11>6) return error.Invalid;
        value.field_tool_vector=try allocator.alloc(f64,count11);
        for(value.field_tool_vector) |*e| {
        e.*=try r.float64();
        }
        const count12=try r.integer(u32); if(count12>6) return error.Invalid;
        value.field_tcp_speed=try allocator.alloc(f64,count12);
        for(value.field_tcp_speed) |*e| {
        e.*=try r.float64();
        }
        value.field_digital_input_bits=try r.float64();
        const count14=try r.integer(u32); if(count14>6) return error.Invalid;
        value.field_motor_temperatures=try allocator.alloc(f64,count14);
        for(value.field_motor_temperatures) |*e| {
        e.*=try r.float64();
        }
        value.field_controller_timer=try r.float64();
        value.field_test_value=try r.float64();
        value.field_robot_mode=try r.float64();
        const count18=try r.integer(u32); if(count18>6) return error.Invalid;
        value.field_joint_modes=try allocator.alloc(f64,count18);
        for(value.field_joint_modes) |*e| {
        e.*=try r.float64();
        }
        return value;
    }
    /// @brief Encode one complete ur_msgs/RobotStateRTMsg value.
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
    /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_msgs/RobotStateRTMsg value.
    /// @details Require the complete 96..768-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<96 or bytes.len>768) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_msgs/SetAnalogOutputRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 6..6 bytes and is
/// identified by UWVMROS1_1830a63c8853ebe8842f0e8e6870fbdee136dfe78726ba581fd1c54f910c4789.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_msgsSetAnalogOutputRequest=struct {
    /// @brief Maximum canonical extent of ur_msgs/SetAnalogOutputRequest in bytes.
    /// @details The inclusive bound is 6 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=6;
    /// @brief Canonical codec identity of ur_msgs/SetAnalogOutputRequest.
    /// @details Exact identity UWVMROS1_1830a63c8853ebe8842f0e8e6870fbdee136dfe78726ba581fd1c54f910c4789 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_1830a63c8853ebe8842f0e8e6870fbdee136dfe78726ba581fd1c54f910c4789";
    /// @brief Original ROS type name for ur_msgs/SetAnalogOutputRequest.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_msgs/SetAnalogOutputRequest";
    /// @brief Selected original native identity for ur_msgs/SetAnalogOutputRequest.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_msgs/SetAnalogOutputRequest.data: ur_msgs/Analog.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/zig/API-CONTRACT.md
    field_data: Ros1Ur_msgsAnalog=.{},
    /// @brief Append every canonical field of ur_msgs/SetAnalogOutputRequest.
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
    /// @see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_data.writeFields(w);
    }
    /// @brief Read the ordered canonical fields of ur_msgs/SetAnalogOutputRequest.
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
    /// @see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_data=try Ros1Ur_msgsAnalog.readFields(r,allocator);
        return value;
    }
    /// @brief Encode one complete ur_msgs/SetAnalogOutputRequest value.
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
    /// @see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_msgs/SetAnalogOutputRequest value.
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
    /// @see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<6 or bytes.len>6) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_msgs/SetAnalogOutputResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is
/// identified by UWVMROS1_bb84c969f904082699f67d385b093b0c6de97bfacc33eab86932f4564a823580.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_msgsSetAnalogOutputResponse=struct {
    /// @brief Maximum canonical extent of ur_msgs/SetAnalogOutputResponse in bytes.
    /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=1;
    /// @brief Canonical codec identity of ur_msgs/SetAnalogOutputResponse.
    /// @details Exact identity UWVMROS1_bb84c969f904082699f67d385b093b0c6de97bfacc33eab86932f4564a823580 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_bb84c969f904082699f67d385b093b0c6de97bfacc33eab86932f4564a823580";
    /// @brief Original ROS type name for ur_msgs/SetAnalogOutputResponse.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_msgs/SetAnalogOutputResponse";
    /// @brief Selected original native identity for ur_msgs/SetAnalogOutputResponse.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_msgs/SetAnalogOutputResponse.success: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/zig/API-CONTRACT.md
    field_success: bool=false,
    /// @brief Append every canonical field of ur_msgs/SetAnalogOutputResponse.
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
    /// @see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.boolean(self.field_success);
    }
    /// @brief Read the ordered canonical fields of ur_msgs/SetAnalogOutputResponse.
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
    /// @see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_success=try r.boolean();
        return value;
    }
    /// @brief Encode one complete ur_msgs/SetAnalogOutputResponse value.
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
    /// @see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_msgs/SetAnalogOutputResponse value.
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
    /// @see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<1 or bytes.len>1) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_msgs/SetForceModeRequest value.
/// @details All 13 declared fields are retained in source order. The canonical representation occupies 207..335 bytes
/// and is identified by UWVMROS1_c148d6eb37258e10f5d16e76e41c334fc57a3d751c0c35c47be4cabf4c015a6b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_msgsSetForceModeRequest=struct {
    /// @brief Maximum canonical extent of ur_msgs/SetForceModeRequest in bytes.
    /// @details The inclusive bound is 335 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=335;
    /// @brief Canonical codec identity of ur_msgs/SetForceModeRequest.
    /// @details Exact identity UWVMROS1_c148d6eb37258e10f5d16e76e41c334fc57a3d751c0c35c47be4cabf4c015a6b binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_c148d6eb37258e10f5d16e76e41c334fc57a3d751c0c35c47be4cabf4c015a6b";
    /// @brief Original ROS type name for ur_msgs/SetForceModeRequest.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_msgs/SetForceModeRequest";
    /// @brief Selected original native identity for ur_msgs/SetForceModeRequest.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_msgs/SetForceModeRequest.TCP_TO_ORIGIN: original uint8 constant.
    /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TCP_TO_ORIGIN: u8=1;
    /// @brief ur_msgs/SetForceModeRequest.NO_TRANSFORM: original uint8 constant.
    /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const field_NO_TRANSFORM: u8=2;
    /// @brief ur_msgs/SetForceModeRequest.TCP_VELOCITY_TO_X_Y: original uint8 constant.
    /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TCP_VELOCITY_TO_X_Y: u8=3;
    /// @brief ur_msgs/SetForceModeRequest.task_frame: geometry_msgs/PoseStamped.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/zig/API-CONTRACT.md
    field_task_frame: Ros1Geometry_msgsPoseStamped=.{},
    /// @brief ur_msgs/SetForceModeRequest.selection_vector_x: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/zig/API-CONTRACT.md
    field_selection_vector_x: bool=false,
    /// @brief ur_msgs/SetForceModeRequest.selection_vector_y: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/zig/API-CONTRACT.md
    field_selection_vector_y: bool=false,
    /// @brief ur_msgs/SetForceModeRequest.selection_vector_z: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/zig/API-CONTRACT.md
    field_selection_vector_z: bool=false,
    /// @brief ur_msgs/SetForceModeRequest.selection_vector_rx: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/zig/API-CONTRACT.md
    field_selection_vector_rx: bool=false,
    /// @brief ur_msgs/SetForceModeRequest.selection_vector_ry: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/zig/API-CONTRACT.md
    field_selection_vector_ry: bool=false,
    /// @brief ur_msgs/SetForceModeRequest.selection_vector_rz: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/zig/API-CONTRACT.md
    field_selection_vector_rz: bool=false,
    /// @brief ur_msgs/SetForceModeRequest.wrench: geometry_msgs/Wrench.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/zig/API-CONTRACT.md
    field_wrench: Ros1Geometry_msgsWrench=.{},
    /// @brief ur_msgs/SetForceModeRequest.type: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/zig/API-CONTRACT.md
    field_type: u8=0,
    /// @brief ur_msgs/SetForceModeRequest.speed_limits: geometry_msgs/Twist.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/zig/API-CONTRACT.md
    field_speed_limits: Ros1Geometry_msgsTwist=.{},
    /// @brief ur_msgs/SetForceModeRequest.deviation_limits: float32; exactly 6 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/zig/API-CONTRACT.md
    field_deviation_limits: [6]f32=[_]f32{0} ** 6,
    /// @brief ur_msgs/SetForceModeRequest.damping_factor: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/zig/API-CONTRACT.md
    field_damping_factor: f32=0,
    /// @brief ur_msgs/SetForceModeRequest.gain_scaling: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/zig/API-CONTRACT.md
    field_gain_scaling: f32=0,
    /// @brief Append every canonical field of ur_msgs/SetForceModeRequest.
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
    /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try self.field_task_frame.writeFields(w);
        try w.boolean(self.field_selection_vector_x);
        try w.boolean(self.field_selection_vector_y);
        try w.boolean(self.field_selection_vector_z);
        try w.boolean(self.field_selection_vector_rx);
        try w.boolean(self.field_selection_vector_ry);
        try w.boolean(self.field_selection_vector_rz);
        try self.field_wrench.writeFields(w);
        try w.integer(self.field_type);
        try self.field_speed_limits.writeFields(w);
        for(self.field_deviation_limits) |e| {
        try w.float32(e);
        }
        try w.float32(self.field_damping_factor);
        try w.float32(self.field_gain_scaling);
    }
    /// @brief Read the ordered canonical fields of ur_msgs/SetForceModeRequest.
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
    /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_task_frame=try Ros1Geometry_msgsPoseStamped.readFields(r,allocator);
        value.field_selection_vector_x=try r.boolean();
        value.field_selection_vector_y=try r.boolean();
        value.field_selection_vector_z=try r.boolean();
        value.field_selection_vector_rx=try r.boolean();
        value.field_selection_vector_ry=try r.boolean();
        value.field_selection_vector_rz=try r.boolean();
        value.field_wrench=try Ros1Geometry_msgsWrench.readFields(r,allocator);
        value.field_type=try r.integer(u8);
        value.field_speed_limits=try Ros1Geometry_msgsTwist.readFields(r,allocator);
        for(&value.field_deviation_limits) |*e| {
        e.*=try r.float32();
        }
        value.field_damping_factor=try r.float32();
        value.field_gain_scaling=try r.float32();
        return value;
    }
    /// @brief Encode one complete ur_msgs/SetForceModeRequest value.
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
    /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_msgs/SetForceModeRequest value.
    /// @details Require the complete 207..335-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<207 or bytes.len>335) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_msgs/SetForceModeResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is
/// identified by UWVMROS1_bb1eeb0b38d81d642066bed1510245423f62d25983a2de89e985d1fd1932308c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_msgsSetForceModeResponse=struct {
    /// @brief Maximum canonical extent of ur_msgs/SetForceModeResponse in bytes.
    /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=1;
    /// @brief Canonical codec identity of ur_msgs/SetForceModeResponse.
    /// @details Exact identity UWVMROS1_bb1eeb0b38d81d642066bed1510245423f62d25983a2de89e985d1fd1932308c binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_bb1eeb0b38d81d642066bed1510245423f62d25983a2de89e985d1fd1932308c";
    /// @brief Original ROS type name for ur_msgs/SetForceModeResponse.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_msgs/SetForceModeResponse";
    /// @brief Selected original native identity for ur_msgs/SetForceModeResponse.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_msgs/SetForceModeResponse.success: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/zig/API-CONTRACT.md
    field_success: bool=false,
    /// @brief Append every canonical field of ur_msgs/SetForceModeResponse.
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
    /// @see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.boolean(self.field_success);
    }
    /// @brief Read the ordered canonical fields of ur_msgs/SetForceModeResponse.
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
    /// @see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_success=try r.boolean();
        return value;
    }
    /// @brief Encode one complete ur_msgs/SetForceModeResponse value.
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
    /// @see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_msgs/SetForceModeResponse value.
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
    /// @see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<1 or bytes.len>1) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_msgs/SetIORequest value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 6..6 bytes and is
/// identified by UWVMROS1_3dbd2f05686ddaac16b37dc8ec98303acb672d176be34fc906cf32f2d4cd1872.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_msgsSetIORequest=struct {
    /// @brief Maximum canonical extent of ur_msgs/SetIORequest in bytes.
    /// @details The inclusive bound is 6 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=6;
    /// @brief Canonical codec identity of ur_msgs/SetIORequest.
    /// @details Exact identity UWVMROS1_3dbd2f05686ddaac16b37dc8ec98303acb672d176be34fc906cf32f2d4cd1872 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_3dbd2f05686ddaac16b37dc8ec98303acb672d176be34fc906cf32f2d4cd1872";
    /// @brief Original ROS type name for ur_msgs/SetIORequest.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_msgs/SetIORequest";
    /// @brief Selected original native identity for ur_msgs/SetIORequest.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_msgs/SetIORequest.PIN_AOUT0: original int8 constant.
    /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PIN_AOUT0: i8=0;
    /// @brief ur_msgs/SetIORequest.PIN_AOUT1: original int8 constant.
    /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PIN_AOUT1: i8=1;
    /// @brief ur_msgs/SetIORequest.PIN_DOUT0: original int8 constant.
    /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PIN_DOUT0: i8=0;
    /// @brief ur_msgs/SetIORequest.PIN_DOUT1: original int8 constant.
    /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PIN_DOUT1: i8=1;
    /// @brief ur_msgs/SetIORequest.PIN_DOUT2: original int8 constant.
    /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PIN_DOUT2: i8=2;
    /// @brief ur_msgs/SetIORequest.PIN_DOUT3: original int8 constant.
    /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PIN_DOUT3: i8=3;
    /// @brief ur_msgs/SetIORequest.PIN_DOUT4: original int8 constant.
    /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PIN_DOUT4: i8=4;
    /// @brief ur_msgs/SetIORequest.PIN_DOUT5: original int8 constant.
    /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PIN_DOUT5: i8=5;
    /// @brief ur_msgs/SetIORequest.PIN_DOUT6: original int8 constant.
    /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PIN_DOUT6: i8=6;
    /// @brief ur_msgs/SetIORequest.PIN_DOUT7: original int8 constant.
    /// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PIN_DOUT7: i8=7;
    /// @brief ur_msgs/SetIORequest.PIN_CONF_OUT0: original int8 constant.
    /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PIN_CONF_OUT0: i8=8;
    /// @brief ur_msgs/SetIORequest.PIN_CONF_OUT1: original int8 constant.
    /// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PIN_CONF_OUT1: i8=9;
    /// @brief ur_msgs/SetIORequest.PIN_CONF_OUT2: original int8 constant.
    /// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PIN_CONF_OUT2: i8=10;
    /// @brief ur_msgs/SetIORequest.PIN_CONF_OUT3: original int8 constant.
    /// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PIN_CONF_OUT3: i8=11;
    /// @brief ur_msgs/SetIORequest.PIN_CONF_OUT4: original int8 constant.
    /// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PIN_CONF_OUT4: i8=12;
    /// @brief ur_msgs/SetIORequest.PIN_CONF_OUT5: original int8 constant.
    /// @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PIN_CONF_OUT5: i8=13;
    /// @brief ur_msgs/SetIORequest.PIN_CONF_OUT6: original int8 constant.
    /// @details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PIN_CONF_OUT6: i8=14;
    /// @brief ur_msgs/SetIORequest.PIN_CONF_OUT7: original int8 constant.
    /// @details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PIN_CONF_OUT7: i8=15;
    /// @brief ur_msgs/SetIORequest.PIN_TOOL_DOUT0: original int8 constant.
    /// @details Exact admitted value 16. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PIN_TOOL_DOUT0: i8=16;
    /// @brief ur_msgs/SetIORequest.PIN_TOOL_DOUT1: original int8 constant.
    /// @details Exact admitted value 17. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub const field_PIN_TOOL_DOUT1: i8=17;
    /// @brief ur_msgs/SetIORequest.FUN_SET_DIGITAL_OUT: original int8 constant.
    /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub const field_FUN_SET_DIGITAL_OUT: i8=1;
    /// @brief ur_msgs/SetIORequest.FUN_SET_FLAG: original int8 constant.
    /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub const field_FUN_SET_FLAG: i8=2;
    /// @brief ur_msgs/SetIORequest.FUN_SET_ANALOG_OUT: original int8 constant.
    /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub const field_FUN_SET_ANALOG_OUT: i8=3;
    /// @brief ur_msgs/SetIORequest.FUN_SET_TOOL_VOLTAGE: original int8 constant.
    /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub const field_FUN_SET_TOOL_VOLTAGE: i8=4;
    /// @brief ur_msgs/SetIORequest.STATE_OFF: original int8 constant.
    /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub const field_STATE_OFF: i8=0;
    /// @brief ur_msgs/SetIORequest.STATE_ON: original int8 constant.
    /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub const field_STATE_ON: i8=1;
    /// @brief ur_msgs/SetIORequest.STATE_TOOL_VOLTAGE_0V: original int8 constant.
    /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub const field_STATE_TOOL_VOLTAGE_0V: i8=0;
    /// @brief ur_msgs/SetIORequest.STATE_TOOL_VOLTAGE_12V: original int8 constant.
    /// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub const field_STATE_TOOL_VOLTAGE_12V: i8=12;
    /// @brief ur_msgs/SetIORequest.STATE_TOOL_VOLTAGE_24V: original int8 constant.
    /// @details Exact admitted value 24. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub const field_STATE_TOOL_VOLTAGE_24V: i8=24;
    /// @brief ur_msgs/SetIORequest.fun: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    field_fun: i8=0,
    /// @brief ur_msgs/SetIORequest.pin: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    field_pin: i8=0,
    /// @brief ur_msgs/SetIORequest.state: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    field_state: f32=0,
    /// @brief Append every canonical field of ur_msgs/SetIORequest.
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
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.integer(self.field_fun);
        try w.integer(self.field_pin);
        try w.float32(self.field_state);
    }
    /// @brief Read the ordered canonical fields of ur_msgs/SetIORequest.
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
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_fun=try r.integer(i8);
        value.field_pin=try r.integer(i8);
        value.field_state=try r.float32();
        return value;
    }
    /// @brief Encode one complete ur_msgs/SetIORequest value.
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
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_msgs/SetIORequest value.
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
    /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<6 or bytes.len>6) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_msgs/SetIOResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is
/// identified by UWVMROS1_7fc137aa3db3178a450b8b2396b7821c911c79656e52bf48814745c261aecf61.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_msgsSetIOResponse=struct {
    /// @brief Maximum canonical extent of ur_msgs/SetIOResponse in bytes.
    /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_msgsSetIOResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=1;
    /// @brief Canonical codec identity of ur_msgs/SetIOResponse.
    /// @details Exact identity UWVMROS1_7fc137aa3db3178a450b8b2396b7821c911c79656e52bf48814745c261aecf61 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_msgsSetIOResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_7fc137aa3db3178a450b8b2396b7821c911c79656e52bf48814745c261aecf61";
    /// @brief Original ROS type name for ur_msgs/SetIOResponse.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_msgsSetIOResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_msgs/SetIOResponse";
    /// @brief Selected original native identity for ur_msgs/SetIOResponse.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_msgsSetIOResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_msgs/SetIOResponse.success: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsSetIOResponse; share/platform/ros/zig/API-CONTRACT.md
    field_success: bool=false,
    /// @brief Append every canonical field of ur_msgs/SetIOResponse.
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
    /// @see Ros1Ur_msgsSetIOResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.boolean(self.field_success);
    }
    /// @brief Read the ordered canonical fields of ur_msgs/SetIOResponse.
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
    /// @see Ros1Ur_msgsSetIOResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_success=try r.boolean();
        return value;
    }
    /// @brief Encode one complete ur_msgs/SetIOResponse value.
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
    /// @see Ros1Ur_msgsSetIOResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_msgs/SetIOResponse value.
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
    /// @see Ros1Ur_msgsSetIOResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<1 or bytes.len>1) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_msgs/SetPayloadRequest value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 28..28 bytes and
/// is identified by UWVMROS1_63ae68b44ce6aaad37cbda779fb51dee78923df27c582b4aab4104b16a307ee3.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_msgsSetPayloadRequest=struct {
    /// @brief Maximum canonical extent of ur_msgs/SetPayloadRequest in bytes.
    /// @details The inclusive bound is 28 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=28;
    /// @brief Canonical codec identity of ur_msgs/SetPayloadRequest.
    /// @details Exact identity UWVMROS1_63ae68b44ce6aaad37cbda779fb51dee78923df27c582b4aab4104b16a307ee3 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_63ae68b44ce6aaad37cbda779fb51dee78923df27c582b4aab4104b16a307ee3";
    /// @brief Original ROS type name for ur_msgs/SetPayloadRequest.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_msgs/SetPayloadRequest";
    /// @brief Selected original native identity for ur_msgs/SetPayloadRequest.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_msgs/SetPayloadRequest.mass: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/zig/API-CONTRACT.md
    field_mass: f32=0,
    /// @brief ur_msgs/SetPayloadRequest.center_of_gravity: geometry_msgs/Vector3.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/zig/API-CONTRACT.md
    field_center_of_gravity: Ros1Geometry_msgsVector3=.{},
    /// @brief Append every canonical field of ur_msgs/SetPayloadRequest.
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
    /// @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.float32(self.field_mass);
        try self.field_center_of_gravity.writeFields(w);
    }
    /// @brief Read the ordered canonical fields of ur_msgs/SetPayloadRequest.
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
    /// @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        value.field_mass=try r.float32();
        value.field_center_of_gravity=try Ros1Geometry_msgsVector3.readFields(r,allocator);
        return value;
    }
    /// @brief Encode one complete ur_msgs/SetPayloadRequest value.
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
    /// @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_msgs/SetPayloadRequest value.
    /// @details Require the complete 28..28-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<28 or bytes.len>28) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_msgs/SetPayloadResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is
/// identified by UWVMROS1_a3e991f1357f2d3017ccbb7636a6248e8774434d723f5f6c77ff251dd61fce73.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_msgsSetPayloadResponse=struct {
    /// @brief Maximum canonical extent of ur_msgs/SetPayloadResponse in bytes.
    /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=1;
    /// @brief Canonical codec identity of ur_msgs/SetPayloadResponse.
    /// @details Exact identity UWVMROS1_a3e991f1357f2d3017ccbb7636a6248e8774434d723f5f6c77ff251dd61fce73 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_a3e991f1357f2d3017ccbb7636a6248e8774434d723f5f6c77ff251dd61fce73";
    /// @brief Original ROS type name for ur_msgs/SetPayloadResponse.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_msgs/SetPayloadResponse";
    /// @brief Selected original native identity for ur_msgs/SetPayloadResponse.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_msgs/SetPayloadResponse.success: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/zig/API-CONTRACT.md
    field_success: bool=false,
    /// @brief Append every canonical field of ur_msgs/SetPayloadResponse.
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
    /// @see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.boolean(self.field_success);
    }
    /// @brief Read the ordered canonical fields of ur_msgs/SetPayloadResponse.
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
    /// @see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_success=try r.boolean();
        return value;
    }
    /// @brief Encode one complete ur_msgs/SetPayloadResponse value.
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
    /// @see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_msgs/SetPayloadResponse value.
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
    /// @see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<1 or bytes.len>1) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_msgs/SetSpeedSliderFractionRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and is
/// identified by UWVMROS1_f192d6d655b2ed7725bf5afe6977a352870abfd4d07e0c3380a09d280a0a0a32.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_msgsSetSpeedSliderFractionRequest=struct {
    /// @brief Maximum canonical extent of ur_msgs/SetSpeedSliderFractionRequest in bytes.
    /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=8;
    /// @brief Canonical codec identity of ur_msgs/SetSpeedSliderFractionRequest.
    /// @details Exact identity UWVMROS1_f192d6d655b2ed7725bf5afe6977a352870abfd4d07e0c3380a09d280a0a0a32 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_f192d6d655b2ed7725bf5afe6977a352870abfd4d07e0c3380a09d280a0a0a32";
    /// @brief Original ROS type name for ur_msgs/SetSpeedSliderFractionRequest.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_msgs/SetSpeedSliderFractionRequest";
    /// @brief Selected original native identity for ur_msgs/SetSpeedSliderFractionRequest.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_msgs/SetSpeedSliderFractionRequest.speed_slider_fraction: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/zig/API-CONTRACT.md
    field_speed_slider_fraction: f64=0,
    /// @brief Append every canonical field of ur_msgs/SetSpeedSliderFractionRequest.
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
    /// @see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.float64(self.field_speed_slider_fraction);
    }
    /// @brief Read the ordered canonical fields of ur_msgs/SetSpeedSliderFractionRequest.
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
    /// @see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_speed_slider_fraction=try r.float64();
        return value;
    }
    /// @brief Encode one complete ur_msgs/SetSpeedSliderFractionRequest value.
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
    /// @see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_msgs/SetSpeedSliderFractionRequest value.
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
    /// @see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<8 or bytes.len>8) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_msgs/SetSpeedSliderFractionResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is
/// identified by UWVMROS1_cb08c6758ce2eeeac93bc579d7895b19b84e74b7e2d19d87831023df579288b0.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_msgsSetSpeedSliderFractionResponse=struct {
    /// @brief Maximum canonical extent of ur_msgs/SetSpeedSliderFractionResponse in bytes.
    /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=1;
    /// @brief Canonical codec identity of ur_msgs/SetSpeedSliderFractionResponse.
    /// @details Exact identity UWVMROS1_cb08c6758ce2eeeac93bc579d7895b19b84e74b7e2d19d87831023df579288b0 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_cb08c6758ce2eeeac93bc579d7895b19b84e74b7e2d19d87831023df579288b0";
    /// @brief Original ROS type name for ur_msgs/SetSpeedSliderFractionResponse.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_msgs/SetSpeedSliderFractionResponse";
    /// @brief Selected original native identity for ur_msgs/SetSpeedSliderFractionResponse.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_msgs/SetSpeedSliderFractionResponse.success: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/zig/API-CONTRACT.md
    field_success: bool=false,
    /// @brief Append every canonical field of ur_msgs/SetSpeedSliderFractionResponse.
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
    /// @see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.boolean(self.field_success);
    }
    /// @brief Read the ordered canonical fields of ur_msgs/SetSpeedSliderFractionResponse.
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
    /// @see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_success=try r.boolean();
        return value;
    }
    /// @brief Encode one complete ur_msgs/SetSpeedSliderFractionResponse value.
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
    /// @see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_msgs/SetSpeedSliderFractionResponse value.
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
    /// @see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<1 or bytes.len>1) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
/// @brief Complete ROS 1 ur_msgs/ToolDataMsg value.
/// @details All 9 declared fields are retained in source order. The canonical representation occupies 32..32 bytes and
/// is identified by UWVMROS1_1fad1aba069bc474306dc421a62950ffeb3a0837668f08a9adf41ac1bc2bb390.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Ur_msgsToolDataMsg=struct {
    /// @brief Maximum canonical extent of ur_msgs/ToolDataMsg in bytes.
    /// @details The inclusive bound is 32 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/zig/API-CONTRACT.md
    pub const maximum_wire_bytes: usize=32;
    /// @brief Canonical codec identity of ur_msgs/ToolDataMsg.
    /// @details Exact identity UWVMROS1_1fad1aba069bc474306dc421a62950ffeb3a0837668f08a9adf41ac1bc2bb390 binds field
    /// order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/zig/API-CONTRACT.md
    pub const codec_identity="UWVMROS1_1fad1aba069bc474306dc421a62950ffeb3a0837668f08a9adf41ac1bc2bb390";
    /// @brief Original ROS type name for ur_msgs/ToolDataMsg.
    /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
    /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/zig/API-CONTRACT.md
    pub const native_type="ur_msgs/ToolDataMsg";
    /// @brief Selected original native identity for ur_msgs/ToolDataMsg.
    /// @details Absent: this source profile establishes no native identity.
    /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/zig/API-CONTRACT.md
    pub const native_identity: ?[]const u8=null;
    /// @brief ur_msgs/ToolDataMsg.ANALOG_INPUT_RANGE_CURRENT: original int8 constant.
    /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/zig/API-CONTRACT.md
    pub const field_ANALOG_INPUT_RANGE_CURRENT: i8=0;
    /// @brief ur_msgs/ToolDataMsg.ANALOG_INPUT_RANGE_VOLTAGE: original int8 constant.
    /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/zig/API-CONTRACT.md
    pub const field_ANALOG_INPUT_RANGE_VOLTAGE: i8=1;
    /// @brief ur_msgs/ToolDataMsg.TOOL_BOOTLOADER_MODE: original uint8 constant.
    /// @details Exact admitted value 249. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TOOL_BOOTLOADER_MODE: u8=249;
    /// @brief ur_msgs/ToolDataMsg.TOOL_RUNNING_MODE: original uint8 constant.
    /// @details Exact admitted value 253. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TOOL_RUNNING_MODE: u8=253;
    /// @brief ur_msgs/ToolDataMsg.TOOL_IDLE_MODE: original uint8 constant.
    /// @details Exact admitted value 255. This constant occupies no field bytes and is not an authority or operation
    /// selector.
    /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/zig/API-CONTRACT.md
    pub const field_TOOL_IDLE_MODE: u8=255;
    /// @brief ur_msgs/ToolDataMsg.analog_input_range2: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/zig/API-CONTRACT.md
    field_analog_input_range2: i8=0,
    /// @brief ur_msgs/ToolDataMsg.analog_input_range3: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/zig/API-CONTRACT.md
    field_analog_input_range3: i8=0,
    /// @brief ur_msgs/ToolDataMsg.analog_input2: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/zig/API-CONTRACT.md
    field_analog_input2: f64=0,
    /// @brief ur_msgs/ToolDataMsg.analog_input3: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/zig/API-CONTRACT.md
    field_analog_input3: f64=0,
    /// @brief ur_msgs/ToolDataMsg.tool_voltage_48v: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/zig/API-CONTRACT.md
    field_tool_voltage_48v: f32=0,
    /// @brief ur_msgs/ToolDataMsg.tool_output_voltage: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/zig/API-CONTRACT.md
    field_tool_output_voltage: u8=0,
    /// @brief ur_msgs/ToolDataMsg.tool_current: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/zig/API-CONTRACT.md
    field_tool_current: f32=0,
    /// @brief ur_msgs/ToolDataMsg.tool_temperature: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/zig/API-CONTRACT.md
    field_tool_temperature: f32=0,
    /// @brief ur_msgs/ToolDataMsg.tool_mode: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/zig/API-CONTRACT.md
    field_tool_mode: u8=0,
    /// @brief Append every canonical field of ur_msgs/ToolDataMsg.
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
    /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/zig/API-CONTRACT.md
    pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
        try w.integer(self.field_analog_input_range2);
        try w.integer(self.field_analog_input_range3);
        try w.float64(self.field_analog_input2);
        try w.float64(self.field_analog_input3);
        try w.float32(self.field_tool_voltage_48v);
        try w.integer(self.field_tool_output_voltage);
        try w.float32(self.field_tool_current);
        try w.float32(self.field_tool_temperature);
        try w.integer(self.field_tool_mode);
    }
    /// @brief Read the ordered canonical fields of ur_msgs/ToolDataMsg.
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
    /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/zig/API-CONTRACT.md
    pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
        var value: @This()=.{};
        _=allocator;
        value.field_analog_input_range2=try r.integer(i8);
        value.field_analog_input_range3=try r.integer(i8);
        value.field_analog_input2=try r.float64();
        value.field_analog_input3=try r.float64();
        value.field_tool_voltage_48v=try r.float32();
        value.field_tool_output_voltage=try r.integer(u8);
        value.field_tool_current=try r.float32();
        value.field_tool_temperature=try r.float32();
        value.field_tool_mode=try r.integer(u8);
        return value;
    }
    /// @brief Encode one complete ur_msgs/ToolDataMsg value.
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
    /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/zig/API-CONTRACT.md
    pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
        var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
        try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
        var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
        try self.writeFields(&writer); return output[0..writer.position];
    }
    /// Arena allocator owns every decoded sequence. Strings borrow bytes.
    /// On refusal discard the whole arena region, including partial nested values.
    /// @brief Decode exactly one complete ur_msgs/ToolDataMsg value.
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
    /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/zig/API-CONTRACT.md
    pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
        if(bytes.len<32 or bytes.len>32) return error.Invalid;
        var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
        try reader.finish(); return value;
    }
};
