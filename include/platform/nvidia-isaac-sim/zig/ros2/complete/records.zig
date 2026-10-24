// ! Generated complete bounded values; all allocation is explicit.
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
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/zig/API-CONTRACT.md
 field_sec: i32=0,
 /// @brief builtin_interfaces/msg/Time.nanosec: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
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
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
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
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
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
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
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
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
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
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Std_msgsMsgHeader; share/platform/ros/zig/API-CONTRACT.md
 field_stamp: Ros2Builtin_interfacesMsgTime=.{},
 /// @brief std_msgs/msg/Header.frame_id: string; each string is 0..64 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
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
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
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
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
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
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
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
 /// @details Require the complete 12..76-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Std_msgsMsgHeader; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<12 or bytes.len>76) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 sensor_msgs/msg/JointState value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 28..5980 bytes
/// and is identified by UWVMROS1_2fe8e1de38676a3880ca61266fb575e3625198e66a1da1708cf8c103cb829cac.
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
 /// @details The inclusive bound is 5980 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=5980;
 /// @brief Canonical codec identity of sensor_msgs/msg/JointState.
 /// @details Exact identity UWVMROS1_2fe8e1de38676a3880ca61266fb575e3625198e66a1da1708cf8c103cb829cac binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_2fe8e1de38676a3880ca61266fb575e3625198e66a1da1708cf8c103cb829cac";
 /// @brief Original ROS type name for sensor_msgs/msg/JointState.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="sensor_msgs/msg/JointState";
 /// @brief Selected original native identity for sensor_msgs/msg/JointState.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief sensor_msgs/msg/JointState.header: std_msgs/msg/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader=.{},
 /// @brief sensor_msgs/msg/JointState.name: string; 0..64 elements; each string is 0..64 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
 field_name: [][]const u8=&.{},
 /// @brief sensor_msgs/msg/JointState.position: float64; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
 field_position: []f64=&.{},
 /// @brief sensor_msgs/msg/JointState.velocity: float64; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
 field_velocity: []f64=&.{},
 /// @brief sensor_msgs/msg/JointState.effort: float64; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
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
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  if(self.field_name.len != 0 && self.field_position.len != 0 && self.field_name.len !=
      self.field_position.len) return error.Invalid;
  if(self.field_name.len != 0 && self.field_velocity.len != 0 && self.field_name.len !=
      self.field_velocity.len) return error.Invalid;
  if(self.field_name.len != 0 && self.field_effort.len != 0 && self.field_name.len !=
      self.field_effort.len) return error.Invalid;
  if(self.field_position.len != 0 && self.field_velocity.len != 0 && self.field_position.len !=
      self.field_velocity.len) return error.Invalid;
  if(self.field_position.len != 0 && self.field_effort.len != 0 && self.field_position.len !=
      self.field_effort.len) return error.Invalid;
  if(self.field_velocity.len != 0 && self.field_effort.len != 0 && self.field_velocity.len !=
      self.field_effort.len) return error.Invalid;
  try self.field_header.writeFields(w);
  if(self.field_name.len>64) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_name.len)));
  for(self.field_name) |e| {
  try w.string(e,64,false);
  }
  if(self.field_position.len>64) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_position.len)));
  for(self.field_position) |e| {
  try w.float64(e);
  }
  if(self.field_velocity.len>64) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_velocity.len)));
  for(self.field_velocity) |e| {
  try w.float64(e);
  }
  if(self.field_effort.len>64) return error.Invalid;
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
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_header=try Ros2Std_msgsMsgHeader.readFields(r,allocator);
  const count1=try r.integer(u32); if(count1>64) return error.Invalid;
  value.field_name=try allocator.alloc([]const u8,count1);
  for(value.field_name) |*e| {
  e.*=try r.string(64,false);
  }
  const count2=try r.integer(u32); if(count2>64) return error.Invalid;
  value.field_position=try allocator.alloc(f64,count2);
  for(value.field_position) |*e| {
  e.*=try r.float64();
  }
  const count3=try r.integer(u32); if(count3>64) return error.Invalid;
  value.field_velocity=try allocator.alloc(f64,count3);
  for(value.field_velocity) |*e| {
  e.*=try r.float64();
  }
  const count4=try r.integer(u32); if(count4>64) return error.Invalid;
  value.field_effort=try allocator.alloc(f64,count4);
  for(value.field_effort) |*e| {
  e.*=try r.float64();
  }
  if(value.field_name.len != 0 && value.field_position.len != 0 && value.field_name.len !=
      value.field_position.len) return error.Invalid;
  if(value.field_name.len != 0 && value.field_velocity.len != 0 && value.field_name.len !=
      value.field_velocity.len) return error.Invalid;
  if(value.field_name.len != 0 && value.field_effort.len != 0 && value.field_name.len !=
      value.field_effort.len) return error.Invalid;
  if(value.field_position.len != 0 && value.field_velocity.len != 0 && value.field_position.len !=
      value.field_velocity.len) return error.Invalid;
  if(value.field_position.len != 0 && value.field_effort.len != 0 && value.field_position.len !=
      value.field_effort.len) return error.Invalid;
  if(value.field_velocity.len != 0 && value.field_effort.len != 0 && value.field_velocity.len !=
      value.field_effort.len) return error.Invalid;
  return value;
 }
 /// @brief Encode one complete sensor_msgs/msg/JointState value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
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
 /// @details Require the complete 28..5980-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<28 or bytes.len>5980) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_isaac_sim_bridge/msg/ClockEvent value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 14..14 bytes and
