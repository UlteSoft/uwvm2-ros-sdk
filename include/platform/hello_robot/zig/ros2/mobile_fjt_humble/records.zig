//! Generated complete bounded values; all allocation is explicit.
const std=@import("std");
const wire=@import("roswire");
/// @brief Complete ROS 2 builtin_interfaces/msg/Duration value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/hello_robot/en_US/language/zig/API.md
pub const Ros2Builtin_interfacesMsgDuration=struct {
 /// @brief Maximum canonical extent of builtin_interfaces/msg/Duration in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/hello_robot/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=8;
 /// @brief Canonical codec identity of builtin_interfaces/msg/Duration.
 /// @details Exact identity UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/hello_robot/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4";
 /// @brief Original ROS type name for builtin_interfaces/msg/Duration.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_type="builtin_interfaces/msg/Duration";
 /// @brief Selected original native identity for builtin_interfaces/msg/Duration.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief builtin_interfaces/msg/Duration.sec: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/hello_robot/en_US/language/zig/API.md
 field_sec: i32=0,
 /// @brief builtin_interfaces/msg/Duration.nanosec: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/hello_robot/en_US/language/zig/API.md
 field_nanosec: u32=0,
 /// @brief Append every canonical field of builtin_interfaces/msg/Duration.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language
 /// exception/error contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/hello_robot/en_US/language/zig/API.md
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/hello_robot/en_US/language/zig/API.md
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete builtin_interfaces/msg/Duration value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>8) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 builtin_interfaces/msg/Time value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/hello_robot/en_US/language/zig/API.md
pub const Ros2Builtin_interfacesMsgTime=struct {
 /// @brief Maximum canonical extent of builtin_interfaces/msg/Time in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/hello_robot/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=8;
 /// @brief Canonical codec identity of builtin_interfaces/msg/Time.
 /// @details Exact identity UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/hello_robot/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7";
 /// @brief Original ROS type name for builtin_interfaces/msg/Time.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_type="builtin_interfaces/msg/Time";
 /// @brief Selected original native identity for builtin_interfaces/msg/Time.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief builtin_interfaces/msg/Time.sec: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/hello_robot/en_US/language/zig/API.md
 field_sec: i32=0,
 /// @brief builtin_interfaces/msg/Time.nanosec: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/hello_robot/en_US/language/zig/API.md
 field_nanosec: u32=0,
 /// @brief Append every canonical field of builtin_interfaces/msg/Time.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language
 /// exception/error contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/hello_robot/en_US/language/zig/API.md
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/hello_robot/en_US/language/zig/API.md
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete builtin_interfaces/msg/Time value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>8) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 std_msgs/msg/Header value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..140 bytes
/// and is identified by UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/hello_robot/en_US/language/zig/API.md
pub const Ros2Std_msgsMsgHeader=struct {
 /// @brief Maximum canonical extent of std_msgs/msg/Header in bytes.
 /// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Std_msgsMsgHeader; document/platform/hello_robot/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=140;
 /// @brief Canonical codec identity of std_msgs/msg/Header.
 /// @details Exact identity UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Std_msgsMsgHeader; document/platform/hello_robot/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96";
 /// @brief Original ROS type name for std_msgs/msg/Header.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Std_msgsMsgHeader; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_type="std_msgs/msg/Header";
 /// @brief Selected original native identity for std_msgs/msg/Header.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Std_msgsMsgHeader; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief std_msgs/msg/Header.stamp: builtin_interfaces/msg/Time.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Std_msgsMsgHeader; document/platform/hello_robot/en_US/language/zig/API.md
 field_stamp: Ros2Builtin_interfacesMsgTime=.{},
 /// @brief std_msgs/msg/Header.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Std_msgsMsgHeader; document/platform/hello_robot/en_US/language/zig/API.md
 field_frame_id: []const u8=&.{},
 /// @brief Append every canonical field of std_msgs/msg/Header.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language
 /// exception/error contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Std_msgsMsgHeader; document/platform/hello_robot/en_US/language/zig/API.md
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Std_msgsMsgHeader; document/platform/hello_robot/en_US/language/zig/API.md
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Std_msgsMsgHeader; document/platform/hello_robot/en_US/language/zig/API.md
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Std_msgsMsgHeader; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<12 or bytes.len>140) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 trajectory_msgs/msg/JointTrajectoryPoint value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 24..280 bytes
/// and is identified by UWVMROS1_a512b971211baa8604440e02a046b586e7970293242607002ceb89196c9d99b1.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/hello_robot/en_US/language/zig/API.md
pub const Ros2Trajectory_msgsMsgJointTrajectoryPoint=struct {
 /// @brief Maximum canonical extent of trajectory_msgs/msg/JointTrajectoryPoint in bytes.
 /// @details The inclusive bound is 280 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/hello_robot/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=280;
 /// @brief Canonical codec identity of trajectory_msgs/msg/JointTrajectoryPoint.
 /// @details Exact identity UWVMROS1_a512b971211baa8604440e02a046b586e7970293242607002ceb89196c9d99b1 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/hello_robot/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_a512b971211baa8604440e02a046b586e7970293242607002ceb89196c9d99b1";
 /// @brief Original ROS type name for trajectory_msgs/msg/JointTrajectoryPoint.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_type="trajectory_msgs/msg/JointTrajectoryPoint";
 /// @brief Selected original native identity for trajectory_msgs/msg/JointTrajectoryPoint.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief trajectory_msgs/msg/JointTrajectoryPoint.positions: float64; 0..8 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/hello_robot/en_US/language/zig/API.md
 field_positions: []f64=&.{},
 /// @brief trajectory_msgs/msg/JointTrajectoryPoint.velocities: float64; 0..8 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/hello_robot/en_US/language/zig/API.md
 field_velocities: []f64=&.{},
 /// @brief trajectory_msgs/msg/JointTrajectoryPoint.accelerations: float64; 0..8 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/hello_robot/en_US/language/zig/API.md
 field_accelerations: []f64=&.{},
 /// @brief trajectory_msgs/msg/JointTrajectoryPoint.effort: float64; 0..8 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/hello_robot/en_US/language/zig/API.md
 field_effort: []f64=&.{},
 /// @brief trajectory_msgs/msg/JointTrajectoryPoint.time_from_start: builtin_interfaces/msg/Duration.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/hello_robot/en_US/language/zig/API.md
 field_time_from_start: Ros2Builtin_interfacesMsgDuration=.{},
 /// @brief Append every canonical field of trajectory_msgs/msg/JointTrajectoryPoint.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language
 /// exception/error contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  if(self.field_positions.len>8) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_positions.len)));
  for(self.field_positions) |e| {
  try w.float64(e);
  }
  if(self.field_velocities.len>8) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_velocities.len)));
  for(self.field_velocities) |e| {
  try w.float64(e);
  }
  if(self.field_accelerations.len>8) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_accelerations.len)));
  for(self.field_accelerations) |e| {
  try w.float64(e);
  }
  if(self.field_effort.len>8) return error.Invalid;
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  const count0=try r.integer(u32); if(count0>8) return error.Invalid;
  value.field_positions=try allocator.alloc(f64,count0);
  for(value.field_positions) |*e| {
  e.*=try r.float64();
  }
  const count1=try r.integer(u32); if(count1>8) return error.Invalid;
  value.field_velocities=try allocator.alloc(f64,count1);
  for(value.field_velocities) |*e| {
  e.*=try r.float64();
  }
  const count2=try r.integer(u32); if(count2>8) return error.Invalid;
  value.field_accelerations=try allocator.alloc(f64,count2);
  for(value.field_accelerations) |*e| {
  e.*=try r.float64();
  }
  const count3=try r.integer(u32); if(count3>8) return error.Invalid;
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete trajectory_msgs/msg/JointTrajectoryPoint value.
 /// @details Require the complete 24..280-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<24 or bytes.len>280) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 trajectory_msgs/msg/JointTrajectory value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 20..1484
