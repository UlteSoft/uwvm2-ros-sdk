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
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros2Builtin_interfacesMsgDuration=struct {
 /// @brief Maximum canonical extent of builtin_interfaces/msg/Duration in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=8;
 /// @brief Canonical codec identity of builtin_interfaces/msg/Duration.
 /// @details Exact identity UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4";
 /// @brief Original ROS type name for builtin_interfaces/msg/Duration.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="builtin_interfaces/msg/Duration";
 /// @brief Selected original native identity for builtin_interfaces/msg/Duration.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief builtin_interfaces/msg/Duration.sec: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/trossen/en_US/language/zig/API.md
 field_sec: i32=0,
 /// @brief builtin_interfaces/msg/Duration.nanosec: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/trossen/en_US/language/zig/API.md
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
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/trossen/en_US/language/zig/API.md
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
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/trossen/en_US/language/zig/API.md
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
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/trossen/en_US/language/zig/API.md
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
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/trossen/en_US/language/zig/API.md
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
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros2Builtin_interfacesMsgTime=struct {
 /// @brief Maximum canonical extent of builtin_interfaces/msg/Time in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=8;
 /// @brief Canonical codec identity of builtin_interfaces/msg/Time.
 /// @details Exact identity UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7";
 /// @brief Original ROS type name for builtin_interfaces/msg/Time.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="builtin_interfaces/msg/Time";
 /// @brief Selected original native identity for builtin_interfaces/msg/Time.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief builtin_interfaces/msg/Time.sec: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/trossen/en_US/language/zig/API.md
 field_sec: i32=0,
 /// @brief builtin_interfaces/msg/Time.nanosec: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/trossen/en_US/language/zig/API.md
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
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/trossen/en_US/language/zig/API.md
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
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/trossen/en_US/language/zig/API.md
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
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/trossen/en_US/language/zig/API.md
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
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>8) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 interbotix_xs_msgs/msg/ArmJoy value.
/// @details All 12 declared fields are retained in source order. The canonical representation occupies 12..12 bytes
/// and is identified by UWVMROS1_26c3b0f22cf87c464b8cfa99b6de6ba7bc16efe7244ab36828c98e1518d69b1f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros2Interbotix_xs_msgsMsgArmJoy=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/msg/ArmJoy in bytes.
 /// @details The inclusive bound is 12 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=12;
 /// @brief Canonical codec identity of interbotix_xs_msgs/msg/ArmJoy.
 /// @details Exact identity UWVMROS1_26c3b0f22cf87c464b8cfa99b6de6ba7bc16efe7244ab36828c98e1518d69b1f binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_26c3b0f22cf87c464b8cfa99b6de6ba7bc16efe7244ab36828c98e1518d69b1f";
 /// @brief Original ROS type name for interbotix_xs_msgs/msg/ArmJoy.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/msg/ArmJoy";
 /// @brief Selected original native identity for interbotix_xs_msgs/msg/ArmJoy.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.EE_X_INC: original int8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_X_INC: i8=1;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.EE_X_DEC: original int8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_X_DEC: i8=2;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.EE_Y_INC: original int8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_Y_INC: i8=3;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.EE_Y_DEC: original int8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_Y_DEC: i8=4;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.EE_Z_INC: original int8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_Z_INC: i8=5;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.EE_Z_DEC: original int8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_Z_DEC: i8=6;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.EE_ROLL_CCW: original int8 constant.
 /// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_ROLL_CCW: i8=7;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.EE_ROLL_CW: original int8 constant.
 /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_ROLL_CW: i8=8;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.EE_PITCH_UP: original int8 constant.
 /// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_PITCH_UP: i8=9;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.EE_PITCH_DOWN: original int8 constant.
 /// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_PITCH_DOWN: i8=10;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.WAIST_CCW: original int8 constant.
 /// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_WAIST_CCW: i8=11;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.WAIST_CW: original int8 constant.
 /// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_WAIST_CW: i8=12;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.GRIPPER_RELEASE: original int8 constant.
 /// @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_GRIPPER_RELEASE: i8=13;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.GRIPPER_GRASP: original int8 constant.
 /// @details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_GRIPPER_GRASP: i8=14;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.HOME_POSE: original int8 constant.
 /// @details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_HOME_POSE: i8=15;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.SLEEP_POSE: original int8 constant.
 /// @details Exact admitted value 16. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SLEEP_POSE: i8=16;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.SPEED_INC: original int8 constant.
 /// @details Exact admitted value 17. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SPEED_INC: i8=17;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.SPEED_DEC: original int8 constant.
 /// @details Exact admitted value 18. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SPEED_DEC: i8=18;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.SPEED_COARSE: original int8 constant.
 /// @details Exact admitted value 19. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SPEED_COARSE: i8=19;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.SPEED_FINE: original int8 constant.
 /// @details Exact admitted value 20. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SPEED_FINE: i8=20;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.GRIPPER_PWM_INC: original int8 constant.
 /// @details Exact admitted value 21. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_GRIPPER_PWM_INC: i8=21;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.GRIPPER_PWM_DEC: original int8 constant.
 /// @details Exact admitted value 22. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_GRIPPER_PWM_DEC: i8=22;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.TORQUE_ON: original int8 constant.
 /// @details Exact admitted value 23. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_TORQUE_ON: i8=23;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.TORQUE_OFF: original int8 constant.
 /// @details Exact admitted value 24. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_TORQUE_OFF: i8=24;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.ee_x_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 field_ee_x_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/ArmJoy.ee_y_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 field_ee_y_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/ArmJoy.ee_z_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 field_ee_z_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/ArmJoy.ee_roll_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 field_ee_roll_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/ArmJoy.ee_pitch_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 field_ee_pitch_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/ArmJoy.waist_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 field_waist_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/ArmJoy.gripper_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 field_gripper_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/ArmJoy.pose_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 field_pose_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/ArmJoy.speed_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 field_speed_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/ArmJoy.speed_toggle_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 field_speed_toggle_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/ArmJoy.gripper_pwm_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 field_gripper_pwm_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/ArmJoy.torque_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 field_torque_cmd: i8=0,
 /// @brief Append every canonical field of interbotix_xs_msgs/msg/ArmJoy.
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
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_ee_x_cmd);
  try w.integer(self.field_ee_y_cmd);
  try w.integer(self.field_ee_z_cmd);
  try w.integer(self.field_ee_roll_cmd);
  try w.integer(self.field_ee_pitch_cmd);
  try w.integer(self.field_waist_cmd);
  try w.integer(self.field_gripper_cmd);
  try w.integer(self.field_pose_cmd);
  try w.integer(self.field_speed_cmd);
  try w.integer(self.field_speed_toggle_cmd);
  try w.integer(self.field_gripper_pwm_cmd);
  try w.integer(self.field_torque_cmd);
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/msg/ArmJoy.
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
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_ee_x_cmd=try r.integer(i8);
  value.field_ee_y_cmd=try r.integer(i8);
  value.field_ee_z_cmd=try r.integer(i8);
  value.field_ee_roll_cmd=try r.integer(i8);
  value.field_ee_pitch_cmd=try r.integer(i8);
  value.field_waist_cmd=try r.integer(i8);
  value.field_gripper_cmd=try r.integer(i8);
  value.field_pose_cmd=try r.integer(i8);
  value.field_speed_cmd=try r.integer(i8);
  value.field_speed_toggle_cmd=try r.integer(i8);
  value.field_gripper_pwm_cmd=try r.integer(i8);
  value.field_torque_cmd=try r.integer(i8);
  return value;
 }
 /// @brief Encode one complete interbotix_xs_msgs/msg/ArmJoy value.
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
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/msg/ArmJoy value.
 /// @details Require the complete 12..12-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<12 or bytes.len>12) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 interbotix_xs_msgs/msg/HexJoy value.
