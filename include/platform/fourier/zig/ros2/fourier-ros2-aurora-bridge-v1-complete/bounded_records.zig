// @file bounded_records.zig
// @brief Full fourier zig codecs and original record metadata.
// @details Complete fourier ros2_aurora_bridge_v1 values in zig. 51 original records retain 138 fields and 28
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/fourier/en_US/catalog/.
//! Generated complete bounded values; all allocation is explicit.
const std=@import("std");
const wire=@import("roswire");
/// @brief Complete ROS 2 uwvm_fourier_bridge/msg/GroupState value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 20..1684
/// bytes and is identified by UWVMROS1_f33e483ea4f7b9326e43f82c92f948ce6d47f16fb34e463ba25f3ec01d5e0bf4.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeMsgGroupState=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/msg/GroupState in bytes.
 /// @details The inclusive bound is 1684 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeMsgGroupState; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=1684;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/msg/GroupState.
 /// @details Exact identity UWVMROS1_f33e483ea4f7b9326e43f82c92f948ce6d47f16fb34e463ba25f3ec01d5e0bf4 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeMsgGroupState; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_f33e483ea4f7b9326e43f82c92f948ce6d47f16fb34e463ba25f3ec01d5e0bf4";
 /// @brief Original ROS type name for uwvm_fourier_bridge/msg/GroupState.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeMsgGroupState; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/msg/GroupState";
 /// @brief Selected original native identity for uwvm_fourier_bridge/msg/GroupState.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeMsgGroupState; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/msg/GroupState.group: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeMsgGroupState; share/platform/ros/zig/API-CONTRACT.md
 field_group: []const u8=&.{},
 /// @brief uwvm_fourier_bridge/msg/GroupState.position: float64; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeMsgGroupState; share/platform/ros/zig/API-CONTRACT.md
 field_position: []f64=&.{},
 /// @brief uwvm_fourier_bridge/msg/GroupState.velocity: float64; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeMsgGroupState; share/platform/ros/zig/API-CONTRACT.md
 field_velocity: []f64=&.{},
 /// @brief uwvm_fourier_bridge/msg/GroupState.effort: float64; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeMsgGroupState; share/platform/ros/zig/API-CONTRACT.md
 field_effort: []f64=&.{},
 /// @brief uwvm_fourier_bridge/msg/GroupState.motion_state: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeMsgGroupState; share/platform/ros/zig/API-CONTRACT.md
 field_motion_state: i32=0,
 /// @brief Append every canonical field of uwvm_fourier_bridge/msg/GroupState.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeMsgGroupState; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_group,128,false);
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
  try w.integer(self.field_motion_state);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/msg/GroupState.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeMsgGroupState; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_group=try r.string(128,false);
  const count1=try r.integer(u32); if(count1>64) return error.Invalid;
  value.field_position=try allocator.alloc(f64,count1);
  for(value.field_position) |*e| {
  e.*=try r.float64();
  }
  const count2=try r.integer(u32); if(count2>64) return error.Invalid;
  value.field_velocity=try allocator.alloc(f64,count2);
  for(value.field_velocity) |*e| {
  e.*=try r.float64();
  }
  const count3=try r.integer(u32); if(count3>64) return error.Invalid;
  value.field_effort=try allocator.alloc(f64,count3);
  for(value.field_effort) |*e| {
  e.*=try r.float64();
  }
  value.field_motion_state=try r.integer(i32);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/msg/GroupState value.
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
 /// @see Ros2Uwvm_fourier_bridgeMsgGroupState; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/msg/GroupState value.
 /// @details Require the complete 20..1684-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeMsgGroupState; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<20 or bytes.len>1684) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/msg/GroupValues value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..648 bytes
/// and is identified by UWVMROS1_3c69f73f7b6d1d4a8a6b5006f6dbe9a74021b10a0d3b493251f0085cb06d57f3.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeMsgGroupValues=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/msg/GroupValues in bytes.
 /// @details The inclusive bound is 648 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeMsgGroupValues; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=648;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/msg/GroupValues.
 /// @details Exact identity UWVMROS1_3c69f73f7b6d1d4a8a6b5006f6dbe9a74021b10a0d3b493251f0085cb06d57f3 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeMsgGroupValues; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_3c69f73f7b6d1d4a8a6b5006f6dbe9a74021b10a0d3b493251f0085cb06d57f3";
 /// @brief Original ROS type name for uwvm_fourier_bridge/msg/GroupValues.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeMsgGroupValues; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/msg/GroupValues";
 /// @brief Selected original native identity for uwvm_fourier_bridge/msg/GroupValues.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeMsgGroupValues; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/msg/GroupValues.group: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeMsgGroupValues; share/platform/ros/zig/API-CONTRACT.md
 field_group: []const u8=&.{},
 /// @brief uwvm_fourier_bridge/msg/GroupValues.values: float64; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeMsgGroupValues; share/platform/ros/zig/API-CONTRACT.md
 field_values: []f64=&.{},
 /// @brief Append every canonical field of uwvm_fourier_bridge/msg/GroupValues.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeMsgGroupValues; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_group,128,false);
  if(self.field_values.len>64) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_values.len)));
  for(self.field_values) |e| {
  try w.float64(e);
  }
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/msg/GroupValues.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeMsgGroupValues; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_group=try r.string(128,false);
  const count1=try r.integer(u32); if(count1>64) return error.Invalid;
  value.field_values=try allocator.alloc(f64,count1);
  for(value.field_values) |*e| {
  e.*=try r.float64();
  }
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/msg/GroupValues value.
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
 /// @see Ros2Uwvm_fourier_bridgeMsgGroupValues; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/msg/GroupValues value.
 /// @details Require the complete 8..648-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeMsgGroupValues; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>648) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/msg/MotionRecipe value.
/// @details All 6 declared fields are retained in source order. The canonical representation occupies 18..1170
/// bytes and is identified by UWVMROS1_bc50051a3fd81e146ad97200427b3b673081f817a20dbc38de1533dc0a9bee14.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeMsgMotionRecipe=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/msg/MotionRecipe in bytes.
 /// @details The inclusive bound is 1170 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=1170;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/msg/MotionRecipe.
 /// @details Exact identity UWVMROS1_bc50051a3fd81e146ad97200427b3b673081f817a20dbc38de1533dc0a9bee14 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_bc50051a3fd81e146ad97200427b3b673081f817a20dbc38de1533dc0a9bee14";
 /// @brief Original ROS type name for uwvm_fourier_bridge/msg/MotionRecipe.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/msg/MotionRecipe";
 /// @brief Selected original native identity for uwvm_fourier_bridge/msg/MotionRecipe.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/msg/MotionRecipe.move_type: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/zig/API-CONTRACT.md
 field_move_type: u8=0,
 /// @brief uwvm_fourier_bridge/msg/MotionRecipe.group: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/zig/API-CONTRACT.md
 field_group: []const u8=&.{},
 /// @brief uwvm_fourier_bridge/msg/MotionRecipe.position: float64; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/zig/API-CONTRACT.md
 field_position: []f64=&.{},
 /// @brief uwvm_fourier_bridge/msg/MotionRecipe.has_velocity: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/zig/API-CONTRACT.md
 field_has_velocity: bool=false,
 /// @brief uwvm_fourier_bridge/msg/MotionRecipe.velocity: float64; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/zig/API-CONTRACT.md
 field_velocity: []f64=&.{},
 /// @brief uwvm_fourier_bridge/msg/MotionRecipe.expected_velocity: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/zig/API-CONTRACT.md
 field_expected_velocity: i32=0,
 /// @brief Append every canonical field of uwvm_fourier_bridge/msg/MotionRecipe.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_move_type);
  try w.string(self.field_group,128,false);
  if(self.field_position.len>64) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_position.len)));
  for(self.field_position) |e| {
  try w.float64(e);
  }
  try w.boolean(self.field_has_velocity);
  if(self.field_velocity.len>64) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_velocity.len)));
  for(self.field_velocity) |e| {
  try w.float64(e);
  }
  try w.integer(self.field_expected_velocity);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/msg/MotionRecipe.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_move_type=try r.integer(u8);
  value.field_group=try r.string(128,false);
  const count2=try r.integer(u32); if(count2>64) return error.Invalid;
  value.field_position=try allocator.alloc(f64,count2);
  for(value.field_position) |*e| {
  e.*=try r.float64();
  }
  value.field_has_velocity=try r.boolean();
  const count4=try r.integer(u32); if(count4>64) return error.Invalid;
  value.field_velocity=try allocator.alloc(f64,count4);
  for(value.field_velocity) |*e| {
  e.*=try r.float64();
  }
  value.field_expected_velocity=try r.integer(i32);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/msg/MotionRecipe value.
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
 /// @see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/msg/MotionRecipe value.
 /// @details Require the complete 18..1170-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<18 or bytes.len>1170) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/msg/Status value.