/// bytes and is identified by UWVMROS1_e32bd7016b5fefcab6adeb42072e2d56c45d4b9f7cb372bdb5bfac97abf8cb77.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/hello_robot/en_US/language/zig/API.md
pub const Ros2Trajectory_msgsMsgJointTrajectory=struct {
 /// @brief Maximum canonical extent of trajectory_msgs/msg/JointTrajectory in bytes.
 /// @details The inclusive bound is 1484 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/hello_robot/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=1484;
 /// @brief Canonical codec identity of trajectory_msgs/msg/JointTrajectory.
 /// @details Exact identity UWVMROS1_e32bd7016b5fefcab6adeb42072e2d56c45d4b9f7cb372bdb5bfac97abf8cb77 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/hello_robot/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_e32bd7016b5fefcab6adeb42072e2d56c45d4b9f7cb372bdb5bfac97abf8cb77";
 /// @brief Original ROS type name for trajectory_msgs/msg/JointTrajectory.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_type="trajectory_msgs/msg/JointTrajectory";
 /// @brief Selected original native identity for trajectory_msgs/msg/JointTrajectory.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief trajectory_msgs/msg/JointTrajectory.header: std_msgs/msg/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/hello_robot/en_US/language/zig/API.md
 field_header: Ros2Std_msgsMsgHeader=.{},
 /// @brief trajectory_msgs/msg/JointTrajectory.joint_names: string; 0..8 elements; each string is 0..128 bytes;
 /// strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/hello_robot/en_US/language/zig/API.md
 field_joint_names: [][]const u8=&.{},
 /// @brief trajectory_msgs/msg/JointTrajectory.points: trajectory_msgs/msg/JointTrajectoryPoint; 0..1 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/hello_robot/en_US/language/zig/API.md
 field_points: []Ros2Trajectory_msgsMsgJointTrajectoryPoint=&.{},
 /// @brief Append every canonical field of trajectory_msgs/msg/JointTrajectory.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language
 /// exception/error contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_header.writeFields(w);
  if(self.field_joint_names.len>8) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_joint_names.len)));
  for(self.field_joint_names) |e| {
  try w.string(e,128,false);
  }
  if(self.field_points.len>1) return error.Invalid;
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_header=try Ros2Std_msgsMsgHeader.readFields(r,allocator);
  const count1=try r.integer(u32); if(count1>8) return error.Invalid;
  value.field_joint_names=try allocator.alloc([]const u8,count1);
  for(value.field_joint_names) |*e| {
  e.*=try r.string(128,false);
  }
  const count2=try r.integer(u32); if(count2>1) return error.Invalid;
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete trajectory_msgs/msg/JointTrajectory value.
 /// @details Require the complete 20..1484-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<20 or bytes.len>1484) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 geometry_msgs/msg/Vector3 value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..24 bytes
