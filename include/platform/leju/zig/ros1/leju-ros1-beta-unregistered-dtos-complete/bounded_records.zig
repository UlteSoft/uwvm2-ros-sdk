// @file bounded_records.zig
// @brief Full leju zig codecs and original record metadata.
// @details Complete leju ros1_beta_unregistered_dtos values in zig. 2 original records retain 5 fields and 2
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/leju/en_US/catalog/.
//! Generated complete bounded values; all allocation is explicit.
const std=@import("std");
const wire=@import("roswire");
/// @brief Complete ROS 1 kuavo_sdk/qv value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..132 bytes
/// and is identified by UWVMROS1_99d76f2c912c99d52786d5e2aa42bb256e1a6c997d3cf9daa2a6918697563e32.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Kuavo_sdkQv=struct {
 /// @brief Maximum canonical extent of kuavo_sdk/qv in bytes.
 /// @details The inclusive bound is 132 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Kuavo_sdkQv; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=132;
 /// @brief Canonical codec identity of kuavo_sdk/qv.
 /// @details Exact identity UWVMROS1_99d76f2c912c99d52786d5e2aa42bb256e1a6c997d3cf9daa2a6918697563e32 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Kuavo_sdkQv; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_99d76f2c912c99d52786d5e2aa42bb256e1a6c997d3cf9daa2a6918697563e32";
 /// @brief Original ROS type name for kuavo_sdk/qv.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Kuavo_sdkQv; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="kuavo_sdk/qv";
 /// @brief Selected original native identity for kuavo_sdk/qv.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Kuavo_sdkQv; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief kuavo_sdk/qv.value: float64; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Kuavo_sdkQv; share/platform/ros/zig/API-CONTRACT.md
 field_value: []f64=&.{},
 /// @brief Append every canonical field of kuavo_sdk/qv.
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
 /// @see Ros1Kuavo_sdkQv; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  if(self.field_value.len>16) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_value.len)));
  for(self.field_value) |e| {
  try w.float64(e);
  }
 }
 /// @brief Read the ordered canonical fields of kuavo_sdk/qv.
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
 /// @see Ros1Kuavo_sdkQv; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  const count0=try r.integer(u32); if(count0>16) return error.Invalid;
  value.field_value=try allocator.alloc(f64,count0);
  for(value.field_value) |*e| {
  e.*=try r.float64();
  }
  return value;
 }
 /// @brief Encode one complete kuavo_sdk/qv value.
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
 /// @see Ros1Kuavo_sdkQv; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete kuavo_sdk/qv value.
 /// @details Require the complete 4..132-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Kuavo_sdkQv; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<4 or bytes.len>132) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 kuavo_sdk/fullBodyTargetTrajectories value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 16..2320
/// bytes and is identified by UWVMROS1_670fdba890f7bf41db3f446366ef88d583de4966c54a58646b74ebdd07bbfb32.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Kuavo_sdkFullBodyTargetTrajectories=struct {
 /// @brief Maximum canonical extent of kuavo_sdk/fullBodyTargetTrajectories in bytes.
 /// @details The inclusive bound is 2320 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=2320;
 /// @brief Canonical codec identity of kuavo_sdk/fullBodyTargetTrajectories.
 /// @details Exact identity UWVMROS1_670fdba890f7bf41db3f446366ef88d583de4966c54a58646b74ebdd07bbfb32 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_670fdba890f7bf41db3f446366ef88d583de4966c54a58646b74ebdd07bbfb32";
 /// @brief Original ROS type name for kuavo_sdk/fullBodyTargetTrajectories.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="kuavo_sdk/fullBodyTargetTrajectories";
 /// @brief Selected original native identity for kuavo_sdk/fullBodyTargetTrajectories.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief kuavo_sdk/fullBodyTargetTrajectories.timeTrajectory: float64; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/zig/API-CONTRACT.md
 field_timeTrajectory: []f64=&.{},
 /// @brief kuavo_sdk/fullBodyTargetTrajectories.footIndexTrajectory: int32; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/zig/API-CONTRACT.md
 field_footIndexTrajectory: []i32=&.{},
 /// @brief kuavo_sdk/fullBodyTargetTrajectories.fullBodyQTrajectory: kuavo_sdk/qv; 0..8 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/zig/API-CONTRACT.md
 field_fullBodyQTrajectory: []Ros1Kuavo_sdkQv=&.{},
 /// @brief kuavo_sdk/fullBodyTargetTrajectories.fullBodyVTrajectory: kuavo_sdk/qv; 0..8 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/zig/API-CONTRACT.md
 field_fullBodyVTrajectory: []Ros1Kuavo_sdkQv=&.{},
 /// @brief Append every canonical field of kuavo_sdk/fullBodyTargetTrajectories.
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
 /// @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  if(self.field_timeTrajectory.len>16) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_timeTrajectory.len)));
  for(self.field_timeTrajectory) |e| {
  try w.float64(e);
  }
  if(self.field_footIndexTrajectory.len>16) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_footIndexTrajectory.len)));
  for(self.field_footIndexTrajectory) |e| {
  try w.integer(e);
  }
  if(self.field_fullBodyQTrajectory.len>8) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_fullBodyQTrajectory.len)));
  for(self.field_fullBodyQTrajectory) |e| {
  try e.writeFields(w);
  }
  if(self.field_fullBodyVTrajectory.len>8) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_fullBodyVTrajectory.len)));
  for(self.field_fullBodyVTrajectory) |e| {
  try e.writeFields(w);
  }
 }
 /// @brief Read the ordered canonical fields of kuavo_sdk/fullBodyTargetTrajectories.
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
 /// @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  const count0=try r.integer(u32); if(count0>16) return error.Invalid;
  value.field_timeTrajectory=try allocator.alloc(f64,count0);
  for(value.field_timeTrajectory) |*e| {
  e.*=try r.float64();
  }
  const count1=try r.integer(u32); if(count1>16) return error.Invalid;
  value.field_footIndexTrajectory=try allocator.alloc(i32,count1);
  for(value.field_footIndexTrajectory) |*e| {
  e.*=try r.integer(i32);
  }
  const count2=try r.integer(u32); if(count2>8) return error.Invalid;
  value.field_fullBodyQTrajectory=try allocator.alloc(Ros1Kuavo_sdkQv,count2);
  for(value.field_fullBodyQTrajectory) |*e| {
  e.*=try Ros1Kuavo_sdkQv.readFields(r,allocator);
  }
  const count3=try r.integer(u32); if(count3>8) return error.Invalid;
  value.field_fullBodyVTrajectory=try allocator.alloc(Ros1Kuavo_sdkQv,count3);
  for(value.field_fullBodyVTrajectory) |*e| {
  e.*=try Ros1Kuavo_sdkQv.readFields(r,allocator);
  }
  return value;
 }
 /// @brief Encode one complete kuavo_sdk/fullBodyTargetTrajectories value.
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
 /// @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete kuavo_sdk/fullBodyTargetTrajectories value.
 /// @details Require the complete 16..2320-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<16 or bytes.len>2320) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