/// @details All 8 declared fields are retained in source order. The canonical representation occupies 32..14400
/// bytes and is identified by UWVMROS1_f251a6d2da8a35e9b49c1341ffda12f809186d845eb076d225ed274da7b4165e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeMsgStatus=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/msg/Status in bytes.
 /// @details The inclusive bound is 14400 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=14400;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/msg/Status.
 /// @details Exact identity UWVMROS1_f251a6d2da8a35e9b49c1341ffda12f809186d845eb076d225ed274da7b4165e binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_f251a6d2da8a35e9b49c1341ffda12f809186d845eb076d225ed274da7b4165e";
 /// @brief Original ROS type name for uwvm_fourier_bridge/msg/Status.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/msg/Status";
 /// @brief Selected original native identity for uwvm_fourier_bridge/msg/Status.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/msg/Status.fsm_state: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/zig/API-CONTRACT.md
 field_fsm_state: i32=0,
 /// @brief uwvm_fourier_bridge/msg/Status.fsm_name: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/zig/API-CONTRACT.md
 field_fsm_name: []const u8=&.{},
 /// @brief uwvm_fourier_bridge/msg/Status.upper_fsm_state: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/zig/API-CONTRACT.md
 field_upper_fsm_state: i32=0,
 /// @brief uwvm_fourier_bridge/msg/Status.upper_fsm_name: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/zig/API-CONTRACT.md
 field_upper_fsm_name: []const u8=&.{},
 /// @brief uwvm_fourier_bridge/msg/Status.velocity_source: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/zig/API-CONTRACT.md
 field_velocity_source: i32=0,
 /// @brief uwvm_fourier_bridge/msg/Status.velocity_source_name: string; each string is 0..128 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/zig/API-CONTRACT.md
 field_velocity_source_name: []const u8=&.{},
 /// @brief uwvm_fourier_bridge/msg/Status.stand_pose: float64; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/zig/API-CONTRACT.md
 field_stand_pose: []f64=&.{},
 /// @brief uwvm_fourier_bridge/msg/Status.groups: uwvm_fourier_bridge/msg/GroupState; 0..8 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/zig/API-CONTRACT.md
 field_groups: []Ros2Uwvm_fourier_bridgeMsgGroupState=&.{},
 /// @brief Append every canonical field of uwvm_fourier_bridge/msg/Status.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_fsm_state);
  try w.string(self.field_fsm_name,128,false);
  try w.integer(self.field_upper_fsm_state);
  try w.string(self.field_upper_fsm_name,128,false);
  try w.integer(self.field_velocity_source);
  try w.string(self.field_velocity_source_name,128,false);
  if(self.field_stand_pose.len>64) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_stand_pose.len)));
  for(self.field_stand_pose) |e| {
  try w.float64(e);
  }
  if(self.field_groups.len>8) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_groups.len)));
  for(self.field_groups) |e| {
  try e.writeFields(w);
  }
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/msg/Status.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_fsm_state=try r.integer(i32);
  value.field_fsm_name=try r.string(128,false);
  value.field_upper_fsm_state=try r.integer(i32);
  value.field_upper_fsm_name=try r.string(128,false);
  value.field_velocity_source=try r.integer(i32);
  value.field_velocity_source_name=try r.string(128,false);
  const count6=try r.integer(u32); if(count6>64) return error.Invalid;
  value.field_stand_pose=try allocator.alloc(f64,count6);
  for(value.field_stand_pose) |*e| {
  e.*=try r.float64();
  }
  const count7=try r.integer(u32); if(count7>8) return error.Invalid;
  value.field_groups=try allocator.alloc(Ros2Uwvm_fourier_bridgeMsgGroupState,count7);
  for(value.field_groups) |*e| {
  e.*=try Ros2Uwvm_fourier_bridgeMsgGroupState.readFields(r,allocator);
  }
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/msg/Status value.
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
 /// @see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/msg/Status value.
 /// @details Require the complete 32..14400-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<32 or bytes.len>14400) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/msg/VelocityCommand value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 40..40 bytes
/// and is identified by UWVMROS1_9b0a6facfb591afb82a34bb01b058f340626eba26619b8b686a52c6319e11d3d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeMsgVelocityCommand=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/msg/VelocityCommand in bytes.
 /// @details The inclusive bound is 40 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeMsgVelocityCommand; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=40;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/msg/VelocityCommand.
 /// @details Exact identity UWVMROS1_9b0a6facfb591afb82a34bb01b058f340626eba26619b8b686a52c6319e11d3d binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeMsgVelocityCommand; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_9b0a6facfb591afb82a34bb01b058f340626eba26619b8b686a52c6319e11d3d";
 /// @brief Original ROS type name for uwvm_fourier_bridge/msg/VelocityCommand.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeMsgVelocityCommand; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/msg/VelocityCommand";
 /// @brief Selected original native identity for uwvm_fourier_bridge/msg/VelocityCommand.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeMsgVelocityCommand; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/msg/VelocityCommand.sequence: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeMsgVelocityCommand; share/platform/ros/zig/API-CONTRACT.md
 field_sequence: u64=0,
 /// @brief uwvm_fourier_bridge/msg/VelocityCommand.vx: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeMsgVelocityCommand; share/platform/ros/zig/API-CONTRACT.md
 field_vx: f64=0,
 /// @brief uwvm_fourier_bridge/msg/VelocityCommand.vy: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeMsgVelocityCommand; share/platform/ros/zig/API-CONTRACT.md
 field_vy: f64=0,
 /// @brief uwvm_fourier_bridge/msg/VelocityCommand.yaw: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeMsgVelocityCommand; share/platform/ros/zig/API-CONTRACT.md
 field_yaw: f64=0,
 /// @brief uwvm_fourier_bridge/msg/VelocityCommand.duration: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeMsgVelocityCommand; share/platform/ros/zig/API-CONTRACT.md
 field_duration: f64=0,
 /// @brief Append every canonical field of uwvm_fourier_bridge/msg/VelocityCommand.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeMsgVelocityCommand; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_sequence);
  try w.float64(self.field_vx);
  try w.float64(self.field_vy);
  try w.float64(self.field_yaw);
  try w.float64(self.field_duration);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/msg/VelocityCommand.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeMsgVelocityCommand; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_sequence=try r.integer(u64);
  value.field_vx=try r.float64();
  value.field_vy=try r.float64();
  value.field_yaw=try r.float64();
  value.field_duration=try r.float64();
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/msg/VelocityCommand value.
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
 /// @see Ros2Uwvm_fourier_bridgeMsgVelocityCommand; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/msg/VelocityCommand value.
 /// @details Require the complete 40..40-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeMsgVelocityCommand; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<40 or bytes.len>40) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/ExecuteMove_Request value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..9372
/// bytes and is identified by UWVMROS1_4f306d8dc39d1aec7cb634df8a1b3573996440cbdd390ad7447edfd93e0d626b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/ExecuteMove_Request in bytes.
 /// @details The inclusive bound is 9372 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=9372;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/ExecuteMove_Request.
 /// @details Exact identity UWVMROS1_4f306d8dc39d1aec7cb634df8a1b3573996440cbdd390ad7447edfd93e0d626b binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_4f306d8dc39d1aec7cb634df8a1b3573996440cbdd390ad7447edfd93e0d626b";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/ExecuteMove_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/ExecuteMove_Request";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/ExecuteMove_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/ExecuteMove_Request.sequence: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request; share/platform/ros/zig/API-CONTRACT.md
 field_sequence: u64=0,
 /// @brief uwvm_fourier_bridge/srv/ExecuteMove_Request.moves: uwvm_fourier_bridge/msg/MotionRecipe; 0..8 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request; share/platform/ros/zig/API-CONTRACT.md
 field_moves: []Ros2Uwvm_fourier_bridgeMsgMotionRecipe=&.{},
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/ExecuteMove_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_sequence);
  if(self.field_moves.len>8) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_moves.len)));
  for(self.field_moves) |e| {
  try e.writeFields(w);
  }
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/ExecuteMove_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_sequence=try r.integer(u64);
  const count1=try r.integer(u32); if(count1>8) return error.Invalid;
  value.field_moves=try allocator.alloc(Ros2Uwvm_fourier_bridgeMsgMotionRecipe,count1);
  for(value.field_moves) |*e| {
  e.*=try Ros2Uwvm_fourier_bridgeMsgMotionRecipe.readFields(r,allocator);
  }
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/ExecuteMove_Request value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/ExecuteMove_Request value.
 /// @details Require the complete 12..9372-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<12 or bytes.len>9372) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/ExecuteMove_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
/// and is identified by UWVMROS1_16cd03eb2e730dcd9eda47be3a506298f9369f0f61bcddd634a06295f902dcab.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/ExecuteMove_Response in bytes.
 /// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=136;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/ExecuteMove_Response.
 /// @details Exact identity UWVMROS1_16cd03eb2e730dcd9eda47be3a506298f9369f0f61bcddd634a06295f902dcab binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_16cd03eb2e730dcd9eda47be3a506298f9369f0f61bcddd634a06295f902dcab";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/ExecuteMove_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/ExecuteMove_Response";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/ExecuteMove_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/ExecuteMove_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response; share/platform/ros/zig/API-CONTRACT.md
 field_status: u32=0,
 /// @brief uwvm_fourier_bridge/srv/ExecuteMove_Response.error: string; each string is 0..128 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response; share/platform/ros/zig/API-CONTRACT.md
 field_error: []const u8=&.{},
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/ExecuteMove_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_status);
  try w.string(self.field_error,128,false);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/ExecuteMove_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_status=try r.integer(u32);
  value.field_error=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/ExecuteMove_Response value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/ExecuteMove_Response value.
 /// @details Require the complete 8..136-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>136) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetBaseData_Request value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..140 bytes
/// and is identified by UWVMROS1_19cfad0a79a7703b8dd5d9215a705026eaff78ef1794bda704f52a1e70d2dd5f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetBaseData_Request in bytes.
 /// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=140;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetBaseData_Request.
 /// @details Exact identity UWVMROS1_19cfad0a79a7703b8dd5d9215a705026eaff78ef1794bda704f52a1e70d2dd5f binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_19cfad0a79a7703b8dd5d9215a705026eaff78ef1794bda704f52a1e70d2dd5f";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetBaseData_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/GetBaseData_Request";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetBaseData_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/GetBaseData_Request.sequence: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request; share/platform/ros/zig/API-CONTRACT.md
 field_sequence: u64=0,
 /// @brief uwvm_fourier_bridge/srv/GetBaseData_Request.key: string; each string is 0..128 bytes; strict UTF-8 with
 /// no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request; share/platform/ros/zig/API-CONTRACT.md
 field_key: []const u8=&.{},
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetBaseData_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_sequence);
  try w.string(self.field_key,128,false);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetBaseData_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_sequence=try r.integer(u64);
  value.field_key=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/GetBaseData_Request value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetBaseData_Request value.
 /// @details Require the complete 12..140-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<12 or bytes.len>140) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetBaseData_Response value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..652 bytes