/// @details All 17 declared fields are retained in source order. The canonical representation occupies 17..17 bytes
/// and is identified by UWVMROS1_17c4cc565057e8b555ae945fdad4c8010a26dc411ad2fcc6da2edb9a1d9e9e3d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros2Interbotix_xs_msgsMsgHexJoy=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/msg/HexJoy in bytes.
 /// @details The inclusive bound is 17 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=17;
 /// @brief Canonical codec identity of interbotix_xs_msgs/msg/HexJoy.
 /// @details Exact identity UWVMROS1_17c4cc565057e8b555ae945fdad4c8010a26dc411ad2fcc6da2edb9a1d9e9e3d binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_17c4cc565057e8b555ae945fdad4c8010a26dc411ad2fcc6da2edb9a1d9e9e3d";
 /// @brief Original ROS type name for interbotix_xs_msgs/msg/HexJoy.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/msg/HexJoy";
 /// @brief Selected original native identity for interbotix_xs_msgs/msg/HexJoy.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief interbotix_xs_msgs/msg/HexJoy.WORLD_X_INC: original int8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_WORLD_X_INC: i8=1;
 /// @brief interbotix_xs_msgs/msg/HexJoy.WORLD_X_DEC: original int8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_WORLD_X_DEC: i8=2;
 /// @brief interbotix_xs_msgs/msg/HexJoy.WORLD_Y_INC: original int8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_WORLD_Y_INC: i8=3;
 /// @brief interbotix_xs_msgs/msg/HexJoy.WORLD_Y_DEC: original int8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_WORLD_Y_DEC: i8=4;
 /// @brief interbotix_xs_msgs/msg/HexJoy.WORLD_YAW_CCW: original int8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_WORLD_YAW_CCW: i8=5;
 /// @brief interbotix_xs_msgs/msg/HexJoy.WORLD_YAW_CW: original int8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_WORLD_YAW_CW: i8=6;
 /// @brief interbotix_xs_msgs/msg/HexJoy.PLACE_X_INC: original int8 constant.
 /// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_PLACE_X_INC: i8=7;
 /// @brief interbotix_xs_msgs/msg/HexJoy.PLACE_X_DEC: original int8 constant.
 /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_PLACE_X_DEC: i8=8;
 /// @brief interbotix_xs_msgs/msg/HexJoy.PLACE_Y_INC: original int8 constant.
 /// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_PLACE_Y_INC: i8=9;
 /// @brief interbotix_xs_msgs/msg/HexJoy.PLACE_Y_DEC: original int8 constant.
 /// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_PLACE_Y_DEC: i8=10;
 /// @brief interbotix_xs_msgs/msg/HexJoy.PLACE_Z_INC: original int8 constant.
 /// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_PLACE_Z_INC: i8=11;
 /// @brief interbotix_xs_msgs/msg/HexJoy.PLACE_Z_DEC: original int8 constant.
 /// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_PLACE_Z_DEC: i8=12;
 /// @brief interbotix_xs_msgs/msg/HexJoy.PLACE_ROLL_CCW: original int8 constant.
 /// @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_PLACE_ROLL_CCW: i8=13;
 /// @brief interbotix_xs_msgs/msg/HexJoy.PLACE_ROLL_CW: original int8 constant.
 /// @details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_PLACE_ROLL_CW: i8=14;
 /// @brief interbotix_xs_msgs/msg/HexJoy.PLACE_PITCH_UP: original int8 constant.
 /// @details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_PLACE_PITCH_UP: i8=15;
 /// @brief interbotix_xs_msgs/msg/HexJoy.PLACE_PITCH_DOWN: original int8 constant.
 /// @details Exact admitted value 16. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_PLACE_PITCH_DOWN: i8=16;
 /// @brief interbotix_xs_msgs/msg/HexJoy.MOVE_HEXAPOD: original int8 constant.
 /// @details Exact admitted value 17. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_MOVE_HEXAPOD: i8=17;
 /// @brief interbotix_xs_msgs/msg/HexJoy.MOVE_LEG: original int8 constant.
 /// @details Exact admitted value 18. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_MOVE_LEG: i8=18;
 /// @brief interbotix_xs_msgs/msg/HexJoy.HOME_POSE: original int8 constant.
 /// @details Exact admitted value 19. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_HOME_POSE: i8=19;
 /// @brief interbotix_xs_msgs/msg/HexJoy.SLEEP_POSE: original int8 constant.
 /// @details Exact admitted value 20. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SLEEP_POSE: i8=20;
 /// @brief interbotix_xs_msgs/msg/HexJoy.GAIT_NEXT: original int8 constant.
 /// @details Exact admitted value 21. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_GAIT_NEXT: i8=21;
 /// @brief interbotix_xs_msgs/msg/HexJoy.GAIT_PREVIOUS: original int8 constant.
 /// @details Exact admitted value 22. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_GAIT_PREVIOUS: i8=22;
 /// @brief interbotix_xs_msgs/msg/HexJoy.LEG_NEXT: original int8 constant.
 /// @details Exact admitted value 23. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_LEG_NEXT: i8=23;
 /// @brief interbotix_xs_msgs/msg/HexJoy.LEG_PREVIOUS: original int8 constant.
 /// @details Exact admitted value 24. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_LEG_PREVIOUS: i8=24;
 /// @brief interbotix_xs_msgs/msg/HexJoy.WIDEN_STANCE: original int8 constant.
 /// @details Exact admitted value 25. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_WIDEN_STANCE: i8=25;
 /// @brief interbotix_xs_msgs/msg/HexJoy.NARROW_STANCE: original int8 constant.
 /// @details Exact admitted value 26. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_NARROW_STANCE: i8=26;
 /// @brief interbotix_xs_msgs/msg/HexJoy.REBOOT_MOTORS: original int8 constant.
 /// @details Exact admitted value 27. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_REBOOT_MOTORS: i8=27;
 /// @brief interbotix_xs_msgs/msg/HexJoy.SET_HOME_POSE: original int8 constant.
 /// @details Exact admitted value 28. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SET_HOME_POSE: i8=28;
 /// @brief interbotix_xs_msgs/msg/HexJoy.SPEED_INC: original int8 constant.
 /// @details Exact admitted value 29. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SPEED_INC: i8=29;
 /// @brief interbotix_xs_msgs/msg/HexJoy.SPEED_DEC: original int8 constant.
 /// @details Exact admitted value 30. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SPEED_DEC: i8=30;
 /// @brief interbotix_xs_msgs/msg/HexJoy.SPEED_COARSE: original int8 constant.
 /// @details Exact admitted value 31. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SPEED_COARSE: i8=31;
 /// @brief interbotix_xs_msgs/msg/HexJoy.SPEED_FINE: original int8 constant.
 /// @details Exact admitted value 32. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SPEED_FINE: i8=32;
 /// @brief interbotix_xs_msgs/msg/HexJoy.world_x_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_world_x_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/HexJoy.world_y_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_world_y_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/HexJoy.world_yaw_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_world_yaw_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/HexJoy.place_x_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_place_x_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/HexJoy.place_y_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_place_y_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/HexJoy.place_z_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_place_z_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/HexJoy.place_roll_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_place_roll_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/HexJoy.place_pitch_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_place_pitch_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/HexJoy.pose_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_pose_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/HexJoy.move_type_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_move_type_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/HexJoy.gait_toggle_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_gait_toggle_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/HexJoy.leg_toggle_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_leg_toggle_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/HexJoy.stance_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_stance_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/HexJoy.reboot_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_reboot_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/HexJoy.set_home_pose_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_set_home_pose_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/HexJoy.speed_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_speed_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/HexJoy.speed_toggle_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_speed_toggle_cmd: i8=0,
 /// @brief Append every canonical field of interbotix_xs_msgs/msg/HexJoy.
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
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_world_x_cmd);
  try w.integer(self.field_world_y_cmd);
  try w.integer(self.field_world_yaw_cmd);
  try w.integer(self.field_place_x_cmd);
  try w.integer(self.field_place_y_cmd);
  try w.integer(self.field_place_z_cmd);
  try w.integer(self.field_place_roll_cmd);
  try w.integer(self.field_place_pitch_cmd);
  try w.integer(self.field_pose_cmd);
  try w.integer(self.field_move_type_cmd);
  try w.integer(self.field_gait_toggle_cmd);
  try w.integer(self.field_leg_toggle_cmd);
  try w.integer(self.field_stance_cmd);
  try w.integer(self.field_reboot_cmd);
  try w.integer(self.field_set_home_pose_cmd);
  try w.integer(self.field_speed_cmd);
  try w.integer(self.field_speed_toggle_cmd);
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/msg/HexJoy.
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
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_world_x_cmd=try r.integer(i8);
  value.field_world_y_cmd=try r.integer(i8);
  value.field_world_yaw_cmd=try r.integer(i8);
  value.field_place_x_cmd=try r.integer(i8);
  value.field_place_y_cmd=try r.integer(i8);
  value.field_place_z_cmd=try r.integer(i8);
  value.field_place_roll_cmd=try r.integer(i8);
  value.field_place_pitch_cmd=try r.integer(i8);
  value.field_pose_cmd=try r.integer(i8);
  value.field_move_type_cmd=try r.integer(i8);
  value.field_gait_toggle_cmd=try r.integer(i8);
  value.field_leg_toggle_cmd=try r.integer(i8);
  value.field_stance_cmd=try r.integer(i8);
  value.field_reboot_cmd=try r.integer(i8);
  value.field_set_home_pose_cmd=try r.integer(i8);
  value.field_speed_cmd=try r.integer(i8);
  value.field_speed_toggle_cmd=try r.integer(i8);
  return value;
 }
 /// @brief Encode one complete interbotix_xs_msgs/msg/HexJoy value.
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
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/msg/HexJoy value.
 /// @details Require the complete 17..17-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<17 or bytes.len>17) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 interbotix_xs_msgs/msg/JointGroupCommand value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..392 bytes