/// is identified by UWVMROS1_78b31f4b219f55bd576134f1b561194cb09c8ec0ac8dedafddd9b03ba6a198d6.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_isaac_sim_bridgeMsgClockEvent=struct {
 /// @brief Maximum canonical extent of uwvm_isaac_sim_bridge/msg/ClockEvent in bytes.
 /// @details The inclusive bound is 14 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=14;
 /// @brief Canonical codec identity of uwvm_isaac_sim_bridge/msg/ClockEvent.
 /// @details Exact identity UWVMROS1_78b31f4b219f55bd576134f1b561194cb09c8ec0ac8dedafddd9b03ba6a198d6 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_78b31f4b219f55bd576134f1b561194cb09c8ec0ac8dedafddd9b03ba6a198d6";
 /// @brief Original ROS type name for uwvm_isaac_sim_bridge/msg/ClockEvent.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_isaac_sim_bridge/msg/ClockEvent";
 /// @brief Selected original native identity for uwvm_isaac_sim_bridge/msg/ClockEvent.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_isaac_sim_bridge/msg/ClockEvent.AUTOMATIC: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/zig/API-CONTRACT.md
 pub const field_AUTOMATIC: u8=1;
 /// @brief uwvm_isaac_sim_bridge/msg/ClockEvent.MANUAL: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/zig/API-CONTRACT.md
 pub const field_MANUAL: u8=2;
 /// @brief uwvm_isaac_sim_bridge/msg/ClockEvent.kind: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/zig/API-CONTRACT.md
 field_kind: u8=0,
 /// @brief uwvm_isaac_sim_bridge/msg/ClockEvent.phase: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/zig/API-CONTRACT.md
 field_phase: u8=0,
 /// @brief uwvm_isaac_sim_bridge/msg/ClockEvent.frame: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/zig/API-CONTRACT.md
 field_frame: u32=0,
 /// @brief uwvm_isaac_sim_bridge/msg/ClockEvent.sec: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/zig/API-CONTRACT.md
 field_sec: i32=0,
 /// @brief uwvm_isaac_sim_bridge/msg/ClockEvent.nanosec: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/zig/API-CONTRACT.md
 field_nanosec: u32=0,
 /// @brief Append every canonical field of uwvm_isaac_sim_bridge/msg/ClockEvent.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_kind);
  try w.integer(self.field_phase);
  try w.integer(self.field_frame);
  try w.integer(self.field_sec);
  try w.integer(self.field_nanosec);
 }
 /// @brief Read the ordered canonical fields of uwvm_isaac_sim_bridge/msg/ClockEvent.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_kind=try r.integer(u8);
  value.field_phase=try r.integer(u8);
  value.field_frame=try r.integer(u32);
  value.field_sec=try r.integer(i32);
  value.field_nanosec=try r.integer(u32);
  return value;
 }
 /// @brief Encode one complete uwvm_isaac_sim_bridge/msg/ClockEvent value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_isaac_sim_bridge/msg/ClockEvent value.
 /// @details Require the complete 14..14-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<14 or bytes.len>14) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_isaac_sim_bridge/srv/ClockControl_Request value.