/// and is identified by UWVMROS1_4c632e4c71f87f82064078b2936c9af2be87f56e44014e029470748c14614804.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetBaseData_Response in bytes.
 /// @details The inclusive bound is 652 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=652;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetBaseData_Response.
 /// @details Exact identity UWVMROS1_4c632e4c71f87f82064078b2936c9af2be87f56e44014e029470748c14614804 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_4c632e4c71f87f82064078b2936c9af2be87f56e44014e029470748c14614804";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetBaseData_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/GetBaseData_Response";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetBaseData_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/GetBaseData_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response; share/platform/ros/zig/API-CONTRACT.md
 field_status: u32=0,
 /// @brief uwvm_fourier_bridge/srv/GetBaseData_Response.error: string; each string is 0..128 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response; share/platform/ros/zig/API-CONTRACT.md
 field_error: []const u8=&.{},
 /// @brief uwvm_fourier_bridge/srv/GetBaseData_Response.values: float64; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response; share/platform/ros/zig/API-CONTRACT.md
 field_values: []f64=&.{},
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetBaseData_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_status);
  try w.string(self.field_error,128,false);
  if(self.field_values.len>64) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_values.len)));
  for(self.field_values) |e| {
  try w.float64(e);
  }
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetBaseData_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_status=try r.integer(u32);
  value.field_error=try r.string(128,false);
  const count2=try r.integer(u32); if(count2>64) return error.Invalid;
  value.field_values=try allocator.alloc(f64,count2);
  for(value.field_values) |*e| {
  e.*=try r.float64();
  }
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/GetBaseData_Response value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetBaseData_Response value.
 /// @details Require the complete 12..652-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<12 or bytes.len>652) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetCartesianState_Request value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 16..272 bytes
/// and is identified by UWVMROS1_2255ca1da45c891d1a3f8c8f77f1f6c5b9380d5ac5250a5d522ab581c4df7eee.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetCartesianState_Request in bytes.
 /// @details The inclusive bound is 272 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=272;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetCartesianState_Request.
 /// @details Exact identity UWVMROS1_2255ca1da45c891d1a3f8c8f77f1f6c5b9380d5ac5250a5d522ab581c4df7eee binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_2255ca1da45c891d1a3f8c8f77f1f6c5b9380d5ac5250a5d522ab581c4df7eee";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetCartesianState_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/GetCartesianState_Request";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetCartesianState_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/GetCartesianState_Request.sequence: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request; share/platform/ros/zig/API-CONTRACT.md
 field_sequence: u64=0,
 /// @brief uwvm_fourier_bridge/srv/GetCartesianState_Request.group: string; each string is 0..128 bytes; strict
 /// UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request; share/platform/ros/zig/API-CONTRACT.md
 field_group: []const u8=&.{},
 /// @brief uwvm_fourier_bridge/srv/GetCartesianState_Request.key: string; each string is 0..128 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request; share/platform/ros/zig/API-CONTRACT.md
 field_key: []const u8=&.{},
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetCartesianState_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_sequence);
  try w.string(self.field_group,128,false);
  try w.string(self.field_key,128,false);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetCartesianState_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_sequence=try r.integer(u64);
  value.field_group=try r.string(128,false);
  value.field_key=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/GetCartesianState_Request value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetCartesianState_Request value.
 /// @details Require the complete 16..272-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<16 or bytes.len>272) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetCartesianState_Response value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..652 bytes
/// and is identified by UWVMROS1_8adfef323b2635fd716d7121496c091656bc76bce2b320479345ef94bdc62a40.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetCartesianState_Response in bytes.
 /// @details The inclusive bound is 652 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=652;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetCartesianState_Response.
 /// @details Exact identity UWVMROS1_8adfef323b2635fd716d7121496c091656bc76bce2b320479345ef94bdc62a40 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_8adfef323b2635fd716d7121496c091656bc76bce2b320479345ef94bdc62a40";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetCartesianState_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/GetCartesianState_Response";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetCartesianState_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/GetCartesianState_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response; share/platform/ros/zig/API-CONTRACT.md
 field_status: u32=0,
 /// @brief uwvm_fourier_bridge/srv/GetCartesianState_Response.error: string; each string is 0..128 bytes; strict
 /// UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response; share/platform/ros/zig/API-CONTRACT.md
 field_error: []const u8=&.{},
 /// @brief uwvm_fourier_bridge/srv/GetCartesianState_Response.values: float64; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response; share/platform/ros/zig/API-CONTRACT.md
 field_values: []f64=&.{},
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetCartesianState_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_status);
  try w.string(self.field_error,128,false);
  if(self.field_values.len>64) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_values.len)));
  for(self.field_values) |e| {
  try w.float64(e);
  }
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetCartesianState_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_status=try r.integer(u32);
  value.field_error=try r.string(128,false);
  const count2=try r.integer(u32); if(count2>64) return error.Invalid;
  value.field_values=try allocator.alloc(f64,count2);
  for(value.field_values) |*e| {
  e.*=try r.float64();
  }
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/GetCartesianState_Response value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetCartesianState_Response value.
 /// @details Require the complete 12..652-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<12 or bytes.len>652) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetContactData_Request value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..140 bytes
/// and is identified by UWVMROS1_52cf1fcf2036a4aa97ec902842838707ee1c96c63f6466165af5d1f3cde5f4e0.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvGetContactData_Request=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetContactData_Request in bytes.
 /// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=140;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetContactData_Request.
 /// @details Exact identity UWVMROS1_52cf1fcf2036a4aa97ec902842838707ee1c96c63f6466165af5d1f3cde5f4e0 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_52cf1fcf2036a4aa97ec902842838707ee1c96c63f6466165af5d1f3cde5f4e0";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetContactData_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/GetContactData_Request";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetContactData_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/GetContactData_Request.sequence: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Request; share/platform/ros/zig/API-CONTRACT.md
 field_sequence: u64=0,
 /// @brief uwvm_fourier_bridge/srv/GetContactData_Request.key: string; each string is 0..128 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Request; share/platform/ros/zig/API-CONTRACT.md
 field_key: []const u8=&.{},
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetContactData_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_sequence);
  try w.string(self.field_key,128,false);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetContactData_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_sequence=try r.integer(u64);
  value.field_key=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/GetContactData_Request value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetContactData_Request value.
 /// @details Require the complete 12..140-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<12 or bytes.len>140) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetContactData_Response value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..652 bytes
/// and is identified by UWVMROS1_504e7cc1bcb1c9a649cda204bbfbf8c6735fc5d71466b8a72d0536f0d3746b2e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvGetContactData_Response=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetContactData_Response in bytes.
 /// @details The inclusive bound is 652 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=652;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetContactData_Response.
 /// @details Exact identity UWVMROS1_504e7cc1bcb1c9a649cda204bbfbf8c6735fc5d71466b8a72d0536f0d3746b2e binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_504e7cc1bcb1c9a649cda204bbfbf8c6735fc5d71466b8a72d0536f0d3746b2e";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetContactData_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/GetContactData_Response";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetContactData_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/GetContactData_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Response; share/platform/ros/zig/API-CONTRACT.md
 field_status: u32=0,
 /// @brief uwvm_fourier_bridge/srv/GetContactData_Response.error: string; each string is 0..128 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Response; share/platform/ros/zig/API-CONTRACT.md
 field_error: []const u8=&.{},
 /// @brief uwvm_fourier_bridge/srv/GetContactData_Response.values: float64; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Response; share/platform/ros/zig/API-CONTRACT.md
 field_values: []f64=&.{},
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetContactData_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_status);
  try w.string(self.field_error,128,false);
  if(self.field_values.len>64) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_values.len)));
  for(self.field_values) |e| {
  try w.float64(e);
  }
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetContactData_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_status=try r.integer(u32);
  value.field_error=try r.string(128,false);
  const count2=try r.integer(u32); if(count2>64) return error.Invalid;
  value.field_values=try allocator.alloc(f64,count2);
  for(value.field_values) |*e| {
  e.*=try r.float64();
  }
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/GetContactData_Response value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetContactData_Response value.
 /// @details Require the complete 12..652-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<12 or bytes.len>652) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetFsmName_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_d8a11bb7eee1af0c138ec4f934610c4b88d817be25992cb854100cb61d8d6100.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetFsmName_Request in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=8;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetFsmName_Request.
 /// @details Exact identity UWVMROS1_d8a11bb7eee1af0c138ec4f934610c4b88d817be25992cb854100cb61d8d6100 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_d8a11bb7eee1af0c138ec4f934610c4b88d817be25992cb854100cb61d8d6100";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetFsmName_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/GetFsmName_Request";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetFsmName_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/GetFsmName_Request.sequence: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request; share/platform/ros/zig/API-CONTRACT.md
 field_sequence: u64=0,
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetFsmName_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_sequence);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetFsmName_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_sequence=try r.integer(u64);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/GetFsmName_Request value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetFsmName_Request value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>8) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetFsmName_Response value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..268 bytes
/// and is identified by UWVMROS1_6ac4c78b17f0a366274f7fc74e981e95e605040937a78b3e328836f781c6886e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetFsmName_Response in bytes.
 /// @details The inclusive bound is 268 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=268;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetFsmName_Response.
 /// @details Exact identity UWVMROS1_6ac4c78b17f0a366274f7fc74e981e95e605040937a78b3e328836f781c6886e binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_6ac4c78b17f0a366274f7fc74e981e95e605040937a78b3e328836f781c6886e";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetFsmName_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/GetFsmName_Response";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetFsmName_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/GetFsmName_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response; share/platform/ros/zig/API-CONTRACT.md
 field_status: u32=0,
 /// @brief uwvm_fourier_bridge/srv/GetFsmName_Response.error: string; each string is 0..128 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response; share/platform/ros/zig/API-CONTRACT.md
 field_error: []const u8=&.{},
 /// @brief uwvm_fourier_bridge/srv/GetFsmName_Response.value: string; each string is 0..128 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response; share/platform/ros/zig/API-CONTRACT.md
 field_value: []const u8=&.{},
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetFsmName_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_status);
  try w.string(self.field_error,128,false);
  try w.string(self.field_value,128,false);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetFsmName_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_status=try r.integer(u32);
  value.field_error=try r.string(128,false);
  value.field_value=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/GetFsmName_Response value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetFsmName_Response value.
 /// @details Require the complete 12..268-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<12 or bytes.len>268) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetFsmState_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_061098411a7d26f31dd31957b34190e798305289bad558d351ee81df810e3bd0.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetFsmState_Request in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=8;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetFsmState_Request.
 /// @details Exact identity UWVMROS1_061098411a7d26f31dd31957b34190e798305289bad558d351ee81df810e3bd0 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_061098411a7d26f31dd31957b34190e798305289bad558d351ee81df810e3bd0";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetFsmState_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/GetFsmState_Request";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetFsmState_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/GetFsmState_Request.sequence: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 field_sequence: u64=0,
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetFsmState_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_sequence);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetFsmState_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_sequence=try r.integer(u64);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/GetFsmState_Request value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetFsmState_Request value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>8) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetFsmState_Response value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..140 bytes
/// and is identified by UWVMROS1_1ac3b816f0e4aa4e769bd74d67274b85a8d9bf5ca7f8a359179280970b7e19e4.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetFsmState_Response in bytes.
 /// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=140;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetFsmState_Response.
 /// @details Exact identity UWVMROS1_1ac3b816f0e4aa4e769bd74d67274b85a8d9bf5ca7f8a359179280970b7e19e4 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_1ac3b816f0e4aa4e769bd74d67274b85a8d9bf5ca7f8a359179280970b7e19e4";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetFsmState_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/GetFsmState_Response";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetFsmState_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/GetFsmState_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 field_status: u32=0,
 /// @brief uwvm_fourier_bridge/srv/GetFsmState_Response.error: string; each string is 0..128 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 field_error: []const u8=&.{},
 /// @brief uwvm_fourier_bridge/srv/GetFsmState_Response.value: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 field_value: i32=0,
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetFsmState_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_status);
  try w.string(self.field_error,128,false);
  try w.integer(self.field_value);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetFsmState_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_status=try r.integer(u32);
  value.field_error=try r.string(128,false);
  value.field_value=try r.integer(i32);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/GetFsmState_Response value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetFsmState_Response value.
 /// @details Require the complete 12..140-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<12 or bytes.len>140) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetGroupMotionState_Request value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..140 bytes