/// and is identified by UWVMROS1_c038aeca8eb91f06dab5c70f8ed6b181442d0405df86ab2a19c20c076fffc42a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros2Interbotix_xs_msgsMsgJointGroupCommand=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/msg/JointGroupCommand in bytes.
 /// @details The inclusive bound is 392 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsMsgJointGroupCommand; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=392;
 /// @brief Canonical codec identity of interbotix_xs_msgs/msg/JointGroupCommand.
 /// @details Exact identity UWVMROS1_c038aeca8eb91f06dab5c70f8ed6b181442d0405df86ab2a19c20c076fffc42a binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsMsgJointGroupCommand; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_c038aeca8eb91f06dab5c70f8ed6b181442d0405df86ab2a19c20c076fffc42a";
 /// @brief Original ROS type name for interbotix_xs_msgs/msg/JointGroupCommand.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsMsgJointGroupCommand; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/msg/JointGroupCommand";
 /// @brief Selected original native identity for interbotix_xs_msgs/msg/JointGroupCommand.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsMsgJointGroupCommand; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief interbotix_xs_msgs/msg/JointGroupCommand.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgJointGroupCommand; document/platform/trossen/en_US/language/zig/API.md
 field_name: []const u8=&.{},
 /// @brief interbotix_xs_msgs/msg/JointGroupCommand.cmd: float32; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgJointGroupCommand; document/platform/trossen/en_US/language/zig/API.md
 field_cmd: []f32=&.{},
 /// @brief Append every canonical field of interbotix_xs_msgs/msg/JointGroupCommand.
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
 /// @see Ros2Interbotix_xs_msgsMsgJointGroupCommand; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_name,128,false);
  if(self.field_cmd.len>64) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_cmd.len)));
  for(self.field_cmd) |e| {
  try w.float32(e);
  }
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/msg/JointGroupCommand.
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
 /// @see Ros2Interbotix_xs_msgsMsgJointGroupCommand; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_name=try r.string(128,false);
  const count1=try r.integer(u32); if(count1>64) return error.Invalid;
  value.field_cmd=try allocator.alloc(f32,count1);
  for(value.field_cmd) |*e| {
  e.*=try r.float32();
  }
  return value;
 }
 /// @brief Encode one complete interbotix_xs_msgs/msg/JointGroupCommand value.
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
 /// @see Ros2Interbotix_xs_msgsMsgJointGroupCommand; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/msg/JointGroupCommand value.
 /// @details Require the complete 8..392-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Interbotix_xs_msgsMsgJointGroupCommand; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>392) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 interbotix_xs_msgs/msg/JointSingleCommand value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
/// and is identified by UWVMROS1_6c5900103b35fd916f22997cb42cf48016f35edb4783012c1a9029486c03ac94.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros2Interbotix_xs_msgsMsgJointSingleCommand=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/msg/JointSingleCommand in bytes.
 /// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsMsgJointSingleCommand; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=136;
 /// @brief Canonical codec identity of interbotix_xs_msgs/msg/JointSingleCommand.
 /// @details Exact identity UWVMROS1_6c5900103b35fd916f22997cb42cf48016f35edb4783012c1a9029486c03ac94 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsMsgJointSingleCommand; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_6c5900103b35fd916f22997cb42cf48016f35edb4783012c1a9029486c03ac94";
 /// @brief Original ROS type name for interbotix_xs_msgs/msg/JointSingleCommand.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsMsgJointSingleCommand; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/msg/JointSingleCommand";
 /// @brief Selected original native identity for interbotix_xs_msgs/msg/JointSingleCommand.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsMsgJointSingleCommand; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief interbotix_xs_msgs/msg/JointSingleCommand.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgJointSingleCommand; document/platform/trossen/en_US/language/zig/API.md
 field_name: []const u8=&.{},
 /// @brief interbotix_xs_msgs/msg/JointSingleCommand.cmd: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgJointSingleCommand; document/platform/trossen/en_US/language/zig/API.md
 field_cmd: f32=0,
 /// @brief Append every canonical field of interbotix_xs_msgs/msg/JointSingleCommand.
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
 /// @see Ros2Interbotix_xs_msgsMsgJointSingleCommand; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_name,128,false);
  try w.float32(self.field_cmd);
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/msg/JointSingleCommand.
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
 /// @see Ros2Interbotix_xs_msgsMsgJointSingleCommand; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_name=try r.string(128,false);
  value.field_cmd=try r.float32();
  return value;
 }
 /// @brief Encode one complete interbotix_xs_msgs/msg/JointSingleCommand value.
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
 /// @see Ros2Interbotix_xs_msgsMsgJointSingleCommand; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/msg/JointSingleCommand value.
 /// @details Require the complete 8..136-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Interbotix_xs_msgsMsgJointSingleCommand; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>136) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 interbotix_xs_msgs/msg/JointTemps value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8712 bytes
/// and is identified by UWVMROS1_e38f321a150c349a7bc72bbe45d004ac18cd2f147bf4cb73b1d53428a63fd2e4.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros2Interbotix_xs_msgsMsgJointTemps=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/msg/JointTemps in bytes.
 /// @details The inclusive bound is 8712 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsMsgJointTemps; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=8712;
 /// @brief Canonical codec identity of interbotix_xs_msgs/msg/JointTemps.
 /// @details Exact identity UWVMROS1_e38f321a150c349a7bc72bbe45d004ac18cd2f147bf4cb73b1d53428a63fd2e4 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsMsgJointTemps; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_e38f321a150c349a7bc72bbe45d004ac18cd2f147bf4cb73b1d53428a63fd2e4";
 /// @brief Original ROS type name for interbotix_xs_msgs/msg/JointTemps.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsMsgJointTemps; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/msg/JointTemps";
 /// @brief Selected original native identity for interbotix_xs_msgs/msg/JointTemps.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsMsgJointTemps; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief interbotix_xs_msgs/msg/JointTemps.names: string; 0..64 elements; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgJointTemps; document/platform/trossen/en_US/language/zig/API.md
 field_names: [][]const u8=&.{},
 /// @brief interbotix_xs_msgs/msg/JointTemps.temps: int32; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgJointTemps; document/platform/trossen/en_US/language/zig/API.md
 field_temps: []i32=&.{},
 /// @brief Append every canonical field of interbotix_xs_msgs/msg/JointTemps.
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
 /// @see Ros2Interbotix_xs_msgsMsgJointTemps; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  if(self.field_names.len>64) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_names.len)));
  for(self.field_names) |e| {
  try w.string(e,128,false);
  }
  if(self.field_temps.len>64) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_temps.len)));
  for(self.field_temps) |e| {
  try w.integer(e);
  }
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/msg/JointTemps.
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
 /// @see Ros2Interbotix_xs_msgsMsgJointTemps; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  const count0=try r.integer(u32); if(count0>64) return error.Invalid;
  value.field_names=try allocator.alloc([]const u8,count0);
  for(value.field_names) |*e| {
  e.*=try r.string(128,false);
  }
  const count1=try r.integer(u32); if(count1>64) return error.Invalid;
  value.field_temps=try allocator.alloc(i32,count1);
  for(value.field_temps) |*e| {
  e.*=try r.integer(i32);
  }
  return value;
 }
 /// @brief Encode one complete interbotix_xs_msgs/msg/JointTemps value.
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
 /// @see Ros2Interbotix_xs_msgsMsgJointTemps; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/msg/JointTemps value.
 /// @details Require the complete 8..8712-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Interbotix_xs_msgsMsgJointTemps; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>8712) return error.Invalid;
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
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros2Std_msgsMsgHeader=struct {
 /// @brief Maximum canonical extent of std_msgs/msg/Header in bytes.
 /// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Std_msgsMsgHeader; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=140;
 /// @brief Canonical codec identity of std_msgs/msg/Header.
 /// @details Exact identity UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Std_msgsMsgHeader; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96";
 /// @brief Original ROS type name for std_msgs/msg/Header.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Std_msgsMsgHeader; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="std_msgs/msg/Header";
 /// @brief Selected original native identity for std_msgs/msg/Header.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Std_msgsMsgHeader; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief std_msgs/msg/Header.stamp: builtin_interfaces/msg/Time.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Std_msgsMsgHeader; document/platform/trossen/en_US/language/zig/API.md
 field_stamp: Ros2Builtin_interfacesMsgTime=.{},
 /// @brief std_msgs/msg/Header.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Std_msgsMsgHeader; document/platform/trossen/en_US/language/zig/API.md
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
 /// @see Ros2Std_msgsMsgHeader; document/platform/trossen/en_US/language/zig/API.md
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
 /// @see Ros2Std_msgsMsgHeader; document/platform/trossen/en_US/language/zig/API.md
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
 /// @see Ros2Std_msgsMsgHeader; document/platform/trossen/en_US/language/zig/API.md
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
 /// @see Ros2Std_msgsMsgHeader; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<12 or bytes.len>140) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 trajectory_msgs/msg/JointTrajectoryPoint value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 24..536 bytes
/// and is identified by UWVMROS1_1fb219d3c64ec5983d869f0636700f9acc71296a1c104bf39a3a5dd6df7098f1.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros2Trajectory_msgsMsgJointTrajectoryPoint=struct {
 /// @brief Maximum canonical extent of trajectory_msgs/msg/JointTrajectoryPoint in bytes.
 /// @details The inclusive bound is 536 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=536;
 /// @brief Canonical codec identity of trajectory_msgs/msg/JointTrajectoryPoint.
 /// @details Exact identity UWVMROS1_1fb219d3c64ec5983d869f0636700f9acc71296a1c104bf39a3a5dd6df7098f1 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_1fb219d3c64ec5983d869f0636700f9acc71296a1c104bf39a3a5dd6df7098f1";
 /// @brief Original ROS type name for trajectory_msgs/msg/JointTrajectoryPoint.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="trajectory_msgs/msg/JointTrajectoryPoint";
 /// @brief Selected original native identity for trajectory_msgs/msg/JointTrajectoryPoint.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief trajectory_msgs/msg/JointTrajectoryPoint.positions: float64; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/zig/API.md
 field_positions: []f64=&.{},
 /// @brief trajectory_msgs/msg/JointTrajectoryPoint.velocities: float64; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/zig/API.md
 field_velocities: []f64=&.{},
 /// @brief trajectory_msgs/msg/JointTrajectoryPoint.accelerations: float64; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/zig/API.md
 field_accelerations: []f64=&.{},
 /// @brief trajectory_msgs/msg/JointTrajectoryPoint.effort: float64; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/zig/API.md
 field_effort: []f64=&.{},
 /// @brief trajectory_msgs/msg/JointTrajectoryPoint.time_from_start: builtin_interfaces/msg/Duration.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/zig/API.md
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
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  if(self.field_positions.len>16) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_positions.len)));
  for(self.field_positions) |e| {
  try w.float64(e);
  }
  if(self.field_velocities.len>16) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_velocities.len)));
  for(self.field_velocities) |e| {
  try w.float64(e);
  }
  if(self.field_accelerations.len>16) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_accelerations.len)));
  for(self.field_accelerations) |e| {
  try w.float64(e);
  }
  if(self.field_effort.len>16) return error.Invalid;
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
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  const count0=try r.integer(u32); if(count0>16) return error.Invalid;
  value.field_positions=try allocator.alloc(f64,count0);
  for(value.field_positions) |*e| {
  e.*=try r.float64();
  }
  const count1=try r.integer(u32); if(count1>16) return error.Invalid;
  value.field_velocities=try allocator.alloc(f64,count1);
  for(value.field_velocities) |*e| {
  e.*=try r.float64();
  }
  const count2=try r.integer(u32); if(count2>16) return error.Invalid;
  value.field_accelerations=try allocator.alloc(f64,count2);
  for(value.field_accelerations) |*e| {
  e.*=try r.float64();
  }
  const count3=try r.integer(u32); if(count3>16) return error.Invalid;
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
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete trajectory_msgs/msg/JointTrajectoryPoint value.
 /// @details Require the complete 24..536-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<24 or bytes.len>536) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 trajectory_msgs/msg/JointTrajectory value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 20..4404