/// and is identified by UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/hello_robot/en_US/language/zig/API.md
pub const Ros2Geometry_msgsMsgVector3=struct {
 /// @brief Maximum canonical extent of geometry_msgs/msg/Vector3 in bytes.
 /// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Geometry_msgsMsgVector3; document/platform/hello_robot/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=24;
 /// @brief Canonical codec identity of geometry_msgs/msg/Vector3.
 /// @details Exact identity UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Geometry_msgsMsgVector3; document/platform/hello_robot/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e";
 /// @brief Original ROS type name for geometry_msgs/msg/Vector3.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Geometry_msgsMsgVector3; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_type="geometry_msgs/msg/Vector3";
 /// @brief Selected original native identity for geometry_msgs/msg/Vector3.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Geometry_msgsMsgVector3; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief geometry_msgs/msg/Vector3.x: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgVector3; document/platform/hello_robot/en_US/language/zig/API.md
 field_x: f64=0,
 /// @brief geometry_msgs/msg/Vector3.y: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgVector3; document/platform/hello_robot/en_US/language/zig/API.md
 field_y: f64=0,
 /// @brief geometry_msgs/msg/Vector3.z: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgVector3; document/platform/hello_robot/en_US/language/zig/API.md
 field_z: f64=0,
 /// @brief Append every canonical field of geometry_msgs/msg/Vector3.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language
 /// exception/error contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgVector3; document/platform/hello_robot/en_US/language/zig/API.md
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgVector3; document/platform/hello_robot/en_US/language/zig/API.md
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgVector3; document/platform/hello_robot/en_US/language/zig/API.md
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgVector3; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<24 or bytes.len>24) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 geometry_msgs/msg/Quaternion value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 32..32 bytes
/// and is identified by UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/hello_robot/en_US/language/zig/API.md
pub const Ros2Geometry_msgsMsgQuaternion=struct {
 /// @brief Maximum canonical extent of geometry_msgs/msg/Quaternion in bytes.
 /// @details The inclusive bound is 32 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Geometry_msgsMsgQuaternion; document/platform/hello_robot/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=32;
 /// @brief Canonical codec identity of geometry_msgs/msg/Quaternion.
 /// @details Exact identity UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Geometry_msgsMsgQuaternion; document/platform/hello_robot/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672";
 /// @brief Original ROS type name for geometry_msgs/msg/Quaternion.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Geometry_msgsMsgQuaternion; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_type="geometry_msgs/msg/Quaternion";
 /// @brief Selected original native identity for geometry_msgs/msg/Quaternion.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Geometry_msgsMsgQuaternion; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief geometry_msgs/msg/Quaternion.x: float64.
 /// @details Schema default 0.0. Encoding preserves the original field position and signedness; invalid bounds
 /// fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgQuaternion; document/platform/hello_robot/en_US/language/zig/API.md
 field_x: f64=@as(f64,@bitCast(@as(u64,0x0))),
 /// @brief geometry_msgs/msg/Quaternion.y: float64.
 /// @details Schema default 0.0. Encoding preserves the original field position and signedness; invalid bounds
 /// fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgQuaternion; document/platform/hello_robot/en_US/language/zig/API.md
 field_y: f64=@as(f64,@bitCast(@as(u64,0x0))),
 /// @brief geometry_msgs/msg/Quaternion.z: float64.
 /// @details Schema default 0.0. Encoding preserves the original field position and signedness; invalid bounds
 /// fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgQuaternion; document/platform/hello_robot/en_US/language/zig/API.md
 field_z: f64=@as(f64,@bitCast(@as(u64,0x0))),
 /// @brief geometry_msgs/msg/Quaternion.w: float64.
 /// @details Schema default 1.0. Encoding preserves the original field position and signedness; invalid bounds
 /// fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgQuaternion; document/platform/hello_robot/en_US/language/zig/API.md
 field_w: f64=@as(f64,@bitCast(@as(u64,0x3ff0000000000000))),
 /// @brief Append every canonical field of geometry_msgs/msg/Quaternion.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language
 /// exception/error contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgQuaternion; document/platform/hello_robot/en_US/language/zig/API.md
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgQuaternion; document/platform/hello_robot/en_US/language/zig/API.md
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgQuaternion; document/platform/hello_robot/en_US/language/zig/API.md
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgQuaternion; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<32 or bytes.len>32) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 geometry_msgs/msg/Transform value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 56..56 bytes
/// and is identified by UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/hello_robot/en_US/language/zig/API.md
pub const Ros2Geometry_msgsMsgTransform=struct {
 /// @brief Maximum canonical extent of geometry_msgs/msg/Transform in bytes.
 /// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Geometry_msgsMsgTransform; document/platform/hello_robot/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=56;
 /// @brief Canonical codec identity of geometry_msgs/msg/Transform.
 /// @details Exact identity UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Geometry_msgsMsgTransform; document/platform/hello_robot/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b";
 /// @brief Original ROS type name for geometry_msgs/msg/Transform.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Geometry_msgsMsgTransform; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_type="geometry_msgs/msg/Transform";
 /// @brief Selected original native identity for geometry_msgs/msg/Transform.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Geometry_msgsMsgTransform; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief geometry_msgs/msg/Transform.translation: geometry_msgs/msg/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgTransform; document/platform/hello_robot/en_US/language/zig/API.md
 field_translation: Ros2Geometry_msgsMsgVector3=.{},
 /// @brief geometry_msgs/msg/Transform.rotation: geometry_msgs/msg/Quaternion.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgTransform; document/platform/hello_robot/en_US/language/zig/API.md
 field_rotation: Ros2Geometry_msgsMsgQuaternion=.{},
 /// @brief Append every canonical field of geometry_msgs/msg/Transform.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language
 /// exception/error contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgTransform; document/platform/hello_robot/en_US/language/zig/API.md
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgTransform; document/platform/hello_robot/en_US/language/zig/API.md
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgTransform; document/platform/hello_robot/en_US/language/zig/API.md
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgTransform; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<56 or bytes.len>56) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 geometry_msgs/msg/Twist value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 48..48 bytes
/// and is identified by UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/hello_robot/en_US/language/zig/API.md
pub const Ros2Geometry_msgsMsgTwist=struct {
 /// @brief Maximum canonical extent of geometry_msgs/msg/Twist in bytes.
 /// @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Geometry_msgsMsgTwist; document/platform/hello_robot/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=48;
 /// @brief Canonical codec identity of geometry_msgs/msg/Twist.
 /// @details Exact identity UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Geometry_msgsMsgTwist; document/platform/hello_robot/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e";
 /// @brief Original ROS type name for geometry_msgs/msg/Twist.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Geometry_msgsMsgTwist; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_type="geometry_msgs/msg/Twist";
 /// @brief Selected original native identity for geometry_msgs/msg/Twist.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Geometry_msgsMsgTwist; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief geometry_msgs/msg/Twist.linear: geometry_msgs/msg/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgTwist; document/platform/hello_robot/en_US/language/zig/API.md
 field_linear: Ros2Geometry_msgsMsgVector3=.{},
 /// @brief geometry_msgs/msg/Twist.angular: geometry_msgs/msg/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgTwist; document/platform/hello_robot/en_US/language/zig/API.md
 field_angular: Ros2Geometry_msgsMsgVector3=.{},
 /// @brief Append every canonical field of geometry_msgs/msg/Twist.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language
 /// exception/error contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgTwist; document/platform/hello_robot/en_US/language/zig/API.md
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgTwist; document/platform/hello_robot/en_US/language/zig/API.md
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgTwist; document/platform/hello_robot/en_US/language/zig/API.md
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgTwist; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<48 or bytes.len>48) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 20..844 bytes
/// and is identified by UWVMROS1_4b4b6ba78f11918fcdc138544f7ef1a140d1fc51b385349ab1ad5716472c3daf.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/hello_robot/en_US/language/zig/API.md
pub const Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint=struct {
 /// @brief Maximum canonical extent of trajectory_msgs/msg/MultiDOFJointTrajectoryPoint in bytes.
 /// @details The inclusive bound is 844 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; document/platform/hello_robot/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=844;
 /// @brief Canonical codec identity of trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
 /// @details Exact identity UWVMROS1_4b4b6ba78f11918fcdc138544f7ef1a140d1fc51b385349ab1ad5716472c3daf binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; document/platform/hello_robot/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_4b4b6ba78f11918fcdc138544f7ef1a140d1fc51b385349ab1ad5716472c3daf";
 /// @brief Original ROS type name for trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_type="trajectory_msgs/msg/MultiDOFJointTrajectoryPoint";
 /// @brief Selected original native identity for trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.transforms: geometry_msgs/msg/Transform; 0..1 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; document/platform/hello_robot/en_US/language/zig/API.md
 field_transforms: []Ros2Geometry_msgsMsgTransform=&.{},
 /// @brief trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.velocities: geometry_msgs/msg/Twist; 0..8 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; document/platform/hello_robot/en_US/language/zig/API.md
 field_velocities: []Ros2Geometry_msgsMsgTwist=&.{},
 /// @brief trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.accelerations: geometry_msgs/msg/Twist; 0..8 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; document/platform/hello_robot/en_US/language/zig/API.md
 field_accelerations: []Ros2Geometry_msgsMsgTwist=&.{},
 /// @brief trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.time_from_start: builtin_interfaces/msg/Duration.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; document/platform/hello_robot/en_US/language/zig/API.md
 field_time_from_start: Ros2Builtin_interfacesMsgDuration=.{},
 /// @brief Append every canonical field of trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language
 /// exception/error contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  if(self.field_transforms.len>1) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_transforms.len)));
  for(self.field_transforms) |e| {
  try e.writeFields(w);
  }
  if(self.field_velocities.len>8) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_velocities.len)));
  for(self.field_velocities) |e| {
  try e.writeFields(w);
  }
  if(self.field_accelerations.len>8) return error.Invalid;
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  const count0=try r.integer(u32); if(count0>1) return error.Invalid;
  value.field_transforms=try allocator.alloc(Ros2Geometry_msgsMsgTransform,count0);
  for(value.field_transforms) |*e| {
  e.*=try Ros2Geometry_msgsMsgTransform.readFields(r,allocator);
  }
  const count1=try r.integer(u32); if(count1>8) return error.Invalid;
  value.field_velocities=try allocator.alloc(Ros2Geometry_msgsMsgTwist,count1);
  for(value.field_velocities) |*e| {
  e.*=try Ros2Geometry_msgsMsgTwist.readFields(r,allocator);
  }
  const count2=try r.integer(u32); if(count2>8) return error.Invalid;
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value.
 /// @details Require the complete 20..844-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<20 or bytes.len>844) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 trajectory_msgs/msg/MultiDOFJointTrajectory value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 20..2048