/// and is identified by UWVMROS1_32606cb0ba540db0ce680716059ef3a7b4ad1277216fab4254521071cc0ea9ae.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetGroupMotionState_Request in bytes.
 /// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=140;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetGroupMotionState_Request.
 /// @details Exact identity UWVMROS1_32606cb0ba540db0ce680716059ef3a7b4ad1277216fab4254521071cc0ea9ae binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_32606cb0ba540db0ce680716059ef3a7b4ad1277216fab4254521071cc0ea9ae";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetGroupMotionState_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/GetGroupMotionState_Request";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetGroupMotionState_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/GetGroupMotionState_Request.sequence: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request; share/platform/ros/zig/API-CONTRACT.md
 field_sequence: u64=0,
 /// @brief uwvm_fourier_bridge/srv/GetGroupMotionState_Request.group: string; each string is 0..128 bytes; strict
 /// UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request; share/platform/ros/zig/API-CONTRACT.md
 field_group: []const u8=&.{},
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetGroupMotionState_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_sequence);
  try w.string(self.field_group,128,false);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetGroupMotionState_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_sequence=try r.integer(u64);
  value.field_group=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/GetGroupMotionState_Request value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetGroupMotionState_Request value.
 /// @details Require the complete 12..140-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<12 or bytes.len>140) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetGroupMotionState_Response value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..140 bytes
/// and is identified by UWVMROS1_192bd0770ca8e95e171fdbf9ef393bfc5e845a38d2a0c48f7846f3e080e219d7.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetGroupMotionState_Response in bytes.
 /// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=140;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetGroupMotionState_Response.
 /// @details Exact identity UWVMROS1_192bd0770ca8e95e171fdbf9ef393bfc5e845a38d2a0c48f7846f3e080e219d7 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_192bd0770ca8e95e171fdbf9ef393bfc5e845a38d2a0c48f7846f3e080e219d7";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetGroupMotionState_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/GetGroupMotionState_Response";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetGroupMotionState_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/GetGroupMotionState_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response; share/platform/ros/zig/API-CONTRACT.md
 field_status: u32=0,
 /// @brief uwvm_fourier_bridge/srv/GetGroupMotionState_Response.error: string; each string is 0..128 bytes; strict
 /// UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response; share/platform/ros/zig/API-CONTRACT.md
 field_error: []const u8=&.{},
 /// @brief uwvm_fourier_bridge/srv/GetGroupMotionState_Response.value: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response; share/platform/ros/zig/API-CONTRACT.md
 field_value: i32=0,
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetGroupMotionState_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_status);
  try w.string(self.field_error,128,false);
  try w.integer(self.field_value);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetGroupMotionState_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_status=try r.integer(u32);
  value.field_error=try r.string(128,false);
  value.field_value=try r.integer(i32);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/GetGroupMotionState_Response value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetGroupMotionState_Response value.
 /// @details Require the complete 12..140-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<12 or bytes.len>140) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 16..272 bytes
/// and is identified by UWVMROS1_7edceab07d5c5c571bce51ea7f82f0695df7e07ad8584d7219b7db36b697959a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request in bytes.
 /// @details The inclusive bound is 272 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=272;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request.
 /// @details Exact identity UWVMROS1_7edceab07d5c5c571bce51ea7f82f0695df7e07ad8584d7219b7db36b697959a binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_7edceab07d5c5c571bce51ea7f82f0695df7e07ad8584d7219b7db36b697959a";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request.sequence: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request; share/platform/ros/zig/API-CONTRACT.md
 field_sequence: u64=0,
 /// @brief uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request.group: string; each string is 0..128 bytes; strict
 /// UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request; share/platform/ros/zig/API-CONTRACT.md
 field_group: []const u8=&.{},
 /// @brief uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request.key: string; each string is 0..128 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request; share/platform/ros/zig/API-CONTRACT.md
 field_key: []const u8=&.{},
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_sequence);
  try w.string(self.field_group,128,false);
  try w.string(self.field_key,128,false);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_sequence=try r.integer(u64);
  value.field_group=try r.string(128,false);
  value.field_key=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request value.
 /// @details Require the complete 16..272-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<16 or bytes.len>272) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..652 bytes
/// and is identified by UWVMROS1_783f925c3b1030dec4d4a0172b4916c1cdbf72ec5e0da29167064ae754929868.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response in bytes.
 /// @details The inclusive bound is 652 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=652;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response.
 /// @details Exact identity UWVMROS1_783f925c3b1030dec4d4a0172b4916c1cdbf72ec5e0da29167064ae754929868 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_783f925c3b1030dec4d4a0172b4916c1cdbf72ec5e0da29167064ae754929868";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response; share/platform/ros/zig/API-CONTRACT.md
 field_status: u32=0,
 /// @brief uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response.error: string; each string is 0..128 bytes; strict
 /// UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response; share/platform/ros/zig/API-CONTRACT.md
 field_error: []const u8=&.{},
 /// @brief uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response.values: float64; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response; share/platform/ros/zig/API-CONTRACT.md
 field_values: []f64=&.{},
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_status);
  try w.string(self.field_error,128,false);
  if(self.field_values.len>64) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_values.len)));
  for(self.field_values) |e| {
  try w.float64(e);
  }
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_status=try r.integer(u32);
  value.field_error=try r.string(128,false);
  const count2=try r.integer(u32); if(count2>64) return error.Invalid;
  value.field_values=try allocator.alloc(f64,count2);
  for(value.field_values) |*e| {
  e.*=try r.float64();
  }
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response value.
 /// @details Require the complete 12..652-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<12 or bytes.len>652) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetGroupState_Request value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 16..272 bytes
/// and is identified by UWVMROS1_8ad802cc56a28a603ea0b4e705a80aafeda7657757a36e1bbe452b85b5035fa9.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetGroupState_Request in bytes.
 /// @details The inclusive bound is 272 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=272;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetGroupState_Request.
 /// @details Exact identity UWVMROS1_8ad802cc56a28a603ea0b4e705a80aafeda7657757a36e1bbe452b85b5035fa9 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_8ad802cc56a28a603ea0b4e705a80aafeda7657757a36e1bbe452b85b5035fa9";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetGroupState_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/GetGroupState_Request";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetGroupState_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/GetGroupState_Request.sequence: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request; share/platform/ros/zig/API-CONTRACT.md
 field_sequence: u64=0,
 /// @brief uwvm_fourier_bridge/srv/GetGroupState_Request.group: string; each string is 0..128 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request; share/platform/ros/zig/API-CONTRACT.md
 field_group: []const u8=&.{},
 /// @brief uwvm_fourier_bridge/srv/GetGroupState_Request.key: string; each string is 0..128 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request; share/platform/ros/zig/API-CONTRACT.md
 field_key: []const u8=&.{},
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetGroupState_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_sequence);
  try w.string(self.field_group,128,false);
  try w.string(self.field_key,128,false);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetGroupState_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_sequence=try r.integer(u64);
  value.field_group=try r.string(128,false);
  value.field_key=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/GetGroupState_Request value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetGroupState_Request value.
 /// @details Require the complete 16..272-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<16 or bytes.len>272) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetGroupState_Response value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..652 bytes