/// bytes and is identified by UWVMROS1_98c0ef27ef94ae8fb4dd663b60fe91b607e56f32a68618f0e6eb975341b64ba7.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros2Trajectory_msgsMsgJointTrajectory=struct {
 /// @brief Maximum canonical extent of trajectory_msgs/msg/JointTrajectory in bytes.
 /// @details The inclusive bound is 4404 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=4404;
 /// @brief Canonical codec identity of trajectory_msgs/msg/JointTrajectory.
 /// @details Exact identity UWVMROS1_98c0ef27ef94ae8fb4dd663b60fe91b607e56f32a68618f0e6eb975341b64ba7 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_98c0ef27ef94ae8fb4dd663b60fe91b607e56f32a68618f0e6eb975341b64ba7";
 /// @brief Original ROS type name for trajectory_msgs/msg/JointTrajectory.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="trajectory_msgs/msg/JointTrajectory";
 /// @brief Selected original native identity for trajectory_msgs/msg/JointTrajectory.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief trajectory_msgs/msg/JointTrajectory.header: std_msgs/msg/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/zig/API.md
 field_header: Ros2Std_msgsMsgHeader=.{},
 /// @brief trajectory_msgs/msg/JointTrajectory.joint_names: string; 0..16 elements; each string is 0..128 bytes;
 /// strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/zig/API.md
 field_joint_names: [][]const u8=&.{},
 /// @brief trajectory_msgs/msg/JointTrajectory.points: trajectory_msgs/msg/JointTrajectoryPoint; 0..4 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/zig/API.md
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
 /// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_header.writeFields(w);
  if(self.field_joint_names.len>16) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_joint_names.len)));
  for(self.field_joint_names) |e| {
  try w.string(e,128,false);
  }
  if(self.field_points.len>4) return error.Invalid;
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
 /// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_header=try Ros2Std_msgsMsgHeader.readFields(r,allocator);
  const count1=try r.integer(u32); if(count1>16) return error.Invalid;
  value.field_joint_names=try allocator.alloc([]const u8,count1);
  for(value.field_joint_names) |*e| {
  e.*=try r.string(128,false);
  }
  const count2=try r.integer(u32); if(count2>4) return error.Invalid;
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
 /// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete trajectory_msgs/msg/JointTrajectory value.
 /// @details Require the complete 20..4404-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<20 or bytes.len>4404) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 interbotix_xs_msgs/msg/JointTrajectoryCommand value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 28..4668
/// bytes and is identified by UWVMROS1_5695ab0bcd0212bf0fe4ab801303714958f3c862845fefa13078ea8514076f52.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/msg/JointTrajectoryCommand in bytes.
 /// @details The inclusive bound is 4668 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=4668;
 /// @brief Canonical codec identity of interbotix_xs_msgs/msg/JointTrajectoryCommand.
 /// @details Exact identity UWVMROS1_5695ab0bcd0212bf0fe4ab801303714958f3c862845fefa13078ea8514076f52 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_5695ab0bcd0212bf0fe4ab801303714958f3c862845fefa13078ea8514076f52";
 /// @brief Original ROS type name for interbotix_xs_msgs/msg/JointTrajectoryCommand.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/msg/JointTrajectoryCommand";
 /// @brief Selected original native identity for interbotix_xs_msgs/msg/JointTrajectoryCommand.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief interbotix_xs_msgs/msg/JointTrajectoryCommand.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/zig/API.md
 field_cmd_type: []const u8=&.{},
 /// @brief interbotix_xs_msgs/msg/JointTrajectoryCommand.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/zig/API.md
 field_name: []const u8=&.{},
 /// @brief interbotix_xs_msgs/msg/JointTrajectoryCommand.traj: trajectory_msgs/msg/JointTrajectory.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/zig/API.md
 field_traj: Ros2Trajectory_msgsMsgJointTrajectory=.{},
 /// @brief Append every canonical field of interbotix_xs_msgs/msg/JointTrajectoryCommand.
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
 /// @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_cmd_type,128,false);
  try w.string(self.field_name,128,false);
  try self.field_traj.writeFields(w);
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/msg/JointTrajectoryCommand.
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
 /// @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_cmd_type=try r.string(128,false);
  value.field_name=try r.string(128,false);
  value.field_traj=try Ros2Trajectory_msgsMsgJointTrajectory.readFields(r,allocator);
  return value;
 }
 /// @brief Encode one complete interbotix_xs_msgs/msg/JointTrajectoryCommand value.
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
 /// @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/msg/JointTrajectoryCommand value.
 /// @details Require the complete 28..4668-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<28 or bytes.len>4668) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 interbotix_xs_msgs/msg/LocobotJoy value.