/// bytes and is identified by UWVMROS1_b822a2d5db9b83e916dcc9db4932952a314773ef53c9fbaf825902e0eb7c8cb5.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/hello_robot/en_US/language/zig/API.md
pub const Ros2Trajectory_msgsMsgMultiDOFJointTrajectory=struct {
 /// @brief Maximum canonical extent of trajectory_msgs/msg/MultiDOFJointTrajectory in bytes.
 /// @details The inclusive bound is 2048 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; document/platform/hello_robot/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=2048;
 /// @brief Canonical codec identity of trajectory_msgs/msg/MultiDOFJointTrajectory.
 /// @details Exact identity UWVMROS1_b822a2d5db9b83e916dcc9db4932952a314773ef53c9fbaf825902e0eb7c8cb5 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; document/platform/hello_robot/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_b822a2d5db9b83e916dcc9db4932952a314773ef53c9fbaf825902e0eb7c8cb5";
 /// @brief Original ROS type name for trajectory_msgs/msg/MultiDOFJointTrajectory.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_type="trajectory_msgs/msg/MultiDOFJointTrajectory";
 /// @brief Selected original native identity for trajectory_msgs/msg/MultiDOFJointTrajectory.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief trajectory_msgs/msg/MultiDOFJointTrajectory.header: std_msgs/msg/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; document/platform/hello_robot/en_US/language/zig/API.md
 field_header: Ros2Std_msgsMsgHeader=.{},
 /// @brief trajectory_msgs/msg/MultiDOFJointTrajectory.joint_names: string; 0..8 elements; each string is 0..128
 /// bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; document/platform/hello_robot/en_US/language/zig/API.md
 field_joint_names: [][]const u8=&.{},
 /// @brief trajectory_msgs/msg/MultiDOFJointTrajectory.points: trajectory_msgs/msg/MultiDOFJointTrajectoryPoint; 0..1 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; document/platform/hello_robot/en_US/language/zig/API.md
 field_points: []Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint=&.{},
 /// @brief Append every canonical field of trajectory_msgs/msg/MultiDOFJointTrajectory.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language
 /// exception/error contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_header.writeFields(w);
  if(self.field_joint_names.len>8) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_joint_names.len)));
  for(self.field_joint_names) |e| {
  try w.string(e,128,false);
  }
  if(self.field_points.len>1) return error.Invalid;
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_header=try Ros2Std_msgsMsgHeader.readFields(r,allocator);
  const count1=try r.integer(u32); if(count1>8) return error.Invalid;
  value.field_joint_names=try allocator.alloc([]const u8,count1);
  for(value.field_joint_names) |*e| {
  e.*=try r.string(128,false);
  }
  const count2=try r.integer(u32); if(count2>1) return error.Invalid;
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete trajectory_msgs/msg/MultiDOFJointTrajectory value.
 /// @details Require the complete 20..2048-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<20 or bytes.len>2048) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 control_msgs/msg/JointTolerance value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 28..156 bytes
