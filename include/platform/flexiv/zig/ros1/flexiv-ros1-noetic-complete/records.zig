//! Generated complete bounded values; all allocation is explicit.
const std=@import("std");
const wire=@import("roswire");
/// @brief Complete ROS 1 flexiv_msgs/JointPosVel value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 112..112 bytes
/// and is identified by UWVMROS1_60868295fe1798f349d7f675035bd476f0f6caa8b7568e7a66487c32459fdfaa.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Flexiv_msgsJointPosVel=struct {
 /// @brief Maximum canonical extent of flexiv_msgs/JointPosVel in bytes.
 /// @details The inclusive bound is 112 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Flexiv_msgsJointPosVel; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=112;
 /// @brief Canonical codec identity of flexiv_msgs/JointPosVel.
 /// @details Exact identity UWVMROS1_60868295fe1798f349d7f675035bd476f0f6caa8b7568e7a66487c32459fdfaa binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Flexiv_msgsJointPosVel; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_60868295fe1798f349d7f675035bd476f0f6caa8b7568e7a66487c32459fdfaa";
 /// @brief Original ROS type name for flexiv_msgs/JointPosVel.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Flexiv_msgsJointPosVel; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="flexiv_msgs/JointPosVel";
 /// @brief Selected original native identity for flexiv_msgs/JointPosVel.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Flexiv_msgsJointPosVel; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief flexiv_msgs/JointPosVel.positions: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Flexiv_msgsJointPosVel; share/platform/ros/zig/API-CONTRACT.md
 field_positions: [7]f64=[_]f64{0} ** 7,
 /// @brief flexiv_msgs/JointPosVel.velocities: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Flexiv_msgsJointPosVel; share/platform/ros/zig/API-CONTRACT.md
 field_velocities: [7]f64=[_]f64{0} ** 7,
 /// @brief Append every canonical field of flexiv_msgs/JointPosVel.
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
 /// @see Ros1Flexiv_msgsJointPosVel; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  for(self.field_positions) |e| {
  try w.float64(e);
  }
  for(self.field_velocities) |e| {
  try w.float64(e);
  }
 }
 /// @brief Read the ordered canonical fields of flexiv_msgs/JointPosVel.
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
 /// @see Ros1Flexiv_msgsJointPosVel; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  for(&value.field_positions) |*e| {
  e.*=try r.float64();
  }
  for(&value.field_velocities) |*e| {
  e.*=try r.float64();
  }
  return value;
 }
 /// @brief Encode one complete flexiv_msgs/JointPosVel value.
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
 /// @see Ros1Flexiv_msgsJointPosVel; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete flexiv_msgs/JointPosVel value.
 /// @details Require the complete 112..112-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Flexiv_msgsJointPosVel; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<112 or bytes.len>112) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 flexiv_msgs/Mode value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is