/// @details All 16 declared fields are retained in source order. The canonical representation occupies 30..30 bytes
/// and is identified by UWVMROS1_5a2637e1298987f966f0c70e1c2f37d6077d2ce531012b18349b5354f3189633.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros2Interbotix_xs_msgsMsgLocobotJoy=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/msg/LocobotJoy in bytes.
 /// @details The inclusive bound is 30 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=30;
 /// @brief Canonical codec identity of interbotix_xs_msgs/msg/LocobotJoy.
 /// @details Exact identity UWVMROS1_5a2637e1298987f966f0c70e1c2f37d6077d2ce531012b18349b5354f3189633 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_5a2637e1298987f966f0c70e1c2f37d6077d2ce531012b18349b5354f3189633";
 /// @brief Original ROS type name for interbotix_xs_msgs/msg/LocobotJoy.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/msg/LocobotJoy";
 /// @brief Selected original native identity for interbotix_xs_msgs/msg/LocobotJoy.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.RESET_ODOM: original int8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_RESET_ODOM: i8=1;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.PAN_CCW: original int8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_PAN_CCW: i8=2;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.PAN_CW: original int8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_PAN_CW: i8=3;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.TILT_UP: original int8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_TILT_UP: i8=4;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.TILT_DOWN: original int8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_TILT_DOWN: i8=5;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.PAN_TILT_HOME: original int8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_PAN_TILT_HOME: i8=6;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.EE_X_INC: original int8 constant.
 /// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_X_INC: i8=7;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.EE_X_DEC: original int8 constant.
 /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_X_DEC: i8=8;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.EE_Y_INC: original int8 constant.
 /// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_Y_INC: i8=9;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.EE_Y_DEC: original int8 constant.
 /// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_Y_DEC: i8=10;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.EE_Z_INC: original int8 constant.
 /// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_Z_INC: i8=11;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.EE_Z_DEC: original int8 constant.
 /// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_Z_DEC: i8=12;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.EE_ROLL_CCW: original int8 constant.
 /// @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_ROLL_CCW: i8=13;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.EE_ROLL_CW: original int8 constant.
 /// @details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_ROLL_CW: i8=14;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.EE_PITCH_UP: original int8 constant.
 /// @details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_PITCH_UP: i8=15;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.EE_PITCH_DOWN: original int8 constant.
 /// @details Exact admitted value 16. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_PITCH_DOWN: i8=16;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.WAIST_CCW: original int8 constant.
 /// @details Exact admitted value 17. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_WAIST_CCW: i8=17;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.WAIST_CW: original int8 constant.
 /// @details Exact admitted value 18. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_WAIST_CW: i8=18;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.GRIPPER_RELEASE: original int8 constant.
 /// @details Exact admitted value 19. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_GRIPPER_RELEASE: i8=19;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.GRIPPER_GRASP: original int8 constant.
 /// @details Exact admitted value 20. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_GRIPPER_GRASP: i8=20;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.HOME_POSE: original int8 constant.
 /// @details Exact admitted value 21. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_HOME_POSE: i8=21;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.SLEEP_POSE: original int8 constant.
 /// @details Exact admitted value 22. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SLEEP_POSE: i8=22;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.SPEED_INC: original int8 constant.
 /// @details Exact admitted value 23. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SPEED_INC: i8=23;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.SPEED_DEC: original int8 constant.
 /// @details Exact admitted value 24. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SPEED_DEC: i8=24;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.SPEED_COARSE: original int8 constant.
 /// @details Exact admitted value 25. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SPEED_COARSE: i8=25;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.SPEED_FINE: original int8 constant.
 /// @details Exact admitted value 26. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SPEED_FINE: i8=26;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.GRIPPER_PWM_INC: original int8 constant.
 /// @details Exact admitted value 27. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_GRIPPER_PWM_INC: i8=27;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.GRIPPER_PWM_DEC: original int8 constant.
 /// @details Exact admitted value 28. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_GRIPPER_PWM_DEC: i8=28;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.base_x_cmd: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 field_base_x_cmd: f64=0,
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.base_theta_cmd: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 field_base_theta_cmd: f64=0,
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.base_reset_odom_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 field_base_reset_odom_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.pan_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 field_pan_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.tilt_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 field_tilt_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.ee_x_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 field_ee_x_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.ee_y_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 field_ee_y_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.ee_z_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 field_ee_z_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.ee_roll_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 field_ee_roll_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.ee_pitch_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 field_ee_pitch_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.waist_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 field_waist_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.gripper_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 field_gripper_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.pose_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 field_pose_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.speed_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 field_speed_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.speed_toggle_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 field_speed_toggle_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.gripper_pwm_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 field_gripper_pwm_cmd: i8=0,
 /// @brief Append every canonical field of interbotix_xs_msgs/msg/LocobotJoy.
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
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.float64(self.field_base_x_cmd);
  try w.float64(self.field_base_theta_cmd);
  try w.integer(self.field_base_reset_odom_cmd);
  try w.integer(self.field_pan_cmd);
  try w.integer(self.field_tilt_cmd);
  try w.integer(self.field_ee_x_cmd);
  try w.integer(self.field_ee_y_cmd);
  try w.integer(self.field_ee_z_cmd);
  try w.integer(self.field_ee_roll_cmd);
  try w.integer(self.field_ee_pitch_cmd);
  try w.integer(self.field_waist_cmd);
  try w.integer(self.field_gripper_cmd);
  try w.integer(self.field_pose_cmd);
  try w.integer(self.field_speed_cmd);
  try w.integer(self.field_speed_toggle_cmd);
  try w.integer(self.field_gripper_pwm_cmd);
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/msg/LocobotJoy.
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
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_base_x_cmd=try r.float64();
  value.field_base_theta_cmd=try r.float64();
  value.field_base_reset_odom_cmd=try r.integer(i8);
  value.field_pan_cmd=try r.integer(i8);
  value.field_tilt_cmd=try r.integer(i8);
  value.field_ee_x_cmd=try r.integer(i8);
  value.field_ee_y_cmd=try r.integer(i8);
  value.field_ee_z_cmd=try r.integer(i8);
  value.field_ee_roll_cmd=try r.integer(i8);
  value.field_ee_pitch_cmd=try r.integer(i8);
  value.field_waist_cmd=try r.integer(i8);
  value.field_gripper_cmd=try r.integer(i8);
  value.field_pose_cmd=try r.integer(i8);
  value.field_speed_cmd=try r.integer(i8);
  value.field_speed_toggle_cmd=try r.integer(i8);
  value.field_gripper_pwm_cmd=try r.integer(i8);
  return value;
 }
 /// @brief Encode one complete interbotix_xs_msgs/msg/LocobotJoy value.
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
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/msg/LocobotJoy value.
 /// @details Require the complete 30..30-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<30 or bytes.len>30) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 interbotix_xs_msgs/msg/TurretJoy value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
/// and is identified by UWVMROS1_ed098904f5694e04331c31f8096f8c4f7b3f938ffa0007b65cba5ea2f6c36e0f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros2Interbotix_xs_msgsMsgTurretJoy=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/msg/TurretJoy in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=4;
 /// @brief Canonical codec identity of interbotix_xs_msgs/msg/TurretJoy.
 /// @details Exact identity UWVMROS1_ed098904f5694e04331c31f8096f8c4f7b3f938ffa0007b65cba5ea2f6c36e0f binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_ed098904f5694e04331c31f8096f8c4f7b3f938ffa0007b65cba5ea2f6c36e0f";
 /// @brief Original ROS type name for interbotix_xs_msgs/msg/TurretJoy.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/msg/TurretJoy";
 /// @brief Selected original native identity for interbotix_xs_msgs/msg/TurretJoy.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief interbotix_xs_msgs/msg/TurretJoy.PAN_CCW: original int8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_PAN_CCW: i8=1;
 /// @brief interbotix_xs_msgs/msg/TurretJoy.PAN_CW: original int8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_PAN_CW: i8=2;
 /// @brief interbotix_xs_msgs/msg/TurretJoy.TILT_UP: original int8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_TILT_UP: i8=3;
 /// @brief interbotix_xs_msgs/msg/TurretJoy.TILT_DOWN: original int8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_TILT_DOWN: i8=4;
 /// @brief interbotix_xs_msgs/msg/TurretJoy.PAN_TILT_HOME: original int8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_PAN_TILT_HOME: i8=5;
 /// @brief interbotix_xs_msgs/msg/TurretJoy.SPEED_INC: original int8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SPEED_INC: i8=6;
 /// @brief interbotix_xs_msgs/msg/TurretJoy.SPEED_DEC: original int8 constant.
 /// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SPEED_DEC: i8=7;
 /// @brief interbotix_xs_msgs/msg/TurretJoy.SPEED_COARSE: original int8 constant.
 /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SPEED_COARSE: i8=8;
 /// @brief interbotix_xs_msgs/msg/TurretJoy.SPEED_FINE: original int8 constant.
 /// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SPEED_FINE: i8=9;
 /// @brief interbotix_xs_msgs/msg/TurretJoy.pan_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 field_pan_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/TurretJoy.tilt_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 field_tilt_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/TurretJoy.speed_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 field_speed_cmd: i8=0,
 /// @brief interbotix_xs_msgs/msg/TurretJoy.speed_toggle_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 field_speed_toggle_cmd: i8=0,
 /// @brief Append every canonical field of interbotix_xs_msgs/msg/TurretJoy.
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
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_pan_cmd);
  try w.integer(self.field_tilt_cmd);
  try w.integer(self.field_speed_cmd);
  try w.integer(self.field_speed_toggle_cmd);
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/msg/TurretJoy.
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
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_pan_cmd=try r.integer(i8);
  value.field_tilt_cmd=try r.integer(i8);
  value.field_speed_cmd=try r.integer(i8);
  value.field_speed_toggle_cmd=try r.integer(i8);
  return value;
 }
 /// @brief Encode one complete interbotix_xs_msgs/msg/TurretJoy value.
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
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/msg/TurretJoy value.
 /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<4 or bytes.len>4) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 interbotix_xs_msgs/srv/MotorGains_Request value.