/// and is identified by UWVMROS1_22b934422928c57570784ac2100bf5fd5ca941ea59aea72b442ec7205ed2c96d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetGroupState_Response in bytes.
 /// @details The inclusive bound is 652 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=652;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetGroupState_Response.
 /// @details Exact identity UWVMROS1_22b934422928c57570784ac2100bf5fd5ca941ea59aea72b442ec7205ed2c96d binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_22b934422928c57570784ac2100bf5fd5ca941ea59aea72b442ec7205ed2c96d";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetGroupState_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/GetGroupState_Response";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetGroupState_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/GetGroupState_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response; share/platform/ros/zig/API-CONTRACT.md
 field_status: u32=0,
 /// @brief uwvm_fourier_bridge/srv/GetGroupState_Response.error: string; each string is 0..128 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response; share/platform/ros/zig/API-CONTRACT.md
 field_error: []const u8=&.{},
 /// @brief uwvm_fourier_bridge/srv/GetGroupState_Response.values: float64; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response; share/platform/ros/zig/API-CONTRACT.md
 field_values: []f64=&.{},
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetGroupState_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_status);
  try w.string(self.field_error,128,false);
  if(self.field_values.len>64) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_values.len)));
  for(self.field_values) |e| {
  try w.float64(e);
  }
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetGroupState_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_status=try r.integer(u32);
  value.field_error=try r.string(128,false);
  const count2=try r.integer(u32); if(count2>64) return error.Invalid;
  value.field_values=try allocator.alloc(f64,count2);
  for(value.field_values) |*e| {
  e.*=try r.float64();
  }
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/GetGroupState_Response value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetGroupState_Response value.
 /// @details Require the complete 12..652-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<12 or bytes.len>652) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetSnapshot_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_4c3003f85c4bc3c17e2e4bd4fd965fe52099a0a4a9f2c0320d165ec3db51bb58.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetSnapshot_Request in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=8;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetSnapshot_Request.
 /// @details Exact identity UWVMROS1_4c3003f85c4bc3c17e2e4bd4fd965fe52099a0a4a9f2c0320d165ec3db51bb58 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_4c3003f85c4bc3c17e2e4bd4fd965fe52099a0a4a9f2c0320d165ec3db51bb58";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetSnapshot_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/GetSnapshot_Request";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetSnapshot_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/GetSnapshot_Request.sequence: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request; share/platform/ros/zig/API-CONTRACT.md
 field_sequence: u64=0,
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetSnapshot_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_sequence);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetSnapshot_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_sequence=try r.integer(u64);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/GetSnapshot_Request value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetSnapshot_Request value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>8) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetSnapshot_Response value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 40..14536
/// bytes and is identified by UWVMROS1_bf4456397ae5115bf88b49c5568b8f289d6aefe3266f5e4d12b86d0f992de6a3.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetSnapshot_Response in bytes.
 /// @details The inclusive bound is 14536 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=14536;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetSnapshot_Response.
 /// @details Exact identity UWVMROS1_bf4456397ae5115bf88b49c5568b8f289d6aefe3266f5e4d12b86d0f992de6a3 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_bf4456397ae5115bf88b49c5568b8f289d6aefe3266f5e4d12b86d0f992de6a3";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetSnapshot_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/GetSnapshot_Response";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetSnapshot_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/GetSnapshot_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response; share/platform/ros/zig/API-CONTRACT.md
 field_status: u32=0,
 /// @brief uwvm_fourier_bridge/srv/GetSnapshot_Response.error: string; each string is 0..128 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response; share/platform/ros/zig/API-CONTRACT.md
 field_error: []const u8=&.{},
 /// @brief uwvm_fourier_bridge/srv/GetSnapshot_Response.value: uwvm_fourier_bridge/msg/Status.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response; share/platform/ros/zig/API-CONTRACT.md
 field_value: Ros2Uwvm_fourier_bridgeMsgStatus=.{},
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetSnapshot_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_status);
  try w.string(self.field_error,128,false);
  try self.field_value.writeFields(w);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetSnapshot_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_status=try r.integer(u32);
  value.field_error=try r.string(128,false);
  value.field_value=try Ros2Uwvm_fourier_bridgeMsgStatus.readFields(r,allocator);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/GetSnapshot_Response value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetSnapshot_Response value.
 /// @details Require the complete 40..14536-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<40 or bytes.len>14536) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetStandPose_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_22c044b91db36a82bb825a556c41f9ae0139fb652ade47ac10aedf701ba0e044.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetStandPose_Request in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=8;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetStandPose_Request.
 /// @details Exact identity UWVMROS1_22c044b91db36a82bb825a556c41f9ae0139fb652ade47ac10aedf701ba0e044 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_22c044b91db36a82bb825a556c41f9ae0139fb652ade47ac10aedf701ba0e044";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetStandPose_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/GetStandPose_Request";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetStandPose_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/GetStandPose_Request.sequence: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request; share/platform/ros/zig/API-CONTRACT.md
 field_sequence: u64=0,
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetStandPose_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_sequence);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetStandPose_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_sequence=try r.integer(u64);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/GetStandPose_Request value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetStandPose_Request value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>8) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetStandPose_Response value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..652 bytes
/// and is identified by UWVMROS1_b25c3c0cf5fa810e367b46ad2d20d7446ffc4f67b8fb77493060ca62017ef4e2.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetStandPose_Response in bytes.
 /// @details The inclusive bound is 652 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=652;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetStandPose_Response.
 /// @details Exact identity UWVMROS1_b25c3c0cf5fa810e367b46ad2d20d7446ffc4f67b8fb77493060ca62017ef4e2 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_b25c3c0cf5fa810e367b46ad2d20d7446ffc4f67b8fb77493060ca62017ef4e2";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetStandPose_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/GetStandPose_Response";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetStandPose_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/GetStandPose_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response; share/platform/ros/zig/API-CONTRACT.md
 field_status: u32=0,
 /// @brief uwvm_fourier_bridge/srv/GetStandPose_Response.error: string; each string is 0..128 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response; share/platform/ros/zig/API-CONTRACT.md
 field_error: []const u8=&.{},
 /// @brief uwvm_fourier_bridge/srv/GetStandPose_Response.values: float64; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response; share/platform/ros/zig/API-CONTRACT.md
 field_values: []f64=&.{},
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetStandPose_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_status);
  try w.string(self.field_error,128,false);
  if(self.field_values.len>64) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_values.len)));
  for(self.field_values) |e| {
  try w.float64(e);
  }
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetStandPose_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_status=try r.integer(u32);
  value.field_error=try r.string(128,false);
  const count2=try r.integer(u32); if(count2>64) return error.Invalid;
  value.field_values=try allocator.alloc(f64,count2);
  for(value.field_values) |*e| {
  e.*=try r.float64();
  }
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/GetStandPose_Response value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetStandPose_Response value.
 /// @details Require the complete 12..652-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<12 or bytes.len>652) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetUpperFsmName_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_83187e2bc41361d7a7aef57d1458f4017a3ca4235b82c290dd80c1f58611e412.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetUpperFsmName_Request in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=8;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetUpperFsmName_Request.
 /// @details Exact identity UWVMROS1_83187e2bc41361d7a7aef57d1458f4017a3ca4235b82c290dd80c1f58611e412 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_83187e2bc41361d7a7aef57d1458f4017a3ca4235b82c290dd80c1f58611e412";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetUpperFsmName_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/GetUpperFsmName_Request";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetUpperFsmName_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/GetUpperFsmName_Request.sequence: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request; share/platform/ros/zig/API-CONTRACT.md
 field_sequence: u64=0,
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetUpperFsmName_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_sequence);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetUpperFsmName_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_sequence=try r.integer(u64);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/GetUpperFsmName_Request value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetUpperFsmName_Request value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>8) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetUpperFsmName_Response value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..268 bytes
/// and is identified by UWVMROS1_ad6e25b9363bcadb517e96e5a1615c5ce36719542b2b32c4fb16f69ab102daed.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetUpperFsmName_Response in bytes.
 /// @details The inclusive bound is 268 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=268;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetUpperFsmName_Response.
 /// @details Exact identity UWVMROS1_ad6e25b9363bcadb517e96e5a1615c5ce36719542b2b32c4fb16f69ab102daed binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_ad6e25b9363bcadb517e96e5a1615c5ce36719542b2b32c4fb16f69ab102daed";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetUpperFsmName_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/GetUpperFsmName_Response";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetUpperFsmName_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/GetUpperFsmName_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response; share/platform/ros/zig/API-CONTRACT.md
 field_status: u32=0,
 /// @brief uwvm_fourier_bridge/srv/GetUpperFsmName_Response.error: string; each string is 0..128 bytes; strict
 /// UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response; share/platform/ros/zig/API-CONTRACT.md
 field_error: []const u8=&.{},
 /// @brief uwvm_fourier_bridge/srv/GetUpperFsmName_Response.value: string; each string is 0..128 bytes; strict
 /// UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response; share/platform/ros/zig/API-CONTRACT.md
 field_value: []const u8=&.{},
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetUpperFsmName_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_status);
  try w.string(self.field_error,128,false);
  try w.string(self.field_value,128,false);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetUpperFsmName_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_status=try r.integer(u32);
  value.field_error=try r.string(128,false);
  value.field_value=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/GetUpperFsmName_Response value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetUpperFsmName_Response value.
 /// @details Require the complete 12..268-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<12 or bytes.len>268) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetUpperFsmState_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_9981500b7a9dacf167baf5d8dce45820a1424a7b7fbe960c0d1b37751d1dda98.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetUpperFsmState_Request in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=8;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetUpperFsmState_Request.
 /// @details Exact identity UWVMROS1_9981500b7a9dacf167baf5d8dce45820a1424a7b7fbe960c0d1b37751d1dda98 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_9981500b7a9dacf167baf5d8dce45820a1424a7b7fbe960c0d1b37751d1dda98";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetUpperFsmState_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/GetUpperFsmState_Request";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetUpperFsmState_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/GetUpperFsmState_Request.sequence: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 field_sequence: u64=0,
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetUpperFsmState_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_sequence);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetUpperFsmState_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_sequence=try r.integer(u64);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/GetUpperFsmState_Request value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetUpperFsmState_Request value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>8) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetUpperFsmState_Response value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..140 bytes
/// and is identified by UWVMROS1_dc699f01c04f01c7ad2e71daea02ffd80f368d4d066d5d280fcf0a2abfa126a9.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetUpperFsmState_Response in bytes.
 /// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=140;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetUpperFsmState_Response.
 /// @details Exact identity UWVMROS1_dc699f01c04f01c7ad2e71daea02ffd80f368d4d066d5d280fcf0a2abfa126a9 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_dc699f01c04f01c7ad2e71daea02ffd80f368d4d066d5d280fcf0a2abfa126a9";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetUpperFsmState_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/GetUpperFsmState_Response";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetUpperFsmState_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/GetUpperFsmState_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 field_status: u32=0,
 /// @brief uwvm_fourier_bridge/srv/GetUpperFsmState_Response.error: string; each string is 0..128 bytes; strict
 /// UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 field_error: []const u8=&.{},
 /// @brief uwvm_fourier_bridge/srv/GetUpperFsmState_Response.value: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 field_value: i32=0,
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetUpperFsmState_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_status);
  try w.string(self.field_error,128,false);
  try w.integer(self.field_value);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetUpperFsmState_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_status=try r.integer(u32);
  value.field_error=try r.string(128,false);
  value.field_value=try r.integer(i32);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/GetUpperFsmState_Response value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetUpperFsmState_Response value.
 /// @details Require the complete 12..140-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<12 or bytes.len>140) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetVelocitySource_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_c11f2de346de2adac1cdf07c795d7746436851322e591a33d75c8226f75d5d4c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetVelocitySource_Request in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=8;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetVelocitySource_Request.
 /// @details Exact identity UWVMROS1_c11f2de346de2adac1cdf07c795d7746436851322e591a33d75c8226f75d5d4c binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_c11f2de346de2adac1cdf07c795d7746436851322e591a33d75c8226f75d5d4c";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetVelocitySource_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/GetVelocitySource_Request";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetVelocitySource_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/GetVelocitySource_Request.sequence: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request; share/platform/ros/zig/API-CONTRACT.md
 field_sequence: u64=0,
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetVelocitySource_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_sequence);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetVelocitySource_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_sequence=try r.integer(u64);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/GetVelocitySource_Request value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetVelocitySource_Request value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>8) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetVelocitySource_Response value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..140 bytes
/// and is identified by UWVMROS1_dedb7a6119ec7ed97a0924ff58585da8569acf3026bf0c21bbb0a43bd2094e53.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetVelocitySource_Response in bytes.
 /// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=140;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetVelocitySource_Response.
 /// @details Exact identity UWVMROS1_dedb7a6119ec7ed97a0924ff58585da8569acf3026bf0c21bbb0a43bd2094e53 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_dedb7a6119ec7ed97a0924ff58585da8569acf3026bf0c21bbb0a43bd2094e53";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetVelocitySource_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/GetVelocitySource_Response";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetVelocitySource_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/GetVelocitySource_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response; share/platform/ros/zig/API-CONTRACT.md
 field_status: u32=0,
 /// @brief uwvm_fourier_bridge/srv/GetVelocitySource_Response.error: string; each string is 0..128 bytes; strict
 /// UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response; share/platform/ros/zig/API-CONTRACT.md
 field_error: []const u8=&.{},
 /// @brief uwvm_fourier_bridge/srv/GetVelocitySource_Response.value: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response; share/platform/ros/zig/API-CONTRACT.md
 field_value: i32=0,
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetVelocitySource_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_status);
  try w.string(self.field_error,128,false);
  try w.integer(self.field_value);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetVelocitySource_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_status=try r.integer(u32);
  value.field_error=try r.string(128,false);
  value.field_value=try r.integer(i32);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/GetVelocitySource_Response value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetVelocitySource_Response value.
 /// @details Require the complete 12..140-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<12 or bytes.len>140) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetVelocitySourceName_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_e1bc07b31243e938bd0fe61b1a8a7c788be7442ee978bdc0e0f3da128f1986d1.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetVelocitySourceName_Request in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=8;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetVelocitySourceName_Request.
 /// @details Exact identity UWVMROS1_e1bc07b31243e938bd0fe61b1a8a7c788be7442ee978bdc0e0f3da128f1986d1 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_e1bc07b31243e938bd0fe61b1a8a7c788be7442ee978bdc0e0f3da128f1986d1";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetVelocitySourceName_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/GetVelocitySourceName_Request";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetVelocitySourceName_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/GetVelocitySourceName_Request.sequence: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request; share/platform/ros/zig/API-CONTRACT.md
 field_sequence: u64=0,
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetVelocitySourceName_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_sequence);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetVelocitySourceName_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_sequence=try r.integer(u64);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/GetVelocitySourceName_Request value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetVelocitySourceName_Request value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>8) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetVelocitySourceName_Response value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..268 bytes
/// and is identified by UWVMROS1_a79939894c6e446a7ee1b4af1270aa7bb72a8d54f543e82299a869b0a317ab40.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetVelocitySourceName_Response in bytes.
 /// @details The inclusive bound is 268 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=268;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetVelocitySourceName_Response.
 /// @details Exact identity UWVMROS1_a79939894c6e446a7ee1b4af1270aa7bb72a8d54f543e82299a869b0a317ab40 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_a79939894c6e446a7ee1b4af1270aa7bb72a8d54f543e82299a869b0a317ab40";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetVelocitySourceName_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/GetVelocitySourceName_Response";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetVelocitySourceName_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/GetVelocitySourceName_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response; share/platform/ros/zig/API-CONTRACT.md
 field_status: u32=0,
 /// @brief uwvm_fourier_bridge/srv/GetVelocitySourceName_Response.error: string; each string is 0..128 bytes;
 /// strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response; share/platform/ros/zig/API-CONTRACT.md
 field_error: []const u8=&.{},
 /// @brief uwvm_fourier_bridge/srv/GetVelocitySourceName_Response.value: string; each string is 0..128 bytes;
 /// strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response; share/platform/ros/zig/API-CONTRACT.md
 field_value: []const u8=&.{},
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetVelocitySourceName_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_status);
  try w.string(self.field_error,128,false);
  try w.string(self.field_value,128,false);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetVelocitySourceName_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_status=try r.integer(u32);
  value.field_error=try r.string(128,false);
  value.field_value=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/GetVelocitySourceName_Response value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetVelocitySourceName_Response value.
 /// @details Require the complete 12..268-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<12 or bytes.len>268) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/SetFsmState_Request value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..12 bytes