/// @details All 8 declared fields are retained in source order. The canonical representation occupies 22..22 bytes and
/// is identified by UWVMROS1_8957fd758c2793d355e7356df436ea644a5d5da7ad7e2d179ed4d09936351b19.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request=struct {
 /// @brief Maximum canonical extent of uwvm_isaac_sim_bridge/srv/ClockControl_Request in bytes.
 /// @details The inclusive bound is 22 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=22;
 /// @brief Canonical codec identity of uwvm_isaac_sim_bridge/srv/ClockControl_Request.
 /// @details Exact identity UWVMROS1_8957fd758c2793d355e7356df436ea644a5d5da7ad7e2d179ed4d09936351b19 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_8957fd758c2793d355e7356df436ea644a5d5da7ad7e2d179ed4d09936351b19";
 /// @brief Original ROS type name for uwvm_isaac_sim_bridge/srv/ClockControl_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_isaac_sim_bridge/srv/ClockControl_Request";
 /// @brief Selected original native identity for uwvm_isaac_sim_bridge/srv/ClockControl_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.START: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_START: u8=1;
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.STEP: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_STEP: u8=2;
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.FINISH: original uint8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_FINISH: u8=3;
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.CANCEL: original uint8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_CANCEL: u8=4;
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.operation: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/zig/API-CONTRACT.md
 field_operation: u8=0,
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.session_nonce: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/zig/API-CONTRACT.md
 field_session_nonce: u64=0,
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.request_sequence: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/zig/API-CONTRACT.md
 field_request_sequence: u32=0,
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.phase: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/zig/API-CONTRACT.md
 field_phase: u8=0,
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.frame: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/zig/API-CONTRACT.md
 field_frame: u32=0,
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.impulse: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/zig/API-CONTRACT.md
 field_impulse: bool=false,
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.extra_update: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/zig/API-CONTRACT.md
 field_extra_update: bool=false,
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.pacing_milliseconds: uint16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/zig/API-CONTRACT.md
 field_pacing_milliseconds: u16=0,
 /// @brief Append every canonical field of uwvm_isaac_sim_bridge/srv/ClockControl_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_operation);
  try w.integer(self.field_session_nonce);
  try w.integer(self.field_request_sequence);
  try w.integer(self.field_phase);
  try w.integer(self.field_frame);
  try w.boolean(self.field_impulse);
  try w.boolean(self.field_extra_update);
  try w.integer(self.field_pacing_milliseconds);
 }
 /// @brief Read the ordered canonical fields of uwvm_isaac_sim_bridge/srv/ClockControl_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_operation=try r.integer(u8);
  value.field_session_nonce=try r.integer(u64);
  value.field_request_sequence=try r.integer(u32);
  value.field_phase=try r.integer(u8);
  value.field_frame=try r.integer(u32);
  value.field_impulse=try r.boolean();
  value.field_extra_update=try r.boolean();
  value.field_pacing_milliseconds=try r.integer(u16);
  return value;
 }
 /// @brief Encode one complete uwvm_isaac_sim_bridge/srv/ClockControl_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_isaac_sim_bridge/srv/ClockControl_Request value.
 /// @details Require the complete 22..22-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<22 or bytes.len>22) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_isaac_sim_bridge/srv/ClockControl_Response value.
/// @details All 9 declared fields are retained in source order. The canonical representation occupies 48..48 bytes and
/// is identified by UWVMROS1_3b7763445df65d2a26fb54bfe6d41984008b33253cd7a614f5f057832d909502.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response=struct {
 /// @brief Maximum canonical extent of uwvm_isaac_sim_bridge/srv/ClockControl_Response in bytes.
 /// @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=48;
 /// @brief Canonical codec identity of uwvm_isaac_sim_bridge/srv/ClockControl_Response.
 /// @details Exact identity UWVMROS1_3b7763445df65d2a26fb54bfe6d41984008b33253cd7a614f5f057832d909502 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_3b7763445df65d2a26fb54bfe6d41984008b33253cd7a614f5f057832d909502";
 /// @brief Original ROS type name for uwvm_isaac_sim_bridge/srv/ClockControl_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_isaac_sim_bridge/srv/ClockControl_Response";
 /// @brief Selected original native identity for uwvm_isaac_sim_bridge/srv/ClockControl_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/zig/API-CONTRACT.md
 field_status: u32=0,
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.session_nonce: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/zig/API-CONTRACT.md
 field_session_nonce: u64=0,
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.request_sequence: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/zig/API-CONTRACT.md
 field_request_sequence: u32=0,
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.state: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/zig/API-CONTRACT.md
 field_state: u8=0,
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.actual_app_updates: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/zig/API-CONTRACT.md
 field_actual_app_updates: u64=0,
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.completed_steps: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/zig/API-CONTRACT.md
 field_completed_steps: u32=0,
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.has_event: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/zig/API-CONTRACT.md
 field_has_event: bool=false,
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.event: uwvm_isaac_sim_bridge/msg/ClockEvent.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/zig/API-CONTRACT.md
 field_event: Ros2Uwvm_isaac_sim_bridgeMsgClockEvent=.{},
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.cleanup_status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/zig/API-CONTRACT.md
 field_cleanup_status: u32=0,
 /// @brief Append every canonical field of uwvm_isaac_sim_bridge/srv/ClockControl_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_status);
  try w.integer(self.field_session_nonce);
  try w.integer(self.field_request_sequence);
  try w.integer(self.field_state);
  try w.integer(self.field_actual_app_updates);
  try w.integer(self.field_completed_steps);
  try w.boolean(self.field_has_event);
  try self.field_event.writeFields(w);
  try w.integer(self.field_cleanup_status);
 }
 /// @brief Read the ordered canonical fields of uwvm_isaac_sim_bridge/srv/ClockControl_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_status=try r.integer(u32);
  value.field_session_nonce=try r.integer(u64);
  value.field_request_sequence=try r.integer(u32);
  value.field_state=try r.integer(u8);
  value.field_actual_app_updates=try r.integer(u64);
  value.field_completed_steps=try r.integer(u32);
  value.field_has_event=try r.boolean();
  value.field_event=try Ros2Uwvm_isaac_sim_bridgeMsgClockEvent.readFields(r,allocator);
  value.field_cleanup_status=try r.integer(u32);
  return value;
 }
 /// @brief Encode one complete uwvm_isaac_sim_bridge/srv/ClockControl_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_isaac_sim_bridge/srv/ClockControl_Response value.
 /// @details Require the complete 48..48-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<48 or bytes.len>48) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