/// identified by UWVMROS1_85789f97962c70edfe4703d5a78ed198655e3ebe300f5a9c588d739bae87f422.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Flexiv_msgsMode=struct {
 /// @brief Maximum canonical extent of flexiv_msgs/Mode in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Flexiv_msgsMode; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=1;
 /// @brief Canonical codec identity of flexiv_msgs/Mode.
 /// @details Exact identity UWVMROS1_85789f97962c70edfe4703d5a78ed198655e3ebe300f5a9c588d739bae87f422 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Flexiv_msgsMode; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_85789f97962c70edfe4703d5a78ed198655e3ebe300f5a9c588d739bae87f422";
 /// @brief Original ROS type name for flexiv_msgs/Mode.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Flexiv_msgsMode; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="flexiv_msgs/Mode";
 /// @brief Selected original native identity for flexiv_msgs/Mode.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Flexiv_msgsMode; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief flexiv_msgs/Mode.MODE_UNKNOWN: original int8 constant.
 /// @details Exact admitted value -1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros1Flexiv_msgsMode; share/platform/ros/zig/API-CONTRACT.md
 pub const field_MODE_UNKNOWN: i8=-1;
 /// @brief flexiv_msgs/Mode.MODE_IDLE: original int8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros1Flexiv_msgsMode; share/platform/ros/zig/API-CONTRACT.md
 pub const field_MODE_IDLE: i8=0;
 /// @brief flexiv_msgs/Mode.MODE_RT_JOINT_TORQUE: original int8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros1Flexiv_msgsMode; share/platform/ros/zig/API-CONTRACT.md
 pub const field_MODE_RT_JOINT_TORQUE: i8=1;
 /// @brief flexiv_msgs/Mode.MODE_RT_JOINT_POSITION: original int8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros1Flexiv_msgsMode; share/platform/ros/zig/API-CONTRACT.md
 pub const field_MODE_RT_JOINT_POSITION: i8=2;
 /// @brief flexiv_msgs/Mode.MODE_NRT_JOINT_POSITION: original int8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros1Flexiv_msgsMode; share/platform/ros/zig/API-CONTRACT.md
 pub const field_MODE_NRT_JOINT_POSITION: i8=3;
 /// @brief flexiv_msgs/Mode.MODE_NRT_PLAN_EXECUTION: original int8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros1Flexiv_msgsMode; share/platform/ros/zig/API-CONTRACT.md
 pub const field_MODE_NRT_PLAN_EXECUTION: i8=4;
 /// @brief flexiv_msgs/Mode.MODE_NRT_PRIMITIVE_EXECUTION: original int8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros1Flexiv_msgsMode; share/platform/ros/zig/API-CONTRACT.md
 pub const field_MODE_NRT_PRIMITIVE_EXECUTION: i8=5;
 /// @brief flexiv_msgs/Mode.MODE_RT_CARTESIAN_MOTION_FORCE_BASE: original int8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros1Flexiv_msgsMode; share/platform/ros/zig/API-CONTRACT.md
 pub const field_MODE_RT_CARTESIAN_MOTION_FORCE_BASE: i8=6;
 /// @brief flexiv_msgs/Mode.MODE_RT_CARTESIAN_MOTION_FORCE_TCP: original int8 constant.
 /// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros1Flexiv_msgsMode; share/platform/ros/zig/API-CONTRACT.md
 pub const field_MODE_RT_CARTESIAN_MOTION_FORCE_TCP: i8=7;
 /// @brief flexiv_msgs/Mode.MODE_NRT_CARTESIAN_MOTION_FORCE_BASE: original int8 constant.
 /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros1Flexiv_msgsMode; share/platform/ros/zig/API-CONTRACT.md
 pub const field_MODE_NRT_CARTESIAN_MOTION_FORCE_BASE: i8=8;
 /// @brief flexiv_msgs/Mode.MODE_NRT_CARTESIAN_MOTION_FORCE_TCP: original int8 constant.
 /// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros1Flexiv_msgsMode; share/platform/ros/zig/API-CONTRACT.md
 pub const field_MODE_NRT_CARTESIAN_MOTION_FORCE_TCP: i8=9;
 /// @brief flexiv_msgs/Mode.mode: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Flexiv_msgsMode; share/platform/ros/zig/API-CONTRACT.md
 field_mode: i8=0,
 /// @brief Append every canonical field of flexiv_msgs/Mode.
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
 /// @see Ros1Flexiv_msgsMode; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_mode);
 }
 /// @brief Read the ordered canonical fields of flexiv_msgs/Mode.
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
 /// @see Ros1Flexiv_msgsMode; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_mode=try r.integer(i8);
  return value;
 }
 /// @brief Encode one complete flexiv_msgs/Mode value.
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
 /// @see Ros1Flexiv_msgsMode; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete flexiv_msgs/Mode value.
 /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and trailing
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
 /// @see Ros1Flexiv_msgsMode; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<1 or bytes.len>1) return error.Invalid;
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
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsPoint; share/platform/ros/zig/API-CONTRACT.md
 field_x: f64=0,
 /// @brief geometry_msgs/Point.y: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsPoint; share/platform/ros/zig/API-CONTRACT.md
 field_y: f64=0,
 /// @brief geometry_msgs/Point.z: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
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
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
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
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
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
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
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
 /// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields and trailing
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
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/zig/API-CONTRACT.md
 field_x: f64=0,
 /// @brief geometry_msgs/Quaternion.y: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/zig/API-CONTRACT.md
 field_y: f64=0,
 /// @brief geometry_msgs/Quaternion.z: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/zig/API-CONTRACT.md
 field_z: f64=0,
 /// @brief geometry_msgs/Quaternion.w: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
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
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
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
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
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
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
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
 /// @details Require the complete 32..32-byte canonical representation. Reject truncation, invalid fields and trailing
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
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsPose; share/platform/ros/zig/API-CONTRACT.md
 field_position: Ros1Geometry_msgsPoint=.{},
 /// @brief geometry_msgs/Pose.orientation: geometry_msgs/Quaternion.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
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
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
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
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
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
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
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
 /// @details Require the complete 56..56-byte canonical representation. Reject truncation, invalid fields and trailing
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
 /// @see Ros1Geometry_msgsPose; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<56 or bytes.len>56) return error.Invalid;
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
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsVector3; share/platform/ros/zig/API-CONTRACT.md
 field_x: f64=0,
 /// @brief geometry_msgs/Vector3.y: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsVector3; share/platform/ros/zig/API-CONTRACT.md
 field_y: f64=0,
 /// @brief geometry_msgs/Vector3.z: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
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
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
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
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
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
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
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
 /// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields and trailing
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
 /// @see Ros1Geometry_msgsVector3; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<24 or bytes.len>24) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 geometry_msgs/Accel value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 48..48 bytes and