/// and is identified by UWVMROS1_a479783bb0f94bf69a62333235049ee7692f618ae255edbefaa9cf9f110e090d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/SetFsmState_Request in bytes.
 /// @details The inclusive bound is 12 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=12;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/SetFsmState_Request.
 /// @details Exact identity UWVMROS1_a479783bb0f94bf69a62333235049ee7692f618ae255edbefaa9cf9f110e090d binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_a479783bb0f94bf69a62333235049ee7692f618ae255edbefaa9cf9f110e090d";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/SetFsmState_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/SetFsmState_Request";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/SetFsmState_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/SetFsmState_Request.sequence: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 field_sequence: u64=0,
 /// @brief uwvm_fourier_bridge/srv/SetFsmState_Request.state: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 field_state: i32=0,
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/SetFsmState_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_sequence);
  try w.integer(self.field_state);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/SetFsmState_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_sequence=try r.integer(u64);
  value.field_state=try r.integer(i32);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/SetFsmState_Request value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/SetFsmState_Request value.
 /// @details Require the complete 12..12-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<12 or bytes.len>12) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/SetFsmState_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
/// and is identified by UWVMROS1_35161a47d290454d74849c87e6333379e93454fe070c21a4ad6175c5da715e70.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/SetFsmState_Response in bytes.
 /// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=136;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/SetFsmState_Response.
 /// @details Exact identity UWVMROS1_35161a47d290454d74849c87e6333379e93454fe070c21a4ad6175c5da715e70 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_35161a47d290454d74849c87e6333379e93454fe070c21a4ad6175c5da715e70";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/SetFsmState_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/SetFsmState_Response";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/SetFsmState_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/SetFsmState_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 field_status: u32=0,
 /// @brief uwvm_fourier_bridge/srv/SetFsmState_Response.error: string; each string is 0..128 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 field_error: []const u8=&.{},
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/SetFsmState_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_status);
  try w.string(self.field_error,128,false);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/SetFsmState_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_status=try r.integer(u32);
  value.field_error=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/SetFsmState_Response value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/SetFsmState_Response value.
 /// @details Require the complete 8..136-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>136) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/SetGroupCommand_Request value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 20..15572
/// bytes and is identified by UWVMROS1_b0b7d59e3985faf7a7c3e186e0556059b479e624c799f20dafb973e774ae3be9.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/SetGroupCommand_Request in bytes.
 /// @details The inclusive bound is 15572 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=15572;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/SetGroupCommand_Request.
 /// @details Exact identity UWVMROS1_b0b7d59e3985faf7a7c3e186e0556059b479e624c799f20dafb973e774ae3be9 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_b0b7d59e3985faf7a7c3e186e0556059b479e624c799f20dafb973e774ae3be9";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/SetGroupCommand_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/SetGroupCommand_Request";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/SetGroupCommand_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/SetGroupCommand_Request.sequence: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request; share/platform/ros/zig/API-CONTRACT.md
 field_sequence: u64=0,
 /// @brief uwvm_fourier_bridge/srv/SetGroupCommand_Request.position: uwvm_fourier_bridge/msg/GroupValues; 0..8
 /// elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request; share/platform/ros/zig/API-CONTRACT.md
 field_position: []Ros2Uwvm_fourier_bridgeMsgGroupValues=&.{},
 /// @brief uwvm_fourier_bridge/srv/SetGroupCommand_Request.velocity: uwvm_fourier_bridge/msg/GroupValues; 0..8
 /// elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request; share/platform/ros/zig/API-CONTRACT.md
 field_velocity: []Ros2Uwvm_fourier_bridgeMsgGroupValues=&.{},
 /// @brief uwvm_fourier_bridge/srv/SetGroupCommand_Request.torque: uwvm_fourier_bridge/msg/GroupValues; 0..8 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request; share/platform/ros/zig/API-CONTRACT.md
 field_torque: []Ros2Uwvm_fourier_bridgeMsgGroupValues=&.{},
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/SetGroupCommand_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_sequence);
  if(self.field_position.len>8) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_position.len)));
  for(self.field_position) |e| {
  try e.writeFields(w);
  }
  if(self.field_velocity.len>8) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_velocity.len)));
  for(self.field_velocity) |e| {
  try e.writeFields(w);
  }
  if(self.field_torque.len>8) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_torque.len)));
  for(self.field_torque) |e| {
  try e.writeFields(w);
  }
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/SetGroupCommand_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_sequence=try r.integer(u64);
  const count1=try r.integer(u32); if(count1>8) return error.Invalid;
  value.field_position=try allocator.alloc(Ros2Uwvm_fourier_bridgeMsgGroupValues,count1);
  for(value.field_position) |*e| {
  e.*=try Ros2Uwvm_fourier_bridgeMsgGroupValues.readFields(r,allocator);
  }
  const count2=try r.integer(u32); if(count2>8) return error.Invalid;
  value.field_velocity=try allocator.alloc(Ros2Uwvm_fourier_bridgeMsgGroupValues,count2);
  for(value.field_velocity) |*e| {
  e.*=try Ros2Uwvm_fourier_bridgeMsgGroupValues.readFields(r,allocator);
  }
  const count3=try r.integer(u32); if(count3>8) return error.Invalid;
  value.field_torque=try allocator.alloc(Ros2Uwvm_fourier_bridgeMsgGroupValues,count3);
  for(value.field_torque) |*e| {
  e.*=try Ros2Uwvm_fourier_bridgeMsgGroupValues.readFields(r,allocator);
  }
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/SetGroupCommand_Request value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/SetGroupCommand_Request value.
 /// @details Require the complete 20..15572-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<20 or bytes.len>15572) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/SetGroupCommand_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