/// and is identified by UWVMROS1_3864af88029b3b1f51907b3da63d2d821104c29b9469a146a5a34f73f3598b8a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/hello_robot/en_US/language/zig/API.md
pub const Ros2Control_msgsMsgJointTolerance=struct {
 /// @brief Maximum canonical extent of control_msgs/msg/JointTolerance in bytes.
 /// @details The inclusive bound is 156 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Control_msgsMsgJointTolerance; document/platform/hello_robot/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=156;
 /// @brief Canonical codec identity of control_msgs/msg/JointTolerance.
 /// @details Exact identity UWVMROS1_3864af88029b3b1f51907b3da63d2d821104c29b9469a146a5a34f73f3598b8a binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Control_msgsMsgJointTolerance; document/platform/hello_robot/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_3864af88029b3b1f51907b3da63d2d821104c29b9469a146a5a34f73f3598b8a";
 /// @brief Original ROS type name for control_msgs/msg/JointTolerance.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Control_msgsMsgJointTolerance; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_type="control_msgs/msg/JointTolerance";
 /// @brief Selected original native identity for control_msgs/msg/JointTolerance.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Control_msgsMsgJointTolerance; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief control_msgs/msg/JointTolerance.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Control_msgsMsgJointTolerance; document/platform/hello_robot/en_US/language/zig/API.md
 field_name: []const u8=&.{},
 /// @brief control_msgs/msg/JointTolerance.position: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Control_msgsMsgJointTolerance; document/platform/hello_robot/en_US/language/zig/API.md
 field_position: f64=0,
 /// @brief control_msgs/msg/JointTolerance.velocity: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Control_msgsMsgJointTolerance; document/platform/hello_robot/en_US/language/zig/API.md
 field_velocity: f64=0,
 /// @brief control_msgs/msg/JointTolerance.acceleration: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Control_msgsMsgJointTolerance; document/platform/hello_robot/en_US/language/zig/API.md
 field_acceleration: f64=0,
 /// @brief Append every canonical field of control_msgs/msg/JointTolerance.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language
 /// exception/error contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Control_msgsMsgJointTolerance; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_name,128,false);
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Control_msgsMsgJointTolerance; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_name=try r.string(128,false);
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Control_msgsMsgJointTolerance; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete control_msgs/msg/JointTolerance value.
 /// @details Require the complete 28..156-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Control_msgsMsgJointTolerance; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<28 or bytes.len>156) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 control_msgs/msg/JointComponentTolerance value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 30..158 bytes
/// and is identified by UWVMROS1_8a10f659b38feae6dfcf89818d35a164743b02c0e5cfe2d86aae7eda56e914fb.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/hello_robot/en_US/language/zig/API.md
pub const Ros2Control_msgsMsgJointComponentTolerance=struct {
 /// @brief Maximum canonical extent of control_msgs/msg/JointComponentTolerance in bytes.
 /// @details The inclusive bound is 158 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Control_msgsMsgJointComponentTolerance; document/platform/hello_robot/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=158;
 /// @brief Canonical codec identity of control_msgs/msg/JointComponentTolerance.
 /// @details Exact identity UWVMROS1_8a10f659b38feae6dfcf89818d35a164743b02c0e5cfe2d86aae7eda56e914fb binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Control_msgsMsgJointComponentTolerance; document/platform/hello_robot/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_8a10f659b38feae6dfcf89818d35a164743b02c0e5cfe2d86aae7eda56e914fb";
 /// @brief Original ROS type name for control_msgs/msg/JointComponentTolerance.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Control_msgsMsgJointComponentTolerance; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_type="control_msgs/msg/JointComponentTolerance";
 /// @brief Selected original native identity for control_msgs/msg/JointComponentTolerance.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Control_msgsMsgJointComponentTolerance; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief control_msgs/msg/JointComponentTolerance.X_AXIS: original uint16 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Control_msgsMsgJointComponentTolerance; document/platform/hello_robot/en_US/language/zig/API.md
 pub const field_X_AXIS: u16=1;
 /// @brief control_msgs/msg/JointComponentTolerance.Y_AXIS: original uint16 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Control_msgsMsgJointComponentTolerance; document/platform/hello_robot/en_US/language/zig/API.md
 pub const field_Y_AXIS: u16=2;
 /// @brief control_msgs/msg/JointComponentTolerance.Z_AXIS: original uint16 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Control_msgsMsgJointComponentTolerance; document/platform/hello_robot/en_US/language/zig/API.md
 pub const field_Z_AXIS: u16=3;
 /// @brief control_msgs/msg/JointComponentTolerance.TRANSLATION: original uint16 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Control_msgsMsgJointComponentTolerance; document/platform/hello_robot/en_US/language/zig/API.md
 pub const field_TRANSLATION: u16=4;
 /// @brief control_msgs/msg/JointComponentTolerance.ROTATION: original uint16 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Control_msgsMsgJointComponentTolerance; document/platform/hello_robot/en_US/language/zig/API.md
 pub const field_ROTATION: u16=5;
 /// @brief control_msgs/msg/JointComponentTolerance.joint_name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Control_msgsMsgJointComponentTolerance; document/platform/hello_robot/en_US/language/zig/API.md
 field_joint_name: []const u8=&.{},
 /// @brief control_msgs/msg/JointComponentTolerance.component: uint16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Control_msgsMsgJointComponentTolerance; document/platform/hello_robot/en_US/language/zig/API.md
 field_component: u16=0,
 /// @brief control_msgs/msg/JointComponentTolerance.position: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Control_msgsMsgJointComponentTolerance; document/platform/hello_robot/en_US/language/zig/API.md
 field_position: f64=0,
 /// @brief control_msgs/msg/JointComponentTolerance.velocity: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Control_msgsMsgJointComponentTolerance; document/platform/hello_robot/en_US/language/zig/API.md
 field_velocity: f64=0,
 /// @brief control_msgs/msg/JointComponentTolerance.acceleration: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Control_msgsMsgJointComponentTolerance; document/platform/hello_robot/en_US/language/zig/API.md
 field_acceleration: f64=0,
 /// @brief Append every canonical field of control_msgs/msg/JointComponentTolerance.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language
 /// exception/error contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Control_msgsMsgJointComponentTolerance; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_joint_name,128,false);
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Control_msgsMsgJointComponentTolerance; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_joint_name=try r.string(128,false);
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Control_msgsMsgJointComponentTolerance; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete control_msgs/msg/JointComponentTolerance value.
 /// @details Require the complete 30..158-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Control_msgsMsgJointComponentTolerance; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<30 or bytes.len>158) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 control_msgs/action/FollowJointTrajectory_Goal value.
/// @details All 7 declared fields are retained in source order. The canonical representation occupies 64..8580
/// bytes and is identified by UWVMROS1_fa8334eb129cc91c50febaccfebb371f6fbdd82188d6301823344d6664300018.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/hello_robot/en_US/language/zig/API.md
pub const Ros2Control_msgsActionFollowJointTrajectory_Goal=struct {
 /// @brief Maximum canonical extent of control_msgs/action/FollowJointTrajectory_Goal in bytes.
 /// @details The inclusive bound is 8580 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; document/platform/hello_robot/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=8580;
 /// @brief Canonical codec identity of control_msgs/action/FollowJointTrajectory_Goal.
 /// @details Exact identity UWVMROS1_fa8334eb129cc91c50febaccfebb371f6fbdd82188d6301823344d6664300018 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; document/platform/hello_robot/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_fa8334eb129cc91c50febaccfebb371f6fbdd82188d6301823344d6664300018";
 /// @brief Original ROS type name for control_msgs/action/FollowJointTrajectory_Goal.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_type="control_msgs/action/FollowJointTrajectory_Goal";
 /// @brief Selected original native identity for control_msgs/action/FollowJointTrajectory_Goal.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief control_msgs/action/FollowJointTrajectory_Goal.trajectory: trajectory_msgs/msg/JointTrajectory.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; document/platform/hello_robot/en_US/language/zig/API.md
 field_trajectory: Ros2Trajectory_msgsMsgJointTrajectory=.{},
 /// @brief control_msgs/action/FollowJointTrajectory_Goal.multi_dof_trajectory: trajectory_msgs/msg/MultiDOFJointTrajectory.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; document/platform/hello_robot/en_US/language/zig/API.md
 field_multi_dof_trajectory: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory=.{},
 /// @brief control_msgs/action/FollowJointTrajectory_Goal.path_tolerance: control_msgs/msg/JointTolerance; 0..8 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; document/platform/hello_robot/en_US/language/zig/API.md
 field_path_tolerance: []Ros2Control_msgsMsgJointTolerance=&.{},
 /// @brief control_msgs/action/FollowJointTrajectory_Goal.component_path_tolerance:
 /// control_msgs/msg/JointComponentTolerance; 0..8 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; document/platform/hello_robot/en_US/language/zig/API.md
 field_component_path_tolerance: []Ros2Control_msgsMsgJointComponentTolerance=&.{},
 /// @brief control_msgs/action/FollowJointTrajectory_Goal.goal_tolerance: control_msgs/msg/JointTolerance; 0..8 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; document/platform/hello_robot/en_US/language/zig/API.md
 field_goal_tolerance: []Ros2Control_msgsMsgJointTolerance=&.{},
 /// @brief control_msgs/action/FollowJointTrajectory_Goal.component_goal_tolerance:
 /// control_msgs/msg/JointComponentTolerance; 0..8 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; document/platform/hello_robot/en_US/language/zig/API.md
 field_component_goal_tolerance: []Ros2Control_msgsMsgJointComponentTolerance=&.{},
 /// @brief control_msgs/action/FollowJointTrajectory_Goal.goal_time_tolerance: builtin_interfaces/msg/Duration.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; document/platform/hello_robot/en_US/language/zig/API.md
 field_goal_time_tolerance: Ros2Builtin_interfacesMsgDuration=.{},
 /// @brief Append every canonical field of control_msgs/action/FollowJointTrajectory_Goal.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language
 /// exception/error contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_trajectory.writeFields(w);
  try self.field_multi_dof_trajectory.writeFields(w);
  if(self.field_path_tolerance.len>8) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_path_tolerance.len)));
  for(self.field_path_tolerance) |e| {
  try e.writeFields(w);
  }
  if(self.field_component_path_tolerance.len>8) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_component_path_tolerance.len)));
  for(self.field_component_path_tolerance) |e| {
  try e.writeFields(w);
  }
  if(self.field_goal_tolerance.len>8) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_goal_tolerance.len)));
  for(self.field_goal_tolerance) |e| {
  try e.writeFields(w);
  }
  if(self.field_component_goal_tolerance.len>8) return error.Invalid;
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_trajectory=try Ros2Trajectory_msgsMsgJointTrajectory.readFields(r,allocator);
  value.field_multi_dof_trajectory=try Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.readFields(r,allocator);
  const count2=try r.integer(u32); if(count2>8) return error.Invalid;
  value.field_path_tolerance=try allocator.alloc(Ros2Control_msgsMsgJointTolerance,count2);
  for(value.field_path_tolerance) |*e| {
  e.*=try Ros2Control_msgsMsgJointTolerance.readFields(r,allocator);
  }
  const count3=try r.integer(u32); if(count3>8) return error.Invalid;
  value.field_component_path_tolerance=try allocator.alloc(Ros2Control_msgsMsgJointComponentTolerance,count3);
  for(value.field_component_path_tolerance) |*e| {
  e.*=try Ros2Control_msgsMsgJointComponentTolerance.readFields(r,allocator);
  }
  const count4=try r.integer(u32); if(count4>8) return error.Invalid;
  value.field_goal_tolerance=try allocator.alloc(Ros2Control_msgsMsgJointTolerance,count4);
  for(value.field_goal_tolerance) |*e| {
  e.*=try Ros2Control_msgsMsgJointTolerance.readFields(r,allocator);
  }
  const count5=try r.integer(u32); if(count5>8) return error.Invalid;
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete control_msgs/action/FollowJointTrajectory_Goal value.
 /// @details Require the complete 64..8580-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<64 or bytes.len>8580) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 control_msgs/action/FollowJointTrajectory_Result value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..264 bytes