/// is identified by UWVMROS1_3345762fc354a5698d41098276702c7d3cee87fe9a531b0229111b9b3bf700ed.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Geometry_msgsAccel=struct {
 /// @brief Maximum canonical extent of geometry_msgs/Accel in bytes.
 /// @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Geometry_msgsAccel; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=48;
 /// @brief Canonical codec identity of geometry_msgs/Accel.
 /// @details Exact identity UWVMROS1_3345762fc354a5698d41098276702c7d3cee87fe9a531b0229111b9b3bf700ed binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Geometry_msgsAccel; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_3345762fc354a5698d41098276702c7d3cee87fe9a531b0229111b9b3bf700ed";
 /// @brief Original ROS type name for geometry_msgs/Accel.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Geometry_msgsAccel; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="geometry_msgs/Accel";
 /// @brief Selected original native identity for geometry_msgs/Accel.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Geometry_msgsAccel; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief geometry_msgs/Accel.linear: geometry_msgs/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsAccel; share/platform/ros/zig/API-CONTRACT.md
 field_linear: Ros1Geometry_msgsVector3=.{},
 /// @brief geometry_msgs/Accel.angular: geometry_msgs/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsAccel; share/platform/ros/zig/API-CONTRACT.md
 field_angular: Ros1Geometry_msgsVector3=.{},
 /// @brief Append every canonical field of geometry_msgs/Accel.
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
 /// @see Ros1Geometry_msgsAccel; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_linear.writeFields(w);
  try self.field_angular.writeFields(w);
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/Accel.
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
 /// @see Ros1Geometry_msgsAccel; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_linear=try Ros1Geometry_msgsVector3.readFields(r,allocator);
  value.field_angular=try Ros1Geometry_msgsVector3.readFields(r,allocator);
  return value;
 }
 /// @brief Encode one complete geometry_msgs/Accel value.
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
 /// @see Ros1Geometry_msgsAccel; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete geometry_msgs/Accel value.
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
 /// @see Ros1Geometry_msgsAccel; share/platform/ros/zig/API-CONTRACT.md
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
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsWrench; share/platform/ros/zig/API-CONTRACT.md
 field_force: Ros1Geometry_msgsVector3=.{},
 /// @brief geometry_msgs/Wrench.torque: geometry_msgs/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
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
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
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
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
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
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
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
 /// @see Ros1Geometry_msgsWrench; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<48 or bytes.len>48) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 flexiv_msgs/RobotStates value.