/// @details All 9 declared fields are retained in source order. The canonical representation occupies 36..292 bytes
/// and is identified by UWVMROS1_1d4391978c6f8e54b26f7b5b16a56bc8bbe81f170e702082f1eee5a28ce1587f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros2Interbotix_xs_msgsSrvMotorGains_Request=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/srv/MotorGains_Request in bytes.
 /// @details The inclusive bound is 292 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=292;
 /// @brief Canonical codec identity of interbotix_xs_msgs/srv/MotorGains_Request.
 /// @details Exact identity UWVMROS1_1d4391978c6f8e54b26f7b5b16a56bc8bbe81f170e702082f1eee5a28ce1587f binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_1d4391978c6f8e54b26f7b5b16a56bc8bbe81f170e702082f1eee5a28ce1587f";
 /// @brief Original ROS type name for interbotix_xs_msgs/srv/MotorGains_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/srv/MotorGains_Request";
 /// @brief Selected original native identity for interbotix_xs_msgs/srv/MotorGains_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief interbotix_xs_msgs/srv/MotorGains_Request.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/zig/API.md
 field_cmd_type: []const u8=&.{},
 /// @brief interbotix_xs_msgs/srv/MotorGains_Request.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/zig/API.md
 field_name: []const u8=&.{},
 /// @brief interbotix_xs_msgs/srv/MotorGains_Request.kp_pos: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/zig/API.md
 field_kp_pos: i32=0,
 /// @brief interbotix_xs_msgs/srv/MotorGains_Request.ki_pos: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/zig/API.md
 field_ki_pos: i32=0,
 /// @brief interbotix_xs_msgs/srv/MotorGains_Request.kd_pos: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/zig/API.md
 field_kd_pos: i32=0,
 /// @brief interbotix_xs_msgs/srv/MotorGains_Request.k1: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/zig/API.md
 field_k1: i32=0,
 /// @brief interbotix_xs_msgs/srv/MotorGains_Request.k2: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/zig/API.md
 field_k2: i32=0,
 /// @brief interbotix_xs_msgs/srv/MotorGains_Request.kp_vel: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/zig/API.md
 field_kp_vel: i32=0,
 /// @brief interbotix_xs_msgs/srv/MotorGains_Request.ki_vel: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/zig/API.md
 field_ki_vel: i32=0,
 /// @brief Append every canonical field of interbotix_xs_msgs/srv/MotorGains_Request.
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
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_cmd_type,128,false);
  try w.string(self.field_name,128,false);
  try w.integer(self.field_kp_pos);
  try w.integer(self.field_ki_pos);
  try w.integer(self.field_kd_pos);
  try w.integer(self.field_k1);
  try w.integer(self.field_k2);
  try w.integer(self.field_kp_vel);
  try w.integer(self.field_ki_vel);
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/MotorGains_Request.
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
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_cmd_type=try r.string(128,false);
  value.field_name=try r.string(128,false);
  value.field_kp_pos=try r.integer(i32);
  value.field_ki_pos=try r.integer(i32);
  value.field_kd_pos=try r.integer(i32);
  value.field_k1=try r.integer(i32);
  value.field_k2=try r.integer(i32);
  value.field_kp_vel=try r.integer(i32);
  value.field_ki_vel=try r.integer(i32);
  return value;
 }
 /// @brief Encode one complete interbotix_xs_msgs/srv/MotorGains_Request value.
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
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/srv/MotorGains_Request value.
 /// @details Require the complete 36..292-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<36 or bytes.len>292) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 interbotix_xs_msgs/srv/MotorGains_Response value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes
/// and is identified by UWVMROS1_fade5fb84bdb51114ae0aa3a37d96b2fa6d29718f0ee1b688079459f948d7972.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros2Interbotix_xs_msgsSrvMotorGains_Response=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/srv/MotorGains_Response in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Response; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=0;
 /// @brief Canonical codec identity of interbotix_xs_msgs/srv/MotorGains_Response.
 /// @details Exact identity UWVMROS1_fade5fb84bdb51114ae0aa3a37d96b2fa6d29718f0ee1b688079459f948d7972 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Response; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_fade5fb84bdb51114ae0aa3a37d96b2fa6d29718f0ee1b688079459f948d7972";
 /// @brief Original ROS type name for interbotix_xs_msgs/srv/MotorGains_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Response; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/srv/MotorGains_Response";
 /// @brief Selected original native identity for interbotix_xs_msgs/srv/MotorGains_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Response; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief Append every canonical field of interbotix_xs_msgs/srv/MotorGains_Response.
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
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Response; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  _=self; _=w;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/MotorGains_Response.
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
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Response; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  const value: @This()=.{};
  _=r; _=allocator;
  return value;
 }
 /// @brief Encode one complete interbotix_xs_msgs/srv/MotorGains_Response value.
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
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Response; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/srv/MotorGains_Response value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Response; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<0 or bytes.len>0) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 interbotix_xs_msgs/srv/OperatingModes_Request value.
/// @details All 6 declared fields are retained in source order. The canonical representation occupies 24..536 bytes
/// and is identified by UWVMROS1_79c4fb8d937d09f9bd7d97774174db4a647070f564f4496c9e77d117cba27f15.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros2Interbotix_xs_msgsSrvOperatingModes_Request=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/srv/OperatingModes_Request in bytes.
 /// @details The inclusive bound is 536 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=536;
 /// @brief Canonical codec identity of interbotix_xs_msgs/srv/OperatingModes_Request.
 /// @details Exact identity UWVMROS1_79c4fb8d937d09f9bd7d97774174db4a647070f564f4496c9e77d117cba27f15 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_79c4fb8d937d09f9bd7d97774174db4a647070f564f4496c9e77d117cba27f15";
 /// @brief Original ROS type name for interbotix_xs_msgs/srv/OperatingModes_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/srv/OperatingModes_Request";
 /// @brief Selected original native identity for interbotix_xs_msgs/srv/OperatingModes_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief interbotix_xs_msgs/srv/OperatingModes_Request.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/zig/API.md
 field_cmd_type: []const u8=&.{},
 /// @brief interbotix_xs_msgs/srv/OperatingModes_Request.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/zig/API.md
 field_name: []const u8=&.{},
 /// @brief interbotix_xs_msgs/srv/OperatingModes_Request.mode: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/zig/API.md
 field_mode: []const u8=&.{},
 /// @brief interbotix_xs_msgs/srv/OperatingModes_Request.profile_type: string; each string is 0..128 bytes; strict
 /// UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/zig/API.md
 field_profile_type: []const u8=&.{},
 /// @brief interbotix_xs_msgs/srv/OperatingModes_Request.profile_velocity: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/zig/API.md
 field_profile_velocity: i32=0,
 /// @brief interbotix_xs_msgs/srv/OperatingModes_Request.profile_acceleration: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/zig/API.md
 field_profile_acceleration: i32=0,
 /// @brief Append every canonical field of interbotix_xs_msgs/srv/OperatingModes_Request.
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
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_cmd_type,128,false);
  try w.string(self.field_name,128,false);
  try w.string(self.field_mode,128,false);
  try w.string(self.field_profile_type,128,false);
  try w.integer(self.field_profile_velocity);
  try w.integer(self.field_profile_acceleration);
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/OperatingModes_Request.
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
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_cmd_type=try r.string(128,false);
  value.field_name=try r.string(128,false);
  value.field_mode=try r.string(128,false);
  value.field_profile_type=try r.string(128,false);
  value.field_profile_velocity=try r.integer(i32);
  value.field_profile_acceleration=try r.integer(i32);
  return value;
 }
 /// @brief Encode one complete interbotix_xs_msgs/srv/OperatingModes_Request value.
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
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/srv/OperatingModes_Request value.
 /// @details Require the complete 24..536-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<24 or bytes.len>536) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 interbotix_xs_msgs/srv/OperatingModes_Response value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes
/// and is identified by UWVMROS1_28180c90e6e146915e81a6e9312148c6ce27741d3e0df6fb82abef65bb658345.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros2Interbotix_xs_msgsSrvOperatingModes_Response=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/srv/OperatingModes_Response in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Response; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=0;
 /// @brief Canonical codec identity of interbotix_xs_msgs/srv/OperatingModes_Response.
 /// @details Exact identity UWVMROS1_28180c90e6e146915e81a6e9312148c6ce27741d3e0df6fb82abef65bb658345 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Response; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_28180c90e6e146915e81a6e9312148c6ce27741d3e0df6fb82abef65bb658345";
 /// @brief Original ROS type name for interbotix_xs_msgs/srv/OperatingModes_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Response; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/srv/OperatingModes_Response";
 /// @brief Selected original native identity for interbotix_xs_msgs/srv/OperatingModes_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Response; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief Append every canonical field of interbotix_xs_msgs/srv/OperatingModes_Response.
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
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Response; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  _=self; _=w;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/OperatingModes_Response.
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
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Response; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  const value: @This()=.{};
  _=r; _=allocator;
  return value;
 }
 /// @brief Encode one complete interbotix_xs_msgs/srv/OperatingModes_Response value.
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
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Response; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/srv/OperatingModes_Response value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Response; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<0 or bytes.len>0) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 interbotix_xs_msgs/srv/Reboot_Request value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 10..266 bytes
/// and is identified by UWVMROS1_877df815d5efae67de6098b2280ed73b6e93d9db6024622d522112de52eccd55.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros2Interbotix_xs_msgsSrvReboot_Request=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/srv/Reboot_Request in bytes.
 /// @details The inclusive bound is 266 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=266;
 /// @brief Canonical codec identity of interbotix_xs_msgs/srv/Reboot_Request.
 /// @details Exact identity UWVMROS1_877df815d5efae67de6098b2280ed73b6e93d9db6024622d522112de52eccd55 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_877df815d5efae67de6098b2280ed73b6e93d9db6024622d522112de52eccd55";
 /// @brief Original ROS type name for interbotix_xs_msgs/srv/Reboot_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/srv/Reboot_Request";
 /// @brief Selected original native identity for interbotix_xs_msgs/srv/Reboot_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief interbotix_xs_msgs/srv/Reboot_Request.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/zig/API.md
 field_cmd_type: []const u8=&.{},
 /// @brief interbotix_xs_msgs/srv/Reboot_Request.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/zig/API.md
 field_name: []const u8=&.{},
 /// @brief interbotix_xs_msgs/srv/Reboot_Request.enable: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/zig/API.md
 field_enable: bool=false,
 /// @brief interbotix_xs_msgs/srv/Reboot_Request.smart_reboot: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/zig/API.md
 field_smart_reboot: bool=false,
 /// @brief Append every canonical field of interbotix_xs_msgs/srv/Reboot_Request.
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
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_cmd_type,128,false);
  try w.string(self.field_name,128,false);
  try w.boolean(self.field_enable);
  try w.boolean(self.field_smart_reboot);
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/Reboot_Request.
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
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_cmd_type=try r.string(128,false);
  value.field_name=try r.string(128,false);
  value.field_enable=try r.boolean();
  value.field_smart_reboot=try r.boolean();
  return value;
 }
 /// @brief Encode one complete interbotix_xs_msgs/srv/Reboot_Request value.
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
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/srv/Reboot_Request value.
 /// @details Require the complete 10..266-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<10 or bytes.len>266) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 interbotix_xs_msgs/srv/Reboot_Response value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes
/// and is identified by UWVMROS1_00761585231e339f21ff40ffd8b9a025d67fe16b7d33410171c430d2aa2c051b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros2Interbotix_xs_msgsSrvReboot_Response=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/srv/Reboot_Response in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Response; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=0;
 /// @brief Canonical codec identity of interbotix_xs_msgs/srv/Reboot_Response.
 /// @details Exact identity UWVMROS1_00761585231e339f21ff40ffd8b9a025d67fe16b7d33410171c430d2aa2c051b binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Response; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_00761585231e339f21ff40ffd8b9a025d67fe16b7d33410171c430d2aa2c051b";
 /// @brief Original ROS type name for interbotix_xs_msgs/srv/Reboot_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Response; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/srv/Reboot_Response";
 /// @brief Selected original native identity for interbotix_xs_msgs/srv/Reboot_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Response; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief Append every canonical field of interbotix_xs_msgs/srv/Reboot_Response.
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
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Response; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  _=self; _=w;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/Reboot_Response.
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
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Response; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  const value: @This()=.{};
  _=r; _=allocator;
  return value;
 }
 /// @brief Encode one complete interbotix_xs_msgs/srv/Reboot_Response value.
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
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Response; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/srv/Reboot_Response value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Response; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<0 or bytes.len>0) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 interbotix_xs_msgs/srv/RegisterValues_Request value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 16..400 bytes
/// and is identified by UWVMROS1_73ad91bb12d7c5ee8142f3657c3238a9bd547468e31a74f19a469343bd3241fd.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros2Interbotix_xs_msgsSrvRegisterValues_Request=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/srv/RegisterValues_Request in bytes.
 /// @details The inclusive bound is 400 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=400;
 /// @brief Canonical codec identity of interbotix_xs_msgs/srv/RegisterValues_Request.
 /// @details Exact identity UWVMROS1_73ad91bb12d7c5ee8142f3657c3238a9bd547468e31a74f19a469343bd3241fd binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_73ad91bb12d7c5ee8142f3657c3238a9bd547468e31a74f19a469343bd3241fd";
 /// @brief Original ROS type name for interbotix_xs_msgs/srv/RegisterValues_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/srv/RegisterValues_Request";
 /// @brief Selected original native identity for interbotix_xs_msgs/srv/RegisterValues_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief interbotix_xs_msgs/srv/RegisterValues_Request.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/zig/API.md
 field_cmd_type: []const u8=&.{},
 /// @brief interbotix_xs_msgs/srv/RegisterValues_Request.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/zig/API.md
 field_name: []const u8=&.{},
 /// @brief interbotix_xs_msgs/srv/RegisterValues_Request.reg: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/zig/API.md
 field_reg: []const u8=&.{},
 /// @brief interbotix_xs_msgs/srv/RegisterValues_Request.value: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/zig/API.md
 field_value: i32=0,
 /// @brief Append every canonical field of interbotix_xs_msgs/srv/RegisterValues_Request.
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
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_cmd_type,128,false);
  try w.string(self.field_name,128,false);
  try w.string(self.field_reg,128,false);
  try w.integer(self.field_value);
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/RegisterValues_Request.
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
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_cmd_type=try r.string(128,false);
  value.field_name=try r.string(128,false);
  value.field_reg=try r.string(128,false);
  value.field_value=try r.integer(i32);
  return value;
 }
 /// @brief Encode one complete interbotix_xs_msgs/srv/RegisterValues_Request value.
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
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/srv/RegisterValues_Request value.
 /// @details Require the complete 16..400-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<16 or bytes.len>400) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 interbotix_xs_msgs/srv/RegisterValues_Response value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..68 bytes
/// and is identified by UWVMROS1_f8e4d0f5065281434cbd3c3845c92458348541dd0fc477b2552856941a58120a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros2Interbotix_xs_msgsSrvRegisterValues_Response=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/srv/RegisterValues_Response in bytes.
 /// @details The inclusive bound is 68 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Response; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=68;
 /// @brief Canonical codec identity of interbotix_xs_msgs/srv/RegisterValues_Response.
 /// @details Exact identity UWVMROS1_f8e4d0f5065281434cbd3c3845c92458348541dd0fc477b2552856941a58120a binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Response; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_f8e4d0f5065281434cbd3c3845c92458348541dd0fc477b2552856941a58120a";
 /// @brief Original ROS type name for interbotix_xs_msgs/srv/RegisterValues_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Response; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/srv/RegisterValues_Response";
 /// @brief Selected original native identity for interbotix_xs_msgs/srv/RegisterValues_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Response; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief interbotix_xs_msgs/srv/RegisterValues_Response.values: int32; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Response; document/platform/trossen/en_US/language/zig/API.md
 field_values: []i32=&.{},
 /// @brief Append every canonical field of interbotix_xs_msgs/srv/RegisterValues_Response.
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
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Response; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  if(self.field_values.len>16) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_values.len)));
  for(self.field_values) |e| {
  try w.integer(e);
  }
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/RegisterValues_Response.
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
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Response; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  const count0=try r.integer(u32); if(count0>16) return error.Invalid;
  value.field_values=try allocator.alloc(i32,count0);
  for(value.field_values) |*e| {
  e.*=try r.integer(i32);
  }
  return value;
 }
 /// @brief Encode one complete interbotix_xs_msgs/srv/RegisterValues_Response value.
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
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Response; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/srv/RegisterValues_Response value.
 /// @details Require the complete 4..68-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Response; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<4 or bytes.len>68) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 interbotix_xs_msgs/srv/RobotInfo_Request value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..264 bytes