/// and is identified by UWVMROS1_df1e08076a5c725b865cc8807462d9ccf9577df11cbb71fcc0d280d77d0e5649.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/hello_robot/en_US/language/zig/API.md
pub const Ros2Control_msgsActionFollowJointTrajectory_Result=struct {
 /// @brief Maximum canonical extent of control_msgs/action/FollowJointTrajectory_Result in bytes.
 /// @details The inclusive bound is 264 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Result; document/platform/hello_robot/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=264;
 /// @brief Canonical codec identity of control_msgs/action/FollowJointTrajectory_Result.
 /// @details Exact identity UWVMROS1_df1e08076a5c725b865cc8807462d9ccf9577df11cbb71fcc0d280d77d0e5649 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Result; document/platform/hello_robot/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_df1e08076a5c725b865cc8807462d9ccf9577df11cbb71fcc0d280d77d0e5649";
 /// @brief Original ROS type name for control_msgs/action/FollowJointTrajectory_Result.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Result; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_type="control_msgs/action/FollowJointTrajectory_Result";
 /// @brief Selected original native identity for control_msgs/action/FollowJointTrajectory_Result.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Result; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief control_msgs/action/FollowJointTrajectory_Result.SUCCESSFUL: original int32 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Result; document/platform/hello_robot/en_US/language/zig/API.md
 pub const field_SUCCESSFUL: i32=0;
 /// @brief control_msgs/action/FollowJointTrajectory_Result.INVALID_GOAL: original int32 constant.
 /// @details Exact admitted value -1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Result; document/platform/hello_robot/en_US/language/zig/API.md
 pub const field_INVALID_GOAL: i32=-1;
 /// @brief control_msgs/action/FollowJointTrajectory_Result.INVALID_JOINTS: original int32 constant.
 /// @details Exact admitted value -2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Result; document/platform/hello_robot/en_US/language/zig/API.md
 pub const field_INVALID_JOINTS: i32=-2;
 /// @brief control_msgs/action/FollowJointTrajectory_Result.OLD_HEADER_TIMESTAMP: original int32 constant.
 /// @details Exact admitted value -3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Result; document/platform/hello_robot/en_US/language/zig/API.md
 pub const field_OLD_HEADER_TIMESTAMP: i32=-3;
 /// @brief control_msgs/action/FollowJointTrajectory_Result.PATH_TOLERANCE_VIOLATED: original int32 constant.
 /// @details Exact admitted value -4. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Result; document/platform/hello_robot/en_US/language/zig/API.md
 pub const field_PATH_TOLERANCE_VIOLATED: i32=-4;
 /// @brief control_msgs/action/FollowJointTrajectory_Result.GOAL_TOLERANCE_VIOLATED: original int32 constant.
 /// @details Exact admitted value -5. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Result; document/platform/hello_robot/en_US/language/zig/API.md
 pub const field_GOAL_TOLERANCE_VIOLATED: i32=-5;
 /// @brief control_msgs/action/FollowJointTrajectory_Result.error_code: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Result; document/platform/hello_robot/en_US/language/zig/API.md
 field_error_code: i32=0,
 /// @brief control_msgs/action/FollowJointTrajectory_Result.error_string: string; each string is 0..256 bytes;
 /// strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Result; document/platform/hello_robot/en_US/language/zig/API.md
 field_error_string: []const u8=&.{},
 /// @brief Append every canonical field of control_msgs/action/FollowJointTrajectory_Result.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language
 /// exception/error contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Result; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_error_code);
  try w.string(self.field_error_string,256,false);
 }
 /// @brief Read the ordered canonical fields of control_msgs/action/FollowJointTrajectory_Result.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Result; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_error_code=try r.integer(i32);
  value.field_error_string=try r.string(256,false);
  return value;
 }
 /// @brief Encode one complete control_msgs/action/FollowJointTrajectory_Result value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Result; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete control_msgs/action/FollowJointTrajectory_Result value.
 /// @details Require the complete 8..264-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Result; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>264) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 control_msgs/action/FollowJointTrajectory_Feedback value.