/// and is identified by UWVMROS1_53dc9e28bf3c95b193748d49c2796f5a936815f654863d326b6536a44077d290.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/SetGroupCommand_Response in bytes.
 /// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=136;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/SetGroupCommand_Response.
 /// @details Exact identity UWVMROS1_53dc9e28bf3c95b193748d49c2796f5a936815f654863d326b6536a44077d290 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_53dc9e28bf3c95b193748d49c2796f5a936815f654863d326b6536a44077d290";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/SetGroupCommand_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/SetGroupCommand_Response";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/SetGroupCommand_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/SetGroupCommand_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response; share/platform/ros/zig/API-CONTRACT.md
 field_status: u32=0,
 /// @brief uwvm_fourier_bridge/srv/SetGroupCommand_Response.error: string; each string is 0..128 bytes; strict
 /// UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response; share/platform/ros/zig/API-CONTRACT.md
 field_error: []const u8=&.{},
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/SetGroupCommand_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_status);
  try w.string(self.field_error,128,false);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/SetGroupCommand_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_status=try r.integer(u32);
  value.field_error=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/SetGroupCommand_Response value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/SetGroupCommand_Response value.
 /// @details Require the complete 8..136-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>136) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/SetMotorCfgPd_Request value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 16..10384
/// bytes and is identified by UWVMROS1_0e5ee74f7eaed206d45a883b2fe8ddeda407edf921aa31c4f2d04462479324de.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/SetMotorCfgPd_Request in bytes.
 /// @details The inclusive bound is 10384 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=10384;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/SetMotorCfgPd_Request.
 /// @details Exact identity UWVMROS1_0e5ee74f7eaed206d45a883b2fe8ddeda407edf921aa31c4f2d04462479324de binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_0e5ee74f7eaed206d45a883b2fe8ddeda407edf921aa31c4f2d04462479324de";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/SetMotorCfgPd_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/SetMotorCfgPd_Request";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/SetMotorCfgPd_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/SetMotorCfgPd_Request.sequence: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request; share/platform/ros/zig/API-CONTRACT.md
 field_sequence: u64=0,
 /// @brief uwvm_fourier_bridge/srv/SetMotorCfgPd_Request.kp: uwvm_fourier_bridge/msg/GroupValues; 0..8 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request; share/platform/ros/zig/API-CONTRACT.md
 field_kp: []Ros2Uwvm_fourier_bridgeMsgGroupValues=&.{},
 /// @brief uwvm_fourier_bridge/srv/SetMotorCfgPd_Request.kd: uwvm_fourier_bridge/msg/GroupValues; 0..8 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request; share/platform/ros/zig/API-CONTRACT.md
 field_kd: []Ros2Uwvm_fourier_bridgeMsgGroupValues=&.{},
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/SetMotorCfgPd_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_sequence);
  if(self.field_kp.len>8) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_kp.len)));
  for(self.field_kp) |e| {
  try e.writeFields(w);
  }
  if(self.field_kd.len>8) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_kd.len)));
  for(self.field_kd) |e| {
  try e.writeFields(w);
  }
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/SetMotorCfgPd_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_sequence=try r.integer(u64);
  const count1=try r.integer(u32); if(count1>8) return error.Invalid;
  value.field_kp=try allocator.alloc(Ros2Uwvm_fourier_bridgeMsgGroupValues,count1);
  for(value.field_kp) |*e| {
  e.*=try Ros2Uwvm_fourier_bridgeMsgGroupValues.readFields(r,allocator);
  }
  const count2=try r.integer(u32); if(count2>8) return error.Invalid;
  value.field_kd=try allocator.alloc(Ros2Uwvm_fourier_bridgeMsgGroupValues,count2);
  for(value.field_kd) |*e| {
  e.*=try Ros2Uwvm_fourier_bridgeMsgGroupValues.readFields(r,allocator);
  }
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/SetMotorCfgPd_Request value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/SetMotorCfgPd_Request value.
 /// @details Require the complete 16..10384-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<16 or bytes.len>10384) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/SetMotorCfgPd_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
/// and is identified by UWVMROS1_dc86ac23016dc2d81dd5a69d3a6bcd96db09e1012f8f86e9fe4adcb38dabc804.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/SetMotorCfgPd_Response in bytes.
 /// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=136;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/SetMotorCfgPd_Response.
 /// @details Exact identity UWVMROS1_dc86ac23016dc2d81dd5a69d3a6bcd96db09e1012f8f86e9fe4adcb38dabc804 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_dc86ac23016dc2d81dd5a69d3a6bcd96db09e1012f8f86e9fe4adcb38dabc804";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/SetMotorCfgPd_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/SetMotorCfgPd_Response";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/SetMotorCfgPd_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/SetMotorCfgPd_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response; share/platform/ros/zig/API-CONTRACT.md
 field_status: u32=0,
 /// @brief uwvm_fourier_bridge/srv/SetMotorCfgPd_Response.error: string; each string is 0..128 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response; share/platform/ros/zig/API-CONTRACT.md
 field_error: []const u8=&.{},
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/SetMotorCfgPd_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_status);
  try w.string(self.field_error,128,false);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/SetMotorCfgPd_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_status=try r.integer(u32);
  value.field_error=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/SetMotorCfgPd_Response value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/SetMotorCfgPd_Response value.
 /// @details Require the complete 8..136-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>136) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/SetStandPose_Request value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 32..32 bytes
/// and is identified by UWVMROS1_21e410d17dac9b44b02507adc3752236def8ad2bc9e251b64114a7f757577211.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/SetStandPose_Request in bytes.
 /// @details The inclusive bound is 32 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=32;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/SetStandPose_Request.
 /// @details Exact identity UWVMROS1_21e410d17dac9b44b02507adc3752236def8ad2bc9e251b64114a7f757577211 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_21e410d17dac9b44b02507adc3752236def8ad2bc9e251b64114a7f757577211";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/SetStandPose_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/SetStandPose_Request";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/SetStandPose_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/SetStandPose_Request.sequence: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request; share/platform/ros/zig/API-CONTRACT.md
 field_sequence: u64=0,
 /// @brief uwvm_fourier_bridge/srv/SetStandPose_Request.delta_z: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request; share/platform/ros/zig/API-CONTRACT.md
 field_delta_z: f64=0,
 /// @brief uwvm_fourier_bridge/srv/SetStandPose_Request.delta_pitch: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request; share/platform/ros/zig/API-CONTRACT.md
 field_delta_pitch: f64=0,
 /// @brief uwvm_fourier_bridge/srv/SetStandPose_Request.delta_yaw: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request; share/platform/ros/zig/API-CONTRACT.md
 field_delta_yaw: f64=0,
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/SetStandPose_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_sequence);
  try w.float64(self.field_delta_z);
  try w.float64(self.field_delta_pitch);
  try w.float64(self.field_delta_yaw);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/SetStandPose_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_sequence=try r.integer(u64);
  value.field_delta_z=try r.float64();
  value.field_delta_pitch=try r.float64();
  value.field_delta_yaw=try r.float64();
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/SetStandPose_Request value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/SetStandPose_Request value.
 /// @details Require the complete 32..32-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<32 or bytes.len>32) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/SetStandPose_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
/// and is identified by UWVMROS1_9b3ea0a1868a4672f1ca95ac2cd43e31eeaa9f059c4194a2205b5df1cf09291f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/SetStandPose_Response in bytes.
 /// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=136;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/SetStandPose_Response.
 /// @details Exact identity UWVMROS1_9b3ea0a1868a4672f1ca95ac2cd43e31eeaa9f059c4194a2205b5df1cf09291f binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_9b3ea0a1868a4672f1ca95ac2cd43e31eeaa9f059c4194a2205b5df1cf09291f";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/SetStandPose_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/SetStandPose_Response";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/SetStandPose_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/SetStandPose_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response; share/platform/ros/zig/API-CONTRACT.md
 field_status: u32=0,
 /// @brief uwvm_fourier_bridge/srv/SetStandPose_Response.error: string; each string is 0..128 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response; share/platform/ros/zig/API-CONTRACT.md
 field_error: []const u8=&.{},
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/SetStandPose_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_status);
  try w.string(self.field_error,128,false);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/SetStandPose_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_status=try r.integer(u32);
  value.field_error=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/SetStandPose_Response value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/SetStandPose_Response value.
 /// @details Require the complete 8..136-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>136) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/SetUpperFsmState_Request value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..12 bytes
/// and is identified by UWVMROS1_9742535e908c4d9640af2c7432a91e65e76f3a442c265ef9255df599227a4182.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/SetUpperFsmState_Request in bytes.
 /// @details The inclusive bound is 12 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=12;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/SetUpperFsmState_Request.
 /// @details Exact identity UWVMROS1_9742535e908c4d9640af2c7432a91e65e76f3a442c265ef9255df599227a4182 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_9742535e908c4d9640af2c7432a91e65e76f3a442c265ef9255df599227a4182";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/SetUpperFsmState_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/SetUpperFsmState_Request";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/SetUpperFsmState_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/SetUpperFsmState_Request.sequence: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 field_sequence: u64=0,
 /// @brief uwvm_fourier_bridge/srv/SetUpperFsmState_Request.state: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 field_state: i32=0,
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/SetUpperFsmState_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_sequence);
  try w.integer(self.field_state);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/SetUpperFsmState_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_sequence=try r.integer(u64);
  value.field_state=try r.integer(i32);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/SetUpperFsmState_Request value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/SetUpperFsmState_Request value.
 /// @details Require the complete 12..12-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<12 or bytes.len>12) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/SetUpperFsmState_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