/// and is identified by UWVMROS1_af4294279451a23fccc9c274609eb11479004d92b62ffa4e1dece0e88927a6f9.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros2Interbotix_xs_msgsSrvRobotInfo_Request=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/srv/RobotInfo_Request in bytes.
 /// @details The inclusive bound is 264 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Request; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=264;
 /// @brief Canonical codec identity of interbotix_xs_msgs/srv/RobotInfo_Request.
 /// @details Exact identity UWVMROS1_af4294279451a23fccc9c274609eb11479004d92b62ffa4e1dece0e88927a6f9 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Request; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_af4294279451a23fccc9c274609eb11479004d92b62ffa4e1dece0e88927a6f9";
 /// @brief Original ROS type name for interbotix_xs_msgs/srv/RobotInfo_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Request; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/srv/RobotInfo_Request";
 /// @brief Selected original native identity for interbotix_xs_msgs/srv/RobotInfo_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Request; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief interbotix_xs_msgs/srv/RobotInfo_Request.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Request; document/platform/trossen/en_US/language/zig/API.md
 field_cmd_type: []const u8=&.{},
 /// @brief interbotix_xs_msgs/srv/RobotInfo_Request.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Request; document/platform/trossen/en_US/language/zig/API.md
 field_name: []const u8=&.{},
 /// @brief Append every canonical field of interbotix_xs_msgs/srv/RobotInfo_Request.
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
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Request; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_cmd_type,128,false);
  try w.string(self.field_name,128,false);
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/RobotInfo_Request.
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
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Request; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_cmd_type=try r.string(128,false);
  value.field_name=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete interbotix_xs_msgs/srv/RobotInfo_Request value.
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
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Request; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/srv/RobotInfo_Request value.
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
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Request; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>264) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 interbotix_xs_msgs/srv/RobotInfo_Response value.
/// @details All 11 declared fields are retained in source order. The canonical representation occupies 42..18474
/// bytes and is identified by UWVMROS1_28722f2f9b200bbe87da55a7ea34bdc98ea278f7332acaf45a59d318e0ea8b14.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros2Interbotix_xs_msgsSrvRobotInfo_Response=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/srv/RobotInfo_Response in bytes.
 /// @details The inclusive bound is 18474 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=18474;
 /// @brief Canonical codec identity of interbotix_xs_msgs/srv/RobotInfo_Response.
 /// @details Exact identity UWVMROS1_28722f2f9b200bbe87da55a7ea34bdc98ea278f7332acaf45a59d318e0ea8b14 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_28722f2f9b200bbe87da55a7ea34bdc98ea278f7332acaf45a59d318e0ea8b14";
 /// @brief Original ROS type name for interbotix_xs_msgs/srv/RobotInfo_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/srv/RobotInfo_Response";
 /// @brief Selected original native identity for interbotix_xs_msgs/srv/RobotInfo_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief interbotix_xs_msgs/srv/RobotInfo_Response.mode: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/zig/API.md
 field_mode: []const u8=&.{},
 /// @brief interbotix_xs_msgs/srv/RobotInfo_Response.profile_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/zig/API.md
 field_profile_type: []const u8=&.{},
 /// @brief interbotix_xs_msgs/srv/RobotInfo_Response.joint_names: string; 0..64 elements; each string is 0..128
 /// bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/zig/API.md
 field_joint_names: [][]const u8=&.{},
 /// @brief interbotix_xs_msgs/srv/RobotInfo_Response.joint_ids: int16; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/zig/API.md
 field_joint_ids: []i16=&.{},
 /// @brief interbotix_xs_msgs/srv/RobotInfo_Response.joint_lower_limits: float32; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/zig/API.md
 field_joint_lower_limits: []f32=&.{},
 /// @brief interbotix_xs_msgs/srv/RobotInfo_Response.joint_upper_limits: float32; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/zig/API.md
 field_joint_upper_limits: []f32=&.{},
 /// @brief interbotix_xs_msgs/srv/RobotInfo_Response.joint_velocity_limits: float32; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/zig/API.md
 field_joint_velocity_limits: []f32=&.{},
 /// @brief interbotix_xs_msgs/srv/RobotInfo_Response.joint_sleep_positions: float32; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/zig/API.md
 field_joint_sleep_positions: []f32=&.{},
 /// @brief interbotix_xs_msgs/srv/RobotInfo_Response.joint_state_indices: int16; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/zig/API.md
 field_joint_state_indices: []i16=&.{},
 /// @brief interbotix_xs_msgs/srv/RobotInfo_Response.num_joints: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/zig/API.md
 field_num_joints: i16=0,
 /// @brief interbotix_xs_msgs/srv/RobotInfo_Response.name: string; 0..64 elements; each string is 0..128 bytes;
 /// strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/zig/API.md
 field_name: [][]const u8=&.{},
 /// @brief Append every canonical field of interbotix_xs_msgs/srv/RobotInfo_Response.
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
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_mode,128,false);
  try w.string(self.field_profile_type,128,false);
  if(self.field_joint_names.len>64) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_joint_names.len)));
  for(self.field_joint_names) |e| {
  try w.string(e,128,false);
  }
  if(self.field_joint_ids.len>64) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_joint_ids.len)));
  for(self.field_joint_ids) |e| {
  try w.integer(e);
  }
  if(self.field_joint_lower_limits.len>64) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_joint_lower_limits.len)));
  for(self.field_joint_lower_limits) |e| {
  try w.float32(e);
  }
  if(self.field_joint_upper_limits.len>64) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_joint_upper_limits.len)));
  for(self.field_joint_upper_limits) |e| {
  try w.float32(e);
  }
  if(self.field_joint_velocity_limits.len>64) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_joint_velocity_limits.len)));
  for(self.field_joint_velocity_limits) |e| {
  try w.float32(e);
  }
  if(self.field_joint_sleep_positions.len>64) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_joint_sleep_positions.len)));
  for(self.field_joint_sleep_positions) |e| {
  try w.float32(e);
  }
  if(self.field_joint_state_indices.len>64) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_joint_state_indices.len)));
  for(self.field_joint_state_indices) |e| {
  try w.integer(e);
  }
  try w.integer(self.field_num_joints);
  if(self.field_name.len>64) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_name.len)));
  for(self.field_name) |e| {
  try w.string(e,128,false);
  }
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/RobotInfo_Response.
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
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_mode=try r.string(128,false);
  value.field_profile_type=try r.string(128,false);
  const count2=try r.integer(u32); if(count2>64) return error.Invalid;
  value.field_joint_names=try allocator.alloc([]const u8,count2);
  for(value.field_joint_names) |*e| {
  e.*=try r.string(128,false);
  }
  const count3=try r.integer(u32); if(count3>64) return error.Invalid;
  value.field_joint_ids=try allocator.alloc(i16,count3);
  for(value.field_joint_ids) |*e| {
  e.*=try r.integer(i16);
  }
  const count4=try r.integer(u32); if(count4>64) return error.Invalid;
  value.field_joint_lower_limits=try allocator.alloc(f32,count4);
  for(value.field_joint_lower_limits) |*e| {
  e.*=try r.float32();
  }
  const count5=try r.integer(u32); if(count5>64) return error.Invalid;
  value.field_joint_upper_limits=try allocator.alloc(f32,count5);
  for(value.field_joint_upper_limits) |*e| {
  e.*=try r.float32();
  }
  const count6=try r.integer(u32); if(count6>64) return error.Invalid;
  value.field_joint_velocity_limits=try allocator.alloc(f32,count6);
  for(value.field_joint_velocity_limits) |*e| {
  e.*=try r.float32();
  }
  const count7=try r.integer(u32); if(count7>64) return error.Invalid;
  value.field_joint_sleep_positions=try allocator.alloc(f32,count7);
  for(value.field_joint_sleep_positions) |*e| {
  e.*=try r.float32();
  }
  const count8=try r.integer(u32); if(count8>64) return error.Invalid;
  value.field_joint_state_indices=try allocator.alloc(i16,count8);
  for(value.field_joint_state_indices) |*e| {
  e.*=try r.integer(i16);
  }
  value.field_num_joints=try r.integer(i16);
  const count10=try r.integer(u32); if(count10>64) return error.Invalid;
  value.field_name=try allocator.alloc([]const u8,count10);
  for(value.field_name) |*e| {
  e.*=try r.string(128,false);
  }
  return value;
 }
 /// @brief Encode one complete interbotix_xs_msgs/srv/RobotInfo_Response value.
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
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/srv/RobotInfo_Response value.
 /// @details Require the complete 42..18474-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<42 or bytes.len>18474) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 interbotix_xs_msgs/srv/TorqueEnable_Request value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 9..265 bytes
/// and is identified by UWVMROS1_f5c5aa1cc5b2d81b7a8c70d4ad420315129124e151b9cbd6419ae5ece83297da.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros2Interbotix_xs_msgsSrvTorqueEnable_Request=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/srv/TorqueEnable_Request in bytes.
 /// @details The inclusive bound is 265 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=265;
 /// @brief Canonical codec identity of interbotix_xs_msgs/srv/TorqueEnable_Request.
 /// @details Exact identity UWVMROS1_f5c5aa1cc5b2d81b7a8c70d4ad420315129124e151b9cbd6419ae5ece83297da binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_f5c5aa1cc5b2d81b7a8c70d4ad420315129124e151b9cbd6419ae5ece83297da";
 /// @brief Original ROS type name for interbotix_xs_msgs/srv/TorqueEnable_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/srv/TorqueEnable_Request";
 /// @brief Selected original native identity for interbotix_xs_msgs/srv/TorqueEnable_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief interbotix_xs_msgs/srv/TorqueEnable_Request.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/zig/API.md
 field_cmd_type: []const u8=&.{},
 /// @brief interbotix_xs_msgs/srv/TorqueEnable_Request.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/zig/API.md
 field_name: []const u8=&.{},
 /// @brief interbotix_xs_msgs/srv/TorqueEnable_Request.enable: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/zig/API.md
 field_enable: bool=false,
 /// @brief Append every canonical field of interbotix_xs_msgs/srv/TorqueEnable_Request.
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
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_cmd_type,128,false);
  try w.string(self.field_name,128,false);
  try w.boolean(self.field_enable);
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/TorqueEnable_Request.
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
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_cmd_type=try r.string(128,false);
  value.field_name=try r.string(128,false);
  value.field_enable=try r.boolean();
  return value;
 }
 /// @brief Encode one complete interbotix_xs_msgs/srv/TorqueEnable_Request value.
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
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/srv/TorqueEnable_Request value.
 /// @details Require the complete 9..265-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<9 or bytes.len>265) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 interbotix_xs_msgs/srv/TorqueEnable_Response value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes
/// and is identified by UWVMROS1_6ef9f0b62d47e7cf7f9761869145d65eaad9fd157f3bd0c5f87437f8d1b5d31b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros2Interbotix_xs_msgsSrvTorqueEnable_Response=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/srv/TorqueEnable_Response in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Response; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=0;
 /// @brief Canonical codec identity of interbotix_xs_msgs/srv/TorqueEnable_Response.
 /// @details Exact identity UWVMROS1_6ef9f0b62d47e7cf7f9761869145d65eaad9fd157f3bd0c5f87437f8d1b5d31b binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Response; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_6ef9f0b62d47e7cf7f9761869145d65eaad9fd157f3bd0c5f87437f8d1b5d31b";
 /// @brief Original ROS type name for interbotix_xs_msgs/srv/TorqueEnable_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Response; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/srv/TorqueEnable_Response";
 /// @brief Selected original native identity for interbotix_xs_msgs/srv/TorqueEnable_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Response; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief Append every canonical field of interbotix_xs_msgs/srv/TorqueEnable_Response.
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
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Response; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  _=self; _=w;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/TorqueEnable_Response.
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
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Response; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  const value: @This()=.{};
  _=r; _=allocator;
  return value;
 }
 /// @brief Encode one complete interbotix_xs_msgs/srv/TorqueEnable_Response value.
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
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Response; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/srv/TorqueEnable_Response value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Response; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<0 or bytes.len>0) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