/// @details All 9 declared fields are retained in source order. The canonical representation occupies 152..4708
/// bytes and is identified by UWVMROS1_ae2175027c3e45997d272b9610d15ef52cc665d23c0a371892d10b3d100e3529.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/hello_robot/en_US/language/zig/API.md
pub const Ros2Control_msgsActionFollowJointTrajectory_Feedback=struct {
 /// @brief Maximum canonical extent of control_msgs/action/FollowJointTrajectory_Feedback in bytes.
 /// @details The inclusive bound is 4708 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; document/platform/hello_robot/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=4708;
 /// @brief Canonical codec identity of control_msgs/action/FollowJointTrajectory_Feedback.
 /// @details Exact identity UWVMROS1_ae2175027c3e45997d272b9610d15ef52cc665d23c0a371892d10b3d100e3529 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; document/platform/hello_robot/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_ae2175027c3e45997d272b9610d15ef52cc665d23c0a371892d10b3d100e3529";
 /// @brief Original ROS type name for control_msgs/action/FollowJointTrajectory_Feedback.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_type="control_msgs/action/FollowJointTrajectory_Feedback";
 /// @brief Selected original native identity for control_msgs/action/FollowJointTrajectory_Feedback.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief control_msgs/action/FollowJointTrajectory_Feedback.header: std_msgs/msg/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; document/platform/hello_robot/en_US/language/zig/API.md
 field_header: Ros2Std_msgsMsgHeader=.{},
 /// @brief control_msgs/action/FollowJointTrajectory_Feedback.joint_names: string; 0..8 elements; each string is
 /// 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; document/platform/hello_robot/en_US/language/zig/API.md
 field_joint_names: [][]const u8=&.{},
 /// @brief control_msgs/action/FollowJointTrajectory_Feedback.desired: trajectory_msgs/msg/JointTrajectoryPoint.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; document/platform/hello_robot/en_US/language/zig/API.md
 field_desired: Ros2Trajectory_msgsMsgJointTrajectoryPoint=.{},
 /// @brief control_msgs/action/FollowJointTrajectory_Feedback.actual: trajectory_msgs/msg/JointTrajectoryPoint.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; document/platform/hello_robot/en_US/language/zig/API.md
 field_actual: Ros2Trajectory_msgsMsgJointTrajectoryPoint=.{},
 /// @brief control_msgs/action/FollowJointTrajectory_Feedback.error: trajectory_msgs/msg/JointTrajectoryPoint.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; document/platform/hello_robot/en_US/language/zig/API.md
 field_error: Ros2Trajectory_msgsMsgJointTrajectoryPoint=.{},
 /// @brief control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_joint_names: string; 0..1 elements; each
 /// string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; document/platform/hello_robot/en_US/language/zig/API.md
 field_multi_dof_joint_names: [][]const u8=&.{},
 /// @brief control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_desired: trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; document/platform/hello_robot/en_US/language/zig/API.md
 field_multi_dof_desired: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint=.{},
 /// @brief control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_actual: trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; document/platform/hello_robot/en_US/language/zig/API.md
 field_multi_dof_actual: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint=.{},
 /// @brief control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_error: trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; document/platform/hello_robot/en_US/language/zig/API.md
 field_multi_dof_error: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint=.{},
 /// @brief Append every canonical field of control_msgs/action/FollowJointTrajectory_Feedback.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language
 /// exception/error contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_header.writeFields(w);
  if(self.field_joint_names.len>8) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_joint_names.len)));
  for(self.field_joint_names) |e| {
  try w.string(e,128,false);
  }
  try self.field_desired.writeFields(w);
  try self.field_actual.writeFields(w);
  try self.field_error.writeFields(w);
  if(self.field_multi_dof_joint_names.len>1) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_multi_dof_joint_names.len)));
  for(self.field_multi_dof_joint_names) |e| {
  try w.string(e,128,false);
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_header=try Ros2Std_msgsMsgHeader.readFields(r,allocator);
  const count1=try r.integer(u32); if(count1>8) return error.Invalid;
  value.field_joint_names=try allocator.alloc([]const u8,count1);
  for(value.field_joint_names) |*e| {
  e.*=try r.string(128,false);
  }
  value.field_desired=try Ros2Trajectory_msgsMsgJointTrajectoryPoint.readFields(r,allocator);
  value.field_actual=try Ros2Trajectory_msgsMsgJointTrajectoryPoint.readFields(r,allocator);
  value.field_error=try Ros2Trajectory_msgsMsgJointTrajectoryPoint.readFields(r,allocator);
  const count5=try r.integer(u32); if(count5>1) return error.Invalid;
  value.field_multi_dof_joint_names=try allocator.alloc([]const u8,count5);
  for(value.field_multi_dof_joint_names) |*e| {
  e.*=try r.string(128,false);
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete control_msgs/action/FollowJointTrajectory_Feedback value.
 /// @details Require the complete 152..4708-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<152 or bytes.len>4708) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 sensor_msgs/msg/JointState value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 28..1404
/// bytes and is identified by UWVMROS1_bba20c36db70a98b594ba603d05b8a979038fb95b701221ba3b8689f55b06b11.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/hello_robot/en_US/language/zig/API.md
pub const Ros2Sensor_msgsMsgJointState=struct {
 /// @brief Maximum canonical extent of sensor_msgs/msg/JointState in bytes.
 /// @details The inclusive bound is 1404 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Sensor_msgsMsgJointState; document/platform/hello_robot/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=1404;
 /// @brief Canonical codec identity of sensor_msgs/msg/JointState.
 /// @details Exact identity UWVMROS1_bba20c36db70a98b594ba603d05b8a979038fb95b701221ba3b8689f55b06b11 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Sensor_msgsMsgJointState; document/platform/hello_robot/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_bba20c36db70a98b594ba603d05b8a979038fb95b701221ba3b8689f55b06b11";
 /// @brief Original ROS type name for sensor_msgs/msg/JointState.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Sensor_msgsMsgJointState; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_type="sensor_msgs/msg/JointState";
 /// @brief Selected original native identity for sensor_msgs/msg/JointState.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Sensor_msgsMsgJointState; document/platform/hello_robot/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief sensor_msgs/msg/JointState.header: std_msgs/msg/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgJointState; document/platform/hello_robot/en_US/language/zig/API.md
 field_header: Ros2Std_msgsMsgHeader=.{},
 /// @brief sensor_msgs/msg/JointState.name: string; 0..8 elements; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgJointState; document/platform/hello_robot/en_US/language/zig/API.md
 field_name: [][]const u8=&.{},
 /// @brief sensor_msgs/msg/JointState.position: float64; 0..8 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgJointState; document/platform/hello_robot/en_US/language/zig/API.md
 field_position: []f64=&.{},
 /// @brief sensor_msgs/msg/JointState.velocity: float64; 0..8 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgJointState; document/platform/hello_robot/en_US/language/zig/API.md
 field_velocity: []f64=&.{},
 /// @brief sensor_msgs/msg/JointState.effort: float64; 0..8 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgJointState; document/platform/hello_robot/en_US/language/zig/API.md
 field_effort: []f64=&.{},
 /// @brief Append every canonical field of sensor_msgs/msg/JointState.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language
 /// exception/error contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Sensor_msgsMsgJointState; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  if(self.field_name.len != 0 && self.field_position.len != 0 && self.field_name.len != self.field_position.len) return error.Invalid;
  if(self.field_name.len != 0 && self.field_velocity.len != 0 && self.field_name.len != self.field_velocity.len) return error.Invalid;
  if(self.field_name.len != 0 && self.field_effort.len != 0 && self.field_name.len != self.field_effort.len) return error.Invalid;
  if(self.field_position.len != 0 && self.field_velocity.len != 0 && self.field_position.len != self.field_velocity.len) return error.Invalid;
  if(self.field_position.len != 0 && self.field_effort.len != 0 && self.field_position.len != self.field_effort.len) return error.Invalid;
  if(self.field_velocity.len != 0 && self.field_effort.len != 0 && self.field_velocity.len != self.field_effort.len) return error.Invalid;
  try self.field_header.writeFields(w);
  if(self.field_name.len>8) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_name.len)));
  for(self.field_name) |e| {
  try w.string(e,128,false);
  }
  if(self.field_position.len>8) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_position.len)));
  for(self.field_position) |e| {
  try w.float64(e);
  }
  if(self.field_velocity.len>8) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_velocity.len)));
  for(self.field_velocity) |e| {
  try w.float64(e);
  }
  if(self.field_effort.len>8) return error.Invalid;
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Sensor_msgsMsgJointState; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_header=try Ros2Std_msgsMsgHeader.readFields(r,allocator);
  const count1=try r.integer(u32); if(count1>8) return error.Invalid;
  value.field_name=try allocator.alloc([]const u8,count1);
  for(value.field_name) |*e| {
  e.*=try r.string(128,false);
  }
  const count2=try r.integer(u32); if(count2>8) return error.Invalid;
  value.field_position=try allocator.alloc(f64,count2);
  for(value.field_position) |*e| {
  e.*=try r.float64();
  }
  const count3=try r.integer(u32); if(count3>8) return error.Invalid;
  value.field_velocity=try allocator.alloc(f64,count3);
  for(value.field_velocity) |*e| {
  e.*=try r.float64();
  }
  const count4=try r.integer(u32); if(count4>8) return error.Invalid;
  value.field_effort=try allocator.alloc(f64,count4);
  for(value.field_effort) |*e| {
  e.*=try r.float64();
  }
  if(value.field_name.len != 0 && value.field_position.len != 0 && value.field_name.len != value.field_position.len) return error.Invalid;
  if(value.field_name.len != 0 && value.field_velocity.len != 0 && value.field_name.len != value.field_velocity.len) return error.Invalid;
  if(value.field_name.len != 0 && value.field_effort.len != 0 && value.field_name.len != value.field_effort.len) return error.Invalid;
  if(value.field_position.len != 0 && value.field_velocity.len != 0 && value.field_position.len != value.field_velocity.len) return error.Invalid;
  if(value.field_position.len != 0 && value.field_effort.len != 0 && value.field_position.len != value.field_effort.len) return error.Invalid;
  if(value.field_velocity.len != 0 && value.field_effort.len != 0 && value.field_velocity.len != value.field_effort.len) return error.Invalid;
  return value;
 }
 /// @brief Encode one complete sensor_msgs/msg/JointState value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Sensor_msgsMsgJointState; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete sensor_msgs/msg/JointState value.
 /// @details Require the complete 28..1404-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Sensor_msgsMsgJointState; document/platform/hello_robot/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<28 or bytes.len>1404) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