/// and is identified by UWVMROS1_8247b198b8a857c16d15f248da2ac705ff2fd6b596f8c148c316025cd917c9f8.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/SetUpperFsmState_Response in bytes.
 /// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=136;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/SetUpperFsmState_Response.
 /// @details Exact identity UWVMROS1_8247b198b8a857c16d15f248da2ac705ff2fd6b596f8c148c316025cd917c9f8 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_8247b198b8a857c16d15f248da2ac705ff2fd6b596f8c148c316025cd917c9f8";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/SetUpperFsmState_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/SetUpperFsmState_Response";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/SetUpperFsmState_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/SetUpperFsmState_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 field_status: u32=0,
 /// @brief uwvm_fourier_bridge/srv/SetUpperFsmState_Response.error: string; each string is 0..128 bytes; strict
 /// UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 field_error: []const u8=&.{},
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/SetUpperFsmState_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_status);
  try w.string(self.field_error,128,false);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/SetUpperFsmState_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_status=try r.integer(u32);
  value.field_error=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/SetUpperFsmState_Response value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/SetUpperFsmState_Response value.
 /// @details Require the complete 8..136-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>136) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/SetVelocity_Request value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 40..40 bytes
/// and is identified by UWVMROS1_7d81116c1df184dc948db4bcba368ae3ea118f3c27418ee44bd0ceb6347cee44.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/SetVelocity_Request in bytes.
 /// @details The inclusive bound is 40 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=40;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/SetVelocity_Request.
 /// @details Exact identity UWVMROS1_7d81116c1df184dc948db4bcba368ae3ea118f3c27418ee44bd0ceb6347cee44 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_7d81116c1df184dc948db4bcba368ae3ea118f3c27418ee44bd0ceb6347cee44";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/SetVelocity_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/SetVelocity_Request";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/SetVelocity_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/SetVelocity_Request.sequence: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request; share/platform/ros/zig/API-CONTRACT.md
 field_sequence: u64=0,
 /// @brief uwvm_fourier_bridge/srv/SetVelocity_Request.vx: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request; share/platform/ros/zig/API-CONTRACT.md
 field_vx: f64=0,
 /// @brief uwvm_fourier_bridge/srv/SetVelocity_Request.vy: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request; share/platform/ros/zig/API-CONTRACT.md
 field_vy: f64=0,
 /// @brief uwvm_fourier_bridge/srv/SetVelocity_Request.yaw: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request; share/platform/ros/zig/API-CONTRACT.md
 field_yaw: f64=0,
 /// @brief uwvm_fourier_bridge/srv/SetVelocity_Request.duration: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request; share/platform/ros/zig/API-CONTRACT.md
 field_duration: f64=0,
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/SetVelocity_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_sequence);
  try w.float64(self.field_vx);
  try w.float64(self.field_vy);
  try w.float64(self.field_yaw);
  try w.float64(self.field_duration);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/SetVelocity_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_sequence=try r.integer(u64);
  value.field_vx=try r.float64();
  value.field_vy=try r.float64();
  value.field_yaw=try r.float64();
  value.field_duration=try r.float64();
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/SetVelocity_Request value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/SetVelocity_Request value.
 /// @details Require the complete 40..40-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<40 or bytes.len>40) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/SetVelocity_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
/// and is identified by UWVMROS1_fa76b58061fed9672c09c5a110ebd3dc3dcdfde38da662338a48c0cf00250307.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/SetVelocity_Response in bytes.
 /// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=136;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/SetVelocity_Response.
 /// @details Exact identity UWVMROS1_fa76b58061fed9672c09c5a110ebd3dc3dcdfde38da662338a48c0cf00250307 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_fa76b58061fed9672c09c5a110ebd3dc3dcdfde38da662338a48c0cf00250307";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/SetVelocity_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/SetVelocity_Response";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/SetVelocity_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/SetVelocity_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response; share/platform/ros/zig/API-CONTRACT.md
 field_status: u32=0,
 /// @brief uwvm_fourier_bridge/srv/SetVelocity_Response.error: string; each string is 0..128 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response; share/platform/ros/zig/API-CONTRACT.md
 field_error: []const u8=&.{},
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/SetVelocity_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_status);
  try w.string(self.field_error,128,false);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/SetVelocity_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_status=try r.integer(u32);
  value.field_error=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/SetVelocity_Response value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/SetVelocity_Response value.
 /// @details Require the complete 8..136-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>136) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/SetVelocitySource_Request value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..12 bytes
/// and is identified by UWVMROS1_5e31cdd231ecbb30ece49edc211860b6be67c9e74839a328f37a46231e41271c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/SetVelocitySource_Request in bytes.
 /// @details The inclusive bound is 12 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=12;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/SetVelocitySource_Request.
 /// @details Exact identity UWVMROS1_5e31cdd231ecbb30ece49edc211860b6be67c9e74839a328f37a46231e41271c binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_5e31cdd231ecbb30ece49edc211860b6be67c9e74839a328f37a46231e41271c";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/SetVelocitySource_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/SetVelocitySource_Request";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/SetVelocitySource_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/SetVelocitySource_Request.sequence: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request; share/platform/ros/zig/API-CONTRACT.md
 field_sequence: u64=0,
 /// @brief uwvm_fourier_bridge/srv/SetVelocitySource_Request.source: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request; share/platform/ros/zig/API-CONTRACT.md
 field_source: i32=0,
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/SetVelocitySource_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_sequence);
  try w.integer(self.field_source);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/SetVelocitySource_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_sequence=try r.integer(u64);
  value.field_source=try r.integer(i32);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/SetVelocitySource_Request value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/SetVelocitySource_Request value.
 /// @details Require the complete 12..12-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<12 or bytes.len>12) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/SetVelocitySource_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
/// and is identified by UWVMROS1_9eb723e979b56e4a2dff53e026a3cab3cd0ddd4752c85e9b3ca08332e7a0eea7.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/SetVelocitySource_Response in bytes.
 /// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=136;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/SetVelocitySource_Response.
 /// @details Exact identity UWVMROS1_9eb723e979b56e4a2dff53e026a3cab3cd0ddd4752c85e9b3ca08332e7a0eea7 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_9eb723e979b56e4a2dff53e026a3cab3cd0ddd4752c85e9b3ca08332e7a0eea7";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/SetVelocitySource_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/SetVelocitySource_Response";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/SetVelocitySource_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/SetVelocitySource_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response; share/platform/ros/zig/API-CONTRACT.md
 field_status: u32=0,
 /// @brief uwvm_fourier_bridge/srv/SetVelocitySource_Response.error: string; each string is 0..128 bytes; strict
 /// UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response; share/platform/ros/zig/API-CONTRACT.md
 field_error: []const u8=&.{},
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/SetVelocitySource_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_status);
  try w.string(self.field_error,128,false);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/SetVelocitySource_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_status=try r.integer(u32);
  value.field_error=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/SetVelocitySource_Response value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/SetVelocitySource_Response value.
 /// @details Require the complete 8..136-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>136) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 28..1084
/// bytes and is identified by UWVMROS1_c6abe539be15088e34d76cb243ddd814fd6781baa7bf623949f1fb03651ef202.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request in bytes.
 /// @details The inclusive bound is 1084 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=1084;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request.
 /// @details Exact identity UWVMROS1_c6abe539be15088e34d76cb243ddd814fd6781baa7bf623949f1fb03651ef202 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_c6abe539be15088e34d76cb243ddd814fd6781baa7bf623949f1fb03651ef202";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request.sequence: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request; share/platform/ros/zig/API-CONTRACT.md
 field_sequence: u64=0,
 /// @brief uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request.groups: string; 0..8 elements; each string is
 /// 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request; share/platform/ros/zig/API-CONTRACT.md
 field_groups: [][]const u8=&.{},
 /// @brief uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request.timeout_seconds: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request; share/platform/ros/zig/API-CONTRACT.md
 field_timeout_seconds: f64=0,
 /// @brief uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request.poll_seconds: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request; share/platform/ros/zig/API-CONTRACT.md
 field_poll_seconds: f64=0,
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_sequence);
  if(self.field_groups.len>8) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_groups.len)));
  for(self.field_groups) |e| {
  try w.string(e,128,false);
  }
  try w.float64(self.field_timeout_seconds);
  try w.float64(self.field_poll_seconds);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_sequence=try r.integer(u64);
  const count1=try r.integer(u32); if(count1>8) return error.Invalid;
  value.field_groups=try allocator.alloc([]const u8,count1);
  for(value.field_groups) |*e| {
  e.*=try r.string(128,false);
  }
  value.field_timeout_seconds=try r.float64();
  value.field_poll_seconds=try r.float64();
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request value.
 /// @details Require the complete 28..1084-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<28 or bytes.len>1084) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 9..137 bytes
/// and is identified by UWVMROS1_19184faa294d8dae790908044ff067851cde1074e1228a32b19320b6cc94a74f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response=struct {
 /// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response in bytes.
 /// @details The inclusive bound is 137 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=137;
 /// @brief Canonical codec identity of uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response.
 /// @details Exact identity UWVMROS1_19184faa294d8dae790908044ff067851cde1074e1228a32b19320b6cc94a74f binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_19184faa294d8dae790908044ff067851cde1074e1228a32b19320b6cc94a74f";
 /// @brief Original ROS type name for uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response";
 /// @brief Selected original native identity for uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response; share/platform/ros/zig/API-CONTRACT.md
 field_status: u32=0,
 /// @brief uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response.error: string; each string is 0..128 bytes;
 /// strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response; share/platform/ros/zig/API-CONTRACT.md
 field_error: []const u8=&.{},
 /// @brief uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response.complete: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response; share/platform/ros/zig/API-CONTRACT.md
 field_complete: bool=false,
 /// @brief Append every canonical field of uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_status);
  try w.string(self.field_error,128,false);
  try w.boolean(self.field_complete);
 }
 /// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_status=try r.integer(u32);
  value.field_error=try r.string(128,false);
  value.field_complete=try r.boolean();
  return value;
 }
 /// @brief Encode one complete uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response value.
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
 /// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response value.
 /// @details Require the complete 9..137-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<9 or bytes.len>137) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