/// @details All 16 declared fields are retained in source order. The canonical representation occupies 864..864 bytes
/// and is identified by UWVMROS1_a64419da913e6fafce645177a491cc77a1dcee9ef785bc04380e7aebaeeb12a8.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros1Flexiv_msgsRobotStates=struct {
 /// @brief Maximum canonical extent of flexiv_msgs/RobotStates in bytes.
 /// @details The inclusive bound is 864 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Flexiv_msgsRobotStates; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=864;
 /// @brief Canonical codec identity of flexiv_msgs/RobotStates.
 /// @details Exact identity UWVMROS1_a64419da913e6fafce645177a491cc77a1dcee9ef785bc04380e7aebaeeb12a8 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Flexiv_msgsRobotStates; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_a64419da913e6fafce645177a491cc77a1dcee9ef785bc04380e7aebaeeb12a8";
 /// @brief Original ROS type name for flexiv_msgs/RobotStates.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Flexiv_msgsRobotStates; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="flexiv_msgs/RobotStates";
 /// @brief Selected original native identity for flexiv_msgs/RobotStates.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Flexiv_msgsRobotStates; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief flexiv_msgs/RobotStates.q: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Flexiv_msgsRobotStates; share/platform/ros/zig/API-CONTRACT.md
 field_q: [7]f64=[_]f64{0} ** 7,
 /// @brief flexiv_msgs/RobotStates.theta: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Flexiv_msgsRobotStates; share/platform/ros/zig/API-CONTRACT.md
 field_theta: [7]f64=[_]f64{0} ** 7,
 /// @brief flexiv_msgs/RobotStates.dq: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Flexiv_msgsRobotStates; share/platform/ros/zig/API-CONTRACT.md
 field_dq: [7]f64=[_]f64{0} ** 7,
 /// @brief flexiv_msgs/RobotStates.dtheta: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Flexiv_msgsRobotStates; share/platform/ros/zig/API-CONTRACT.md
 field_dtheta: [7]f64=[_]f64{0} ** 7,
 /// @brief flexiv_msgs/RobotStates.tau: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Flexiv_msgsRobotStates; share/platform/ros/zig/API-CONTRACT.md
 field_tau: [7]f64=[_]f64{0} ** 7,
 /// @brief flexiv_msgs/RobotStates.tau_des: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Flexiv_msgsRobotStates; share/platform/ros/zig/API-CONTRACT.md
 field_tau_des: [7]f64=[_]f64{0} ** 7,
 /// @brief flexiv_msgs/RobotStates.tau_dot: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Flexiv_msgsRobotStates; share/platform/ros/zig/API-CONTRACT.md
 field_tau_dot: [7]f64=[_]f64{0} ** 7,
 /// @brief flexiv_msgs/RobotStates.tau_ext: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Flexiv_msgsRobotStates; share/platform/ros/zig/API-CONTRACT.md
 field_tau_ext: [7]f64=[_]f64{0} ** 7,
 /// @brief flexiv_msgs/RobotStates.tcp_pose: geometry_msgs/Pose.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Flexiv_msgsRobotStates; share/platform/ros/zig/API-CONTRACT.md
 field_tcp_pose: Ros1Geometry_msgsPose=.{},
 /// @brief flexiv_msgs/RobotStates.tcp_pose_des: geometry_msgs/Pose.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Flexiv_msgsRobotStates; share/platform/ros/zig/API-CONTRACT.md
 field_tcp_pose_des: Ros1Geometry_msgsPose=.{},
 /// @brief flexiv_msgs/RobotStates.tcp_vel: geometry_msgs/Accel.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Flexiv_msgsRobotStates; share/platform/ros/zig/API-CONTRACT.md
 field_tcp_vel: Ros1Geometry_msgsAccel=.{},
 /// @brief flexiv_msgs/RobotStates.cam_pose: geometry_msgs/Pose.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Flexiv_msgsRobotStates; share/platform/ros/zig/API-CONTRACT.md
 field_cam_pose: Ros1Geometry_msgsPose=.{},
 /// @brief flexiv_msgs/RobotStates.flange_pose: geometry_msgs/Pose.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Flexiv_msgsRobotStates; share/platform/ros/zig/API-CONTRACT.md
 field_flange_pose: Ros1Geometry_msgsPose=.{},
 /// @brief flexiv_msgs/RobotStates.ft_sensor_raw: geometry_msgs/Wrench.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Flexiv_msgsRobotStates; share/platform/ros/zig/API-CONTRACT.md
 field_ft_sensor_raw: Ros1Geometry_msgsWrench=.{},
 /// @brief flexiv_msgs/RobotStates.ext_wrench_tcp_frame: geometry_msgs/Wrench.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Flexiv_msgsRobotStates; share/platform/ros/zig/API-CONTRACT.md
 field_ext_wrench_tcp_frame: Ros1Geometry_msgsWrench=.{},
 /// @brief flexiv_msgs/RobotStates.ext_wrench_base_frame: geometry_msgs/Wrench.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Flexiv_msgsRobotStates; share/platform/ros/zig/API-CONTRACT.md
 field_ext_wrench_base_frame: Ros1Geometry_msgsWrench=.{},
 /// @brief Append every canonical field of flexiv_msgs/RobotStates.
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
 /// @see Ros1Flexiv_msgsRobotStates; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  for(self.field_q) |e| {
  try w.float64(e);
  }
  for(self.field_theta) |e| {
  try w.float64(e);
  }
  for(self.field_dq) |e| {
  try w.float64(e);
  }
  for(self.field_dtheta) |e| {
  try w.float64(e);
  }
  for(self.field_tau) |e| {
  try w.float64(e);
  }
  for(self.field_tau_des) |e| {
  try w.float64(e);
  }
  for(self.field_tau_dot) |e| {
  try w.float64(e);
  }
  for(self.field_tau_ext) |e| {
  try w.float64(e);
  }
  try self.field_tcp_pose.writeFields(w);
  try self.field_tcp_pose_des.writeFields(w);
  try self.field_tcp_vel.writeFields(w);
  try self.field_cam_pose.writeFields(w);
  try self.field_flange_pose.writeFields(w);
  try self.field_ft_sensor_raw.writeFields(w);
  try self.field_ext_wrench_tcp_frame.writeFields(w);
  try self.field_ext_wrench_base_frame.writeFields(w);
 }
 /// @brief Read the ordered canonical fields of flexiv_msgs/RobotStates.
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
 /// @see Ros1Flexiv_msgsRobotStates; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  for(&value.field_q) |*e| {
  e.*=try r.float64();
  }
  for(&value.field_theta) |*e| {
  e.*=try r.float64();
  }
  for(&value.field_dq) |*e| {
  e.*=try r.float64();
  }
  for(&value.field_dtheta) |*e| {
  e.*=try r.float64();
  }
  for(&value.field_tau) |*e| {
  e.*=try r.float64();
  }
  for(&value.field_tau_des) |*e| {
  e.*=try r.float64();
  }
  for(&value.field_tau_dot) |*e| {
  e.*=try r.float64();
  }
  for(&value.field_tau_ext) |*e| {
  e.*=try r.float64();
  }
  value.field_tcp_pose=try Ros1Geometry_msgsPose.readFields(r,allocator);
  value.field_tcp_pose_des=try Ros1Geometry_msgsPose.readFields(r,allocator);
  value.field_tcp_vel=try Ros1Geometry_msgsAccel.readFields(r,allocator);
  value.field_cam_pose=try Ros1Geometry_msgsPose.readFields(r,allocator);
  value.field_flange_pose=try Ros1Geometry_msgsPose.readFields(r,allocator);
  value.field_ft_sensor_raw=try Ros1Geometry_msgsWrench.readFields(r,allocator);
  value.field_ext_wrench_tcp_frame=try Ros1Geometry_msgsWrench.readFields(r,allocator);
  value.field_ext_wrench_base_frame=try Ros1Geometry_msgsWrench.readFields(r,allocator);
  return value;
 }
 /// @brief Encode one complete flexiv_msgs/RobotStates value.
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
 /// @see Ros1Flexiv_msgsRobotStates; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete flexiv_msgs/RobotStates value.
 /// @details Require the complete 864..864-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Flexiv_msgsRobotStates; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<864 or bytes.len>864) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
